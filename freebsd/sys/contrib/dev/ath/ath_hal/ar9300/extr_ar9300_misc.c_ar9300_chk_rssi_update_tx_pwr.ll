; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_chk_rssi_update_tx_pwr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_chk_rssi_update_tx_pwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }
%struct.ath_hal_9300 = type { i64, i32*, i64, i64*, i32 }
%struct.TYPE_4__ = type { i64 }

@ar9300_rate_size = common dso_local global i32 0, align 4
@HAL_M_STA = common dso_local global i64 0, align 8
@AR9485_HW_GREEN_TX_THRES1_DB = common dso_local global i32 0, align 4
@AR9485_HW_GREEN_TX_THRES2_DB = common dso_local global i32 0, align 4
@WB225_SW_GREEN_TX_THRES1_DB = common dso_local global i32 0, align 4
@WB225_SW_GREEN_TX_THRES2_DB = common dso_local global i32 0, align 4
@HAL_RSSI_TX_POWER_NONE = common dso_local global i64 0, align 8
@ar9485_hw_gtx_tp_distance_short = common dso_local global i32 0, align 4
@AR_TPC_ACK = common dso_local global i32 0, align 4
@AR_TPC_CTS = common dso_local global i32 0, align 4
@AR_TPC_CHIRP = common dso_local global i32 0, align 4
@AR_TPC_RPT = common dso_local global i32 0, align 4
@AR9485_BBPWRTXRATE9_HW_GREEN_TX_SHORT_VALUE = common dso_local global i32 0, align 4
@ar9485_hw_gtx_tp_distance_middle = common dso_local global i32 0, align 4
@AR9485_BBPWRTXRATE9_HW_GREEN_TX_MIDDLE_VALUE = common dso_local global i32 0, align 4
@POSEIDON_STORED_REG_TPC = common dso_local global i64 0, align 8
@POSEIDON_STORED_REG_BB_PWRTX_RATE9 = common dso_local global i64 0, align 8
@wb225_sw_gtx_tp_distance_short = common dso_local global i32 0, align 4
@wb225_gtx_olpc_cal_offset = common dso_local global i32* null, align 8
@WB225_OB_GREEN_TX_SHORT_VALUE = common dso_local global i64 0, align 8
@WB225_OB_CALIBRATION_VALUE = common dso_local global i64 0, align 8
@POSEIDON_STORED_REG_OBDB = common dso_local global i64 0, align 8
@AR_PHY_65NM_CH0_TXRF2_DB2G = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_TXRF2_OB2G_CCK = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_TXRF2_OB2G_PSK = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_TXRF2_OB2G_QAM = common dso_local global i32 0, align 4
@WB225_BBPWRTXRATE9_SW_GREEN_TX_SHORT_VALUE = common dso_local global i32 0, align 4
@wb225_sw_gtx_tp_distance_middle = common dso_local global i32 0, align 4
@WB225_OB_GREEN_TX_MIDDLE_VALUE = common dso_local global i64 0, align 8
@WB225_BBPWRTXRATE9_SW_GREEN_TX_MIDDLE_VALUE = common dso_local global i32 0, align 4
@WB225_OB_GREEN_TX_LONG_VALUE = common dso_local global i64 0, align 8
@POSEIDON_STORED_REG_G2_OLPC_OFFSET = common dso_local global i64 0, align 8
@AR_PHY_TPC_11_B0 = common dso_local global i32 0, align 4
@AR_PHY_TPC_OLPC_GAIN_DELTA_S = common dso_local global i32 0, align 4
@AR_PHY_TPC_OLPC_GAIN_DELTA = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_TXRF2 = common dso_local global i32 0, align 4
@AR_TPC = common dso_local global i32 0, align 4
@AR_PHY_BB_POWERTX_RATE9 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_chk_rssi_update_tx_pwr(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal_9300*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %18 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %17)
  store %struct.ath_hal_9300* %18, %struct.ath_hal_9300** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @ar9300_rate_size, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HAL_M_STA, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %31 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29, %2
  store i32 1, i32* %16, align 4
  br label %397

