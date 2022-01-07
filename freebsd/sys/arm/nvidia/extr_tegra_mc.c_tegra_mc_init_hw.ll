; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_mc.c_tegra_mc_init_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_mc.c_tegra_mc_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_mc_softc = type { i32 }

@MC_INTMASK = common dso_local global i32 0, align 4
@MC_INTSTATUS = common dso_local global i32 0, align 4
@MC_INT_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_mc_softc*)* @tegra_mc_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_mc_init_hw(%struct.tegra_mc_softc* %0) #0 {
  %2 = alloca %struct.tegra_mc_softc*, align 8
  store %struct.tegra_mc_softc* %0, %struct.tegra_mc_softc** %2, align 8
  %3 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %2, align 8
  %4 = load i32, i32* @MC_INTMASK, align 4
  %5 = call i32 @WR4(%struct.tegra_mc_softc* %3, i32 %4, i32 0)
  %6 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %2, align 8
  %7 = load i32, i32* @MC_INTSTATUS, align 4
  %8 = load i32, i32* @MC_INT_INT_MASK, align 4
  %9 = call i32 @WR4(%struct.tegra_mc_softc* %6, i32 %7, i32 %8)
  ret void
}

declare dso_local i32 @WR4(%struct.tegra_mc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
