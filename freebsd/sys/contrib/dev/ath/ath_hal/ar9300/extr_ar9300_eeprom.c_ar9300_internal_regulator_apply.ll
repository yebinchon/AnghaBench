; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_internal_regulator_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_internal_regulator_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i64 }

@EEP_INTERNAL_REGULATOR = common dso_local global i32 0, align 4
@AR_PHY_PMU1_JUPITER = common dso_local global i32 0, align 4
@AR_PHY_PMU2_JUPITER = common dso_local global i32 0, align 4
@AR_PHY_PMU1 = common dso_local global i32 0, align 4
@AR_PHY_PMU2 = common dso_local global i32 0, align 4
@AR_PHY_CTRL2_TX_CAL_EN = common dso_local global i32 0, align 4
@AR_PHY_CTRL2_TX_CAL_SEL = common dso_local global i32 0, align 4
@AR_PHY_CTRL2_TX_MAN_CAL = common dso_local global i32 0, align 4
@AR_PHY_PMU2_PGM = common dso_local global i32 0, align 4
@EEP_SWREG = common dso_local global i32 0, align 4
@AR_RTC_REG_CONTROL1 = common dso_local global i32 0, align 4
@AR_RTC_REG_CONTROL1_SWREG_PROGRAM = common dso_local global i32 0, align 4
@AR_RTC_REG_CONTROL0 = common dso_local global i32 0, align 4
@AR_PHY_PMU1_PWD = common dso_local global i32 0, align 4
@AR_RTC_SLEEP_CLK = common dso_local global i32 0, align 4
@AR_RTC_FORCE_SWREG_PRD = common dso_local global i32 0, align 4
@AR_RTC_PCIE_RST_PWDN_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_internal_regulator_apply(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_9300*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %20 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %21 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %20)
  store %struct.ath_hal_9300* %21, %struct.ath_hal_9300** %3, align 8
  %22 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %23 = load i32, i32* @EEP_INTERNAL_REGULATOR, align 4
  %24 = call i32 @ar9300_eeprom_get(%struct.ath_hal_9300* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %26 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %30 = call i64 @AR_SREV_APHRODITE(%struct.ath_hal* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %1
  %33 = load i32, i32* @AR_PHY_PMU1_JUPITER, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @AR_PHY_PMU2_JUPITER, align 4
  store i32 %34, i32* %10, align 4
  br label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @AR_PHY_PMU1, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @AR_PHY_PMU2, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %249

41:                                               ; preds = %38
  %42 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %43 = call i64 @AR_SREV_HORNET(%struct.ath_hal* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %47 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %206

49:                                               ; preds = %45, %41
  %50 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %51 = call i64 @AR_SREV_HORNET(%struct.ath_hal* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %105

53:                                               ; preds = %49
  store i64 20, i64* %11, align 8
  br label %54

54:                                               ; preds = %78, %53
  %55 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %56 = load i64, i64* %11, align 8
  %57 = udiv i64 %56, 4
  %58 = call i32 @ar9300_otp_read(%struct.ath_hal* %55, i64 %57, i32* %12, i32 1)
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, 128
  %61 = icmp eq i32 %60, 128
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  store i32 1, i32* %15, align 4
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, 255
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %62, %54
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, -2147483648
  %68 = icmp eq i32 %67, -2147483648
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  store i32 1, i32* %16, align 4
  %70 = load i32, i32* %12, align 4
  %71 = and i32 %70, -16777216
  %72 = lshr i32 %71, 24
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i64, i64* %11, align 8
  %75 = icmp eq i64 %74, 4
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %81

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %11, align 8
  %80 = sub i64 %79, 16
  store i64 %80, i64* %11, align 8
  br label %54

81:                                               ; preds = %76
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  %86 = and i32 %85, 15
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %17, align 1
  br label %89

88:                                               ; preds = %81
  store i8 8, i8* %17, align 1
  br label %89

89:                                               ; preds = %88, %84
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %94 = load i32, i32* @AR_PHY_CTRL2_TX_CAL_EN, align 4
  %95 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %93, i32 93320, i32 %94, i32 0)
  %96 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %97 = load i32, i32* @AR_PHY_CTRL2_TX_CAL_SEL, align 4
  %98 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %96, i32 93320, i32 %97, i32 0)
  %99 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %100 = load i32, i32* @AR_PHY_CTRL2_TX_MAN_CAL, align 4
  %101 = load i32, i32* %13, align 4
  %102 = and i32 %101, 15
  %103 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %99, i32 93320, i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %92, %89
  br label %106

105:                                              ; preds = %49
  store i8 8, i8* %17, align 1
  br label %106

106:                                              ; preds = %105, %104
  %107 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %108 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load i8, i8* %17, align 1
  %113 = zext i8 %112 to i32
  %114 = shl i32 %113, 4
  %115 = or i32 6, %114
  %116 = or i32 %115, 768
  %117 = or i32 %116, 16384
  %118 = or i32 %117, 786432
  %119 = or i32 %118, 1048576
  %120 = or i32 %119, 50331648
  store i32 %120, i32* %7, align 4
  br label %128

121:                                              ; preds = %106
  %122 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %123 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 320635514, i32* %7, align 4
  br label %127

126:                                              ; preds = %121
  store i32 52183928, i32* %7, align 4
  br label %127

127:                                              ; preds = %126, %125
  br label %128

128:                                              ; preds = %127, %111
  %129 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %132 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %129, i32 %130, i32 %131, i32 0)
  %133 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @OS_REG_WRITE(%struct.ath_hal* %133, i32 %134, i32 %135)
  %137 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @OS_REG_READ(%struct.ath_hal* %137, i32 %138)
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %144, %128
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @OS_REG_WRITE(%struct.ath_hal* %145, i32 %146, i32 %147)
  %149 = call i32 @OS_DELAY(i32 10)
  %150 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @OS_REG_READ(%struct.ath_hal* %150, i32 %151)
  store i32 %152, i32* %5, align 4
  br label %140

153:                                              ; preds = %140
  %154 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @OS_REG_READ(%struct.ath_hal* %154, i32 %155)
  %157 = and i32 %156, 4194303
  %158 = or i32 %157, 268435456
  store i32 %158, i32* %8, align 4
  %159 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @OS_REG_WRITE(%struct.ath_hal* %159, i32 %160, i32 %161)
  %163 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @OS_REG_READ(%struct.ath_hal* %163, i32 %164)
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %170, %153
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %166
  %171 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @OS_REG_WRITE(%struct.ath_hal* %171, i32 %172, i32 %173)
  %175 = call i32 @OS_DELAY(i32 10)
  %176 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @OS_REG_READ(%struct.ath_hal* %176, i32 %177)
  store i32 %178, i32* %6, align 4
  br label %166

179:                                              ; preds = %166
  %180 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @OS_REG_READ(%struct.ath_hal* %180, i32 %181)
  %183 = and i32 %182, -2097153
  %184 = or i32 %183, 2097152
  store i32 %184, i32* %8, align 4
  %185 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @OS_REG_WRITE(%struct.ath_hal* %185, i32 %186, i32 %187)
  %189 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @OS_REG_READ(%struct.ath_hal* %189, i32 %190)
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %196, %179
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %192
  %197 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @OS_REG_WRITE(%struct.ath_hal* %197, i32 %198, i32 %199)
  %201 = call i32 @OS_DELAY(i32 10)
  %202 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @OS_REG_READ(%struct.ath_hal* %202, i32 %203)
  store i32 %204, i32* %6, align 4
  br label %192

205:                                              ; preds = %192
  br label %248

206:                                              ; preds = %45
  %207 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %208 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %206
  %211 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %212 = call i64 @AR_SREV_APHRODITE(%struct.ath_hal* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %210, %206
  %215 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %216 = load i32, i32* @EEP_SWREG, align 4
  %217 = call i32 @ar9300_eeprom_get(%struct.ath_hal_9300* %215, i32 %216)
  store i32 %217, i32* %18, align 4
  %218 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %18, align 4
  %221 = call i32 @OS_REG_WRITE(%struct.ath_hal* %218, i32 %219, i32 %220)
  br label %247

222:                                              ; preds = %210
  %223 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %224 = load i32, i32* @EEP_SWREG, align 4
  %225 = call i32 @ar9300_eeprom_get(%struct.ath_hal_9300* %223, i32 %224)
  store i32 %225, i32* %19, align 4
  %226 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %227 = load i32, i32* @AR_RTC_REG_CONTROL1, align 4
  %228 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %229 = load i32, i32* @AR_RTC_REG_CONTROL1, align 4
  %230 = call i32 @OS_REG_READ(%struct.ath_hal* %228, i32 %229)
  %231 = load i32, i32* @AR_RTC_REG_CONTROL1_SWREG_PROGRAM, align 4
  %232 = xor i32 %231, -1
  %233 = and i32 %230, %232
  %234 = call i32 @OS_REG_WRITE(%struct.ath_hal* %226, i32 %227, i32 %233)
  %235 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %236 = load i32, i32* @AR_RTC_REG_CONTROL0, align 4
  %237 = load i32, i32* %19, align 4
  %238 = call i32 @OS_REG_WRITE(%struct.ath_hal* %235, i32 %236, i32 %237)
  %239 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %240 = load i32, i32* @AR_RTC_REG_CONTROL1, align 4
  %241 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %242 = load i32, i32* @AR_RTC_REG_CONTROL1, align 4
  %243 = call i32 @OS_REG_READ(%struct.ath_hal* %241, i32 %242)
  %244 = load i32, i32* @AR_RTC_REG_CONTROL1_SWREG_PROGRAM, align 4
  %245 = or i32 %243, %244
  %246 = call i32 @OS_REG_WRITE(%struct.ath_hal* %239, i32 %240, i32 %245)
  br label %247

247:                                              ; preds = %222, %214
  br label %248

248:                                              ; preds = %247, %205
  br label %340

249:                                              ; preds = %38
  %250 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %251 = call i64 @AR_SREV_HORNET(%struct.ath_hal* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %257, label %253

253:                                              ; preds = %249
  %254 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %255 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %314

257:                                              ; preds = %253, %249
  %258 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %261 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %258, i32 %259, i32 %260, i32 0)
  %262 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %265 = call i32 @OS_REG_READ_FIELD(%struct.ath_hal* %262, i32 %263, i32 %264)
  store i32 %265, i32* %6, align 4
  br label %266

266:                                              ; preds = %269, %257
  %267 = load i32, i32* %6, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %266
  %270 = call i32 @OS_DELAY(i32 10)
  %271 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %272 = load i32, i32* %10, align 4
  %273 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %274 = call i32 @OS_REG_READ_FIELD(%struct.ath_hal* %271, i32 %272, i32 %273)
  store i32 %274, i32* %6, align 4
  br label %266

275:                                              ; preds = %266
  %276 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* @AR_PHY_PMU1_PWD, align 4
  %279 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %276, i32 %277, i32 %278, i32 1)
  %280 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* @AR_PHY_PMU1_PWD, align 4
  %283 = call i32 @OS_REG_READ_FIELD(%struct.ath_hal* %280, i32 %281, i32 %282)
  store i32 %283, i32* %5, align 4
  br label %284

284:                                              ; preds = %288, %275
  %285 = load i32, i32* %5, align 4
  %286 = icmp ne i32 %285, 0
  %287 = xor i1 %286, true
  br i1 %287, label %288, label %294

288:                                              ; preds = %284
  %289 = call i32 @OS_DELAY(i32 10)
  %290 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* @AR_PHY_PMU1_PWD, align 4
  %293 = call i32 @OS_REG_READ_FIELD(%struct.ath_hal* %290, i32 %291, i32 %292)
  store i32 %293, i32* %5, align 4
  br label %284

294:                                              ; preds = %284
  %295 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %296 = load i32, i32* %10, align 4
  %297 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %298 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %295, i32 %296, i32 %297, i32 1)
  %299 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %300 = load i32, i32* %10, align 4
  %301 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %302 = call i32 @OS_REG_READ_FIELD(%struct.ath_hal* %299, i32 %300, i32 %301)
  store i32 %302, i32* %6, align 4
  br label %303

