; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_softc = type { i32, i32 }
%struct.mii_data = type { i32 }

@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @emac_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.emac_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.emac_softc*
  store %struct.emac_softc* %6, %struct.emac_softc** %3, align 8
  %7 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %8 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mii_data* @device_get_softc(i32 %9)
  store %struct.mii_data* %10, %struct.mii_data** %4, align 8
  %11 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %12 = call i32 @mii_tick(%struct.mii_data* %11)
  %13 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %14 = call i32 @emac_watchdog(%struct.emac_softc* %13)
  %15 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %16 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %15, i32 0, i32 0
  %17 = load i32, i32* @hz, align 4
  %18 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %19 = call i32 @callout_reset(i32* %16, i32 %17, void (i8*)* @emac_tick, %struct.emac_softc* %18)
  ret void
}

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i32 @emac_watchdog(%struct.emac_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.emac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
