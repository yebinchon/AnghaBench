; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_sync_late_arrival_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_sync_late_arrival_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32, i32, %struct.TYPE_15__*, i32, %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 (%struct.TYPE_13__*, i32)*, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@ZIO_FLAG_NOPWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @dmu_sync_late_arrival_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmu_sync_late_arrival_done(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 7
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %4, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 6
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %6, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %88

22:                                               ; preds = %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @zil_lwb_add_block(i32 %25, i32 %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = call i64 @BP_IS_HOLE(%struct.TYPE_15__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %87, label %33

33:                                               ; preds = %22
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ZIO_FLAG_NOPWRITE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = call i64 @BP_IS_HOLE(%struct.TYPE_15__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %33
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = call i32 @BP_EQUAL(%struct.TYPE_15__* %47, %struct.TYPE_15__* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %33
  %53 = phi i1 [ true, %33 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @spa_syncing_txg(i32 %72)
  %74 = icmp sgt i64 %69, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = call i32 @zio_free(i32 %79, i64 %82, %struct.TYPE_15__* %85)
  br label %87

87:                                               ; preds = %52, %22
  br label %88

88:                                               ; preds = %87, %1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dmu_tx_commit(i32 %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 %95(%struct.TYPE_13__* %98, i32 %101)
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @abd_put(i32 %105)
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = call i32 @kmem_free(%struct.TYPE_14__* %107, i32 24)
  ret void
}

declare dso_local i32 @zil_lwb_add_block(i32, i32) #1

declare dso_local i64 @BP_IS_HOLE(%struct.TYPE_15__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_EQUAL(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i64 @spa_syncing_txg(i32) #1

declare dso_local i32 @zio_free(i32, i64, %struct.TYPE_15__*) #1

declare dso_local i32 @dmu_tx_commit(i32) #1

declare dso_local i32 @abd_put(i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