303:                                              ; preds = %307, %294
  %304 = load i32, i32* %6, align 4
  %305 = icmp ne i32 %304, 0
  %306 = xor i1 %305, true
  br i1 %306, label %307, label %313

307:                                              ; preds = %303
  %308 = call i32 @OS_DELAY(i32 10)
  %309 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %312 = call i32 @OS_REG_READ_FIELD(%struct.ath_hal* %309, i32 %310, i32 %311)
  store i32 %312, i32* %6, align 4
  br label %303

313:                                              ; preds = %303
  br label %339

314:                                              ; preds = %253
  %315 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %316 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %322, label %318

318:                                              ; preds = %314
  %319 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %320 = call i64 @AR_SREV_APHRODITE(%struct.ath_hal* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %318, %314
  %323 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %324 = load i32, i32* %9, align 4
  %325 = load i32, i32* @AR_PHY_PMU1_PWD, align 4
  %326 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %323, i32 %324, i32 %325, i32 1)
  br label %338

327:                                              ; preds = %318
  %328 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %329 = load i32, i32* @AR_RTC_SLEEP_CLK, align 4
  %330 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %331 = load i32, i32* @AR_RTC_SLEEP_CLK, align 4
  %332 = call i32 @OS_REG_READ(%struct.ath_hal* %330, i32 %331)
  %333 = load i32, i32* @AR_RTC_FORCE_SWREG_PRD, align 4
  %334 = or i32 %332, %333
  %335 = load i32, i32* @AR_RTC_PCIE_RST_PWDN_EN, align 4
  %336 = or i32 %334, %335
  %337 = call i32 @OS_REG_WRITE(%struct.ath_hal* %328, i32 %329, i32 %336)
  br label %338

338:                                              ; preds = %327, %322
  br label %339

339:                                              ; preds = %338, %313
  br label %340

340:                                              ; preds = %339, %248
  ret i32 0
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_eeprom_get(%struct.ath_hal_9300*, i32) #1

declare dso_local i64 @AR_SREV_JUPITER(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_APHRODITE(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_HORNET(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_otp_read(%struct.ath_hal*, i64, i32*, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_DELAY(i32) #1

declare dso_local i32 @OS_REG_READ_FIELD(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
