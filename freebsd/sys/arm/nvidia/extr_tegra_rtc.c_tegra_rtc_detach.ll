; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_rtc.c_tegra_rtc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_rtc.c_tegra_rtc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_rtc_softc = type { i32*, i32*, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_rtc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rtc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_rtc_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.tegra_rtc_softc* @device_get_softc(i32 %4)
  store %struct.tegra_rtc_softc* %5, %struct.tegra_rtc_softc** %3, align 8
  %6 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @bus_teardown_intr(i32 %11, i32* %14, i32* %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @SYS_RES_IRQ, align 4
  %27 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @bus_release_resource(i32 %25, i32 %26, i32 0, i32* %29)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @SYS_RES_MEMORY, align 4
  %39 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_rtc_softc, %struct.tegra_rtc_softc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @bus_release_resource(i32 %37, i32 %38, i32 0, i32* %41)
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %3, align 8
  %45 = call i32 @LOCK_DESTROY(%struct.tegra_rtc_softc* %44)
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @bus_generic_detach(i32 %46)
  ret i32 %47
}

declare dso_local %struct.tegra_rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @LOCK_DESTROY(%struct.tegra_rtc_softc*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
