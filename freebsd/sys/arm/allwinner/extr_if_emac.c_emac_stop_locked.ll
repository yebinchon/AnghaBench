; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_softc = type { i32, i64, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@EMAC_INT_CTL = common dso_local global i32 0, align 4
@EMAC_INT_STA = common dso_local global i32 0, align 4
@EMAC_CTL = common dso_local global i32 0, align 4
@EMAC_CTL_RST = common dso_local global i32 0, align 4
@EMAC_CTL_TX_EN = common dso_local global i32 0, align 4
@EMAC_CTL_RX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_softc*)* @emac_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_stop_locked(%struct.emac_softc* %0) #0 {
  %2 = alloca %struct.emac_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.emac_softc* %0, %struct.emac_softc** %2, align 8
  %5 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %6 = call i32 @EMAC_ASSERT_LOCKED(%struct.emac_softc* %5)
  %7 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %8 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %7, i32 0, i32 2
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %11 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %19 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %21 = load i32, i32* @EMAC_INT_CTL, align 4
  %22 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %20, i32 %21, i32 0)
  %23 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %24 = load i32, i32* @EMAC_INT_STA, align 4
  %25 = call i32 @EMAC_READ_REG(%struct.emac_softc* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %27 = load i32, i32* @EMAC_INT_STA, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %26, i32 %27, i32 %28)
  %30 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %31 = load i32, i32* @EMAC_CTL, align 4
  %32 = call i32 @EMAC_READ_REG(%struct.emac_softc* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @EMAC_CTL_RST, align 4
  %34 = load i32, i32* @EMAC_CTL_TX_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @EMAC_CTL_RX_EN, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %42 = load i32, i32* @EMAC_CTL, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @EMAC_WRITE_REG(%struct.emac_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %46 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %45, i32 0, i32 0
  %47 = call i32 @callout_stop(i32* %46)
  ret void
}

declare dso_local i32 @EMAC_ASSERT_LOCKED(%struct.emac_softc*) #1

declare dso_local i32 @EMAC_WRITE_REG(%struct.emac_softc*, i32, i32) #1

declare dso_local i32 @EMAC_READ_REG(%struct.emac_softc*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
