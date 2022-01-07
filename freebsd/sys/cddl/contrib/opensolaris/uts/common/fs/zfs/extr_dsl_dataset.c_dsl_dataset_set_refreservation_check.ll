; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_set_refreservation_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_set_refreservation_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_15__ = type { i64 }

@SPA_VERSION_REFRESERVATION = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZFS_PROP_REFRESERVATION = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dsl_dataset_set_refreservation_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_dataset_set_refreservation_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.TYPE_12__* @dmu_tx_pool(i32* %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %7, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @spa_version(i32 %19)
  %21 = load i64, i64* @SPA_VERSION_REFRESERVATION, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOTSUP, align 4
  %25 = call i32 @SET_ERROR(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %142

26:                                               ; preds = %2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FTAG, align 4
  %32 = call i32 @dsl_dataset_hold(%struct.TYPE_12__* %27, i32 %30, i32 %31, %struct.TYPE_13__** %8)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %142

37:                                               ; preds = %26
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = load i32, i32* @FTAG, align 4
  %45 = call i32 @dsl_dataset_rele(%struct.TYPE_13__* %43, i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %3, align 4
  br label %142

48:                                               ; preds = %37
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ZFS_PROP_REFRESERVATION, align 4
  %53 = call i32 @zfs_prop_to_name(i32 %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dsl_prop_predict(i32 %51, i32 %53, i32 %56, i32 %59, i64* %10)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = load i32, i32* @FTAG, align 4
  %66 = call i32 @dsl_dataset_rele(%struct.TYPE_13__* %64, i32 %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %142

68:                                               ; preds = %48
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @dmu_tx_is_syncing(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = load i32, i32* @FTAG, align 4
  %75 = call i32 @dsl_dataset_rele(%struct.TYPE_13__* %73, i32 %74)
  store i32 0, i32* %3, align 4
  br label %142

76:                                               ; preds = %68
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = call i32 @mutex_enter(i32* %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = call i32 @DS_UNIQUE_IS_ACCURATE(%struct.TYPE_13__* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %85 = call i32 @dsl_dataset_recalc_head_uniq(%struct.TYPE_13__* %84)
  br label %86

86:                                               ; preds = %83, %76
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = call %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_13__* %87)
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %11, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 3
  %93 = call i32 @mutex_exit(i32* %92)
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i64 @MAX(i64 %94, i64 %95)
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @MAX(i64 %97, i64 %100)
  %102 = icmp sgt i64 %96, %101
  br i1 %102, label %103, label %138

103:                                              ; preds = %86
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i64 @MAX(i64 %104, i64 %105)
  %107 = load i64, i64* %11, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @MAX(i64 %107, i64 %110)
  %112 = sub nsw i64 %106, %111
  store i64 %112, i64* %12, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @B_TRUE, align 4
  %118 = call i64 @dsl_dir_space_available(i32 %116, i32* null, i32 0, i32 %117)
  %119 = icmp sgt i64 %113, %118
  br i1 %119, label %131, label %120

120:                                              ; preds = %103
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %120
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %126, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125, %103
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %133 = load i32, i32* @FTAG, align 4
  %134 = call i32 @dsl_dataset_rele(%struct.TYPE_13__* %132, i32 %133)
  %135 = load i32, i32* @ENOSPC, align 4
  %136 = call i32 @SET_ERROR(i32 %135)
  store i32 %136, i32* %3, align 4
  br label %142

137:                                              ; preds = %125, %120
  br label %138

138:                                              ; preds = %137, %86
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %140 = load i32, i32* @FTAG, align 4
  %141 = call i32 @dsl_dataset_rele(%struct.TYPE_13__* %139, i32 %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %131, %72, %63, %42, %35, %23
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.TYPE_12__* @dmu_tx_pool(i32*) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_dataset_hold(%struct.TYPE_12__*, i32, i32, %struct.TYPE_13__**) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @dsl_prop_predict(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @DS_UNIQUE_IS_ACCURATE(%struct.TYPE_13__*) #1

declare dso_local i32 @dsl_dataset_recalc_head_uniq(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_13__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i64 @dsl_dir_space_available(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