36:                                               ; preds = %29
  %37 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %38 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %37)
  %39 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  %41 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %42 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @AR9485_HW_GREEN_TX_THRES1_DB, align 4
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* @AR9485_HW_GREEN_TX_THRES2_DB, align 4
  store i32 %47, i32* %15, align 4
  br label %51

48:                                               ; preds = %36
  %49 = load i32, i32* @WB225_SW_GREEN_TX_THRES1_DB, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* @WB225_SW_GREEN_TX_THRES2_DB, align 4
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %53 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %62, 128
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %66 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %65)
  %67 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %66, i32 0, i32 0
  store i64 128, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %61
  br label %103

69:                                               ; preds = %57, %51
  %70 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %71 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i64, i64* %11, align 8
  %81 = icmp ne i64 %80, 129
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %84 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %83)
  %85 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %84, i32 0, i32 0
  store i64 129, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %79
  br label %102

87:                                               ; preds = %75, %69
  %88 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %89 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load i64, i64* %11, align 8
  %95 = icmp ne i64 %94, 130
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %98 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %97)
  %99 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %98, i32 0, i32 0
  store i64 130, i64* %99, align 8
  br label %100

100:                                              ; preds = %96, %93
  br label %101

101:                                              ; preds = %100, %87
  br label %102

102:                                              ; preds = %101, %86
  br label %103

103:                                              ; preds = %102, %68
  %104 = load i64, i64* %11, align 8
  %105 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %106 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %105)
  %107 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %104, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 1, i32* %16, align 4
  br label %397

111:                                              ; preds = %103
  %112 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %113 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %112)
  %114 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @HAL_RSSI_TX_POWER_NONE, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %396

118:                                              ; preds = %111
  %119 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %120 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %396

122:                                              ; preds = %118
  %123 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %124 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %189

127:                                              ; preds = %122
  %128 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %129 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %128)
  %130 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  switch i64 %131, label %167 [
    i64 128, label %132
    i64 129, label %149
    i64 130, label %166
  ]

132:                                              ; preds = %127
  %133 = load i32, i32* @ar9485_hw_gtx_tp_distance_short, align 4
  %134 = mul nuw i64 4, %20
  %135 = trunc i64 %134 to i32
  %136 = call i32 @OS_MEMCPY(i32* %22, i32 %133, i32 %135)
  store i32 0, i32* %9, align 4
  %137 = load i32, i32* @AR_TPC_ACK, align 4
  %138 = call i32 @SM(i32 14, i32 %137)
  %139 = load i32, i32* @AR_TPC_CTS, align 4
  %140 = call i32 @SM(i32 14, i32 %139)
  %141 = or i32 %138, %140
  %142 = load i32, i32* @AR_TPC_CHIRP, align 4
  %143 = call i32 @SM(i32 14, i32 %142)
  %144 = or i32 %141, %143
  %145 = load i32, i32* @AR_TPC_RPT, align 4
  %146 = call i32 @SM(i32 14, i32 %145)
  %147 = or i32 %144, %146
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* @AR9485_BBPWRTXRATE9_HW_GREEN_TX_SHORT_VALUE, align 4
  store i32 %148, i32* %8, align 4
  br label %188

149:                                              ; preds = %127
  %150 = load i32, i32* @ar9485_hw_gtx_tp_distance_middle, align 4
  %151 = mul nuw i64 4, %20
  %152 = trunc i64 %151 to i32
  %153 = call i32 @OS_MEMCPY(i32* %22, i32 %150, i32 %152)
  store i32 0, i32* %9, align 4
  %154 = load i32, i32* @AR_TPC_ACK, align 4
  %155 = call i32 @SM(i32 18, i32 %154)
  %156 = load i32, i32* @AR_TPC_CTS, align 4
  %157 = call i32 @SM(i32 18, i32 %156)
  %158 = or i32 %155, %157
  %159 = load i32, i32* @AR_TPC_CHIRP, align 4
  %160 = call i32 @SM(i32 18, i32 %159)
  %161 = or i32 %158, %160
  %162 = load i32, i32* @AR_TPC_RPT, align 4
  %163 = call i32 @SM(i32 18, i32 %162)
  %164 = or i32 %161, %163
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* @AR9485_BBPWRTXRATE9_HW_GREEN_TX_MIDDLE_VALUE, align 4
  store i32 %165, i32* %8, align 4
  br label %188

