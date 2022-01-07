; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_paprd.c_ar9300_paprd_retrain_pain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_paprd.c_ar9300_paprd_retrain_pain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_PHY_65NM_CH0_TXRF3 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL3 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL3_POSEIDON = common dso_local global i32 0, align 4
@NUM_BIN = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_TXRF3_CAPDIV2G = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, i32*)* @ar9300_paprd_retrain_pain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_paprd_retrain_pain(%struct.ath_hal* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %13 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3, align 4
  %14 = call i32 @OS_REG_READ(%struct.ath_hal* %12, i32 %13)
  %15 = ashr i32 %14, 1
  %16 = and i32 %15, 15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %18 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %22 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3, align 4
  %23 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP, align 4
  %24 = call i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal* %21, i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %27 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_POSEIDON, align 4
  %28 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP, align 4
  %29 = call i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal* %26, i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %34, 64
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %30
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %53, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @NUM_BIN, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1400
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %37

56:                                               ; preds = %37
  %57 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %58 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %161

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 23
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 800
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 23
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1400
  br i1 %69, label %70, label %160

70:                                               ; preds = %65, %60
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 23
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %73, 800
  br i1 %74, label %75, label %112

75:                                               ; preds = %70
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 23
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 1000, %78
  %80 = add nsw i32 %79, 75
  %81 = sdiv i32 %80, 150
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp sgt i32 %85, 7
  br i1 %86, label %87, label %100

87:                                               ; preds = %75
  store i32 7, i32* %10, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 23
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %90, 600
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %97, %92
  br label %99

99:                                               ; preds = %98, %87
  br label %100

100:                                              ; preds = %99, %75
  %101 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %102 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3, align 4
  %103 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3_CAPDIV2G, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %107 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_POSEIDON, align 4
  %108 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %106, i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* @AH_TRUE, align 4
  store i32 %111, i32* %3, align 4
  br label %298

112:                                              ; preds = %70
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 23
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 1400
  br i1 %116, label %117, label %158

117:                                              ; preds = %112
  %118 = load i32, i32* %6, align 4
  %119 = sdiv i32 %118, 3
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp sgt i32 %120, 2
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 2, i32* %9, align 4
  br label %123

123:                                              ; preds = %122, %117
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %124, %125
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %9, align 4
  %129 = sdiv i32 %128, 2
  %130 = add nsw i32 %127, %129
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp sgt i32 %131, 7
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  store i32 7, i32* %10, align 4
  br label %134

134:                                              ; preds = %133, %123
  %135 = load i32, i32* %11, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  store i32 0, i32* %11, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %9, align 4
  %140 = sdiv i32 %139, 1
  %141 = sub nsw i32 %138, %140
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %144, %137
  br label %146

146:                                              ; preds = %145, %134
  %147 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %148 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3, align 4
  %149 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3_CAPDIV2G, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %147, i32 %148, i32 %149, i32 %150)
  %152 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %153 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_POSEIDON, align 4
  %154 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %152, i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* @AH_TRUE, align 4
  store i32 %157, i32* %3, align 4
  br label %298

158:                                              ; preds = %112
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %159, %65
  br label %296

161:                                              ; preds = %56
  %162 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %163 = call i64 @AR_SREV_HORNET(%struct.ath_hal* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %295

165:                                              ; preds = %161
  %166 = load i32*, i32** %5, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 23
  %168 = load i32, i32* %167, align 4
  %169 = icmp slt i32 %168, 1000
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = load i32*, i32** %5, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 23
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 1400
  br i1 %174, label %175, label %294

175:                                              ; preds = %170, %165
  %176 = load i32*, i32** %5, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 23
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %178, 1000
  br i1 %179, label %180, label %239

180:                                              ; preds = %175
  %181 = load i32*, i32** %5, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 23
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 1000, %183
  %185 = sdiv i32 %184, 100
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %186, %187
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp sgt i32 %189, 3
  br i1 %190, label %191, label %216

191:                                              ; preds = %180
  store i32 1, i32* %9, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %9, align 4
  %194 = sub nsw i32 %192, %193
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp sgt i32 %197, 6
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  store i32 6, i32* %10, align 4
  br label %200

200:                                              ; preds = %199, %191
  %201 = load i32, i32* %11, align 4
  %202 = icmp slt i32 %201, -4
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 -4, i32* %11, align 4
  br label %204

204:                                              ; preds = %203, %200
  %205 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %206 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3, align 4
  %207 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3_CAPDIV2G, align 4
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %205, i32 %206, i32 %207, i32 %208)
  %210 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %211 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3, align 4
  %212 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP, align 4
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %210, i32 %211, i32 %212, i32 %213)
  %215 = load i32, i32* @AH_TRUE, align 4
  store i32 %215, i32* %3, align 4
  br label %298

