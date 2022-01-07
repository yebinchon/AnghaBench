; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_tx_iq_cal_outlier_detection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_tx_iq_cal_outlier_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32**, i32*, i32, i32 }
%struct.coeff_t = type { i32***, i32***, i32* }

@AR_PHY_TX_IQCAL_CORR_COEFF_01_B0_POSEIDON = common dso_local global i32 0, align 4
@tx_corr_coeff = common dso_local global i32** null, align 8
@AR_PHY_TX_IQCAL_CORR_COEFF_23_B0_POSEIDON = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CORR_COEFF_45_B0_POSEIDON = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CORR_COEFF_67_B0_POSEIDON = common dso_local global i32 0, align 4
@AR_PHY_CALIBRATED_GAINS_0 = common dso_local global i32 0, align 4
@MAX_MEASUREMENT = common dso_local global i32 0, align 4
@MAX_MAG_DELTA = common dso_local global i64 0, align 8
@HAL_DEBUG_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"[ch%d][outlier mag gain%d]:: mag_avg = %d (/128), phase_avg = %d (/256)\0A\00", align 1
@MAX_PHS_DELTA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"[ch%d][outlier phs gain%d]:: mag_avg = %d (/128), phase_avg = %d (/256)\0A\00", align 1
@AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_3 = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN = common dso_local global i32 0, align 4
@AR_PHY_RX_IQCAL_CORR_B0 = common dso_local global i32 0, align 4
@AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@HAL_DEBUG_FCS_RTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.TYPE_3__*, i32, %struct.coeff_t*, i64)* @ar9300_tx_iq_cal_outlier_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_tx_iq_cal_outlier_detection(%struct.ath_hal* %0, %struct.TYPE_3__* %1, i32 %2, %struct.coeff_t* %3, i64 %4) #0 {
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.coeff_t*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.coeff_t* %3, %struct.coeff_t** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %28 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %29 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %76

31:                                               ; preds = %5
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i32 @HALASSERT(i32 %34)
  %36 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_01_B0_POSEIDON, align 4
  %37 = load i32**, i32*** @tx_corr_coeff, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_01_B0_POSEIDON, align 4
  %42 = load i32**, i32*** @tx_corr_coeff, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_23_B0_POSEIDON, align 4
  %47 = load i32**, i32*** @tx_corr_coeff, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_23_B0_POSEIDON, align 4
  %52 = load i32**, i32*** @tx_corr_coeff, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 3
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_45_B0_POSEIDON, align 4
  %57 = load i32**, i32*** @tx_corr_coeff, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 4
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_45_B0_POSEIDON, align 4
  %62 = load i32**, i32*** @tx_corr_coeff, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 5
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_67_B0_POSEIDON, align 4
  %67 = load i32**, i32*** @tx_corr_coeff, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 6
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_67_B0_POSEIDON, align 4
  %72 = load i32**, i32*** @tx_corr_coeff, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 7
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %31, %5
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %441, %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %444

