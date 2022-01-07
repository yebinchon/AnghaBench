; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_init_pll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_init_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_2__ = type { i64 }

@AR_HORNET_CH0_DDR_DPLL2 = common dso_local global i32 0, align 4
@AR_HORNET_CH0_DDR_DPLL3 = common dso_local global i32 0, align 4
@AR_PHY_BB_DPLL3_PHASE_SHIFT = common dso_local global i32 0, align 4
@AR_RTC_PLL_CONTROL = common dso_local global i32 0, align 4
@AR_RTC_PLL_CONTROL2 = common dso_local global i32 0, align 4
@AR_PHY_BB_DPLL2 = common dso_local global i32 0, align 4
@AR_PHY_BB_DPLL2_KD = common dso_local global i32 0, align 4
@AR_PHY_BB_DPLL2_KI = common dso_local global i32 0, align 4
@AR_PHY_BB_DPLL3 = common dso_local global i32 0, align 4
@AR_PHY_BB_DPLL2_PLL_PWD = common dso_local global i32 0, align 4
@AR_PHY_BB_DPLL1 = common dso_local global i32 0, align 4
@AR_PHY_BB_DPLL1_REFDIV = common dso_local global i32 0, align 4
@AR_PHY_BB_DPLL1_NINI = common dso_local global i32 0, align 4
@AR_PHY_BB_DPLL1_NFRAC = common dso_local global i32 0, align 4
@AR_PHY_BB_DPLL2_OUTDIV = common dso_local global i32 0, align 4
@AR_PHY_BB_DPLL2_LOCAL_PLL = common dso_local global i32 0, align 4
@AR_PHY_BB_DPLL2_EN_NEGTRIG = common dso_local global i32 0, align 4
@AR_PHY_PLL_MODE = common dso_local global i32 0, align 4
@AR_PHY_PLL_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_PLL_BB_DPLL3 = common dso_local global i32 0, align 4
@AR_PHY_PLL_BB_DPLL4 = common dso_local global i32 0, align 4
@AR_RTC_PLL_REFDIV = common dso_local global i32 0, align 4
@AR_RTC_PLL_DIV = common dso_local global i32 0, align 4
@RTC_PLL_SETTLE_DELAY = common dso_local global i32 0, align 4
@AR_RTC_SLEEP_CLK = common dso_local global i32 0, align 4
@AR_RTC_FORCE_DERIVED_CLK = common dso_local global i32 0, align 4
@AR_RTC_PCIE_RST_PWDN_EN = common dso_local global i32 0, align 4
@AR_RTC_DERIVED_RTC_CLK = common dso_local global i32 0, align 4
@AR_SLP32_MODE = common dso_local global i32 0, align 4
@AR_SLP32_INC = common dso_local global i32 0, align 4
@AR_RTC_PLL_CLKSEL = common dso_local global i32 0, align 4
@DPLL2_KD_VAL = common dso_local global i32 0, align 4
@DPLL2_KI_VAL = common dso_local global i32 0, align 4
@DPLL3_PHASE_SHIFT_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_init_pll(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %13 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  store i32* null, i32** %7, align 8
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %17 = icmp ne %struct.ieee80211_channel* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %21 = call i32* @ath_hal_checkchannel(%struct.ath_hal* %19, %struct.ieee80211_channel* %20)
  store i32* %21, i32** %7, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = call i64 @AR_SREV_HORNET(%struct.ath_hal* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %88

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %31 = load i32, i32* @AR_HORNET_CH0_DDR_DPLL2, align 4
  %32 = call i32 @OS_REG_WRITE(%struct.ath_hal* %30, i32 %31, i32 417869569)
  %33 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %34 = load i32, i32* @AR_HORNET_CH0_DDR_DPLL3, align 4
  %35 = load i32, i32* @AR_PHY_BB_DPLL3_PHASE_SHIFT, align 4
  %36 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %33, i32 %34, i32 %35, i32 1)
  %37 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %38 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %39 = call i32 @OS_REG_WRITE(%struct.ath_hal* %37, i32 %38, i32 70700)
  %40 = call i32 @OS_DELAY(i32 1000)
  %41 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %42 = load i32, i32* @AR_RTC_PLL_CONTROL2, align 4
  %43 = call i32 @OS_REG_WRITE(%struct.ath_hal* %41, i32 %42, i32 14699069)
  %44 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %45 = load i32, i32* @AR_PHY_BB_DPLL2, align 4
  %46 = load i32, i32* @AR_PHY_BB_DPLL2_KD, align 4
  %47 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %44, i32 %45, i32 %46, i32 29)
  %48 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %49 = load i32, i32* @AR_PHY_BB_DPLL2, align 4
  %50 = load i32, i32* @AR_PHY_BB_DPLL2_KI, align 4
  %51 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %48, i32 %49, i32 %50, i32 6)
  %52 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %53 = load i32, i32* @AR_PHY_BB_DPLL3, align 4
  %54 = load i32, i32* @AR_PHY_BB_DPLL3_PHASE_SHIFT, align 4
  %55 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %52, i32 %53, i32 %54, i32 1)
  br label %83

