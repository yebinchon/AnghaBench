; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_bsc.c_bcm_bsc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_bsc.c_bcm_bsc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_bsc_softc = type { i64, i64, i64, i32, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_bsc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_bsc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_bsc_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @bus_generic_detach(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.bcm_bsc_softc* @device_get_softc(i32 %6)
  store %struct.bcm_bsc_softc* %7, %struct.bcm_bsc_softc** %3, align 8
  %8 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %15 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @device_delete_child(i32 %13, i32* %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %19, i32 0, i32 3
  %21 = call i32 @mtx_destroy(i32* %20)
  %22 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load i32, i32* %2, align 4
  %28 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %29 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @bus_teardown_intr(i32 %27, i64 %30, i64 %33)
  br label %35

35:                                               ; preds = %26, %18
  %36 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %37 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @SYS_RES_IRQ, align 4
  %43 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @bus_release_resource(i32 %41, i32 %42, i32 0, i64 %45)
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %49 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @SYS_RES_MEMORY, align 4
  %55 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %56 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @bus_release_resource(i32 %53, i32 %54, i32 0, i64 %57)
  br label %59

59:                                               ; preds = %52, %47
  ret i32 0
}

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local %struct.bcm_bsc_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