166:                                              ; preds = %127
  br label %167

167:                                              ; preds = %127, %166
  %168 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %169 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = mul nuw i64 4, %20
  %172 = trunc i64 %171 to i32
  %173 = call i32 @OS_MEMCPY(i32* %22, i32 %170, i32 %172)
  store i32 0, i32* %9, align 4
  %174 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %175 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %174)
  %176 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @POSEIDON_STORED_REG_TPC, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %7, align 4
  %181 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %182 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %181)
  %183 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* @POSEIDON_STORED_REG_BB_PWRTX_RATE9, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %167, %149, %132
  br label %357

189:                                              ; preds = %122
  %190 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %191 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %190)
  %192 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  switch i64 %193, label %319 [
    i64 128, label %194
    i64 129, label %256
    i64 130, label %318
  ]

194:                                              ; preds = %189
  %195 = load i32, i32* @wb225_sw_gtx_tp_distance_short, align 4
  %196 = mul nuw i64 4, %20
  %197 = trunc i64 %196 to i32
  %198 = call i32 @OS_MEMCPY(i32* %22, i32 %195, i32 %197)
  %199 = load i32*, i32** @wb225_gtx_olpc_cal_offset, align 8
  %200 = load i64, i64* @WB225_OB_GREEN_TX_SHORT_VALUE, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** @wb225_gtx_olpc_cal_offset, align 8
  %204 = load i64, i64* @WB225_OB_CALIBRATION_VALUE, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %202, %206
  store i32 %207, i32* %9, align 4
  %208 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %209 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %208)
  %210 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* @POSEIDON_STORED_REG_OBDB, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_DB2G, align 4
  %216 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_OB2G_CCK, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_OB2G_PSK, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_OB2G_QAM, align 4
  %221 = or i32 %219, %220
  %222 = xor i32 %221, -1
  %223 = load i32, i32* %6, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_DB2G, align 4
  %226 = call i32 @SM(i32 5, i32 %225)
  %227 = load i64, i64* @WB225_OB_GREEN_TX_SHORT_VALUE, align 8
  %228 = trunc i64 %227 to i32
  %229 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_OB2G_CCK, align 4
  %230 = call i32 @SM(i32 %228, i32 %229)
  %231 = or i32 %226, %230
  %232 = load i64, i64* @WB225_OB_GREEN_TX_SHORT_VALUE, align 8
  %233 = trunc i64 %232 to i32
  %234 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_OB2G_PSK, align 4
  %235 = call i32 @SM(i32 %233, i32 %234)
  %236 = or i32 %231, %235
  %237 = load i64, i64* @WB225_OB_GREEN_TX_SHORT_VALUE, align 8
  %238 = trunc i64 %237 to i32
  %239 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_OB2G_QAM, align 4
  %240 = call i32 @SM(i32 %238, i32 %239)
  %241 = or i32 %236, %240
  %242 = load i32, i32* %6, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %6, align 4
  %244 = load i32, i32* @AR_TPC_ACK, align 4
  %245 = call i32 @SM(i32 6, i32 %244)
  %246 = load i32, i32* @AR_TPC_CTS, align 4
  %247 = call i32 @SM(i32 6, i32 %246)
  %248 = or i32 %245, %247
  %249 = load i32, i32* @AR_TPC_CHIRP, align 4
  %250 = call i32 @SM(i32 6, i32 %249)
  %251 = or i32 %248, %250
  %252 = load i32, i32* @AR_TPC_RPT, align 4
  %253 = call i32 @SM(i32 6, i32 %252)
  %254 = or i32 %251, %253
  store i32 %254, i32* %7, align 4
  %255 = load i32, i32* @WB225_BBPWRTXRATE9_SW_GREEN_TX_SHORT_VALUE, align 4
  store i32 %255, i32* %8, align 4
  br label %356

