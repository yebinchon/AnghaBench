; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { %struct.TYPE_3__, %struct.TYPE_4__, %struct.TYPE_4__, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.cpsw_slot = type { i32 }

@CPSW_WR_INT_CONTROL = common dso_local global i32 0, align 4
@CPSW_WR_INT_PACE_EN = common dso_local global i32 0, align 4
@CPSW_WR_INT_PRESCALE_MASK = common dso_local global i32 0, align 4
@CPSW_ALE_CONTROL = common dso_local global i32 0, align 4
@CPSW_ALE_CTL_CLEAR_TBL = common dso_local global i32 0, align 4
@CPSW_ALE_CTL_ENABLE = common dso_local global i32 0, align 4
@CPSW_ALE_CTL_VLAN_AWARE = common dso_local global i32 0, align 4
@CPSW_PORT_P0_CPDMA_TX_PRI_MAP = common dso_local global i32 0, align 4
@CPSW_PORT_P0_CPDMA_RX_CH_MAP = common dso_local global i32 0, align 4
@ALE_PORTCTL_INGRESS = common dso_local global i32 0, align 4
@ALE_PORTCTL_FORWARD = common dso_local global i32 0, align 4
@CPSW_SS_PTYPE = common dso_local global i32 0, align 4
@CPSW_SS_STAT_PORT_EN = common dso_local global i32 0, align 4
@CPSW_SS_FLOW_CONTROL = common dso_local global i32 0, align 4
@CPSW_CPDMA_RX_BUFFER_OFFSET = common dso_local global i32 0, align 4
@CPSW_CPDMA_TX_CONTROL = common dso_local global i32 0, align 4
@CPSW_CPDMA_RX_CONTROL = common dso_local global i32 0, align 4
@CPSW_CPDMA_DMA_INTMASK_SET = common dso_local global i32 0, align 4
@CPSW_CPDMA_RX_INTMASK_SET = common dso_local global i32 0, align 4
@CPSW_CPDMA_TX_INTMASK_SET = common dso_local global i32 0, align 4
@MDIOCONTROL = common dso_local global i32 0, align 4
@MDIOCTL_ENABLE = common dso_local global i32 0, align 4
@MDIOCTL_FAULTENB = common dso_local global i32 0, align 4
@CPSW_TXFRAGS = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@cpsw_tx_watchdog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_softc*)* @cpsw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_init(%struct.cpsw_softc* %0) #0 {
  %2 = alloca %struct.cpsw_softc*, align 8
  %3 = alloca %struct.cpsw_slot*, align 8
  %4 = alloca i32, align 4
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %2, align 8
  %5 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %6 = load i32, i32* @CPSW_WR_INT_CONTROL, align 4
  %7 = call i32 @cpsw_read_4(%struct.cpsw_softc* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @CPSW_WR_INT_PACE_EN, align 4
  %9 = load i32, i32* @CPSW_WR_INT_PRESCALE_MASK, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %15 = load i32, i32* @CPSW_WR_INT_CONTROL, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @cpsw_write_4(%struct.cpsw_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %19 = load i32, i32* @CPSW_ALE_CONTROL, align 4
  %20 = load i32, i32* @CPSW_ALE_CTL_CLEAR_TBL, align 4
  %21 = call i32 @cpsw_write_4(%struct.cpsw_softc* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @CPSW_ALE_CTL_ENABLE, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %24 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @CPSW_ALE_CTL_VLAN_AWARE, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %33 = load i32, i32* @CPSW_ALE_CONTROL, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @cpsw_write_4(%struct.cpsw_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %37 = load i32, i32* @CPSW_PORT_P0_CPDMA_TX_PRI_MAP, align 4
  %38 = call i32 @cpsw_write_4(%struct.cpsw_softc* %36, i32 %37, i32 1985229328)
  %39 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %40 = load i32, i32* @CPSW_PORT_P0_CPDMA_RX_CH_MAP, align 4
  %41 = call i32 @cpsw_write_4(%struct.cpsw_softc* %39, i32 %40, i32 0)
  %42 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %43 = call i32 @CPSW_ALE_PORTCTL(i32 0)
  %44 = load i32, i32* @ALE_PORTCTL_INGRESS, align 4
  %45 = load i32, i32* @ALE_PORTCTL_FORWARD, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @cpsw_write_4(%struct.cpsw_softc* %42, i32 %43, i32 %46)
  %48 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %49 = load i32, i32* @CPSW_SS_PTYPE, align 4
  %50 = call i32 @cpsw_write_4(%struct.cpsw_softc* %48, i32 %49, i32 0)
  %51 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %52 = load i32, i32* @CPSW_SS_STAT_PORT_EN, align 4
  %53 = call i32 @cpsw_write_4(%struct.cpsw_softc* %51, i32 %52, i32 7)
  %54 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %55 = load i32, i32* @CPSW_SS_FLOW_CONTROL, align 4
  %56 = call i32 @cpsw_write_4(%struct.cpsw_softc* %54, i32 %55, i32 0)
  %57 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %58 = load i32, i32* @CPSW_CPDMA_RX_BUFFER_OFFSET, align 4
  %59 = call i32 @cpsw_write_4(%struct.cpsw_softc* %57, i32 %58, i32 2)
  %60 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %61 = call i32 @CPSW_CPDMA_RX_PENDTHRESH(i32 0)
  %62 = call i32 @cpsw_write_4(%struct.cpsw_softc* %60, i32 %61, i32 0)
  %63 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %64 = call i32 @CPSW_CPDMA_RX_FREEBUFFER(i32 0)
  %65 = call i32 @cpsw_write_4(%struct.cpsw_softc* %63, i32 %64, i32 0)
  %66 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %67 = load i32, i32* @CPSW_CPDMA_TX_CONTROL, align 4
  %68 = call i32 @cpsw_write_4(%struct.cpsw_softc* %66, i32 %67, i32 1)
  %69 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %70 = load i32, i32* @CPSW_CPDMA_RX_CONTROL, align 4
  %71 = call i32 @cpsw_write_4(%struct.cpsw_softc* %69, i32 %70, i32 1)
  %72 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %73 = call i32 @CPSW_WR_C_RX_THRESH_EN(i32 0)
  %74 = call i32 @cpsw_write_4(%struct.cpsw_softc* %72, i32 %73, i32 255)
  %75 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %76 = call i32 @CPSW_WR_C_RX_EN(i32 0)
  %77 = call i32 @cpsw_write_4(%struct.cpsw_softc* %75, i32 %76, i32 255)
  %78 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %79 = call i32 @CPSW_WR_C_TX_EN(i32 0)
  %80 = call i32 @cpsw_write_4(%struct.cpsw_softc* %78, i32 %79, i32 255)
  %81 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %82 = call i32 @CPSW_WR_C_MISC_EN(i32 0)
  %83 = call i32 @cpsw_write_4(%struct.cpsw_softc* %81, i32 %82, i32 31)
  %84 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %85 = load i32, i32* @CPSW_CPDMA_DMA_INTMASK_SET, align 4
  %86 = call i32 @cpsw_write_4(%struct.cpsw_softc* %84, i32 %85, i32 3)
  %87 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %88 = load i32, i32* @CPSW_CPDMA_RX_INTMASK_SET, align 4
  %89 = call i32 @CPSW_CPDMA_RX_INT(i32 0)
  %90 = call i32 @CPSW_CPDMA_RX_INT_THRESH(i32 0)
  %91 = or i32 %89, %90
  %92 = call i32 @cpsw_write_4(%struct.cpsw_softc* %87, i32 %88, i32 %91)
  %93 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %94 = load i32, i32* @CPSW_CPDMA_TX_INTMASK_SET, align 4
  %95 = call i32 @cpsw_write_4(%struct.cpsw_softc* %93, i32 %94, i32 1)
  %96 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %97 = load i32, i32* @MDIOCONTROL, align 4
  %98 = load i32, i32* @MDIOCTL_ENABLE, align 4
  %99 = load i32, i32* @MDIOCTL_FAULTENB, align 4
  %100 = or i32 %98, %99
  %101 = or i32 %100, 255
  %102 = call i32 @cpsw_write_4(%struct.cpsw_softc* %96, i32 %97, i32 %101)
  %103 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %104 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = call %struct.cpsw_slot* @STAILQ_FIRST(i32* %105)
  store %struct.cpsw_slot* %106, %struct.cpsw_slot** %3, align 8
  %107 = load %struct.cpsw_slot*, %struct.cpsw_slot** %3, align 8
  %108 = icmp ne %struct.cpsw_slot* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %31
  %110 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %111 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %112 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %111, i32 0, i32 1
  %113 = load %struct.cpsw_slot*, %struct.cpsw_slot** %3, align 8
  %114 = call i32 @cpsw_write_hdp_slot(%struct.cpsw_softc* %110, %struct.TYPE_4__* %112, %struct.cpsw_slot* %113)
  br label %115

115:                                              ; preds = %109, %31
  %116 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %117 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = call %struct.cpsw_slot* @STAILQ_FIRST(i32* %118)
  store %struct.cpsw_slot* %119, %struct.cpsw_slot** %3, align 8
  %120 = load %struct.cpsw_slot*, %struct.cpsw_slot** %3, align 8
  %121 = icmp ne %struct.cpsw_slot* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %124 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %125 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %124, i32 0, i32 2
  %126 = load %struct.cpsw_slot*, %struct.cpsw_slot** %3, align 8
  %127 = call i32 @cpsw_write_hdp_slot(%struct.cpsw_softc* %123, %struct.TYPE_4__* %125, %struct.cpsw_slot* %126)
  br label %128

128:                                              ; preds = %122, %115
  %129 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %130 = call i32 @cpsw_rx_enqueue(%struct.cpsw_softc* %129)
  %131 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %132 = call i32 @CPSW_CPDMA_RX_FREEBUFFER(i32 0)
  %133 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %134 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @cpsw_write_4(%struct.cpsw_softc* %131, i32 %132, i32 %136)
  %138 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %139 = call i32 @CPSW_CPDMA_RX_PENDTHRESH(i32 0)
  %140 = load i32, i32* @CPSW_TXFRAGS, align 4
  %141 = call i32 @cpsw_write_4(%struct.cpsw_softc* %138, i32 %139, i32 %140)
  %142 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %143 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  %145 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %146 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  store i32 1, i32* %147, align 4
  %148 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %149 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %152 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = call i32 @callout_init(i32* %153, i32 0)
  %155 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %156 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* @hz, align 4
  %159 = load i32, i32* @cpsw_tx_watchdog, align 4
  %160 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %161 = call i32 @callout_reset(i32* %157, i32 %158, i32 %159, %struct.cpsw_softc* %160)
  ret void
}

declare dso_local i32 @cpsw_read_4(%struct.cpsw_softc*, i32) #1

declare dso_local i32 @cpsw_write_4(%struct.cpsw_softc*, i32, i32) #1

declare dso_local i32 @CPSW_ALE_PORTCTL(i32) #1

declare dso_local i32 @CPSW_CPDMA_RX_PENDTHRESH(i32) #1

declare dso_local i32 @CPSW_CPDMA_RX_FREEBUFFER(i32) #1

declare dso_local i32 @CPSW_WR_C_RX_THRESH_EN(i32) #1

declare dso_local i32 @CPSW_WR_C_RX_EN(i32) #1

declare dso_local i32 @CPSW_WR_C_TX_EN(i32) #1

declare dso_local i32 @CPSW_WR_C_MISC_EN(i32) #1

declare dso_local i32 @CPSW_CPDMA_RX_INT(i32) #1

declare dso_local i32 @CPSW_CPDMA_RX_INT_THRESH(i32) #1

declare dso_local %struct.cpsw_slot* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @cpsw_write_hdp_slot(%struct.cpsw_softc*, %struct.TYPE_4__*, %struct.cpsw_slot*) #1

declare dso_local i32 @cpsw_rx_enqueue(%struct.cpsw_softc*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.cpsw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
