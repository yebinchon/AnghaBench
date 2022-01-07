; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dnode_needs_remap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dnode_needs_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32* }

@B_FALSE = common dso_local global i32 0, align 4
@SPA_FEATURE_DEVICE_REMOVAL = common dso_local global i32 0, align 4
@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnode_needs_remap(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32* @dmu_objset_spa(i32 %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32, i32* @B_FALSE, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @B_FALSE, align 4
  store i32 %20, i32* %2, align 4
  br label %64

21:                                               ; preds = %1
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @SPA_FEATURE_DEVICE_REMOVAL, align 4
  %24 = call i32 @spa_feature_is_active(i32* %22, i32 %23)
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @SCL_VDEV, align 4
  %28 = load i32, i32* @FTAG, align 4
  %29 = load i32, i32* @RW_READER, align 4
  %30 = call i32 @spa_config_enter(i32* %26, i32 %27, i32 %28, i32 %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %55, %21
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = call i64 @spa_remap_blkptr(i32* %49, i32* %7, i32* null, i32* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* @B_TRUE, align 4
  store i32 %53, i32* %5, align 4
  br label %58

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %31

58:                                               ; preds = %52, %31
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @SCL_VDEV, align 4
  %61 = load i32, i32* @FTAG, align 4
  %62 = call i32 @spa_config_exit(i32* %59, i32 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %58, %19
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32* @dmu_objset_spa(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_feature_is_active(i32*, i32) #1

declare dso_local i32 @spa_config_enter(i32*, i32, i32, i32) #1

declare dso_local i64 @spa_remap_blkptr(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @spa_config_exit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
