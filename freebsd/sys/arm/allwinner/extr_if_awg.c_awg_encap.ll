; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_encap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i64, i64, %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i8*, i8*, i8* }
%struct.TYPE_8__ = type { %struct.mbuf*, i32 }
%struct.mbuf = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }

@TX_MAX_SEGS = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"awg_encap: m_collapse failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"awg_encap: bus_dmamap_load_mbuf_sg failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TX_DESC_COUNT = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@TX_FIR_DESC = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@TX_CHECKSUM_CTL_FULL = common dso_local global i32 0, align 4
@TX_CHECKSUM_CTL_IP = common dso_local global i32 0, align 4
@TX_CHECKSUM_CTL_SHIFT = common dso_local global i32 0, align 4
@TX_LAST_DESC = common dso_local global i32 0, align 4
@awg_tx_interval = common dso_local global i64 0, align 8
@TX_INT_CTL = common dso_local global i32 0, align 4
@TX_DESC_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.awg_softc*, %struct.mbuf**)* @awg_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_encap(%struct.awg_softc* %0, %struct.mbuf** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.awg_softc*, align 8
  %5 = alloca %struct.mbuf**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mbuf*, align 8
  %19 = alloca i32, align 4
  store %struct.awg_softc* %0, %struct.awg_softc** %4, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %5, align 8
  %20 = load i32, i32* @TX_MAX_SEGS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca %struct.TYPE_11__, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %25 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %29 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  %37 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %37, align 8
  store %struct.mbuf* %38, %struct.mbuf** %18, align 8
  %39 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %40 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %45 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %46 = call i32 @bus_dmamap_load_mbuf_sg(i32 %42, i32 %43, %struct.mbuf* %44, %struct.TYPE_11__* %23, i32* %10, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @EFBIG, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %2
  %51 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %52 = load i32, i32* @M_NOWAIT, align 4
  %53 = load i32, i32* @TX_MAX_SEGS, align 4
  %54 = call %struct.mbuf* @m_collapse(%struct.mbuf* %51, i32 %52, i32 %53)
  store %struct.mbuf* %54, %struct.mbuf** %18, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %56 = icmp eq %struct.mbuf* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %59 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %62, align 8
  %64 = call i32 @m_freem(%struct.mbuf* %63)
  %65 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* null, %struct.mbuf** %65, align 8
  %66 = load i32, i32* @ENOMEM, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %302

67:                                               ; preds = %50
  %68 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %69 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* %68, %struct.mbuf** %69, align 8
  %70 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %71 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %76 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %77 = call i32 @bus_dmamap_load_mbuf_sg(i32 %73, i32 %74, %struct.mbuf* %75, %struct.TYPE_11__* %23, i32* %10, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %67
  %81 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %82 = load %struct.mbuf*, %struct.mbuf** %81, align 8
  %83 = call i32 @m_freem(%struct.mbuf* %82)
  %84 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* null, %struct.mbuf** %84, align 8
  br label %85

85:                                               ; preds = %80, %67
  br label %86

86:                                               ; preds = %85, %2
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %91 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @device_printf(i32 %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %302

95:                                               ; preds = %86
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %100 = load %struct.mbuf*, %struct.mbuf** %99, align 8
  %101 = call i32 @m_freem(%struct.mbuf* %100)
  %102 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* null, %struct.mbuf** %102, align 8
  %103 = load i32, i32* @EIO, align 4
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %302

104:                                              ; preds = %95
  %105 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %106 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = load i64, i64* @TX_DESC_COUNT, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %104
  %115 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %116 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @bus_dmamap_unload(i32 %118, i32 %119)
  %121 = load i32, i32* @ENOBUFS, align 4
  store i32 %121, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %302

122:                                              ; preds = %104
  %123 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %124 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %129 = call i32 @bus_dmamap_sync(i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* @TX_FIR_DESC, align 4
  store i32 %130, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %131 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %132 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CSUM_IP, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %122
  %139 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %140 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @CSUM_TCP, align 4
  %144 = load i32, i32* @CSUM_UDP, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = load i32, i32* @TX_CHECKSUM_CTL_FULL, align 4
  store i32 %149, i32* %15, align 4
  br label %152

150:                                              ; preds = %138
  %151 = load i32, i32* @TX_CHECKSUM_CTL_IP, align 4
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* @TX_CHECKSUM_CTL_SHIFT, align 4
  %155 = shl i32 %153, %154
  %156 = load i32, i32* %16, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %152, %122
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %245, %158
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %248

163:                                              ; preds = %159
  %164 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %165 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %166, align 8
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %10, align 4
  %171 = sub nsw i32 %170, 1
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %191

173:                                              ; preds = %163
  %174 = load i32, i32* @TX_LAST_DESC, align 4
  %175 = load i32, i32* %16, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %16, align 4
  %177 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %178 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @awg_tx_interval, align 8
  %182 = icmp sge i64 %180, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %173
  %184 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %185 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 2
  store i64 0, i64* %186, align 8
  %187 = load i32, i32* @TX_INT_CTL, align 4
  %188 = load i32, i32* %16, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %16, align 4
  br label %190

190:                                              ; preds = %183, %173
  br label %191

191:                                              ; preds = %190, %163
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = call i8* @htole32(i32 %197)
  %199 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %200 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 2
  store i8* %198, i8** %206, align 8
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %14, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 16
  %213 = or i32 %207, %212
  %214 = call i8* @htole32(i32 %213)
  %215 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %216 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  store i8* %214, i8** %222, align 8
  %223 = load i32, i32* %17, align 4
  %224 = call i8* @htole32(i32 %223)
  %225 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %226 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  store i8* %224, i8** %232, align 8
  %233 = load i32, i32* @TX_FIR_DESC, align 4
  %234 = xor i32 %233, -1
  %235 = load i32, i32* %16, align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* %16, align 4
  %237 = load i32, i32* @TX_DESC_CTL, align 4
  store i32 %237, i32* %17, align 4
  %238 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %239 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %241, 1
  store i64 %242, i64* %240, align 8
  %243 = load i32, i32* %11, align 4
  %244 = call i32 @TX_NEXT(i32 %243)
  store i32 %244, i32* %11, align 4
  br label %245

245:                                              ; preds = %191
  %246 = load i32, i32* %14, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %14, align 4
  br label %159

248:                                              ; preds = %159
  %249 = load i32, i32* %11, align 4
  %250 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %251 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  store i32 %249, i32* %252, align 8
  %253 = load i32, i32* %11, align 4
  %254 = load i64, i64* @TX_DESC_COUNT, align 8
  %255 = sub nsw i64 %254, 1
  %256 = call i32 @TX_SKIP(i32 %253, i64 %255)
  store i32 %256, i32* %13, align 4
  %257 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %258 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 4
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %259, align 8
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %267 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 4
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %268, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 1
  store i32 %265, i32* %273, align 8
  %274 = load i32, i32* %6, align 4
  %275 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %276 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 4
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %277, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  store i32 %274, i32* %282, align 8
  %283 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %284 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %285 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 4
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %286, align 8
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  store %struct.mbuf* %283, %struct.mbuf** %291, align 8
  %292 = load i32, i32* @TX_DESC_CTL, align 4
  %293 = call i8* @htole32(i32 %292)
  %294 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %295 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 3
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %296, align 8
  %298 = load i32, i32* %12, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  store i8* %293, i8** %301, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %302

302:                                              ; preds = %248, %114, %98, %89, %57
  %303 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %303)
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_11__*, i32*, i32) #2

declare dso_local %struct.mbuf* @m_collapse(%struct.mbuf*, i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local i32 @bus_dmamap_unload(i32, i32) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

declare dso_local i8* @htole32(i32) #2

declare dso_local i32 @TX_NEXT(i32) #2

declare dso_local i32 @TX_SKIP(i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
