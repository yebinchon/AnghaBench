; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_sync_late_arrival.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_sync_late_arrival.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_15__*, i32*, i32* }

@TXG_WAIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@dmu_sync_late_arrival_ready = common dso_local global i32 0, align 4
@dmu_sync_late_arrival_done = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SYNC_WRITE = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, i32*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32*)* @dmu_sync_late_arrival to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmu_sync_late_arrival(i32* %0, %struct.TYPE_16__* %1, i32* %2, %struct.TYPE_15__* %3, %struct.TYPE_14__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %17 = call i32* @dmu_tx_create(%struct.TYPE_16__* %16)
  store i32* %17, i32** %15, align 8
  %18 = load i32*, i32** %15, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dmu_tx_hold_space(i32* %18, i32 %23)
  %25 = load i32*, i32** %15, align 8
  %26 = load i32, i32* @TXG_WAIT, align 4
  %27 = call i64 @dmu_tx_assign(i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %6
  %30 = load i32*, i32** %15, align 8
  %31 = call i32 @dmu_tx_abort(i32* %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = call i32 @SET_ERROR(i32 %32)
  store i32 %33, i32* %7, align 4
  br label %96

34:                                               ; preds = %6
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @dmu_tx_get_txg(i32* %38)
  %40 = call i32 @zil_lwb_add_txg(i32 %37, i32 %39)
  %41 = load i32, i32* @KM_SLEEP, align 4
  %42 = call %struct.TYPE_17__* @kmem_alloc(i32 32, i32 %41)
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %14, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %50, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  %54 = load i32, i32* @B_FALSE, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @dmu_tx_get_txg(i32* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @abd_get_from_buf(i32 %70, i32 %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %88 = load i32, i32* @dmu_sync_late_arrival_ready, align 4
  %89 = load i32, i32* @dmu_sync_late_arrival_done, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %91 = load i32, i32* @ZIO_PRIORITY_SYNC_WRITE, align 4
  %92 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @zio_write(i32* %57, i32 %60, i32 %62, i32 %65, i32 %76, i32 %81, i32 %86, %struct.TYPE_14__* %87, i32 %88, i32* null, i32* null, i32 %89, %struct.TYPE_17__* %90, i32 %91, i32 %92, i32* %93)
  %95 = call i32 @zio_nowait(i32 %94)
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %34, %29
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32* @dmu_tx_create(%struct.TYPE_16__*) #1

declare dso_local i32 @dmu_tx_hold_space(i32*, i32) #1

declare dso_local i64 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zil_lwb_add_txg(i32, i32) #1

declare dso_local i32 @dmu_tx_get_txg(i32*) #1

declare dso_local %struct.TYPE_17__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @zio_write(i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__*, i32, i32*, i32*, i32, %struct.TYPE_17__*, i32, i32, i32*) #1

declare dso_local i32 @abd_get_from_buf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
