; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { %struct.TYPE_8__, %struct.TYPE_6__, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@EMAC_TX_CTL_1 = common dso_local global i32 0, align 4
@TX_DMA_EN = common dso_local global i32 0, align 4
@FLUSH_TX_FIFO = common dso_local global i32 0, align 4
@EMAC_TX_CTL_0 = common dso_local global i32 0, align 4
@TX_EN = common dso_local global i32 0, align 4
@EMAC_RX_CTL_0 = common dso_local global i32 0, align 4
@RX_EN = common dso_local global i32 0, align 4
@EMAC_RX_CTL_1 = common dso_local global i32 0, align 4
@RX_DMA_EN = common dso_local global i32 0, align 4
@TX_DESC_CTL = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@RX_DESC_CTL = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.awg_softc*)* @awg_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @awg_stop(%struct.awg_softc* %0) #0 {
  %2 = alloca %struct.awg_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.awg_softc* %0, %struct.awg_softc** %2, align 8
  %6 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %7 = call i32 @AWG_ASSERT_LOCKED(%struct.awg_softc* %6)
  %8 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %9 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %12 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %11, i32 0, i32 3
  %13 = call i32 @callout_stop(i32* %12)
  %14 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %15 = load i32, i32* @EMAC_TX_CTL_1, align 4
  %16 = call i32 @RD4(%struct.awg_softc* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @TX_DMA_EN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @FLUSH_TX_FIFO, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %25 = load i32, i32* @EMAC_TX_CTL_1, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @WR4(%struct.awg_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %29 = load i32, i32* @EMAC_TX_CTL_0, align 4
  %30 = call i32 @RD4(%struct.awg_softc* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %32 = load i32, i32* @EMAC_TX_CTL_0, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @TX_EN, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @WR4(%struct.awg_softc* %31, i32 %32, i32 %36)
  %38 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %39 = load i32, i32* @EMAC_RX_CTL_0, align 4
  %40 = call i32 @RD4(%struct.awg_softc* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %42 = load i32, i32* @EMAC_RX_CTL_0, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @RX_EN, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = call i32 @WR4(%struct.awg_softc* %41, i32 %42, i32 %46)
  %48 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %49 = call i32 @awg_disable_intr(%struct.awg_softc* %48)
  %50 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %51 = load i32, i32* @EMAC_TX_CTL_1, align 4
  %52 = call i32 @RD4(%struct.awg_softc* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %54 = load i32, i32* @EMAC_TX_CTL_1, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @TX_DMA_EN, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = call i32 @WR4(%struct.awg_softc* %53, i32 %54, i32 %58)
  %60 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %61 = load i32, i32* @EMAC_RX_CTL_1, align 4
  %62 = call i32 @RD4(%struct.awg_softc* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %64 = load i32, i32* @EMAC_RX_CTL_1, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @RX_DMA_EN, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = call i32 @WR4(%struct.awg_softc* %63, i32 %64, i32 %68)
  %70 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %71 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %73 = call i32 @awg_txeof(%struct.awg_softc* %72)
  %74 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %75 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %104, %1
  %79 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %80 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %78
  %85 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %86 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @le32toh(i64 %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @TX_DESC_CTL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  br label %107

100:                                              ; preds = %84
  %101 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @awg_clean_txbuf(%struct.awg_softc* %101, i32 %102)
  br label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @TX_NEXT(i32 %105)
  store i32 %106, i32* %5, align 4
  br label %78

107:                                              ; preds = %99, %78
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %110 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  br label %112

112:                                              ; preds = %130, %107
  %113 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %114 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %112
  %119 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %120 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 5
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @awg_clean_txbuf(%struct.awg_softc* %127, i32 %128)
  br label %130

130:                                              ; preds = %118
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @TX_NEXT(i32 %131)
  store i32 %132, i32* %5, align 4
  br label %112

133:                                              ; preds = %112
  %134 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %135 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %139 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  store i32 %137, i32* %140, align 8
  %141 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %142 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %146 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %150 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @bus_dmamap_sync(i32 %144, i32 %148, i32 %151)
  %153 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %154 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %158 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %162 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @bus_dmamap_sync(i32 %156, i32 %160, i32 %163)
  %165 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %166 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %189, %133
  %170 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %171 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @le32toh(i64 %178)
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* @RX_DESC_CTL, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %169
  br label %192

185:                                              ; preds = %169
  %186 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @awg_reuse_rxdesc(%struct.awg_softc* %186, i32 %187)
  br label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @RX_NEXT(i32 %190)
  store i32 %191, i32* %5, align 4
  br label %169

192:                                              ; preds = %184
  %193 = load i32, i32* %5, align 4
  %194 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %195 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 8
  %197 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %198 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %202 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %206 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @bus_dmamap_sync(i32 %200, i32 %204, i32 %207)
  %209 = load i32, i32* %3, align 4
  %210 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %211 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %212 = or i32 %210, %211
  %213 = call i32 @if_setdrvflagbits(i32 %209, i32 0, i32 %212)
  ret void
}

declare dso_local i32 @AWG_ASSERT_LOCKED(%struct.awg_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @RD4(%struct.awg_softc*, i32) #1

declare dso_local i32 @WR4(%struct.awg_softc*, i32, i32) #1

declare dso_local i32 @awg_disable_intr(%struct.awg_softc*) #1

declare dso_local i32 @awg_txeof(%struct.awg_softc*) #1

declare dso_local i32 @le32toh(i64) #1

declare dso_local i32 @awg_clean_txbuf(%struct.awg_softc*, i32) #1

declare dso_local i32 @TX_NEXT(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @awg_reuse_rxdesc(%struct.awg_softc*, i32) #1

declare dso_local i32 @RX_NEXT(i32) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
