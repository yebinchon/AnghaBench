; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fv_softc = type { %struct.TYPE_6__, i32, %struct.TYPE_4__, %struct.ifnet* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.fv_rxdesc* }
%struct.fv_rxdesc = type { i32, i64, %struct.mbuf*, i32 }
%struct.mbuf = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.ifnet*, i64 }
%struct.TYPE_4__ = type { %struct.fv_desc* }
%struct.fv_desc = type { i32, i64, i32 }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@FV_RX_RING_CNT = common dso_local global i32 0, align 4
@ADSTAT_OWN = common dso_local global i32 0, align 4
@ADSTAT_ES = common dso_local global i32 0, align 4
@ADSTAT_Rx_TL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Receive Descriptor error %x\0A\00", align 1
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@ADSTAT_Rx_DE = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@ADCTL_ER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to allocate buffer\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fv_softc*)* @fv_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fv_rx(%struct.fv_softc* %0) #0 {
  %2 = alloca %struct.fv_softc*, align 8
  %3 = alloca %struct.fv_rxdesc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fv_desc*, align 8
  %10 = alloca %struct.mbuf*, align 8
  store %struct.fv_softc* %0, %struct.fv_softc** %2, align 8
  %11 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %12 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %11, i32 0, i32 3
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %4, align 8
  %14 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %15 = call i32 @FV_LOCK_ASSERT(%struct.fv_softc* %14)
  %16 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %17 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %21 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %25 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %29 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @bus_dmamap_sync(i32 %23, i32 %27, i32 %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %205, %1
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @FV_RX_RING_CNT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %209

36:                                               ; preds = %32
  %37 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %38 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.fv_desc*, %struct.fv_desc** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %40, i64 %42
  store %struct.fv_desc* %43, %struct.fv_desc** %9, align 8
  %44 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %45 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load %struct.fv_rxdesc*, %struct.fv_rxdesc** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.fv_rxdesc, %struct.fv_rxdesc* %47, i64 %49
  store %struct.fv_rxdesc* %50, %struct.fv_rxdesc** %3, align 8
  %51 = load %struct.fv_rxdesc*, %struct.fv_rxdesc** %3, align 8
  %52 = getelementptr inbounds %struct.fv_rxdesc, %struct.fv_rxdesc* %51, i32 0, i32 2
  %53 = load %struct.mbuf*, %struct.mbuf** %52, align 8
  store %struct.mbuf* %53, %struct.mbuf** %10, align 8
  %54 = load %struct.fv_desc*, %struct.fv_desc** %9, align 8
  %55 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ADSTAT_OWN, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @ADSTAT_OWN, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %36
  br label %209

62:                                               ; preds = %36
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load %struct.fv_desc*, %struct.fv_desc** %9, align 8
  %66 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ADSTAT_ES, align 4
  %69 = load i32, i32* @ADSTAT_Rx_TL, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %62
  %74 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %75 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.fv_desc*, %struct.fv_desc** %9, align 8
  %78 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %82 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %83 = call i32 @if_inc_counter(%struct.ifnet* %81, i32 %82, i32 1)
  store i32 0, i32* %7, align 4
  br label %89

84:                                               ; preds = %62
  %85 = load %struct.fv_desc*, %struct.fv_desc** %9, align 8
  %86 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ADSTAT_Rx_LENGTH(i32 %87)
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %84, %73
  store i32 1, i32* %8, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 64
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %95 = call i32 @if_inc_counter(%struct.ifnet* %93, i32 %94, i32 1)
  br label %147

96:                                               ; preds = %89
  %97 = load %struct.fv_desc*, %struct.fv_desc** %9, align 8
  %98 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ADSTAT_Rx_DE, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %146

103:                                              ; preds = %96
  store i32 0, i32* %8, align 4
  %104 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %105 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.fv_rxdesc*, %struct.fv_rxdesc** %3, align 8
  %109 = getelementptr inbounds %struct.fv_rxdesc, %struct.fv_rxdesc* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %112 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @bus_dmamap_sync(i32 %107, i32 %110, i32 %113)
  %115 = load %struct.fv_rxdesc*, %struct.fv_rxdesc** %3, align 8
  %116 = getelementptr inbounds %struct.fv_rxdesc, %struct.fv_rxdesc* %115, i32 0, i32 2
  %117 = load %struct.mbuf*, %struct.mbuf** %116, align 8
  store %struct.mbuf* %117, %struct.mbuf** %10, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* @ETHER_CRC_LEN, align 8
  %121 = sub nsw i64 %119, %120
  %122 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %123 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %125 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i64 %121, i64* %126, align 8
  %127 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %128 = call i32 @fv_fixup_rx(%struct.mbuf* %127)
  %129 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %130 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %131 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store %struct.ifnet* %129, %struct.ifnet** %132, align 8
  %133 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %134 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %135 = call i32 @if_inc_counter(%struct.ifnet* %133, i32 %134, i32 1)
  %136 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %137 = call i32 @FV_UNLOCK(%struct.fv_softc* %136)
  %138 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %139 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %138, i32 0, i32 0
  %140 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %139, align 8
  %141 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %142 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %143 = call i32 %140(%struct.ifnet* %141, %struct.mbuf* %142)
  %144 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %145 = call i32 @FV_LOCK(%struct.fv_softc* %144)
  br label %146

146:                                              ; preds = %103, %96
  br label %147

147:                                              ; preds = %146, %92
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load %struct.fv_rxdesc*, %struct.fv_rxdesc** %3, align 8
  %152 = getelementptr inbounds %struct.fv_rxdesc, %struct.fv_rxdesc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.fv_desc*, %struct.fv_desc** %9, align 8
  %155 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.fv_rxdesc*, %struct.fv_rxdesc** %3, align 8
  %157 = getelementptr inbounds %struct.fv_rxdesc, %struct.fv_rxdesc* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.fv_desc*, %struct.fv_desc** %9, align 8
  %160 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  %161 = load %struct.fv_desc*, %struct.fv_desc** %9, align 8
  %162 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %161, i32 0, i32 2
  store i32 0, i32* %162, align 8
  br label %192

163:                                              ; preds = %147
  %164 = load i32, i32* @ADSTAT_OWN, align 4
  %165 = load %struct.fv_desc*, %struct.fv_desc** %9, align 8
  %166 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.fv_desc*, %struct.fv_desc** %9, align 8
  %168 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %167, i32 0, i32 2
  store i32 0, i32* %168, align 8
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @FV_RX_RING_CNT, align 4
  %171 = sub nsw i32 %170, 1
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %163
  %174 = load i32, i32* @ADCTL_ER, align 4
  %175 = load %struct.fv_desc*, %struct.fv_desc** %9, align 8
  %176 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %173, %163
  %180 = load %struct.fv_desc*, %struct.fv_desc** %9, align 8
  %181 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  %182 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %183 = load i32, i32* %5, align 4
  %184 = call i64 @fv_newbuf(%struct.fv_softc* %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %179
  %187 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %188 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 (i32, i8*, ...) @device_printf(i32 %189, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %209

191:                                              ; preds = %179
  br label %192

192:                                              ; preds = %191, %150
  %193 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %194 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %198 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %202 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @bus_dmamap_sync(i32 %196, i32 %200, i32 %203)
  br label %205

205:                                              ; preds = %192
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* @FV_RX_RING_CNT, align 4
  %208 = call i32 @FV_INC(i32 %206, i32 %207)
  br label %32

209:                                              ; preds = %186, %61, %32
  %210 = load i32, i32* %6, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %229

212:                                              ; preds = %209
  %213 = load i32, i32* %5, align 4
  %214 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %215 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  store i32 %213, i32* %216, align 8
  %217 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %218 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %222 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %226 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %227 = or i32 %225, %226
  %228 = call i32 @bus_dmamap_sync(i32 %220, i32 %224, i32 %227)
  br label %229

229:                                              ; preds = %212, %209
  ret void
}

declare dso_local i32 @FV_LOCK_ASSERT(%struct.fv_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ADSTAT_Rx_LENGTH(i32) #1

declare dso_local i32 @fv_fixup_rx(%struct.mbuf*) #1

declare dso_local i32 @FV_UNLOCK(%struct.fv_softc*) #1

declare dso_local i32 @FV_LOCK(%struct.fv_softc*) #1

declare dso_local i64 @fv_newbuf(%struct.fv_softc*, i32) #1

declare dso_local i32 @FV_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
