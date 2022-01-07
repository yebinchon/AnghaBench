; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_spur_mitigate_ofdm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_spur_mitigate_ofdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ath_hal_9300 = type { i32 }
%struct.TYPE_4__ = type { i32 }

@AR_PHY_GEN_CTRL = common dso_local global i32 0, align 4
@AR_PHY_GC_DYN2040_PRI_CH = common dso_local global i32 0, align 4
@AR_PHY_TIMING4 = common dso_local global i32 0, align 4
@AR_PHY_TIMING4_ENABLE_SPUR_FILTER = common dso_local global i32 0, align 4
@AR_PHY_TIMING11 = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_SPUR_FREQ_SD = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_SPUR_DELTA_PHASE = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_SPUR_SUBCHANNEL_SD = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_USE_SPUR_FILTER_IN_AGC = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_USE_SPUR_FILTER_IN_SELFCOR = common dso_local global i32 0, align 4
@AR_PHY_TIMING4_ENABLE_SPUR_RSSI = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_EN_VIT_SPUR_RSSI = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_ENABLE_NF_RSSI_SPUR_MIT = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_ENABLE_MASK_PPM = common dso_local global i32 0, align 4
@AR_PHY_TIMING4_ENABLE_PILOT_MASK = common dso_local global i32 0, align 4
@AR_PHY_TIMING4_ENABLE_CHAN_MASK = common dso_local global i32 0, align 4
@AR_PHY_PILOT_SPUR_MASK = common dso_local global i32 0, align 4
@AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_IDX_A = common dso_local global i32 0, align 4
@AR_PHY_SPUR_MASK_A = common dso_local global i32 0, align 4
@AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_IDX_A = common dso_local global i32 0, align 4
@AR_PHY_CHAN_SPUR_MASK = common dso_local global i32 0, align 4
@AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_IDX_A = common dso_local global i32 0, align 4
@AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_A = common dso_local global i32 0, align 4
@AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_A = common dso_local global i32 0, align 4
@AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_A = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_MASK_RATE_CNTL = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_SPUR_RSSI_THRESH = common dso_local global i32 0, align 4
@AR_PHY_MODE = common dso_local global i32 0, align 4
@AR_PHY_MODE_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar9300_spur_mitigate_ofdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_spur_mitigate_ofdm(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca %struct.ath_hal_9300*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  store i32 10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %18 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %17)
  store %struct.ath_hal_9300* %18, %struct.ath_hal_9300** %15, align 8
  %19 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %21 = call %struct.TYPE_4__* @ath_hal_checkchannel(%struct.ath_hal* %19, %struct.ieee80211_channel* %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %16, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %23 = call i64 @IS_CHAN_5GHZ(%struct.TYPE_4__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %27 = call i64* @ar9300_eeprom_get_spur_chans_ptr(%struct.ath_hal* %26, i32 0)
  store i64* %27, i64** %14, align 8
  store i32 0, i32* %13, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %30 = call i64* @ar9300_eeprom_get_spur_chans_ptr(%struct.ath_hal* %29, i32 1)
  store i64* %30, i64** %14, align 8
  store i32 1, i32* %13, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %33 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  store i32 19, i32* %6, align 4
  %36 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %37 = load i32, i32* @AR_PHY_GEN_CTRL, align 4
  %38 = load i32, i32* @AR_PHY_GC_DYN2040_PRI_CH, align 4
  %39 = call i32 @OS_REG_READ_FIELD(%struct.ath_hal* %36, i32 %37, i32 %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 10
  store i32 %45, i32* %5, align 4
  br label %51

46:                                               ; preds = %35
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 10
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %41
  br label %56

52:                                               ; preds = %31
  store i32 10, i32* %6, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %51
  %57 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %58 = load i32, i32* @AR_PHY_TIMING4, align 4
  %59 = load i32, i32* @AR_PHY_TIMING4_ENABLE_SPUR_FILTER, align 4
  %60 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %57, i32 %58, i32 %59, i32 0)
  %61 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %62 = load i32, i32* @AR_PHY_TIMING11, align 4
  %63 = load i32, i32* @AR_PHY_TIMING11_SPUR_FREQ_SD, align 4
  %64 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %61, i32 %62, i32 %63, i32 0)
  %65 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %66 = load i32, i32* @AR_PHY_TIMING11, align 4
  %67 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %68 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %65, i32 %66, i32 %67, i32 0)
  %69 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %70 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %71 = load i32, i32* @AR_PHY_SFCORR_EXT_SPUR_SUBCHANNEL_SD, align 4
  %72 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %69, i32 %70, i32 %71, i32 0)
  %73 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %74 = load i32, i32* @AR_PHY_TIMING11, align 4
  %75 = load i32, i32* @AR_PHY_TIMING11_USE_SPUR_FILTER_IN_AGC, align 4
  %76 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %73, i32 %74, i32 %75, i32 0)
  %77 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %78 = load i32, i32* @AR_PHY_TIMING11, align 4
  %79 = load i32, i32* @AR_PHY_TIMING11_USE_SPUR_FILTER_IN_SELFCOR, align 4
  %80 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %77, i32 %78, i32 %79, i32 0)
  %81 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %82 = load i32, i32* @AR_PHY_TIMING4, align 4
  %83 = load i32, i32* @AR_PHY_TIMING4_ENABLE_SPUR_RSSI, align 4
  %84 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %81, i32 %82, i32 %83, i32 0)
  %85 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %86 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %87 = load i32, i32* @AR_PHY_SPUR_REG_EN_VIT_SPUR_RSSI, align 4
  %88 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %90 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %91 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_NF_RSSI_SPUR_MIT, align 4
  %92 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %89, i32 %90, i32 %91, i32 0)
  %93 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %94 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %95 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_MASK_PPM, align 4
  %96 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %93, i32 %94, i32 %95, i32 0)
  %97 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %98 = load i32, i32* @AR_PHY_TIMING4, align 4
  %99 = load i32, i32* @AR_PHY_TIMING4_ENABLE_PILOT_MASK, align 4
  %100 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %97, i32 %98, i32 %99, i32 0)
  %101 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %102 = load i32, i32* @AR_PHY_TIMING4, align 4
  %103 = load i32, i32* @AR_PHY_TIMING4_ENABLE_CHAN_MASK, align 4
  %104 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %101, i32 %102, i32 %103, i32 0)
  %105 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %106 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK, align 4
  %107 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_IDX_A, align 4
  %108 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %105, i32 %106, i32 %107, i32 0)
  %109 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %110 = load i32, i32* @AR_PHY_SPUR_MASK_A, align 4
  %111 = load i32, i32* @AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_IDX_A, align 4
  %112 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %109, i32 %110, i32 %111, i32 0)
  %113 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %114 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK, align 4
  %115 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_IDX_A, align 4
  %116 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %113, i32 %114, i32 %115, i32 0)
  %117 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %118 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK, align 4
  %119 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_A, align 4
  %120 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %117, i32 %118, i32 %119, i32 0)
  %121 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %122 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK, align 4
  %123 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_A, align 4
  %124 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %121, i32 %122, i32 %123, i32 0)
  %125 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %126 = load i32, i32* @AR_PHY_SPUR_MASK_A, align 4
  %127 = load i32, i32* @AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_A, align 4
  %128 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %125, i32 %126, i32 %127, i32 0)
  %129 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %130 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %131 = load i32, i32* @AR_PHY_SPUR_REG_MASK_RATE_CNTL, align 4
  %132 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %129, i32 %130, i32 %131, i32 0)
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %316, %56
  %134 = load i64*, i64** %14, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i32, i32* %12, align 4
  %142 = icmp slt i32 %141, 5
  br label %143

