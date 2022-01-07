; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fv_softc = type { i32, i32, i64, i32, i64, i64, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"vr mutex not initialized\00", align 1
@taskqueue_swi = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fv_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fv_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fv_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.fv_softc* @device_get_softc(i32 %5)
  store %struct.fv_softc* %6, %struct.fv_softc** %3, align 8
  %7 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %8 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %7, i32 0, i32 8
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %11 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %10, i32 0, i32 1
  %12 = call i32 @mtx_initialized(i32* %11)
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @device_is_attached(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %19 = call i32 @FV_LOCK(%struct.fv_softc* %18)
  %20 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %21 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %23 = call i32 @fv_stop(%struct.fv_softc* %22)
  %24 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %25 = call i32 @FV_UNLOCK(%struct.fv_softc* %24)
  %26 = load i32, i32* @taskqueue_swi, align 4
  %27 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %28 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %27, i32 0, i32 7
  %29 = call i32 @taskqueue_drain(i32 %26, i32* %28)
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = call i32 @ether_ifdetach(%struct.ifnet* %30)
  br label %32

32:                                               ; preds = %17, %1
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @bus_generic_detach(i32 %33)
  %35 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %36 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load i32, i32* %2, align 4
  %41 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %42 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %45 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @bus_teardown_intr(i32 %40, i64 %43, i64 %46)
  br label %48

48:                                               ; preds = %39, %32
  %49 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %50 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @SYS_RES_IRQ, align 4
  %56 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %57 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @bus_release_resource(i32 %54, i32 %55, i32 0, i64 %58)
  br label %60

60:                                               ; preds = %53, %48
  %61 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %62 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @SYS_RES_MEMORY, align 4
  %68 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %69 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %72 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @bus_release_resource(i32 %66, i32 %67, i32 %70, i64 %73)
  br label %75

75:                                               ; preds = %65, %60
  %76 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %77 = icmp ne %struct.ifnet* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %80 = call i32 @if_free(%struct.ifnet* %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %83 = call i32 @fv_dma_free(%struct.fv_softc* %82)
  %84 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %85 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %84, i32 0, i32 1
  %86 = call i32 @mtx_destroy(i32* %85)
  ret i32 0
}

declare dso_local %struct.fv_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @FV_LOCK(%struct.fv_softc*) #1

declare dso_local i32 @fv_stop(%struct.fv_softc*) #1

declare dso_local i32 @FV_UNLOCK(%struct.fv_softc*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @fv_dma_free(%struct.fv_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
