; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_wdt.c_ti_wdt_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_wdt.c_ti_wdt_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_wdt_softc = type { i64, i64, i64, i64 }

@watchdog_list = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_wdt_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_wdt_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_wdt_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ti_wdt_softc* @device_get_softc(i32 %4)
  store %struct.ti_wdt_softc* %5, %struct.ti_wdt_softc** %3, align 8
  %6 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @watchdog_list, align 4
  %12 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @EVENTHANDLER_DEREGISTER(i32 %11, i64 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @bus_teardown_intr(i32 %22, i64 %25, i64 %28)
  br label %30

30:                                               ; preds = %21, %16
  %31 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @SYS_RES_IRQ, align 4
  %38 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @rman_get_rid(i64 %40)
  %42 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @bus_release_resource(i32 %36, i32 %37, i32 %41, i64 %44)
  br label %46

46:                                               ; preds = %35, %30
  %47 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @SYS_RES_MEMORY, align 4
  %54 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @rman_get_rid(i64 %56)
  %58 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @bus_release_resource(i32 %52, i32 %53, i32 %57, i64 %60)
  br label %62

62:                                               ; preds = %51, %46
  ret i32 0
}

declare dso_local %struct.ti_wdt_softc* @device_get_softc(i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i64) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @rman_get_rid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
