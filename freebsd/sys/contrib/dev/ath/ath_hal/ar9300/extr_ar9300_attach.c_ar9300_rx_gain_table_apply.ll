; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_attach.c_ar9300_rx_gain_table_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_attach.c_ar9300_rx_gain_table_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath_hal_9300 = type { i32, i32, i32, i32, i32 }

@ar9300_common_mixed_rx_gain_table_jupiter_1p0 = common dso_local global i32 0, align 4
@ar9300Common_mixed_rx_gain_table_jupiter_2p0 = common dso_local global i32 0, align 4
@ar9462_2p0_baseband_core_mix_rxgain = common dso_local global i32 0, align 4
@ar9462_2p0_baseband_postamble_mix_rxgain = common dso_local global i32 0, align 4
@ar9462_2p0_baseband_postamble_5g_xlna = common dso_local global i32 0, align 4
@ar9462_2p1_common_mixed_rx_gain = common dso_local global i32 0, align 4
@ar9462_2p1_baseband_core_mix_rxgain = common dso_local global i32 0, align 4
@ar9462_2p1_baseband_postamble_mix_rxgain = common dso_local global i32 0, align 4
@ar9462_2p1_baseband_postamble_5g_xlna = common dso_local global i32 0, align 4
@ar9462_2p1_common_5g_xlna_only_rxgain = common dso_local global i32 0, align 4
@ar9462_2p0_common_5g_xlna_only_rxgain = common dso_local global i32 0, align 4
@ar9331_common_rx_gain_hornet1_2 = common dso_local global i32 0, align 4
@ar9331_common_rx_gain_hornet1_1 = common dso_local global i32 0, align 4
@ar9485_common_wo_xlna_rx_gain_poseidon1_1 = common dso_local global i32 0, align 4
@HAL_GPIO_OUTPUT_MUX_PCIE_ATTENTION_LED = common dso_local global i32 0, align 4
@ar9485Common_wo_xlna_rx_gain_poseidon1_0 = common dso_local global i32 0, align 4
@ar9300_common_rx_gain_table_jupiter_1p0 = common dso_local global i32 0, align 4
@ar9300Common_rx_gain_table_jupiter_2p0 = common dso_local global i32 0, align 4
@ar9462_2p1_common_rx_gain = common dso_local global i32 0, align 4
@ar9300_common_rx_gain_table_ar9580_1p0 = common dso_local global i32 0, align 4
@ar9340Common_rx_gain_table_wasp_1p0 = common dso_local global i32 0, align 4
@ar955xCommon_rx_gain_table_scorpion_1p0 = common dso_local global i32 0, align 4
@ar955xCommon_rx_gain_bounds_scorpion_1p0 = common dso_local global i32 0, align 4
@qca953xCommon_rx_gain_table_honeybee_1p0 = common dso_local global i32 0, align 4
@qca953xCommon_rx_gain_bounds_honeybee_1p0 = common dso_local global i32 0, align 4
@ar9300_common_rx_gain_table_osprey_2p2 = common dso_local global i32 0, align 4
@ar9331_common_wo_xlna_rx_gain_hornet1_2 = common dso_local global i32 0, align 4
@ar9331_common_wo_xlna_rx_gain_hornet1_1 = common dso_local global i32 0, align 4
@ar9300_common_wo_xlna_rx_gain_table_jupiter_1p0 = common dso_local global i32 0, align 4
@ar9300Common_wo_xlna_rx_gain_table_jupiter_2p0 = common dso_local global i32 0, align 4
@ar9462_2p1_common_wo_xlna_rx_gain = common dso_local global i32 0, align 4
@ar956XCommon_wo_xlna_rx_gain_table_aphrodite_1p0 = common dso_local global i32 0, align 4
@ar9300_common_wo_xlna_rx_gain_table_ar9580_1p0 = common dso_local global i32 0, align 4
@ar9340Common_wo_xlna_rx_gain_table_wasp_1p0 = common dso_local global i32 0, align 4
@ar955xCommon_wo_xlna_rx_gain_table_scorpion_1p0 = common dso_local global i32 0, align 4
@ar955xCommon_wo_xlna_rx_gain_bounds_scorpion_1p0 = common dso_local global i32 0, align 4
@qca953xCommon_wo_xlna_rx_gain_table_honeybee_1p0 = common dso_local global i32 0, align 4
@qca953xCommon_wo_xlna_rx_gain_bounds_honeybee_1p0 = common dso_local global i32 0, align 4
@ar9300Common_wo_xlna_rx_gain_table_osprey_2p2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_rx_gain_table_apply(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_9300*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %7 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %6)
  store %struct.ath_hal_9300* %7, %struct.ath_hal_9300** %3, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %9 = call i64 @AR_SREV_OSPREY(%struct.ath_hal* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %13 = call i64 @AR_SREV_AR9580(%struct.ath_hal* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11, %1
  %16 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %17 = call i64 @ar9300_rf_gain_cap_apply(%struct.ath_hal* %16, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %474

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %11
  %22 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %23 = call i32 @ar9300_rx_gain_index_get(%struct.ath_hal* %22)
  switch i32 %23, label %133 [
    i32 2, label %24
    i32 3, label %96
    i32 0, label %132
    i32 1, label %311
  ]

24:                                               ; preds = %21
  %25 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %26 = call i32 @AR_SREV_JUPITER_10(%struct.ath_hal* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %30 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %29, i32 0, i32 0
  %31 = load i32, i32* @ar9300_common_mixed_rx_gain_table_jupiter_1p0, align 4
  %32 = load i32, i32* @ar9300_common_mixed_rx_gain_table_jupiter_1p0, align 4
  %33 = call i32 @ARRAY_LENGTH(i32 %32)
  %34 = call i32 @INIT_INI_ARRAY(i32* %30, i32 %31, i32 %33, i32 2)
  br label %474

35:                                               ; preds = %24
  %36 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %37 = call i32 @AR_SREV_JUPITER_20(%struct.ath_hal* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  %40 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %41 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %40, i32 0, i32 0
  %42 = load i32, i32* @ar9300Common_mixed_rx_gain_table_jupiter_2p0, align 4
  %43 = load i32, i32* @ar9300Common_mixed_rx_gain_table_jupiter_2p0, align 4
  %44 = call i32 @ARRAY_LENGTH(i32 %43)
  %45 = call i32 @INIT_INI_ARRAY(i32* %41, i32 %42, i32 %44, i32 2)
  %46 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %47 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %46, i32 0, i32 4
  %48 = load i32, i32* @ar9462_2p0_baseband_core_mix_rxgain, align 4
  %49 = load i32, i32* @ar9462_2p0_baseband_core_mix_rxgain, align 4
  %50 = call i32 @ARRAY_LENGTH(i32 %49)
  %51 = call i32 @INIT_INI_ARRAY(i32* %47, i32 %48, i32 %50, i32 2)
  %52 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %53 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %52, i32 0, i32 3
  %54 = load i32, i32* @ar9462_2p0_baseband_postamble_mix_rxgain, align 4
  %55 = load i32, i32* @ar9462_2p0_baseband_postamble_mix_rxgain, align 4
  %56 = call i32 @ARRAY_LENGTH(i32 %55)
  %57 = call i32 @INIT_INI_ARRAY(i32* %53, i32 %54, i32 %56, i32 2)
  %58 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %59 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %58, i32 0, i32 2
  %60 = load i32, i32* @ar9462_2p0_baseband_postamble_5g_xlna, align 4
  %61 = load i32, i32* @ar9462_2p0_baseband_postamble_5g_xlna, align 4
  %62 = call i32 @ARRAY_LENGTH(i32 %61)
  %63 = call i32 @INIT_INI_ARRAY(i32* %59, i32 %60, i32 %62, i32 2)
  br label %474

64:                                               ; preds = %35
  %65 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %66 = call i32 @AR_SREV_JUPITER_21(%struct.ath_hal* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %64
  %69 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %70 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %69, i32 0, i32 0
  %71 = load i32, i32* @ar9462_2p1_common_mixed_rx_gain, align 4
  %72 = load i32, i32* @ar9462_2p1_common_mixed_rx_gain, align 4
  %73 = call i32 @ARRAY_LENGTH(i32 %72)
  %74 = call i32 @INIT_INI_ARRAY(i32* %70, i32 %71, i32 %73, i32 2)
  %75 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %76 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %75, i32 0, i32 4
  %77 = load i32, i32* @ar9462_2p1_baseband_core_mix_rxgain, align 4
  %78 = load i32, i32* @ar9462_2p1_baseband_core_mix_rxgain, align 4
  %79 = call i32 @ARRAY_LENGTH(i32 %78)
  %80 = call i32 @INIT_INI_ARRAY(i32* %76, i32 %77, i32 %79, i32 2)
  %81 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %82 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %81, i32 0, i32 3
  %83 = load i32, i32* @ar9462_2p1_baseband_postamble_mix_rxgain, align 4
  %84 = load i32, i32* @ar9462_2p1_baseband_postamble_mix_rxgain, align 4
  %85 = call i32 @ARRAY_LENGTH(i32 %84)
  %86 = call i32 @INIT_INI_ARRAY(i32* %82, i32 %83, i32 %85, i32 2)
  %87 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %88 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %87, i32 0, i32 2
  %89 = load i32, i32* @ar9462_2p1_baseband_postamble_5g_xlna, align 4
  %90 = load i32, i32* @ar9462_2p1_baseband_postamble_5g_xlna, align 4
  %91 = call i32 @ARRAY_LENGTH(i32 %90)
  %92 = call i32 @INIT_INI_ARRAY(i32* %88, i32 %89, i32 %91, i32 2)
  br label %474

93:                                               ; preds = %64
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %21, %95
  %97 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %98 = call i32 @AR_SREV_JUPITER_21(%struct.ath_hal* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %102 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %101, i32 0, i32 0
  %103 = load i32, i32* @ar9462_2p1_common_5g_xlna_only_rxgain, align 4
  %104 = load i32, i32* @ar9462_2p1_common_5g_xlna_only_rxgain, align 4
  %105 = call i32 @ARRAY_LENGTH(i32 %104)
  %106 = call i32 @INIT_INI_ARRAY(i32* %102, i32 %103, i32 %105, i32 2)
  %107 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %108 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %107, i32 0, i32 2
  %109 = load i32, i32* @ar9462_2p1_baseband_postamble_5g_xlna, align 4
  %110 = load i32, i32* @ar9462_2p1_baseband_postamble_5g_xlna, align 4
  %111 = call i32 @ARRAY_LENGTH(i32 %110)
  %112 = call i32 @INIT_INI_ARRAY(i32* %108, i32 %109, i32 %111, i32 2)
  br label %131

113:                                              ; preds = %96
  %114 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %115 = call i32 @AR_SREV_JUPITER_20(%struct.ath_hal* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %113
  %118 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %119 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %118, i32 0, i32 0
  %120 = load i32, i32* @ar9462_2p0_common_5g_xlna_only_rxgain, align 4
  %121 = load i32, i32* @ar9462_2p0_common_5g_xlna_only_rxgain, align 4
  %122 = call i32 @ARRAY_LENGTH(i32 %121)
  %123 = call i32 @INIT_INI_ARRAY(i32* %119, i32 %120, i32 %122, i32 2)
  %124 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %125 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %124, i32 0, i32 2
  %126 = load i32, i32* @ar9462_2p0_baseband_postamble_5g_xlna, align 4
  %127 = load i32, i32* @ar9462_2p0_baseband_postamble_5g_xlna, align 4
  %128 = call i32 @ARRAY_LENGTH(i32 %127)
  %129 = call i32 @INIT_INI_ARRAY(i32* %125, i32 %126, i32 %128, i32 2)
  br label %130

130:                                              ; preds = %117, %113
  br label %131

131:                                              ; preds = %130, %100
  br label %474

132:                                              ; preds = %21
  br label %133

133:                                              ; preds = %21, %132
  %134 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %135 = call i32 @AR_SREV_HORNET_12(%struct.ath_hal* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %139 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %138, i32 0, i32 0
  %140 = load i32, i32* @ar9331_common_rx_gain_hornet1_2, align 4
  %141 = load i32, i32* @ar9331_common_rx_gain_hornet1_2, align 4
  %142 = call i32 @ARRAY_LENGTH(i32 %141)
  %143 = call i32 @INIT_INI_ARRAY(i32* %139, i32 %140, i32 %142, i32 2)
  br label %310

144:                                              ; preds = %133
  %145 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %146 = call i32 @AR_SREV_HORNET_11(%struct.ath_hal* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %150 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %149, i32 0, i32 0
  %151 = load i32, i32* @ar9331_common_rx_gain_hornet1_1, align 4
  %152 = load i32, i32* @ar9331_common_rx_gain_hornet1_1, align 4
  %153 = call i32 @ARRAY_LENGTH(i32 %152)
  %154 = call i32 @INIT_INI_ARRAY(i32* %150, i32 %151, i32 %153, i32 2)
  br label %309

155:                                              ; preds = %144
  %156 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %157 = call i32 @AR_SREV_POSEIDON_11_OR_LATER(%struct.ath_hal* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %193

159:                                              ; preds = %155
  %160 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %161 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %160, i32 0, i32 0
  %162 = load i32, i32* @ar9485_common_wo_xlna_rx_gain_poseidon1_1, align 4
  %163 = load i32, i32* @ar9485_common_wo_xlna_rx_gain_poseidon1_1, align 4
  %164 = call i32 @ARRAY_LENGTH(i32 %163)
  %165 = call i32 @INIT_INI_ARRAY(i32* %161, i32 %162, i32 %164, i32 2)
  %166 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %167 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %4, align 4
  %170 = load i32, i32* %4, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %192

172:                                              ; preds = %159
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %188, %172
  %174 = load i32, i32* %5, align 4
  %175 = icmp slt i32 %174, 32
  br i1 %175, label %176, label %191

176:                                              ; preds = %173
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* %5, align 4
  %179 = shl i32 1, %178
  %180 = and i32 %177, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %176
  %183 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* @HAL_GPIO_OUTPUT_MUX_PCIE_ATTENTION_LED, align 4
  %186 = call i32 @ath_hal_gpioCfgOutput(%struct.ath_hal* %183, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %182, %176
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %5, align 4
  br label %173

191:                                              ; preds = %173
  br label %192

192:                                              ; preds = %191, %159
  br label %308

193:                                              ; preds = %155
  %194 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %195 = call i32 @AR_SREV_POSEIDON(%struct.ath_hal* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %193
  %198 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %199 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %198, i32 0, i32 0
  %200 = load i32, i32* @ar9485Common_wo_xlna_rx_gain_poseidon1_0, align 4
  %201 = load i32, i32* @ar9485Common_wo_xlna_rx_gain_poseidon1_0, align 4
  %202 = call i32 @ARRAY_LENGTH(i32 %201)
  %203 = call i32 @INIT_INI_ARRAY(i32* %199, i32 %200, i32 %202, i32 2)
  br label %307

204:                                              ; preds = %193
  %205 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %206 = call i32 @AR_SREV_JUPITER_10(%struct.ath_hal* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %204
  %209 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %210 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %209, i32 0, i32 0
  %211 = load i32, i32* @ar9300_common_rx_gain_table_jupiter_1p0, align 4
  %212 = load i32, i32* @ar9300_common_rx_gain_table_jupiter_1p0, align 4
  %213 = call i32 @ARRAY_LENGTH(i32 %212)
  %214 = call i32 @INIT_INI_ARRAY(i32* %210, i32 %211, i32 %213, i32 2)
  br label %306

215:                                              ; preds = %204
  %216 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %217 = call i32 @AR_SREV_JUPITER_20(%struct.ath_hal* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %215
  %220 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %221 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %220, i32 0, i32 0
  %222 = load i32, i32* @ar9300Common_rx_gain_table_jupiter_2p0, align 4
  %223 = load i32, i32* @ar9300Common_rx_gain_table_jupiter_2p0, align 4
  %224 = call i32 @ARRAY_LENGTH(i32 %223)
  %225 = call i32 @INIT_INI_ARRAY(i32* %221, i32 %222, i32 %224, i32 2)
  br label %305

226:                                              ; preds = %215
  %227 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %228 = call i32 @AR_SREV_JUPITER_21(%struct.ath_hal* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %226
  %231 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %232 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %231, i32 0, i32 0
  %233 = load i32, i32* @ar9462_2p1_common_rx_gain, align 4
  %234 = load i32, i32* @ar9462_2p1_common_rx_gain, align 4
  %235 = call i32 @ARRAY_LENGTH(i32 %234)
  %236 = call i32 @INIT_INI_ARRAY(i32* %232, i32 %233, i32 %235, i32 2)
  br label %304

237:                                              ; preds = %226
  %238 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %239 = call i64 @AR_SREV_AR9580(%struct.ath_hal* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %237
  %242 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %243 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %242, i32 0, i32 0
  %244 = load i32, i32* @ar9300_common_rx_gain_table_ar9580_1p0, align 4
  %245 = load i32, i32* @ar9300_common_rx_gain_table_ar9580_1p0, align 4
  %246 = call i32 @ARRAY_LENGTH(i32 %245)
  %247 = call i32 @INIT_INI_ARRAY(i32* %243, i32 %244, i32 %246, i32 2)
  br label %303

248:                                              ; preds = %237
  %249 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %250 = call i32 @AR_SREV_WASP(%struct.ath_hal* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %248
  %253 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %254 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %253, i32 0, i32 0
  %255 = load i32, i32* @ar9340Common_rx_gain_table_wasp_1p0, align 4
  %256 = load i32, i32* @ar9340Common_rx_gain_table_wasp_1p0, align 4
  %257 = call i32 @ARRAY_LENGTH(i32 %256)
  %258 = call i32 @INIT_INI_ARRAY(i32* %254, i32 %255, i32 %257, i32 2)
  br label %302

259:                                              ; preds = %248
  %260 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %261 = call i32 @AR_SREV_SCORPION(%struct.ath_hal* %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %276

263:                                              ; preds = %259
  %264 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %265 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %264, i32 0, i32 0
  %266 = load i32, i32* @ar955xCommon_rx_gain_table_scorpion_1p0, align 4
  %267 = load i32, i32* @ar955xCommon_rx_gain_table_scorpion_1p0, align 4
  %268 = call i32 @ARRAY_LENGTH(i32 %267)
  %269 = call i32 @INIT_INI_ARRAY(i32* %265, i32 %266, i32 %268, i32 2)
  %270 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %271 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %270, i32 0, i32 1
  %272 = load i32, i32* @ar955xCommon_rx_gain_bounds_scorpion_1p0, align 4
  %273 = load i32, i32* @ar955xCommon_rx_gain_bounds_scorpion_1p0, align 4
  %274 = call i32 @ARRAY_LENGTH(i32 %273)
  %275 = call i32 @INIT_INI_ARRAY(i32* %271, i32 %272, i32 %274, i32 5)
  br label %301

276:                                              ; preds = %259
  %277 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %278 = call i32 @AR_SREV_HONEYBEE(%struct.ath_hal* %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %293

280:                                              ; preds = %276
  %281 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %282 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %281, i32 0, i32 0
  %283 = load i32, i32* @qca953xCommon_rx_gain_table_honeybee_1p0, align 4
  %284 = load i32, i32* @qca953xCommon_rx_gain_table_honeybee_1p0, align 4
  %285 = call i32 @ARRAY_LENGTH(i32 %284)
  %286 = call i32 @INIT_INI_ARRAY(i32* %282, i32 %283, i32 %285, i32 2)
  %287 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %288 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %287, i32 0, i32 1
  %289 = load i32, i32* @qca953xCommon_rx_gain_bounds_honeybee_1p0, align 4
  %290 = load i32, i32* @qca953xCommon_rx_gain_bounds_honeybee_1p0, align 4
  %291 = call i32 @ARRAY_LENGTH(i32 %290)
  %292 = call i32 @INIT_INI_ARRAY(i32* %288, i32 %289, i32 %291, i32 5)
  br label %300

293:                                              ; preds = %276
  %294 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %295 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %294, i32 0, i32 0
  %296 = load i32, i32* @ar9300_common_rx_gain_table_osprey_2p2, align 4
  %297 = load i32, i32* @ar9300_common_rx_gain_table_osprey_2p2, align 4
  %298 = call i32 @ARRAY_LENGTH(i32 %297)
  %299 = call i32 @INIT_INI_ARRAY(i32* %295, i32 %296, i32 %298, i32 2)
  br label %300

300:                                              ; preds = %293, %280
  br label %301

301:                                              ; preds = %300, %263
  br label %302

302:                                              ; preds = %301, %252
  br label %303

303:                                              ; preds = %302, %241
  br label %304

304:                                              ; preds = %303, %230
  br label %305

305:                                              ; preds = %304, %219
  br label %306

306:                                              ; preds = %305, %208
  br label %307

307:                                              ; preds = %306, %197
  br label %308

308:                                              ; preds = %307, %192
  br label %309

309:                                              ; preds = %308, %148
  br label %310

310:                                              ; preds = %309, %137
  br label %474

311:                                              ; preds = %21
  %312 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %313 = call i32 @AR_SREV_HORNET_12(%struct.ath_hal* %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %311
  %316 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %317 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %316, i32 0, i32 0
  %318 = load i32, i32* @ar9331_common_wo_xlna_rx_gain_hornet1_2, align 4
  %319 = load i32, i32* @ar9331_common_wo_xlna_rx_gain_hornet1_2, align 4
  %320 = call i32 @ARRAY_LENGTH(i32 %319)
  %321 = call i32 @INIT_INI_ARRAY(i32* %317, i32 %318, i32 %320, i32 2)
  br label %473

322:                                              ; preds = %311
  %323 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %324 = call i32 @AR_SREV_HORNET_11(%struct.ath_hal* %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %322
  %327 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %328 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %327, i32 0, i32 0
  %329 = load i32, i32* @ar9331_common_wo_xlna_rx_gain_hornet1_1, align 4
  %330 = load i32, i32* @ar9331_common_wo_xlna_rx_gain_hornet1_1, align 4
  %331 = call i32 @ARRAY_LENGTH(i32 %330)
  %332 = call i32 @INIT_INI_ARRAY(i32* %328, i32 %329, i32 %331, i32 2)
  br label %472

333:                                              ; preds = %322
  %334 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %335 = call i32 @AR_SREV_POSEIDON_11_OR_LATER(%struct.ath_hal* %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %333
  %338 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %339 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %338, i32 0, i32 0
  %340 = load i32, i32* @ar9485_common_wo_xlna_rx_gain_poseidon1_1, align 4
  %341 = load i32, i32* @ar9485_common_wo_xlna_rx_gain_poseidon1_1, align 4
  %342 = call i32 @ARRAY_LENGTH(i32 %341)
  %343 = call i32 @INIT_INI_ARRAY(i32* %339, i32 %340, i32 %342, i32 2)
  br label %471

344:                                              ; preds = %333
  %345 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %346 = call i32 @AR_SREV_POSEIDON(%struct.ath_hal* %345)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %344
  %349 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %350 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %349, i32 0, i32 0
  %351 = load i32, i32* @ar9485Common_wo_xlna_rx_gain_poseidon1_0, align 4
  %352 = load i32, i32* @ar9485Common_wo_xlna_rx_gain_poseidon1_0, align 4
  %353 = call i32 @ARRAY_LENGTH(i32 %352)
  %354 = call i32 @INIT_INI_ARRAY(i32* %350, i32 %351, i32 %353, i32 2)
  br label %470

355:                                              ; preds = %344
  %356 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %357 = call i32 @AR_SREV_JUPITER_10(%struct.ath_hal* %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %366

359:                                              ; preds = %355
  %360 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %361 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %360, i32 0, i32 0
  %362 = load i32, i32* @ar9300_common_wo_xlna_rx_gain_table_jupiter_1p0, align 4
  %363 = load i32, i32* @ar9300_common_wo_xlna_rx_gain_table_jupiter_1p0, align 4
  %364 = call i32 @ARRAY_LENGTH(i32 %363)
  %365 = call i32 @INIT_INI_ARRAY(i32* %361, i32 %362, i32 %364, i32 2)
  br label %469

366:                                              ; preds = %355
  %367 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %368 = call i32 @AR_SREV_JUPITER_20(%struct.ath_hal* %367)
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %377

370:                                              ; preds = %366
  %371 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %372 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %371, i32 0, i32 0
  %373 = load i32, i32* @ar9300Common_wo_xlna_rx_gain_table_jupiter_2p0, align 4
  %374 = load i32, i32* @ar9300Common_wo_xlna_rx_gain_table_jupiter_2p0, align 4
  %375 = call i32 @ARRAY_LENGTH(i32 %374)
  %376 = call i32 @INIT_INI_ARRAY(i32* %372, i32 %373, i32 %375, i32 2)
  br label %468

377:                                              ; preds = %366
  %378 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %379 = call i32 @AR_SREV_JUPITER_21(%struct.ath_hal* %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %388

381:                                              ; preds = %377
  %382 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %383 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %382, i32 0, i32 0
  %384 = load i32, i32* @ar9462_2p1_common_wo_xlna_rx_gain, align 4
  %385 = load i32, i32* @ar9462_2p1_common_wo_xlna_rx_gain, align 4
  %386 = call i32 @ARRAY_LENGTH(i32 %385)
  %387 = call i32 @INIT_INI_ARRAY(i32* %383, i32 %384, i32 %386, i32 2)
  br label %467

388:                                              ; preds = %377
  %389 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %390 = call i32 @AR_SREV_APHRODITE(%struct.ath_hal* %389)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %399

392:                                              ; preds = %388
  %393 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %394 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %393, i32 0, i32 0
  %395 = load i32, i32* @ar956XCommon_wo_xlna_rx_gain_table_aphrodite_1p0, align 4
  %396 = load i32, i32* @ar956XCommon_wo_xlna_rx_gain_table_aphrodite_1p0, align 4
  %397 = call i32 @ARRAY_LENGTH(i32 %396)
  %398 = call i32 @INIT_INI_ARRAY(i32* %394, i32 %395, i32 %397, i32 2)
  br label %466

399:                                              ; preds = %388
  %400 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %401 = call i64 @AR_SREV_AR9580(%struct.ath_hal* %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %410

403:                                              ; preds = %399
  %404 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %405 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %404, i32 0, i32 0
  %406 = load i32, i32* @ar9300_common_wo_xlna_rx_gain_table_ar9580_1p0, align 4
  %407 = load i32, i32* @ar9300_common_wo_xlna_rx_gain_table_ar9580_1p0, align 4
  %408 = call i32 @ARRAY_LENGTH(i32 %407)
  %409 = call i32 @INIT_INI_ARRAY(i32* %405, i32 %406, i32 %408, i32 2)
  br label %465

410:                                              ; preds = %399
  %411 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %412 = call i32 @AR_SREV_WASP(%struct.ath_hal* %411)
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %421

414:                                              ; preds = %410
  %415 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %416 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %415, i32 0, i32 0
  %417 = load i32, i32* @ar9340Common_wo_xlna_rx_gain_table_wasp_1p0, align 4
  %418 = load i32, i32* @ar9340Common_wo_xlna_rx_gain_table_wasp_1p0, align 4
  %419 = call i32 @ARRAY_LENGTH(i32 %418)
  %420 = call i32 @INIT_INI_ARRAY(i32* %416, i32 %417, i32 %419, i32 2)
  br label %464

421:                                              ; preds = %410
  %422 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %423 = call i32 @AR_SREV_SCORPION(%struct.ath_hal* %422)
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %438

425:                                              ; preds = %421
  %426 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %427 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %426, i32 0, i32 0
  %428 = load i32, i32* @ar955xCommon_wo_xlna_rx_gain_table_scorpion_1p0, align 4
  %429 = load i32, i32* @ar955xCommon_wo_xlna_rx_gain_table_scorpion_1p0, align 4
  %430 = call i32 @ARRAY_LENGTH(i32 %429)
  %431 = call i32 @INIT_INI_ARRAY(i32* %427, i32 %428, i32 %430, i32 2)
  %432 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %433 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %432, i32 0, i32 1
  %434 = load i32, i32* @ar955xCommon_wo_xlna_rx_gain_bounds_scorpion_1p0, align 4
  %435 = load i32, i32* @ar955xCommon_wo_xlna_rx_gain_bounds_scorpion_1p0, align 4
  %436 = call i32 @ARRAY_LENGTH(i32 %435)
  %437 = call i32 @INIT_INI_ARRAY(i32* %433, i32 %434, i32 %436, i32 5)
  br label %463

438:                                              ; preds = %421
  %439 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %440 = call i32 @AR_SREV_HONEYBEE(%struct.ath_hal* %439)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %455

442:                                              ; preds = %438
  %443 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %444 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %443, i32 0, i32 0
  %445 = load i32, i32* @qca953xCommon_wo_xlna_rx_gain_table_honeybee_1p0, align 4
  %446 = load i32, i32* @qca953xCommon_wo_xlna_rx_gain_table_honeybee_1p0, align 4
  %447 = call i32 @ARRAY_LENGTH(i32 %446)
  %448 = call i32 @INIT_INI_ARRAY(i32* %444, i32 %445, i32 %447, i32 2)
  %449 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %450 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %449, i32 0, i32 1
  %451 = load i32, i32* @qca953xCommon_wo_xlna_rx_gain_bounds_honeybee_1p0, align 4
  %452 = load i32, i32* @qca953xCommon_wo_xlna_rx_gain_bounds_honeybee_1p0, align 4
  %453 = call i32 @ARRAY_LENGTH(i32 %452)
  %454 = call i32 @INIT_INI_ARRAY(i32* %450, i32 %451, i32 %453, i32 5)
  br label %462

455:                                              ; preds = %438
  %456 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %457 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %456, i32 0, i32 0
  %458 = load i32, i32* @ar9300Common_wo_xlna_rx_gain_table_osprey_2p2, align 4
  %459 = load i32, i32* @ar9300Common_wo_xlna_rx_gain_table_osprey_2p2, align 4
  %460 = call i32 @ARRAY_LENGTH(i32 %459)
  %461 = call i32 @INIT_INI_ARRAY(i32* %457, i32 %458, i32 %460, i32 2)
  br label %462

462:                                              ; preds = %455, %442
  br label %463

463:                                              ; preds = %462, %425
  br label %464

464:                                              ; preds = %463, %414
  br label %465

465:                                              ; preds = %464, %403
  br label %466

466:                                              ; preds = %465, %392
  br label %467

467:                                              ; preds = %466, %381
  br label %468

468:                                              ; preds = %467, %370
  br label %469

469:                                              ; preds = %468, %359
  br label %470

470:                                              ; preds = %469, %348
  br label %471

471:                                              ; preds = %470, %337
  br label %472

472:                                              ; preds = %471, %326
  br label %473

473:                                              ; preds = %472, %315
  br label %474

474:                                              ; preds = %19, %473, %310, %131, %68, %39, %28
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_OSPREY(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_AR9580(%struct.ath_hal*) #1

declare dso_local i64 @ar9300_rf_gain_cap_apply(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar9300_rx_gain_index_get(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_JUPITER_10(%struct.ath_hal*) #1

declare dso_local i32 @INIT_INI_ARRAY(i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_LENGTH(i32) #1

declare dso_local i32 @AR_SREV_JUPITER_20(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_JUPITER_21(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_HORNET_12(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_HORNET_11(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_POSEIDON_11_OR_LATER(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_gpioCfgOutput(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_SCORPION(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_HONEYBEE(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_APHRODITE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
