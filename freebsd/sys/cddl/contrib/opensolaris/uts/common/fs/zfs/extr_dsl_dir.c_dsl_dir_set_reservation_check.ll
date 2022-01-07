; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_set_reservation_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_set_reservation_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i64, i64, i64 }

@FTAG = common dso_local global i32 0, align 4
@ZFS_PROP_RESERVATION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NORMAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dir_set_reservation_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @dmu_tx_pool(i32* %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FTAG, align 4
  %24 = call i32 @dsl_dataset_hold(i32* %19, i32 %22, i32 %23, %struct.TYPE_11__** %8)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %3, align 4
  br label %136

29:                                               ; preds = %2
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %9, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @dmu_tx_is_syncing(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = load i32, i32* @FTAG, align 4
  %39 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %37, i32 %38)
  store i32 0, i32* %3, align 4
  br label %136

40:                                               ; preds = %29
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* @ZFS_PROP_RESERVATION, align 4
  %45 = call i32 @zfs_prop_to_name(i32 %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dsl_prop_predict(%struct.TYPE_9__* %43, i32 %45, i32 %48, i32 %51, i64* %10)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %40
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = load i32, i32* @FTAG, align 4
  %58 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %56, i32 %57)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %3, align 4
  br label %136

60:                                               ; preds = %40
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = call i32 @mutex_enter(i32* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = call %struct.TYPE_12__* @dsl_dir_phys(%struct.TYPE_9__* %64)
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %11, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = call i32 @mutex_exit(i32* %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %60
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @FALSE, align 4
  %80 = call i64 @dsl_dir_space_available(i64 %78, i32* null, i32 0, i32 %79)
  store i64 %80, i64* %12, align 8
  br label %89

81:                                               ; preds = %60
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ZFS_SPACE_CHECK_NORMAL, align 4
  %86 = call i64 @dsl_pool_adjustedsize(i32 %84, i32 %85)
  %87 = load i64, i64* %11, align 8
  %88 = sub nsw i64 %86, %87
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %81, %75
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @MAX(i64 %90, i64 %91)
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %95 = call %struct.TYPE_12__* @dsl_dir_phys(%struct.TYPE_9__* %94)
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @MAX(i64 %93, i64 %97)
  %99 = icmp sgt i64 %92, %98
  br i1 %99, label %100, label %131

100:                                              ; preds = %89
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i64 @MAX(i64 %101, i64 %102)
  %104 = load i64, i64* %11, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %106 = call %struct.TYPE_12__* @dsl_dir_phys(%struct.TYPE_9__* %105)
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @MAX(i64 %104, i64 %108)
  %110 = sub nsw i64 %103, %109
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %12, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %127, label %114

114:                                              ; preds = %100
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %116 = call %struct.TYPE_12__* @dsl_dir_phys(%struct.TYPE_9__* %115)
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %123 = call %struct.TYPE_12__* @dsl_dir_phys(%struct.TYPE_9__* %122)
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %121, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %120, %100
  %128 = load i32, i32* @ENOSPC, align 4
  %129 = call i32 @SET_ERROR(i32 %128)
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %127, %120, %114
  br label %131

131:                                              ; preds = %130, %89
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %133 = load i32, i32* @FTAG, align 4
  %134 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %132, i32 %133)
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %131, %55, %36, %27
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i32, i32, %struct.TYPE_11__**) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dsl_prop_predict(%struct.TYPE_9__*, i32, i32, i32, i64*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_12__* @dsl_dir_phys(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @dsl_dir_space_available(i64, i32*, i32, i32) #1

declare dso_local i64 @dsl_pool_adjustedsize(i32, i32) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