143:                                              ; preds = %140, %133
  %144 = phi i1 [ false, %133 ], [ %142, %140 ]
  br i1 %144, label %145, label %319

145:                                              ; preds = %143
  %146 = load i64*, i64** %14, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @FBIN2FREQ(i64 %150, i32 %151)
  %153 = load i32, i32* %5, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @abs(i32 %155) #3
  %157 = load i32, i32* %6, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %316

159:                                              ; preds = %145
  %160 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %161 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %196

163:                                              ; preds = %159
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %163
  %167 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %168 = load i32, i32* @AR_PHY_GEN_CTRL, align 4
  %169 = load i32, i32* @AR_PHY_GC_DYN2040_PRI_CH, align 4
  %170 = call i32 @OS_REG_READ_FIELD(%struct.ath_hal* %167, i32 %168, i32 %169)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  store i32 1, i32* %9, align 4
  br label %174

173:                                              ; preds = %166
  store i32 0, i32* %9, align 4
  br label %174

174:                                              ; preds = %173, %172
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 10
  %177 = shl i32 %176, 9
  %178 = sdiv i32 %177, 11
  store i32 %178, i32* %8, align 4
  br label %192

179:                                              ; preds = %163
  %180 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %181 = load i32, i32* @AR_PHY_GEN_CTRL, align 4
  %182 = load i32, i32* @AR_PHY_GC_DYN2040_PRI_CH, align 4
  %183 = call i32 @OS_REG_READ_FIELD(%struct.ath_hal* %180, i32 %181, i32 %182)
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  store i32 0, i32* %9, align 4
  br label %187

