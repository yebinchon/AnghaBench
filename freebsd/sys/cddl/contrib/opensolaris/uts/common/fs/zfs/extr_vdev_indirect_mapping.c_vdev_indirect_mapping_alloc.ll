; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_indirect_mapping.c_vdev_indirect_mapping_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_indirect_mapping.c_vdev_indirect_mapping_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }

@VDEV_INDIRECT_MAPPING_SIZE_V0 = common dso_local global i32 0, align 4
@SPA_FEATURE_OBSOLETE_COUNTS = common dso_local global i32 0, align 4
@DMU_OTN_UINT64_METADATA = common dso_local global i32 0, align 4
@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DMU_OTN_UINT32_METADATA = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_indirect_mapping_alloc(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @dmu_tx_is_syncing(i32* %9)
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i32, i32* @VDEV_INDIRECT_MAPPING_SIZE_V0, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SPA_FEATURE_OBSOLETE_COUNTS, align 4
  %17 = call i64 @spa_feature_is_enabled(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 8, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = load i32, i32* @DMU_OTN_UINT64_METADATA, align 4
  %23 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %24 = load i32, i32* @DMU_OTN_UINT64_METADATA, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @dmu_object_alloc(%struct.TYPE_11__* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32* %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SPA_FEATURE_OBSOLETE_COUNTS, align 4
  %33 = call i64 @spa_feature_is_enabled(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %20
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @FTAG, align 4
  %39 = call i32 @dmu_bonus_hold(%struct.TYPE_11__* %36, i32 %37, i32 %38, %struct.TYPE_12__** %7)
  %40 = call i32 @VERIFY0(i32 %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @dmu_buf_will_dirty(%struct.TYPE_12__* %41, i32* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %8, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = load i32, i32* @DMU_OTN_UINT32_METADATA, align 4
  %49 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %50 = load i32, i32* @DMU_OT_NONE, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = call i8* @dmu_object_alloc(%struct.TYPE_11__* %47, i32 %48, i32 %49, i32 %50, i32 0, i32* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SPA_FEATURE_OBSOLETE_COUNTS, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @spa_feature_incr(i32 %57, i32 %58, i32* %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = load i32, i32* @FTAG, align 4
  %63 = call i32 @dmu_buf_rele(%struct.TYPE_12__* %61, i32 %62)
  br label %64

64:                                               ; preds = %35, %20
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local i64 @spa_feature_is_enabled(i32, i32) #1

declare dso_local i8* @dmu_object_alloc(%struct.TYPE_11__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_bonus_hold(%struct.TYPE_11__*, i32, i32, %struct.TYPE_12__**) #1

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @spa_feature_incr(i32, i32, i32*) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
