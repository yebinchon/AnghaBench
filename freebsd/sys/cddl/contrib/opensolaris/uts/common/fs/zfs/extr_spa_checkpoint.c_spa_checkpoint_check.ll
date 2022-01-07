; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_checkpoint.c_spa_checkpoint_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_checkpoint.c_spa_checkpoint_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@SPA_FEATURE_POOL_CHECKPOINT = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ZFS_ERR_VDEV_TOO_BIG = common dso_local global i32 0, align 4
@ZFS_ERR_DEVRM_IN_PROGRESS = common dso_local global i32 0, align 4
@ZFS_ERR_CHECKPOINT_EXISTS = common dso_local global i32 0, align 4
@ZFS_ERR_DISCARDING_CHECKPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @spa_checkpoint_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_checkpoint_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call %struct.TYPE_7__* @dmu_tx_pool(i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = load i32, i32* @SPA_FEATURE_POOL_CHECKPOINT, align 4
  %13 = call i32 @spa_feature_is_enabled(%struct.TYPE_6__* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOTSUP, align 4
  %17 = call i32 @SET_ERROR(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = call i32 @spa_top_vdevs_spacemap_addressable(%struct.TYPE_6__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ZFS_ERR_VDEV_TOO_BIG, align 4
  %24 = call i32 @SET_ERROR(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ZFS_ERR_DEVRM_IN_PROGRESS, align 4
  %32 = call i32 @SET_ERROR(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %50

33:                                               ; preds = %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ZFS_ERR_CHECKPOINT_EXISTS, align 4
  %40 = call i32 @SET_ERROR(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %50

41:                                               ; preds = %33
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = load i32, i32* @SPA_FEATURE_POOL_CHECKPOINT, align 4
  %44 = call i64 @spa_feature_is_active(%struct.TYPE_6__* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ZFS_ERR_DISCARDING_CHECKPOINT, align 4
  %48 = call i32 @SET_ERROR(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %38, %30, %22, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_7__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @spa_feature_is_enabled(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @spa_top_vdevs_spacemap_addressable(%struct.TYPE_6__*) #1

declare dso_local i64 @spa_feature_is_active(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