186:                                              ; preds = %179
  store i32 1, i32* %9, align 4
  br label %187

187:                                              ; preds = %186, %185
  %188 = load i32, i32* %7, align 4
  %189 = sub nsw i32 %188, 10
  %190 = shl i32 %189, 9
  %191 = sdiv i32 %190, 11
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %187, %174
  %193 = load i32, i32* %7, align 4
  %194 = shl i32 %193, 17
  %195 = sdiv i32 %194, 5
  store i32 %195, i32* %10, align 4
  br label %203

196:                                              ; preds = %159
  store i32 0, i32* %9, align 4
  %197 = load i32, i32* %7, align 4
  %198 = shl i32 %197, 9
  %199 = sdiv i32 %198, 11
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %7, align 4
  %201 = shl i32 %200, 18
  %202 = sdiv i32 %201, 5
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %196, %192
  %204 = load i32, i32* %8, align 4
  %205 = and i32 %204, 1023
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %10, align 4
  %207 = and i32 %206, 1048575
  store i32 %207, i32* %10, align 4
  %208 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %209 = load i32, i32* @AR_PHY_TIMING4, align 4
  %210 = load i32, i32* @AR_PHY_TIMING4_ENABLE_SPUR_FILTER, align 4
  %211 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %208, i32 %209, i32 %210, i32 1)
  %212 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %213 = load i32, i32* @AR_PHY_TIMING11, align 4
  %214 = load i32, i32* @AR_PHY_TIMING11_SPUR_FREQ_SD, align 4
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %212, i32 %213, i32 %214, i32 %215)
  %217 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %218 = load i32, i32* @AR_PHY_TIMING11, align 4
  %219 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %220 = load i32, i32* %10, align 4
  %221 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %217, i32 %218, i32 %219, i32 %220)
  %222 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %223 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %224 = load i32, i32* @AR_PHY_SFCORR_EXT_SPUR_SUBCHANNEL_SD, align 4
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %222, i32 %223, i32 %224, i32 %225)
  %227 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %228 = load i32, i32* @AR_PHY_TIMING11, align 4
  %229 = load i32, i32* @AR_PHY_TIMING11_USE_SPUR_FILTER_IN_AGC, align 4
  %230 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %227, i32 %228, i32 %229, i32 1)
  %231 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %232 = load i32, i32* @AR_PHY_TIMING11, align 4
  %233 = load i32, i32* @AR_PHY_TIMING11_USE_SPUR_FILTER_IN_SELFCOR, align 4
  %234 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %231, i32 %232, i32 %233, i32 1)
  %235 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %236 = load i32, i32* @AR_PHY_TIMING4, align 4
  %237 = load i32, i32* @AR_PHY_TIMING4_ENABLE_SPUR_RSSI, align 4
  %238 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %235, i32 %236, i32 %237, i32 1)
  %239 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %240 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %241 = load i32, i32* @AR_PHY_SPUR_REG_SPUR_RSSI_THRESH, align 4
  %242 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %239, i32 %240, i32 %241, i32 34)
  %243 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %244 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %245 = load i32, i32* @AR_PHY_SPUR_REG_EN_VIT_SPUR_RSSI, align 4
  %246 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %243, i32 %244, i32 %245, i32 1)
  %247 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %248 = call i32 @AR_SREV_WASP(%struct.ath_hal* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %261, label %250

250:                                              ; preds = %203
  %251 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %252 = load i32, i32* @AR_PHY_MODE, align 4
  %253 = load i32, i32* @AR_PHY_MODE_DYNAMIC, align 4
  %254 = call i32 @OS_REG_READ_FIELD(%struct.ath_hal* %251, i32 %252, i32 %253)
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %261

256:                                              ; preds = %250
  %257 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %258 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %259 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_NF_RSSI_SPUR_MIT, align 4
  %260 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %257, i32 %258, i32 %259, i32 1)
  br label %261