216:                                              ; preds = %180
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %217, %218
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* %10, align 4
  %221 = icmp sgt i32 %220, 6
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  store i32 6, i32* %10, align 4
  br label %223

223:                                              ; preds = %222, %216
  %224 = load i32, i32* %11, align 4
  %225 = icmp slt i32 %224, -4
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  store i32 -4, i32* %11, align 4
  br label %227

227:                                              ; preds = %226, %223
  %228 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %229 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3, align 4
  %230 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3_CAPDIV2G, align 4
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %228, i32 %229, i32 %230, i32 %231)
  %233 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %234 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3, align 4
  %235 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP, align 4
  %236 = load i32, i32* %11, align 4
  %237 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %233, i32 %234, i32 %235, i32 %236)
  %238 = load i32, i32* @AH_TRUE, align 4
  store i32 %238, i32* %3, align 4
  br label %298

239:                                              ; preds = %175
  %240 = load i32*, i32** %5, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 23
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 1400
  br i1 %243, label %244, label %292

244:                                              ; preds = %239
  %245 = load i32, i32* %6, align 4
  %246 = icmp sgt i32 %245, 3
  br i1 %246, label %247, label %274

247:                                              ; preds = %244
  store i32 1, i32* %9, align 4
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %248, %249
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* %6, align 4
  %253 = sdiv i32 %252, 4
  %254 = sub nsw i32 %251, %253
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %10, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %247
  store i32 0, i32* %10, align 4
  br label %258

258:                                              ; preds = %257, %247
  %259 = load i32, i32* %11, align 4
  %260 = icmp sgt i32 %259, -2
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  store i32 -2, i32* %11, align 4
  br label %262

262:                                              ; preds = %261, %258
  %263 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %264 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3, align 4
  %265 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3_CAPDIV2G, align 4
  %266 = load i32, i32* %10, align 4
  %267 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %263, i32 %264, i32 %265, i32 %266)
  %268 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %269 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3, align 4
  %270 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP, align 4
  %271 = load i32, i32* %11, align 4
  %272 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %268, i32 %269, i32 %270, i32 %271)
  %273 = load i32, i32* @AH_TRUE, align 4
  store i32 %273, i32* %3, align 4
  br label %298

274:                                              ; preds = %244
  %275 = load i32, i32* %10, align 4
  %276 = sub nsw i32 %275, 1
  store i32 %276, i32* %10, align 4
  %277 = load i32, i32* %10, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  store i32 0, i32* %10, align 4
  br label %280

280:                                              ; preds = %279, %274
  %281 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %282 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3, align 4
  %283 = load i32, i32* @AR_PHY_65NM_CH0_TXRF3_CAPDIV2G, align 4
  %284 = load i32, i32* %10, align 4
  %285 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %281, i32 %282, i32 %283, i32 %284)
  %286 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %287 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3, align 4
  %288 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP, align 4
  %289 = load i32, i32* %11, align 4
  %290 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %286, i32 %287, i32 %288, i32 %289)
  %291 = load i32, i32* @AH_TRUE, align 4
  store i32 %291, i32* %3, align 4
  br label %298

292:                                              ; preds = %239
  br label %293

293:                                              ; preds = %292
  br label %294

294:                                              ; preds = %293, %170
  br label %295

295:                                              ; preds = %294, %161
  br label %296

296:                                              ; preds = %295, %160
  %297 = load i32, i32* @AH_FALSE, align 4
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %296, %280, %262, %227, %204, %146, %100
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ_FIELD_ALT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_HORNET(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