56:                                               ; preds = %26
  %57 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %58 = load i32, i32* @AR_HORNET_CH0_DDR_DPLL2, align 4
  %59 = call i32 @OS_REG_WRITE(%struct.ath_hal* %57, i32 %58, i32 434646785)
  %60 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %61 = load i32, i32* @AR_HORNET_CH0_DDR_DPLL3, align 4
  %62 = load i32, i32* @AR_PHY_BB_DPLL3_PHASE_SHIFT, align 4
  %63 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %60, i32 %61, i32 %62, i32 1)
  %64 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %65 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %66 = call i32 @OS_REG_WRITE(%struct.ath_hal* %64, i32 %65, i32 70700)
  %67 = call i32 @OS_DELAY(i32 1000)
  %68 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %69 = load i32, i32* @AR_RTC_PLL_CONTROL2, align 4
  %70 = call i32 @OS_REG_WRITE(%struct.ath_hal* %68, i32 %69, i32 8939110)
  %71 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %72 = load i32, i32* @AR_PHY_BB_DPLL2, align 4
  %73 = load i32, i32* @AR_PHY_BB_DPLL2_KD, align 4
  %74 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %71, i32 %72, i32 %73, i32 61)
  %75 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %76 = load i32, i32* @AR_PHY_BB_DPLL2, align 4
  %77 = load i32, i32* @AR_PHY_BB_DPLL2_KI, align 4
  %78 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %75, i32 %76, i32 %77, i32 6)
  %79 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %80 = load i32, i32* @AR_PHY_BB_DPLL3, align 4
  %81 = load i32, i32* @AR_PHY_BB_DPLL3_PHASE_SHIFT, align 4
  %82 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %79, i32 %80, i32 %81, i32 1)
  br label %83

83:                                               ; preds = %56, %29
  %84 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %85 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %86 = call i32 @OS_REG_WRITE(%struct.ath_hal* %84, i32 %85, i32 5164)
  %87 = call i32 @OS_DELAY(i32 1000)
  br label %354

88:                                               ; preds = %22
  %89 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %90 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %94 = call i64 @AR_SREV_APHRODITE(%struct.ath_hal* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %146

96:                                               ; preds = %92, %88
  %97 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %98 = load i32, i32* @AR_PHY_BB_DPLL2, align 4
  %99 = load i32, i32* @AR_PHY_BB_DPLL2_PLL_PWD, align 4
  %100 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %97, i32 %98, i32 %99, i32 1)
  %101 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %102 = load i32, i32* @AR_PHY_BB_DPLL2, align 4
  %103 = load i32, i32* @AR_PHY_BB_DPLL2_KD, align 4
  %104 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %101, i32 %102, i32 %103, i32 64)
  %105 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %106 = load i32, i32* @AR_PHY_BB_DPLL2, align 4
  %107 = load i32, i32* @AR_PHY_BB_DPLL2_KI, align 4
  %108 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %105, i32 %106, i32 %107, i32 4)
  %109 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %110 = load i32, i32* @AR_PHY_BB_DPLL1, align 4
  %111 = load i32, i32* @AR_PHY_BB_DPLL1_REFDIV, align 4
  %112 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %109, i32 %110, i32 %111, i32 5)
  %113 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %114 = load i32, i32* @AR_PHY_BB_DPLL1, align 4
  %115 = load i32, i32* @AR_PHY_BB_DPLL1_NINI, align 4
  %116 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %113, i32 %114, i32 %115, i32 88)
  %117 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %118 = load i32, i32* @AR_PHY_BB_DPLL1, align 4
  %119 = load i32, i32* @AR_PHY_BB_DPLL1_NFRAC, align 4
  %120 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %117, i32 %118, i32 %119, i32 0)
  %121 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %122 = load i32, i32* @AR_PHY_BB_DPLL2, align 4
  %123 = load i32, i32* @AR_PHY_BB_DPLL2_OUTDIV, align 4
  %124 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %121, i32 %122, i32 %123, i32 1)
  %125 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %126 = load i32, i32* @AR_PHY_BB_DPLL2, align 4
  %127 = load i32, i32* @AR_PHY_BB_DPLL2_LOCAL_PLL, align 4
  %128 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %125, i32 %126, i32 %127, i32 1)
  %129 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %130 = load i32, i32* @AR_PHY_BB_DPLL2, align 4
  %131 = load i32, i32* @AR_PHY_BB_DPLL2_EN_NEGTRIG, align 4
  %132 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %129, i32 %130, i32 %131, i32 1)
  %133 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %134 = load i32, i32* @AR_PHY_BB_DPLL3, align 4
  %135 = load i32, i32* @AR_PHY_BB_DPLL3_PHASE_SHIFT, align 4
  %136 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %133, i32 %134, i32 %135, i32 6)
  %137 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %138 = load i32, i32* @AR_PHY_BB_DPLL2, align 4
  %139 = load i32, i32* @AR_PHY_BB_DPLL2_PLL_PWD, align 4
  %140 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %137, i32 %138, i32 %139, i32 0)
  %141 = call i32 @OS_DELAY(i32 1000)
  %142 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %143 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %144 = call i32 @OS_REG_WRITE(%struct.ath_hal* %142, i32 %143, i32 5164)
  %145 = call i32 @OS_DELAY(i32 1000)
  br label %353