261:                                              ; preds = %256, %250, %203
  %262 = load i32, i32* %7, align 4
  %263 = shl i32 %262, 4
  %264 = sdiv i32 %263, 5
  store i32 %264, i32* %11, align 4
  %265 = load i32, i32* %11, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %261
  %268 = load i32, i32* %11, align 4
  %269 = sub nsw i32 %268, 1
  store i32 %269, i32* %11, align 4
  br label %270

270:                                              ; preds = %267, %261
  %271 = load i32, i32* %11, align 4
  %272 = and i32 %271, 127
  store i32 %272, i32* %11, align 4
  %273 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %274 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %275 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_MASK_PPM, align 4
  %276 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %273, i32 %274, i32 %275, i32 1)
  %277 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %278 = load i32, i32* @AR_PHY_TIMING4, align 4
  %279 = load i32, i32* @AR_PHY_TIMING4_ENABLE_PILOT_MASK, align 4
  %280 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %277, i32 %278, i32 %279, i32 1)
  %281 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %282 = load i32, i32* @AR_PHY_TIMING4, align 4
  %283 = load i32, i32* @AR_PHY_TIMING4_ENABLE_CHAN_MASK, align 4
  %284 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %281, i32 %282, i32 %283, i32 1)
  %285 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %286 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK, align 4
  %287 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_IDX_A, align 4
  %288 = load i32, i32* %11, align 4
  %289 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %285, i32 %286, i32 %287, i32 %288)
  %290 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %291 = load i32, i32* @AR_PHY_SPUR_MASK_A, align 4
  %292 = load i32, i32* @AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_IDX_A, align 4
  %293 = load i32, i32* %11, align 4
  %294 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %290, i32 %291, i32 %292, i32 %293)
  %295 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %296 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK, align 4
  %297 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_IDX_A, align 4
  %298 = load i32, i32* %11, align 4
  %299 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %295, i32 %296, i32 %297, i32 %298)
  %300 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %301 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK, align 4
  %302 = load i32, i32* @AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_A, align 4
  %303 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %300, i32 %301, i32 %302, i32 12)
  %304 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %305 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK, align 4
  %306 = load i32, i32* @AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_A, align 4
  %307 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %304, i32 %305, i32 %306, i32 12)
  %308 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %309 = load i32, i32* @AR_PHY_SPUR_MASK_A, align 4
  %310 = load i32, i32* @AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_A, align 4
  %311 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %308, i32 %309, i32 %310, i32 160)
  %312 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %313 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %314 = load i32, i32* @AR_PHY_SPUR_REG_MASK_RATE_CNTL, align 4
  %315 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %312, i32 %313, i32 %314, i32 255)
  br label %319

316:                                              ; preds = %145
  %317 = load i32, i32* %12, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %12, align 4
  br label %133

319:                                              ; preds = %270, %143
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_4__* @ath_hal_checkchannel(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i64 @IS_CHAN_5GHZ(%struct.TYPE_4__*) #1

declare dso_local i64* @ar9300_eeprom_get_spur_chans_ptr(%struct.ath_hal*, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_READ_FIELD(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @FBIN2FREQ(i64, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @AR_SREV_WASP(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
