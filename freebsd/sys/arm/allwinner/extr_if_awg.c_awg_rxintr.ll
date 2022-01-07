; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_rxintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_rxintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.mbuf* }
%struct.mbuf = type { i32, %struct.mbuf*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@RX_DESC_CTL = common dso_local global i32 0, align 4
@RX_FRM_LEN = common dso_local global i32 0, align 4
@RX_FRM_LEN_SHIFT = common dso_local global i32 0, align 4
@RX_NO_ENOUGH_BUF_ERR = common dso_local global i32 0, align 4
@RX_OVERFLOW_ERR = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@RX_FRM_TYPE = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@RX_HEADER_ERR = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@RX_PAYLOAD_ERR = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@awg_rx_batch = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.awg_softc*)* @awg_rxintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_rxintr(%struct.awg_softc* %0) #0 {
  %2 = alloca %struct.awg_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.awg_softc* %0, %struct.awg_softc** %2, align 8
  %13 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %14 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %17 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %21 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %25 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @bus_dmamap_sync(i32 %19, i32 %23, i32 %26)
  %28 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %29 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %181, %1
  %33 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %34 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32toh(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @RX_DESC_CTL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %184

48:                                               ; preds = %32
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @RX_FRM_LEN, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @RX_FRM_LEN_SHIFT, align 4
  %53 = ashr i32 %51, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %48
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @RX_NO_ENOUGH_BUF_ERR, align 4
  %59 = load i32, i32* @RX_OVERFLOW_ERR, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %66 = call i32 @if_inc_counter(i32 %64, i32 %65, i32 1)
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @awg_reuse_rxdesc(%struct.awg_softc* %68, i32 %69)
  br label %181

71:                                               ; preds = %48
  %72 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %73 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.mbuf*, %struct.mbuf** %79, align 8
  store %struct.mbuf* %80, %struct.mbuf** %4, align 8
  %81 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @awg_newbuf_rx(%struct.awg_softc* %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %71
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %89 = call i32 @if_inc_counter(i32 %87, i32 %88, i32 1)
  %90 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @awg_reuse_rxdesc(%struct.awg_softc* %90, i32 %91)
  br label %181

93:                                               ; preds = %71
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %96 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %104 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %107 = call i32 @if_inc_counter(i32 %105, i32 %106, i32 1)
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @if_getcapenable(i32 %108)
  %110 = load i32, i32* @IFCAP_RXCSUM, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %152

113:                                              ; preds = %93
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @RX_FRM_TYPE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %152

118:                                              ; preds = %113
  %119 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %120 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %121 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @RX_HEADER_ERR, align 4
  %125 = and i32 %123, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %118
  %128 = load i32, i32* @CSUM_IP_VALID, align 4
  %129 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %130 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %128
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %127, %118
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @RX_PAYLOAD_ERR, align 4
  %137 = and i32 %135, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %134
  %140 = load i32, i32* @CSUM_DATA_VALID, align 4
  %141 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %144 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %142
  store i32 %147, i32* %145, align 4
  %148 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %149 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  store i32 65535, i32* %150, align 8
  br label %151

151:                                              ; preds = %139, %134
  br label %152

152:                                              ; preds = %151, %113, %93
  %153 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %154 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %153, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %154, align 8
  %155 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %156 = icmp eq %struct.mbuf* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %158, %struct.mbuf** %5, align 8
  br label %163

159:                                              ; preds = %152
  %160 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %161 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %162 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %161, i32 0, i32 1
  store %struct.mbuf* %160, %struct.mbuf** %162, align 8
  br label %163

163:                                              ; preds = %159, %157
  %164 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %164, %struct.mbuf** %6, align 8
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @awg_rx_batch, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %163
  %173 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %174 = call i32 @AWG_UNLOCK(%struct.awg_softc* %173)
  %175 = load i32, i32* %3, align 4
  %176 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %177 = call i32 @if_input(i32 %175, %struct.mbuf* %176)
  %178 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %179 = call i32 @AWG_LOCK(%struct.awg_softc* %178)
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  store i32 0, i32* %10, align 4
  br label %180

180:                                              ; preds = %172, %163
  br label %181

181:                                              ; preds = %180, %86, %67
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @RX_NEXT(i32 %182)
  store i32 %183, i32* %8, align 4
  br label %32

184:                                              ; preds = %47
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %187 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %185, %189
  br i1 %190, label %191, label %204

191:                                              ; preds = %184
  %192 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %193 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %197 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %201 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @bus_dmamap_sync(i32 %195, i32 %199, i32 %202)
  br label %204

204:                                              ; preds = %191, %184
  %205 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %206 = icmp ne %struct.mbuf* %205, null
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %209 = call i32 @AWG_UNLOCK(%struct.awg_softc* %208)
  %210 = load i32, i32* %3, align 4
  %211 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %212 = call i32 @if_input(i32 %210, %struct.mbuf* %211)
  %213 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %214 = call i32 @AWG_LOCK(%struct.awg_softc* %213)
  br label %215

215:                                              ; preds = %207, %204
  %216 = load i32, i32* %8, align 4
  %217 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %218 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  store i32 %216, i32* %219, align 8
  %220 = load i32, i32* %11, align 4
  ret i32 %220
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @awg_reuse_rxdesc(%struct.awg_softc*, i32) #1

declare dso_local i32 @awg_newbuf_rx(%struct.awg_softc*, i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @AWG_UNLOCK(%struct.awg_softc*) #1

declare dso_local i32 @if_input(i32, %struct.mbuf*) #1

declare dso_local i32 @AWG_LOCK(%struct.awg_softc*) #1

declare dso_local i32 @RX_NEXT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