81:                                               ; preds = %77
  %82 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %83 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %84 = call i32 @AR_PHY_TX_IQCAL_STATUS_B0(%struct.ath_hal* %83)
  %85 = load i32, i32* @AR_PHY_CALIBRATED_GAINS_0, align 4
  %86 = call i32 @OS_REG_READ_FIELD(%struct.ath_hal* %82, i32 %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @MAX_MEASUREMENT, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* @MAX_MEASUREMENT, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %90, %81
  %93 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %94 = call i32 @AR_SREV_SCORPION(%struct.ath_hal* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %355, label %96

96:                                               ; preds = %92
  store i32 -64, i32* %16, align 4
  store i32 -64, i32* %17, align 4
  store i32 63, i32* %18, align 4
  store i32 63, i32* %19, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %354

99:                                               ; preds = %96
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %165, %99
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %168

104:                                              ; preds = %100
  %105 = load %struct.coeff_t*, %struct.coeff_t** %9, align 8
  %106 = getelementptr inbounds %struct.coeff_t, %struct.coeff_t* %105, i32 0, i32 0
  %107 = load i32***, i32**** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32**, i32*** %107, i64 %109
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %14, align 4
  %118 = load %struct.coeff_t*, %struct.coeff_t** %9, align 8
  %119 = getelementptr inbounds %struct.coeff_t, %struct.coeff_t* %118, i32 0, i32 1
  %120 = load i32***, i32**** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32**, i32*** %120, i64 %122
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %24, align 4
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %24, align 4
  %134 = load i32, i32* %25, align 4
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %134, %135
  store i32 %136, i32* %25, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %104
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %13, align 4
  store i32 %142, i32* %20, align 4
  br label %143

143:                                              ; preds = %140, %104
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %18, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i32, i32* %14, align 4
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %13, align 4
  store i32 %149, i32* %22, align 4
  br label %150

150:                                              ; preds = %147, %143
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %17, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, i32* %15, align 4
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %21, align 4
  br label %157

157:                                              ; preds = %154, %150
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %19, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i32, i32* %15, align 4
  store i32 %162, i32* %19, align 4
  %163 = load i32, i32* %13, align 4
  store i32 %163, i32* %23, align 4
  br label %164

164:                                              ; preds = %161, %157
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  br label %100

168:                                              ; preds = %100
  store i32 0, i32* %13, align 4
  br label %169

169:                                              ; preds = %232, %168
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %235

173:                                              ; preds = %169
  %174 = load %struct.coeff_t*, %struct.coeff_t** %9, align 8
  %175 = getelementptr inbounds %struct.coeff_t, %struct.coeff_t* %174, i32 0, i32 0
  %176 = load i32***, i32**** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32**, i32*** %176, i64 %178
  %180 = load i32**, i32*** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %14, align 4
  %187 = load %struct.coeff_t*, %struct.coeff_t** %9, align 8
  %188 = getelementptr inbounds %struct.coeff_t, %struct.coeff_t* %187, i32 0, i32 1
  %189 = load i32***, i32**** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32**, i32*** %189, i64 %191
  %193 = load i32**, i32*** %192, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32*, i32** %193, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %15, align 4
  %200 = load i32, i32* %14, align 4
  %201 = call i64 @ABS(i32 %200)
  %202 = load i32, i32* %16, align 4
  %203 = call i64 @ABS(i32 %202)
  %204 = icmp slt i64 %201, %203
  br i1 %204, label %211, label %205

205:                                              ; preds = %173
  %206 = load i32, i32* %14, align 4
  %207 = call i64 @ABS(i32 %206)
  %208 = load i32, i32* %18, align 4
  %209 = call i64 @ABS(i32 %208)
  %210 = icmp slt i64 %207, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %205, %173
  %212 = load i32, i32* %24, align 4
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %212, %213
  store i32 %214, i32* %24, align 4
  br label %215

215:                                              ; preds = %211, %205
  %216 = load i32, i32* %15, align 4
  %217 = call i64 @ABS(i32 %216)
  %218 = load i32, i32* %17, align 4
  %219 = call i64 @ABS(i32 %218)
  %220 = icmp slt i64 %217, %219
  br i1 %220, label %227, label %221

221:                                              ; preds = %215
  %222 = load i32, i32* %15, align 4
  %223 = call i64 @ABS(i32 %222)
  %224 = load i32, i32* %19, align 4
  %225 = call i64 @ABS(i32 %224)
  %226 = icmp slt i64 %223, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %221, %215
  %228 = load i32, i32* %25, align 4
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %228, %229
  store i32 %230, i32* %25, align 4
  br label %231

231:                                              ; preds = %227, %221
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %13, align 4
  br label %169

235:                                              ; preds = %169
  %236 = load i32, i32* %24, align 4
  %237 = load i32, i32* %11, align 4
  %238 = sub nsw i32 %237, 1
  %239 = sdiv i32 %236, %238
  store i32 %239, i32* %24, align 4
  %240 = load i32, i32* %25, align 4
  %241 = load i32, i32* %11, align 4
  %242 = sub nsw i32 %241, 1
  %243 = sdiv i32 %240, %242
  store i32 %243, i32* %25, align 4
  %244 = load i32, i32* %16, align 4
  %245 = load i32, i32* %18, align 4
  %246 = sub nsw i32 %244, %245
  %247 = call i64 @ABS(i32 %246)
  %248 = load i64, i64* @MAX_MAG_DELTA, align 8
  %249 = icmp sgt i64 %247, %248
  br i1 %249, label %250, label %298

250:                                              ; preds = %235
  %251 = load i32, i32* %16, align 4
  %252 = load i32, i32* %24, align 4
  %253 = sub nsw i32 %251, %252
  %254 = call i64 @ABS(i32 %253)
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %24, align 4
  %257 = sub nsw i32 %255, %256
  %258 = call i64 @ABS(i32 %257)
  %259 = icmp sgt i64 %254, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %250
  %261 = load i32, i32* %20, align 4
  store i32 %261, i32* %26, align 4
  br label %264

262:                                              ; preds = %250
  %263 = load i32, i32* %22, align 4
  store i32 %263, i32* %26, align 4
  br label %264

264:                                              ; preds = %262, %260
  %265 = load i32, i32* %24, align 4
  %266 = load %struct.coeff_t*, %struct.coeff_t** %9, align 8
  %267 = getelementptr inbounds %struct.coeff_t, %struct.coeff_t* %266, i32 0, i32 0
  %268 = load i32***, i32**** %267, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32**, i32*** %268, i64 %270
  %272 = load i32**, i32*** %271, align 8
  %273 = load i32, i32* %26, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32*, i32** %272, i64 %274
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  store i32 %265, i32* %277, align 4
  %278 = load i32, i32* %25, align 4
  %279 = load %struct.coeff_t*, %struct.coeff_t** %9, align 8
  %280 = getelementptr inbounds %struct.coeff_t, %struct.coeff_t* %279, i32 0, i32 1
  %281 = load i32***, i32**** %280, align 8
  %282 = load i32, i32* %12, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32**, i32*** %281, i64 %283
  %285 = load i32**, i32*** %284, align 8
  %286 = load i32, i32* %26, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32*, i32** %285, i64 %287
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  store i32 %278, i32* %290, align 4
  %291 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %292 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* %26, align 4
  %295 = load i32, i32* %24, align 4
  %296 = load i32, i32* %25, align 4
  %297 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %291, i32 %292, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %293, i32 %294, i32 %295, i32 %296)
  br label %298

298:                                              ; preds = %264, %235
  %299 = load i32, i32* %17, align 4
  %300 = load i32, i32* %19, align 4
  %301 = sub nsw i32 %299, %300
  %302 = call i64 @ABS(i32 %301)
  %303 = load i64, i64* @MAX_PHS_DELTA, align 8
  %304 = icmp sgt i64 %302, %303
  br i1 %304, label %305, label %353

305:                                              ; preds = %298
  %306 = load i32, i32* %17, align 4
  %307 = load i32, i32* %25, align 4
  %308 = sub nsw i32 %306, %307
  %309 = call i64 @ABS(i32 %308)
  %310 = load i32, i32* %19, align 4
  %311 = load i32, i32* %25, align 4
  %312 = sub nsw i32 %310, %311
  %313 = call i64 @ABS(i32 %312)
  %314 = icmp sgt i64 %309, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %305
  %316 = load i32, i32* %21, align 4
  store i32 %316, i32* %27, align 4
  br label %319

317:                                              ; preds = %305
  %318 = load i32, i32* %23, align 4
  store i32 %318, i32* %27, align 4
  br label %319

319:                                              ; preds = %317, %315
  %320 = load i32, i32* %24, align 4
  %321 = load %struct.coeff_t*, %struct.coeff_t** %9, align 8
  %322 = getelementptr inbounds %struct.coeff_t, %struct.coeff_t* %321, i32 0, i32 0
  %323 = load i32***, i32**** %322, align 8
  %324 = load i32, i32* %12, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32**, i32*** %323, i64 %325
  %327 = load i32**, i32*** %326, align 8
  %328 = load i32, i32* %27, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32*, i32** %327, i64 %329
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  store i32 %320, i32* %332, align 4
  %333 = load i32, i32* %25, align 4
  %334 = load %struct.coeff_t*, %struct.coeff_t** %9, align 8
  %335 = getelementptr inbounds %struct.coeff_t, %struct.coeff_t* %334, i32 0, i32 1
  %336 = load i32***, i32**** %335, align 8
  %337 = load i32, i32* %12, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32**, i32*** %336, i64 %338
  %340 = load i32**, i32*** %339, align 8
  %341 = load i32, i32* %27, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32*, i32** %340, i64 %342
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 0
  store i32 %333, i32* %345, align 4
  %346 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %347 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %348 = load i32, i32* %12, align 4
  %349 = load i32, i32* %27, align 4
  %350 = load i32, i32* %24, align 4
  %351 = load i32, i32* %25, align 4
  %352 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %346, i32 %347, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %348, i32 %349, i32 %350, i32 %351)
  br label %353

