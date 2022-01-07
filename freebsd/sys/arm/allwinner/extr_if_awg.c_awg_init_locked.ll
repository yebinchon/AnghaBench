; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { i32, i32, i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@awg_burst_len = common dso_local global i32 0, align 4
@BASIC_CTL_BURST_LEN_SHIFT = common dso_local global i32 0, align 4
@awg_rx_tx_pri = common dso_local global i64 0, align 8
@BASIC_CTL_RX_TX_PRI = common dso_local global i32 0, align 4
@EMAC_BASIC_CTL_1 = common dso_local global i32 0, align 4
@EMAC_TX_CTL_1 = common dso_local global i32 0, align 4
@TX_DMA_EN = common dso_local global i32 0, align 4
@TX_MD = common dso_local global i32 0, align 4
@TX_NEXT_FRAME = common dso_local global i32 0, align 4
@EMAC_RX_CTL_1 = common dso_local global i32 0, align 4
@RX_DMA_EN = common dso_local global i32 0, align 4
@RX_MD = common dso_local global i32 0, align 4
@EMAC_TX_CTL_0 = common dso_local global i32 0, align 4
@TX_EN = common dso_local global i32 0, align 4
@EMAC_RX_CTL_0 = common dso_local global i32 0, align 4
@RX_EN = common dso_local global i32 0, align 4
@CHECK_CRC = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@awg_tick = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.awg_softc*)* @awg_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @awg_init_locked(%struct.awg_softc* %0) #0 {
  %2 = alloca %struct.awg_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.awg_softc* %0, %struct.awg_softc** %2, align 8
  %6 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %7 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mii_data* @device_get_softc(i32 %8)
  store %struct.mii_data* %9, %struct.mii_data** %3, align 8
  %10 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %11 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %14 = call i32 @AWG_ASSERT_LOCKED(%struct.awg_softc* %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @if_getdrvflags(i32 %15)
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %96

21:                                               ; preds = %1
  %22 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %23 = call i32 @awg_setup_rxfilter(%struct.awg_softc* %22)
  %24 = load i32, i32* @awg_burst_len, align 4
  %25 = load i32, i32* @BASIC_CTL_BURST_LEN_SHIFT, align 4
  %26 = shl i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load i64, i64* @awg_rx_tx_pri, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @BASIC_CTL_RX_TX_PRI, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %21
  %34 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %35 = load i32, i32* @EMAC_BASIC_CTL_1, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @WR4(%struct.awg_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %39 = call i32 @awg_enable_intr(%struct.awg_softc* %38)
  %40 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %41 = load i32, i32* @EMAC_TX_CTL_1, align 4
  %42 = call i32 @RD4(%struct.awg_softc* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %44 = load i32, i32* @EMAC_TX_CTL_1, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @TX_DMA_EN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @TX_MD, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @TX_NEXT_FRAME, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @WR4(%struct.awg_softc* %43, i32 %44, i32 %51)
  %53 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %54 = load i32, i32* @EMAC_RX_CTL_1, align 4
  %55 = call i32 @RD4(%struct.awg_softc* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %57 = load i32, i32* @EMAC_RX_CTL_1, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @RX_DMA_EN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @RX_MD, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @WR4(%struct.awg_softc* %56, i32 %57, i32 %62)
  %64 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %65 = load i32, i32* @EMAC_TX_CTL_0, align 4
  %66 = call i32 @RD4(%struct.awg_softc* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %68 = load i32, i32* @EMAC_TX_CTL_0, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @TX_EN, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @WR4(%struct.awg_softc* %67, i32 %68, i32 %71)
  %73 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %74 = load i32, i32* @EMAC_RX_CTL_0, align 4
  %75 = call i32 @RD4(%struct.awg_softc* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %77 = load i32, i32* @EMAC_RX_CTL_0, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @RX_EN, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CHECK_CRC, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @WR4(%struct.awg_softc* %76, i32 %77, i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %86 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %87 = call i32 @if_setdrvflagbits(i32 %84, i32 %85, i32 %86)
  %88 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %89 = call i32 @mii_mediachg(%struct.mii_data* %88)
  %90 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %91 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %90, i32 0, i32 0
  %92 = load i32, i32* @hz, align 4
  %93 = load i32, i32* @awg_tick, align 4
  %94 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %95 = call i32 @callout_reset(i32* %91, i32 %92, i32 %93, %struct.awg_softc* %94)
  br label %96

96:                                               ; preds = %33, %20
  ret void
}

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @AWG_ASSERT_LOCKED(%struct.awg_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @awg_setup_rxfilter(%struct.awg_softc*) #1

declare dso_local i32 @WR4(%struct.awg_softc*, i32, i32) #1

declare dso_local i32 @awg_enable_intr(%struct.awg_softc*) #1

declare dso_local i32 @RD4(%struct.awg_softc*, i32) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.awg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
