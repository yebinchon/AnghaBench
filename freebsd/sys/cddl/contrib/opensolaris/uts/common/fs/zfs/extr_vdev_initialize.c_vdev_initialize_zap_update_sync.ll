; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_initialize.c_vdev_initialize_zap_update_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_initialize.c_vdev_initialize_zap_update_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64*, i64, i64, i64, i64, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i64 }

@B_FALSE = common dso_local global i32 0, align 4
@TXG_MASK = common dso_local global i64 0, align 8
@VDEV_LEAF_ZAP_INITIALIZE_LAST_OFFSET = common dso_local global i32 0, align 4
@VDEV_LEAF_ZAP_INITIALIZE_ACTION_TIME = common dso_local global i32 0, align 4
@VDEV_LEAF_ZAP_INITIALIZE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_15__*)* @vdev_initialize_zap_update_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_initialize_zap_update_sync(i8* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = call i64 @dmu_tx_get_txg(%struct.TYPE_15__* %15)
  store i64 %16, i64* %6, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @kmem_free(i8* %17, i32 8)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @B_FALSE, align 4
  %26 = call %struct.TYPE_14__* @spa_lookup_by_guid(i32 %23, i64 %24, i32 %25)
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %7, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = icmp eq %struct.TYPE_14__* %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %2
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 6
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = call i32 @vdev_is_concrete(%struct.TYPE_14__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36, %29, %2
  br label %111

41:                                               ; preds = %36
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @TXG_MASK, align 8
  %47 = and i64 %45, %46
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @TXG_MASK, align 8
  %55 = and i64 %53, %54
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @VERIFY(i32 %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %9, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ugt i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %41
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @VDEV_LEAF_ZAP_INITIALIZE_LAST_OFFSET, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = call i32 @zap_update(i32* %74, i64 %77, i32 %78, i32 8, i32 1, i64* %8, %struct.TYPE_15__* %79)
  %81 = call i32 @VERIFY0(i32 %80)
  br label %82

82:                                               ; preds = %70, %41
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %10, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @VDEV_LEAF_ZAP_INITIALIZE_ACTION_TIME, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = call i32 @zap_update(i32* %91, i64 %94, i32 %95, i32 8, i32 1, i64* %10, %struct.TYPE_15__* %96)
  %98 = call i32 @VERIFY0(i32 %97)
  br label %99

99:                                               ; preds = %87, %82
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %11, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @VDEV_LEAF_ZAP_INITIALIZE_STATE, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = call i32 @zap_update(i32* %103, i64 %106, i32 %107, i32 8, i32 1, i64* %11, %struct.TYPE_15__* %108)
  %110 = call i32 @VERIFY0(i32 %109)
  br label %111

111:                                              ; preds = %99, %40
  ret void
}

declare dso_local i64 @dmu_tx_get_txg(%struct.TYPE_15__*) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

declare dso_local %struct.TYPE_14__* @spa_lookup_by_guid(i32, i64, i32) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_14__*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_update(i32*, i64, i32, i32, i32, i64*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