146:                                              ; preds = %92
  %147 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %148 = call i64 @AR_SREV_WASP(%struct.ath_hal* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %152 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %156 = call i64 @AR_SREV_HONEYBEE(%struct.ath_hal* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %322

158:                                              ; preds = %154, %150, %146
  %159 = load i64, i64* %6, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %163 = call i64 @AR_SREV_HONEYBEE(%struct.ath_hal* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store i32 28, i32* %9, align 4
  store i32 41938, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %167

166:                                              ; preds = %161
  store i32 84, i32* %9, align 4
  store i32 125829, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %167

167:                                              ; preds = %166, %165
  br label %175

168:                                              ; preds = %158
  %169 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %170 = call i64 @AR_SREV_WASP(%struct.ath_hal* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store i32 88, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 5, i32* %11, align 4
  br label %174

173:                                              ; preds = %168
  store i32 17, i32* %9, align 4
  store i32 157286, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %174

174:                                              ; preds = %173, %172
  br label %175

175:                                              ; preds = %174, %167
  %176 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %177 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %178 = call i32 @OS_REG_WRITE(%struct.ath_hal* %176, i32 %177, i32 70700)
  %179 = call i32 @OS_DELAY(i32 1000)
  br label %180

180:                                              ; preds = %314, %175
  %181 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %182 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %183 = call i32 @OS_REG_READ(%struct.ath_hal* %181, i32 %182)
  store i32 %183, i32* %8, align 4
  %184 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %185 = call i64 @AR_SREV_HONEYBEE(%struct.ath_hal* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = load i32, i32* %8, align 4
  %189 = or i32 %188, 4194304
  store i32 %189, i32* %8, align 4
  br label %193

190:                                              ; preds = %180
  %191 = load i32, i32* %8, align 4
  %192 = or i32 %191, 65536
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %190, %187
  %194 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %195 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @OS_REG_WRITE(%struct.ath_hal* %194, i32 %195, i32 %196)
  %198 = call i32 @OS_DELAY(i32 100)
  %199 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %200 = load i32, i32* @AR_PHY_PLL_CONTROL, align 4
  %201 = load i32, i32* %11, align 4
  %202 = shl i32 %201, 27
  %203 = load i32, i32* %9, align 4
  %204 = shl i32 %203, 18
  %205 = or i32 %202, %204
  %206 = load i32, i32* %10, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @OS_REG_WRITE(%struct.ath_hal* %199, i32 %200, i32 %207)
  %209 = call i32 @OS_DELAY(i32 100)
  %210 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %211 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %212 = call i32 @OS_REG_READ(%struct.ath_hal* %210, i32 %211)
  store i32 %212, i32* %8, align 4
  %213 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %214 = call i64 @AR_SREV_WASP(%struct.ath_hal* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %193
  %217 = load i32, i32* %8, align 4
  %218 = and i32 %217, -2147016705
  %219 = or i32 %218, 1073741824
  %220 = or i32 %219, 8192
  %221 = or i32 %220, 268435456
  %222 = or i32 %221, 12582912
  store i32 %222, i32* %8, align 4
  br label %243

223:                                              ; preds = %193
  %224 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %225 = call i64 @AR_SREV_HONEYBEE(%struct.ath_hal* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %223
  %228 = load i32, i32* %8, align 4
  %229 = and i32 %228, 29364223
  %230 = or i32 %229, -2147483648
  %231 = or i32 %230, 1073741824
  %232 = or i32 %231, 335544320
  %233 = or i32 %232, 524288
  %234 = or i32 %233, 24576
  store i32 %234, i32* %8, align 4
  br label %242

235:                                              ; preds = %223
  %236 = load i32, i32* %8, align 4
  %237 = and i32 %236, -2147016705
  %238 = or i32 %237, -1073741824
  %239 = or i32 %238, 8192
  %240 = or i32 %239, 268435456
  %241 = or i32 %240, 50331648
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %235, %227
  br label %243

243:                                              ; preds = %242, %216
  %244 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %245 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %246 = load i32, i32* %8, align 4
  %247 = call i32 @OS_REG_WRITE(%struct.ath_hal* %244, i32 %245, i32 %246)
  %248 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %249 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %250 = call i32 @OS_REG_READ(%struct.ath_hal* %248, i32 %249)
  store i32 %250, i32* %8, align 4
  %251 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %252 = call i64 @AR_SREV_HONEYBEE(%struct.ath_hal* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %243
  %255 = load i32, i32* %8, align 4
  %256 = and i32 %255, -4194305
  store i32 %256, i32* %8, align 4
  br label %260

257:                                              ; preds = %243
  %258 = load i32, i32* %8, align 4
  %259 = and i32 %258, -65537
  store i32 %259, i32* %8, align 4
  br label %260

260:                                              ; preds = %257, %254
  %261 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %262 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %263 = load i32, i32* %8, align 4
  %264 = call i32 @OS_REG_WRITE(%struct.ath_hal* %261, i32 %262, i32 %263)
  %265 = call i32 @OS_DELAY(i32 1000)
  %266 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %267 = call i64 @AR_SREV_WASP(%struct.ath_hal* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %312

269:                                              ; preds = %260
  %270 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %271 = load i32, i32* @AR_PHY_PLL_BB_DPLL3, align 4
  %272 = call i32 @OS_REG_READ(%struct.ath_hal* %270, i32 %271)
  store i32 %272, i32* %8, align 4
  %273 = load i32, i32* %8, align 4
  %274 = and i32 %273, -1073741825
  store i32 %274, i32* %8, align 4
  %275 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %276 = load i32, i32* @AR_PHY_PLL_BB_DPLL3, align 4
  %277 = load i32, i32* %8, align 4
  %278 = call i32 @OS_REG_WRITE(%struct.ath_hal* %275, i32 %276, i32 %277)
  %279 = call i32 @OS_DELAY(i32 100)
  %280 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %281 = load i32, i32* @AR_PHY_PLL_BB_DPLL3, align 4
  %282 = call i32 @OS_REG_READ(%struct.ath_hal* %280, i32 %281)
  store i32 %282, i32* %8, align 4
  %283 = load i32, i32* %8, align 4
  %284 = or i32 %283, 1073741824
  store i32 %284, i32* %8, align 4
  %285 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %286 = load i32, i32* @AR_PHY_PLL_BB_DPLL3, align 4
  %287 = load i32, i32* %8, align 4
  %288 = call i32 @OS_REG_WRITE(%struct.ath_hal* %285, i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %293, %269
  %290 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %291 = load i32, i32* @AR_PHY_PLL_BB_DPLL4, align 4
  %292 = call i32 @OS_REG_READ(%struct.ath_hal* %290, i32 %291)
  store i32 %292, i32* %8, align 4
  br label %293

293:                                              ; preds = %289
  %294 = load i32, i32* %8, align 4
  %295 = and i32 %294, 8
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %289, label %297

297:                                              ; preds = %293
  %298 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %299 = load i32, i32* @AR_PHY_PLL_BB_DPLL3, align 4
  %300 = call i32 @OS_REG_READ(%struct.ath_hal* %298, i32 %299)
  store i32 %300, i32* %8, align 4
  %301 = load i32, i32* %8, align 4
  %302 = and i32 %301, -1073741825
  store i32 %302, i32* %8, align 4
  %303 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %304 = load i32, i32* @AR_PHY_PLL_BB_DPLL3, align 4
  %305 = load i32, i32* %8, align 4
  %306 = call i32 @OS_REG_WRITE(%struct.ath_hal* %303, i32 %304, i32 %305)
  %307 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %308 = load i32, i32* @AR_PHY_PLL_BB_DPLL3, align 4
  %309 = call i32 @OS_REG_READ(%struct.ath_hal* %307, i32 %308)
  %310 = and i32 %309, 8388600
  %311 = ashr i32 %310, 3
  store i32 %311, i32* %8, align 4
  br label %313

312:                                              ; preds = %260
  br label %317

313:                                              ; preds = %297
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %8, align 4
  %316 = icmp sge i32 %315, 262144
  br i1 %316, label %180, label %317

317:                                              ; preds = %314, %312
  %318 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %319 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %320 = call i32 @OS_REG_WRITE(%struct.ath_hal* %318, i32 %319, i32 5164)
  %321 = call i32 @OS_DELAY(i32 1000)
  br label %352

322:                                              ; preds = %154
  %323 = load i32, i32* @AR_RTC_PLL_REFDIV, align 4
  %324 = call i32 @SM(i32 5, i32 %323)
  store i32 %324, i32* %5, align 4
  %325 = load i32*, i32** %7, align 8
  %326 = icmp ne i32* %325, null
  br i1 %326, label %327, label %342

327:                                              ; preds = %322
  %328 = load i32*, i32** %7, align 8
  %329 = call i64 @IS_CHAN_5GHZ(i32* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %342

331:                                              ; preds = %327
  %332 = load i32, i32* @AR_RTC_PLL_DIV, align 4
  %333 = call i32 @SM(i32 40, i32 %332)
  %334 = load i32, i32* %5, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %5, align 4
  %336 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %337 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %338 = call i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal* %336, %struct.ieee80211_channel* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %331
  store i32 5164, i32* %5, align 4
  br label %341

341:                                              ; preds = %340, %331
  br label %347

342:                                              ; preds = %327, %322
  %343 = load i32, i32* @AR_RTC_PLL_DIV, align 4
  %344 = call i32 @SM(i32 44, i32 %343)
  %345 = load i32, i32* %5, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %5, align 4
  br label %347

347:                                              ; preds = %342, %341
  %348 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %349 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %350 = load i32, i32* %5, align 4
  %351 = call i32 @OS_REG_WRITE(%struct.ath_hal* %348, i32 %349, i32 %350)
  br label %352

352:                                              ; preds = %347, %317
  br label %353

353:                                              ; preds = %352, %96
  br label %354

354:                                              ; preds = %353, %83
  %355 = load i32, i32* @RTC_PLL_SETTLE_DELAY, align 4
  %356 = call i32 @OS_DELAY(i32 %355)
  %357 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %358 = load i32, i32* @AR_RTC_SLEEP_CLK, align 4
  %359 = load i32, i32* @AR_RTC_FORCE_DERIVED_CLK, align 4
  %360 = load i32, i32* @AR_RTC_PCIE_RST_PWDN_EN, align 4
  %361 = or i32 %359, %360
  %362 = call i32 @OS_REG_WRITE(%struct.ath_hal* %357, i32 %358, i32 %361)
  %363 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %364 = call i64 @AR_SREV_WASP(%struct.ath_hal* %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %354
  %367 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %368 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %395

370:                                              ; preds = %366, %354
  %371 = load i64, i64* %6, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %383

373:                                              ; preds = %370
  %374 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %375 = load i32, i32* @AR_RTC_DERIVED_RTC_CLK, align 4
  %376 = call i32 @OS_REG_WRITE(%struct.ath_hal* %374, i32 %375, i32 760)
  %377 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %378 = load i32, i32* @AR_SLP32_MODE, align 4
  %379 = call i32 @OS_REG_WRITE(%struct.ath_hal* %377, i32 %378, i32 1110999)
  %380 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %381 = load i32, i32* @AR_SLP32_INC, align 4
  %382 = call i32 @OS_REG_WRITE(%struct.ath_hal* %380, i32 %381, i32 124846)
  br label %393

383:                                              ; preds = %370
  %384 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %385 = load i32, i32* @AR_RTC_DERIVED_RTC_CLK, align 4
  %386 = call i32 @OS_REG_WRITE(%struct.ath_hal* %384, i32 %385, i32 1218)
  %387 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %388 = load i32, i32* @AR_SLP32_MODE, align 4
  %389 = call i32 @OS_REG_WRITE(%struct.ath_hal* %387, i32 %388, i32 1111040)
  %390 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %391 = load i32, i32* @AR_SLP32_INC, align 4
  %392 = call i32 @OS_REG_WRITE(%struct.ath_hal* %390, i32 %391, i32 124928)
  br label %393

393:                                              ; preds = %383, %373
  %394 = call i32 @OS_DELAY(i32 100)
  br label %395

395:                                              ; preds = %393, %366
  ret void
}

declare dso_local %struct.TYPE_2__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32* @ath_hal_checkchannel(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i64 @AR_SREV_HORNET(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @OS_DELAY(i32) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_APHRODITE(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_SCORPION(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_HONEYBEE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @IS_CHAN_5GHZ(i32*) #1

declare dso_local i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
