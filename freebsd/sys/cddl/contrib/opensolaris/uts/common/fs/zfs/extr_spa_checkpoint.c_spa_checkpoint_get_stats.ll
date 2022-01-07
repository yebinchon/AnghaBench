; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_checkpoint.c_spa_checkpoint_get_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_checkpoint.c_spa_checkpoint_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@SPA_FEATURE_POOL_CHECKPOINT = common dso_local global i32 0, align 4
@ZFS_ERR_NO_CHECKPOINT = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_ZPOOL_CHECKPOINT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CS_CHECKPOINT_DISCARDING = common dso_local global i32 0, align 4
@CS_CHECKPOINT_EXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_checkpoint_get_stats(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = load i32, i32* @SPA_FEATURE_POOL_CHECKPOINT, align 4
  %9 = call i32 @spa_feature_is_active(%struct.TYPE_10__* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ZFS_ERR_NO_CHECKPOINT, align 4
  %13 = call i32 @SET_ERROR(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = call i32 @bzero(%struct.TYPE_11__* %15, i32 12)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = call i32 @spa_meta_objset(%struct.TYPE_10__* %17)
  %19 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %20 = load i32, i32* @DMU_POOL_ZPOOL_CHECKPOINT, align 4
  %21 = call i32 @zap_contains(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ENOENT, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %24, %14
  %29 = phi i1 [ true, %14 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ENOENT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @CS_CHECKPOINT_DISCARDING, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  br label %43

39:                                               ; preds = %28
  %40 = load i32, i32* @CS_CHECKPOINT_EXISTS, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %43, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @spa_feature_is_active(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @zap_contains(i32, i32, i32) #1

declare dso_local i32 @spa_meta_objset(%struct.TYPE_10__*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