353:                                              ; preds = %319, %298
  br label %354

354:                                              ; preds = %353, %96
  br label %355

355:                                              ; preds = %354, %92
  store i32 0, i32* %13, align 4
  br label %356

356:                                              ; preds = %437, %355
  %357 = load i32, i32* %13, align 4
  %358 = load i32, i32* %11, align 4
  %359 = icmp slt i32 %357, %358
  br i1 %359, label %360, label %440

360:                                              ; preds = %356
  %361 = load %struct.coeff_t*, %struct.coeff_t** %9, align 8
  %362 = getelementptr inbounds %struct.coeff_t, %struct.coeff_t* %361, i32 0, i32 0
  %363 = load i32***, i32**** %362, align 8
  %364 = load i32, i32* %12, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32**, i32*** %363, i64 %365
  %367 = load i32**, i32*** %366, align 8
  %368 = load i32, i32* %13, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32*, i32** %367, i64 %369
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 0
  %373 = load i32, i32* %372, align 4
  store i32 %373, i32* %14, align 4
  %374 = load %struct.coeff_t*, %struct.coeff_t** %9, align 8
  %375 = getelementptr inbounds %struct.coeff_t, %struct.coeff_t* %374, i32 0, i32 1
  %376 = load i32***, i32**** %375, align 8
  %377 = load i32, i32* %12, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32**, i32*** %376, i64 %378
  %380 = load i32**, i32*** %379, align 8
  %381 = load i32, i32* %13, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32*, i32** %380, i64 %382
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 0
  %386 = load i32, i32* %385, align 4
  store i32 %386, i32* %15, align 4
  %387 = load i32, i32* %15, align 4
  %388 = and i32 %387, 127
  %389 = load i32, i32* %14, align 4
  %390 = and i32 %389, 127
  %391 = shl i32 %390, 7
  %392 = or i32 %388, %391
  %393 = load %struct.coeff_t*, %struct.coeff_t** %9, align 8
  %394 = getelementptr inbounds %struct.coeff_t, %struct.coeff_t* %393, i32 0, i32 2
  %395 = load i32*, i32** %394, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 0
  store i32 %392, i32* %396, align 4
  %397 = load i32, i32* %13, align 4
  %398 = srem i32 %397, 2
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %418

