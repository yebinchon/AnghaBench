; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { i32 }

@EMAC_INT_EN = common dso_local global i32 0, align 4
@RX_INT_EN = common dso_local global i32 0, align 4
@TX_INT_EN = common dso_local global i32 0, align 4
@TX_BUF_UA_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.awg_softc*)* @awg_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @awg_enable_intr(%struct.awg_softc* %0) #0 {
  %2 = alloca %struct.awg_softc*, align 8
  store %struct.awg_softc* %0, %struct.awg_softc** %2, align 8
  %3 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %4 = load i32, i32* @EMAC_INT_EN, align 4
  %5 = load i32, i32* @RX_INT_EN, align 4
  %6 = load i32, i32* @TX_INT_EN, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @TX_BUF_UA_INT_EN, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @WR4(%struct.awg_softc* %3, i32 %4, i32 %9)
  ret void
}

declare dso_local i32 @WR4(%struct.awg_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
