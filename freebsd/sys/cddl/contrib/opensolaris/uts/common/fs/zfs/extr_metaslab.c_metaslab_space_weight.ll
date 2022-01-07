; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_metaslab_space_weight.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_metaslab_space_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@metaslab_fragmentation_factor_enabled = common dso_local global i64 0, align 8
@ZFS_FRAG_INVALID = common dso_local global i32 0, align 4
@SPA_MINBLOCKSIZE = common dso_local global i32 0, align 4
@metaslab_lba_weighting_enabled = common dso_local global i64 0, align 8
@zfs_metaslab_fragmentation_threshold = common dso_local global i32 0, align 4
@METASLAB_ACTIVE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @metaslab_space_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metaslab_space_weight(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 7
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  %15 = call i32 @MUTEX_HELD(i32* %14)
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @space_map_allocated(i32 %29)
  %31 = sub nsw i32 %26, %30
  store i32 %31, i32* %6, align 4
  %32 = load i64, i64* @metaslab_fragmentation_factor_enabled, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ZFS_FRAG_INVALID, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sub nsw i32 100, %45
  %47 = mul nsw i32 %41, %46
  %48 = sdiv i32 %47, 100
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SPA_MINBLOCKSIZE, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @SPA_MINBLOCKSIZE, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %51, %40
  br label %58

58:                                               ; preds = %57, %34, %1
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %5, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %92, label %64

64:                                               ; preds = %58
  %65 = load i64, i64* @metaslab_lba_weighting_enabled, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 2, %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %74, %77
  %79 = sub nsw i32 %69, %78
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %67
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 2, %85
  %87 = icmp sle i32 %84, %86
  br label %88

88:                                               ; preds = %83, %67
  %89 = phi i1 [ false, %67 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @ASSERT(i32 %90)
  br label %92

92:                                               ; preds = %88, %64, %58
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %92
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ZFS_FRAG_INVALID, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @zfs_metaslab_fragmentation_threshold, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @METASLAB_ACTIVE_MASK, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %109, %103, %97, %92
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @WEIGHT_SET_SPACEBASED(i32 %118)
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @space_map_allocated(i32) #1

declare dso_local i32 @WEIGHT_SET_SPACEBASED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
