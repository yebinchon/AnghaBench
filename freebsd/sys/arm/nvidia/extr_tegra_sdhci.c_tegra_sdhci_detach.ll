; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_sdhci.c_tegra_sdhci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_sdhci.c_tegra_sdhci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sdhci_softc = type { i32, i32, i32, i32, i32, %struct.sdhci_slot }
%struct.sdhci_slot = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_sdhci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sdhci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_sdhci_softc*, align 8
  %4 = alloca %struct.sdhci_slot*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.tegra_sdhci_softc* @device_get_softc(i32 %5)
  store %struct.tegra_sdhci_softc* %6, %struct.tegra_sdhci_softc** %3, align 8
  %7 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %7, i32 0, i32 5
  store %struct.sdhci_slot* %8, %struct.sdhci_slot** %4, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @bus_generic_detach(i32 %9)
  %11 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sdhci_fdt_gpio_teardown(i32 %13)
  %15 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_release(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %3, align 8
  %24 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bus_teardown_intr(i32 %19, i32 %22, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @SYS_RES_IRQ, align 4
  %29 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %3, align 8
  %30 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rman_get_rid(i32 %31)
  %33 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bus_release_resource(i32 %27, i32 %28, i32 %32, i32 %35)
  %37 = load %struct.sdhci_slot*, %struct.sdhci_slot** %4, align 8
  %38 = call i32 @sdhci_cleanup_slot(%struct.sdhci_slot* %37)
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @SYS_RES_MEMORY, align 4
  %41 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %3, align 8
  %42 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rman_get_rid(i32 %43)
  %45 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %3, align 8
  %46 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bus_release_resource(i32 %39, i32 %40, i32 %44, i32 %47)
  ret i32 0
}

declare dso_local %struct.tegra_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @sdhci_fdt_gpio_teardown(i32) #1

declare dso_local i32 @clk_release(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_rid(i32) #1

declare dso_local i32 @sdhci_cleanup_slot(%struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