256:                                              ; preds = %189
  %257 = load i32, i32* @wb225_sw_gtx_tp_distance_middle, align 4
  %258 = mul nuw i64 4, %20
  %259 = trunc i64 %258 to i32
  %260 = call i32 @OS_MEMCPY(i32* %22, i32 %257, i32 %259)
  %261 = load i32*, i32** @wb225_gtx_olpc_cal_offset, align 8
  %262 = load i64, i64* @WB225_OB_GREEN_TX_MIDDLE_VALUE, align 8
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32*, i32** @wb225_gtx_olpc_cal_offset, align 8
  %266 = load i64, i64* @WB225_OB_CALIBRATION_VALUE, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = sub nsw i32 %264, %268
  store i32 %269, i32* %9, align 4
  %270 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %271 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %270)
  %272 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = load i64, i64* @POSEIDON_STORED_REG_OBDB, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %6, align 4
  %277 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_DB2G, align 4
  %278 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_OB2G_CCK, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_OB2G_PSK, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_OB2G_QAM, align 4
  %283 = or i32 %281, %282
  %284 = xor i32 %283, -1
  %285 = load i32, i32* %6, align 4
  %286 = and i32 %285, %284
  store i32 %286, i32* %6, align 4
  %287 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_DB2G, align 4
  %288 = call i32 @SM(i32 5, i32 %287)
  %289 = load i64, i64* @WB225_OB_GREEN_TX_MIDDLE_VALUE, align 8
  %290 = trunc i64 %289 to i32
  %291 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_OB2G_CCK, align 4
  %292 = call i32 @SM(i32 %290, i32 %291)
  %293 = or i32 %288, %292
  %294 = load i64, i64* @WB225_OB_GREEN_TX_MIDDLE_VALUE, align 8
  %295 = trunc i64 %294 to i32
  %296 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_OB2G_PSK, align 4
  %297 = call i32 @SM(i32 %295, i32 %296)
  %298 = or i32 %293, %297
  %299 = load i64, i64* @WB225_OB_GREEN_TX_MIDDLE_VALUE, align 8
  %300 = trunc i64 %299 to i32
  %301 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2_OB2G_QAM, align 4
  %302 = call i32 @SM(i32 %300, i32 %301)
  %303 = or i32 %298, %302
  %304 = load i32, i32* %6, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %6, align 4
  %306 = load i32, i32* @AR_TPC_ACK, align 4
  %307 = call i32 @SM(i32 14, i32 %306)
  %308 = load i32, i32* @AR_TPC_CTS, align 4
  %309 = call i32 @SM(i32 14, i32 %308)
  %310 = or i32 %307, %309
  %311 = load i32, i32* @AR_TPC_CHIRP, align 4
  %312 = call i32 @SM(i32 14, i32 %311)
  %313 = or i32 %310, %312
  %314 = load i32, i32* @AR_TPC_RPT, align 4
  %315 = call i32 @SM(i32 14, i32 %314)
  %316 = or i32 %313, %315
  store i32 %316, i32* %7, align 4
  %317 = load i32, i32* @WB225_BBPWRTXRATE9_SW_GREEN_TX_MIDDLE_VALUE, align 4
  store i32 %317, i32* %8, align 4
  br label %356

318:                                              ; preds = %189
  br label %319

