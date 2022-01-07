; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_actv_fs_ss_limit_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_actv_fs_ss_limit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@SPA_FEATURE_FS_SS_LIMIT = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@DD_FIELD_FILESYSTEM_COUNT = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dsl_dir_actv_fs_ss_limit_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_dir_actv_fs_ss_limit_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_9__* @dmu_tx_pool(i32* %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %7, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @FTAG, align 4
  %17 = call i32 @dsl_dataset_hold(%struct.TYPE_9__* %14, i8* %15, i32 %16, %struct.TYPE_11__** %8)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %3, align 4
  br label %69

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SPA_FEATURE_FS_SS_LIMIT, align 4
  %27 = call i32 @spa_feature_is_enabled(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = load i32, i32* @FTAG, align 4
  %32 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %30, i32 %31)
  %33 = load i32, i32* @ENOTSUP, align 4
  %34 = call i32 @SET_ERROR(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %69

35:                                               ; preds = %22
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %9, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SPA_FEATURE_FS_SS_LIMIT, align 4
  %43 = call i64 @spa_feature_is_active(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %35
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = call i64 @dsl_dir_is_zapified(%struct.TYPE_10__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DD_FIELD_FILESYSTEM_COUNT, align 4
  %57 = call i64 @zap_contains(i32 %52, i32 %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = load i32, i32* @FTAG, align 4
  %62 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %60, i32 %61)
  %63 = load i32, i32* @EALREADY, align 4
  %64 = call i32 @SET_ERROR(i32 %63)
  store i32 %64, i32* %3, align 4
  br label %69

65:                                               ; preds = %49, %45, %35
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = load i32, i32* @FTAG, align 4
  %68 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %66, i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %59, %29, %20
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_9__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @dsl_dataset_hold(%struct.TYPE_9__*, i8*, i32, %struct.TYPE_11__**) #1

declare dso_local i32 @spa_feature_is_enabled(i32, i32) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @spa_feature_is_active(i32, i32) #1

declare dso_local i64 @dsl_dir_is_zapified(%struct.TYPE_10__*) #1

declare dso_local i64 @zap_contains(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
