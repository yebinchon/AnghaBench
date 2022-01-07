; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_phy.c_ar9300_get_tpc_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_phy.c_ar9300_get_tpc_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ath_hal_9300 = type { i32**, i32, i32** }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.rate_power_tbl = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_8__ = type { %struct.ieee80211_channel* }

@.str = private unnamed_addr constant [30 x i8] c"\0A TPC Register method in use\0A\00", align 1
@AR9300_MCS0_RATE_CODE = common dso_local global i64 0, align 8
@AR9300_MCS23_RATE_CODE = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ar9300_get_tpc_tables(%struct.ath_hal* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ath_hal_9300*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rate_power_tbl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %13 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %12)
  store %struct.ath_hal_9300* %13, %struct.ath_hal_9300** %4, align 8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %15 = call %struct.TYPE_8__* @AH_PRIVATE(%struct.ath_hal* %14)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %16, align 8
  store %struct.ieee80211_channel* %17, %struct.ieee80211_channel** %5, align 8
  %18 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %20 = call i32 @ath_hal_get_curmode(%struct.ath_hal* %18, %struct.ieee80211_channel* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %22 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %28 = call i32 @ath_hal_printf(%struct.ath_hal* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %307

29:                                               ; preds = %1
  %30 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @ar9300_get_rate_table(%struct.ath_hal* %30, i32 %31)
  %33 = inttoptr i64 %32 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %7, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @HALASSERT(i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 48
  %43 = add i64 1, %42
  %44 = trunc i64 %43 to i32
  %45 = call i64 @ath_hal_malloc(i32 %44)
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %29
  store i32* null, i32** %2, align 8
  br label %307

50:                                               ; preds = %29
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 48
  %57 = add i64 1, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @OS_MEMZERO(i32* %51, i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = bitcast i32* %65 to %struct.rate_power_tbl*
  store %struct.rate_power_tbl* %66, %struct.rate_power_tbl** %9, align 8
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %215, %50
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %70 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ar9300_get_ntxchains(i32 %71)
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %218

74:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %211, %74
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %214

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.rate_power_tbl*, %struct.rate_power_tbl** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %83, i64 %85
  %87 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %86, i32 0, i32 0
  store i32 %82, i32* %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rate_power_tbl*, %struct.rate_power_tbl** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %96, i64 %98
  %100 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %99, i32 0, i32 1
  store i32 %95, i32* %100, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rate_power_tbl*, %struct.rate_power_tbl** %9, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %109, i64 %111
  %113 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %112, i32 0, i32 8
  store i32 %108, i32* %113, align 8
  %114 = load i32, i32* %11, align 4
  switch i32 %114, label %155 [
    i32 0, label %115
    i32 1, label %132
    i32 2, label %149
  ]

115:                                              ; preds = %81
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp sle i32 %123, 135
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 1, i32 0
  %127 = load %struct.rate_power_tbl*, %struct.rate_power_tbl** %9, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %127, i64 %129
  %131 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %130, i32 0, i32 2
  store i32 %126, i32* %131, align 8
  br label %156

132:                                              ; preds = %81
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp sle i32 %140, 143
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 1, i32 0
  %144 = load %struct.rate_power_tbl*, %struct.rate_power_tbl** %9, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %144, i64 %146
  %148 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %147, i32 0, i32 3
  store i32 %143, i32* %148, align 4
  br label %156

149:                                              ; preds = %81
  %150 = load %struct.rate_power_tbl*, %struct.rate_power_tbl** %9, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %150, i64 %152
  %154 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %153, i32 0, i32 4
  store i32 1, i32* %154, align 8
  br label %156

155:                                              ; preds = %81
  br label %156

156:                                              ; preds = %155, %149, %132, %115
  %157 = load i32, i32* %11, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = load %struct.rate_power_tbl*, %struct.rate_power_tbl** %9, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %160, i64 %162
  %164 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %189, label %167

167:                                              ; preds = %159, %156
  %168 = load i32, i32* %11, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load %struct.rate_power_tbl*, %struct.rate_power_tbl** %9, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %171, i64 %173
  %175 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %170, %167
  %179 = load i32, i32* %11, align 4
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %181, label %210

181:                                              ; preds = %178
  %182 = load %struct.rate_power_tbl*, %struct.rate_power_tbl** %9, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %182, i64 %184
  %186 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %210

189:                                              ; preds = %181, %170, %159
  %190 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %191 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %190, i32 0, i32 2
  %192 = load i32**, i32*** %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32*, i32** %192, i64 %194
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.rate_power_tbl*, %struct.rate_power_tbl** %9, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %201, i64 %203
  %205 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %204, i32 0, i32 7
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %200, i32* %209, align 4
  br label %210

210:                                              ; preds = %189, %181, %178
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %10, align 4
  br label %75

214:                                              ; preds = %75
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %11, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %11, align 4
  br label %67

218:                                              ; preds = %67
  store i32 0, i32* %11, align 4
  br label %219

219:                                              ; preds = %302, %218
  %220 = load i32, i32* %11, align 4
  %221 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %222 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @ar9300_get_ntxchains(i32 %223)
  %225 = icmp slt i32 %220, %224
  br i1 %225, label %226, label %305

226:                                              ; preds = %219
  store i32 0, i32* %10, align 4
  br label %227

227:                                              ; preds = %298, %226
  %228 = load i32, i32* %10, align 4
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %301

233:                                              ; preds = %227
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* @AR9300_MCS0_RATE_CODE, align 8
  %244 = icmp slt i64 %242, %243
  br i1 %244, label %271, label %245

245:                                              ; preds = %233
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = load i32, i32* %10, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = load i64, i64* @AR9300_MCS23_RATE_CODE, align 8
  %256 = icmp sgt i64 %254, %255
  br i1 %256, label %271, label %257

257:                                              ; preds = %245
  %258 = load i32, i32* %11, align 4
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  %262 = load i32, i32* %10, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = call i64 @ar9300_invalid_stbc_cfg(i32 %258, i64 %267)
  %269 = load i64, i64* @AH_TRUE, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %257, %245, %233
  br label %298

272:                                              ; preds = %257
  %273 = load %struct.rate_power_tbl*, %struct.rate_power_tbl** %9, align 8
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %273, i64 %275
  %277 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %276, i32 0, i32 5
  store i32 1, i32* %277, align 4
  %278 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %279 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %278, i32 0, i32 0
  %280 = load i32**, i32*** %279, align 8
  %281 = load i32, i32* %10, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32*, i32** %280, i64 %282
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %11, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.rate_power_tbl*, %struct.rate_power_tbl** %9, align 8
  %290 = load i32, i32* %10, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %289, i64 %291
  %293 = getelementptr inbounds %struct.rate_power_tbl, %struct.rate_power_tbl* %292, i32 0, i32 6
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %11, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %288, i32* %297, align 4
  br label %298

298:                                              ; preds = %272, %271
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %10, align 4
  br label %227

301:                                              ; preds = %227
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %11, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %11, align 4
  br label %219

305:                                              ; preds = %219
  %306 = load i32*, i32** %8, align 8
  store i32* %306, i32** %2, align 8
  br label %307

307:                                              ; preds = %305, %49, %26
  %308 = load i32*, i32** %2, align 8
  ret i32* %308
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_8__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_get_curmode(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath_hal_printf(%struct.ath_hal*, i8*) #1

declare dso_local i64 @ar9300_get_rate_table(%struct.ath_hal*, i32) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i64 @ath_hal_malloc(i32) #1

declare dso_local i32 @OS_MEMZERO(i32*, i32) #1

declare dso_local i32 @ar9300_get_ntxchains(i32) #1

declare dso_local i64 @ar9300_invalid_stbc_cfg(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