400:                                              ; preds = %360
  %401 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %402 = load i32**, i32*** @tx_corr_coeff, align 8
  %403 = load i32, i32* %13, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32*, i32** %402, i64 %404
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %12, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE, align 4
  %412 = load %struct.coeff_t*, %struct.coeff_t** %9, align 8
  %413 = getelementptr inbounds %struct.coeff_t, %struct.coeff_t* %412, i32 0, i32 2
  %414 = load i32*, i32** %413, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 0
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %401, i32 %410, i32 %411, i32 %416)
  br label %436

418:                                              ; preds = %360
  %419 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %420 = load i32**, i32*** @tx_corr_coeff, align 8
  %421 = load i32, i32* %13, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32*, i32** %420, i64 %422
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* %12, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE, align 4
  %430 = load %struct.coeff_t*, %struct.coeff_t** %9, align 8
  %431 = getelementptr inbounds %struct.coeff_t, %struct.coeff_t* %430, i32 0, i32 2
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 0
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %419, i32 %428, i32 %429, i32 %434)
  br label %436

436:                                              ; preds = %418, %400
  br label %437

437:                                              ; preds = %436
  %438 = load i32, i32* %13, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %13, align 4
  br label %356

440:                                              ; preds = %356
  br label %441

441:                                              ; preds = %440
  %442 = load i32, i32* %12, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %12, align 4
  br label %77

444:                                              ; preds = %77
  %445 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %446 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_3, align 4
  %447 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN, align 4
  %448 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %445, i32 %446, i32 %447, i32 1)
  %449 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %450 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_B0, align 4
  %451 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN, align 4
  %452 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %449, i32 %450, i32 %451, i32 1)
  ret void
}

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @OS_REG_READ_FIELD(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_PHY_TX_IQCAL_STATUS_B0(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_SCORPION(%struct.ath_hal*) #1

declare dso_local i64 @ABS(i32) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i32, ...) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