319:                                              ; preds = %189, %318
  %320 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %321 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = mul nuw i64 4, %20
  %324 = trunc i64 %323 to i32
  %325 = call i32 @OS_MEMCPY(i32* %22, i32 %322, i32 %324)
  %326 = load i32*, i32** @wb225_gtx_olpc_cal_offset, align 8
  %327 = load i64, i64* @WB225_OB_GREEN_TX_LONG_VALUE, align 8
  %328 = getelementptr inbounds i32, i32* %326, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load i32*, i32** @wb225_gtx_olpc_cal_offset, align 8
  %331 = load i64, i64* @WB225_OB_CALIBRATION_VALUE, align 8
  %332 = getelementptr inbounds i32, i32* %330, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = sub nsw i32 %329, %333
  store i32 %334, i32* %9, align 4
  %335 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %336 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %335)
  %337 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = load i64, i64* @POSEIDON_STORED_REG_OBDB, align 8
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  %341 = load i32, i32* %340, align 4
  store i32 %341, i32* %6, align 4
  %342 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %343 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %342)
  %344 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = load i64, i64* @POSEIDON_STORED_REG_TPC, align 8
  %347 = getelementptr inbounds i32, i32* %345, i64 %346
  %348 = load i32, i32* %347, align 4
  store i32 %348, i32* %7, align 4
  %349 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %350 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %349)
  %351 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = load i64, i64* @POSEIDON_STORED_REG_BB_PWRTX_RATE9, align 8
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  %355 = load i32, i32* %354, align 4
  store i32 %355, i32* %8, align 4
  br label %356

356:                                              ; preds = %319, %256, %194
  br label %357

357:                                              ; preds = %356, %188
  %358 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %359 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %358)
  %360 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %359, i32 0, i32 3
  %361 = load i64*, i64** %360, align 8
  %362 = load i64, i64* @POSEIDON_STORED_REG_G2_OLPC_OFFSET, align 8
  %363 = getelementptr inbounds i64, i64* %361, i64 %362
  %364 = load i64, i64* %363, align 8
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %10, align 4
  %366 = load i32, i32* %9, align 4
  %367 = load i32, i32* %10, align 4
  %368 = add nsw i32 %367, %366
  store i32 %368, i32* %10, align 4
  %369 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %370 = load i32, i32* @AR_PHY_TPC_11_B0, align 4
  %371 = load i32, i32* %10, align 4
  %372 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA_S, align 4
  %373 = shl i32 %371, %372
  %374 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA, align 4
  %375 = call i32 @OS_REG_RMW(%struct.ath_hal* %369, i32 %370, i32 %373, i32 %374)
  %376 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %377 = call i32 @ar9300_transmit_power_reg_write(%struct.ath_hal* %376, i32* %22)
  %378 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %379 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %387, label %382

382:                                              ; preds = %357
  %383 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %384 = load i32, i32* @AR_PHY_65NM_CH0_TXRF2, align 4
  %385 = load i32, i32* %6, align 4
  %386 = call i32 @OS_REG_WRITE(%struct.ath_hal* %383, i32 %384, i32 %385)
  br label %387

387:                                              ; preds = %382, %357
  %388 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %389 = load i32, i32* @AR_TPC, align 4
  %390 = load i32, i32* %7, align 4
  %391 = call i32 @OS_REG_WRITE(%struct.ath_hal* %388, i32 %389, i32 %390)
  %392 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %393 = load i32, i32* @AR_PHY_BB_POWERTX_RATE9, align 4
  %394 = load i32, i32* %8, align 4
  %395 = call i32 @OS_REG_WRITE(%struct.ath_hal* %392, i32 %393, i32 %394)
  br label %396

396:                                              ; preds = %387, %118, %111
  store i32 0, i32* %16, align 4
  br label %397

397:                                              ; preds = %396, %110, %35
  %398 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %398)
  %399 = load i32, i32* %16, align 4
  switch i32 %399, label %401 [
    i32 0, label %400
    i32 1, label %400
  ]

400:                                              ; preds = %397, %397
  ret void

401:                                              ; preds = %397
  unreachable
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i32 @OS_MEMCPY(i32*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @OS_REG_RMW(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @ar9300_transmit_power_reg_write(%struct.ath_hal*, i32*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
