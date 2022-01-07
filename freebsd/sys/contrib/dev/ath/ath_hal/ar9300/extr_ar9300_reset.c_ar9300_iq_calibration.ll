; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_iq_calibration.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_iq_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32*, i32*, i32*, i32*, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ar9300_iq_calibration.offset_array = internal constant [3 x i32] [i32 130, i32 129, i32 128], align 4
@HAL_DEBUG_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Starting IQ Cal and Correction for Chain %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Orignal: Chn %diq_corr_meas = 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Chn %d pwr_meas_i = 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Chn %d pwr_meas_q = 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"iq_corr_neg is 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Chn %d i_coff = 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Chn %d q_coff = 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Chn %d : i_coff = 0x%x  q_coff = 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Register offset (0x%04x) before update = 0x%x\0A\00", align 1
@AR_PHY_RX_IQCAL_CORR_IQCORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR_PHY_RX_IQCAL_CORR_IQCORR_Q_Q_COFF = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [73 x i8] c"Register offset (0x%04x) QI COFF (bitfields 0x%08x) after update = 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"Register offset (0x%04x) QQ COFF (bitfields 0x%08x) after update = 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"IQ Cal and Correction done for Chain %d\0A\00", align 1
@AR_PHY_RX_IQCAL_CORR_IQCORR_ENABLE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [87 x i8] c"IQ Cal and Correction (offset 0x%04x) enabled (bit position 0x%08x). New Value 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_iq_calibration(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal_9300*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %17 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %16)
  store %struct.ath_hal_9300* %17, %struct.ath_hal_9300** %5, align 8
  %18 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %19 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %20 = call %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal* %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_4__* @ath_hal_checkchannel(%struct.ath_hal* %18, i32 %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %15, align 8
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %244, %2
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %247

28:                                               ; preds = %24
  %29 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %30 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %37 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %44 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %51 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %50, i32 %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %55 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %58 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %54, i32 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %63)
  store i32 0, i32* %13, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ugt i32 %65, -2147483648
  br i1 %66, label %67, label %71

67:                                               ; preds = %28
  %68 = load i32, i32* %8, align 4
  %69 = sub i32 -1, %68
  %70 = add i32 %69, 1
  store i32 %70, i32* %8, align 4
  store i32 1, i32* %13, align 4
  br label %71

71:                                               ; preds = %67, %28
  %72 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %73 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %72, i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %78 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %77, i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %83 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %82, i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = sdiv i32 %86, 2
  %88 = load i32, i32* %6, align 4
  %89 = sdiv i32 %88, 2
  %90 = add nsw i32 %87, %89
  %91 = sdiv i32 %90, 256
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sdiv i32 %92, 64
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %243

96:                                               ; preds = %71
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %243

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %10, align 4
  %102 = sdiv i32 %100, %101
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sdiv i32 %103, %104
  %106 = sub nsw i32 %105, 64
  store i32 %106, i32* %11, align 4
  %107 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %108 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %107, i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %113 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %112, i32 %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load i32, i32* %12, align 4
  %118 = icmp sge i32 %117, 63
  br i1 %118, label %119, label %120

119:                                              ; preds = %99
  store i32 63, i32* %12, align 4
  br label %125

120:                                              ; preds = %99
  %121 = load i32, i32* %12, align 4
  %122 = icmp sle i32 %121, -63
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 -63, i32* %12, align 4
  br label %124

124:                                              ; preds = %123, %120
  br label %125

125:                                              ; preds = %124, %119
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* %12, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %11, align 4
  %133 = icmp sge i32 %132, 63
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 63, i32* %11, align 4
  br label %140

135:                                              ; preds = %131
  %136 = load i32, i32* %11, align 4
  %137 = icmp sle i32 %136, -63
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 -63, i32* %11, align 4
  br label %139

139:                                              ; preds = %138, %135
  br label %140

140:                                              ; preds = %139, %134
  %141 = load i32, i32* %12, align 4
  %142 = and i32 %141, 127
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %11, align 4
  %144 = and i32 %143, 127
  store i32 %144, i32* %11, align 4
  %145 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %146 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %11, align 4
  %150 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %145, i32 %146, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %147, i32 %148, i32 %149)
  %151 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %152 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9300_iq_calibration.offset_array, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9300_iq_calibration.offset_array, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @OS_REG_READ(%struct.ath_hal* %157, i32 %161)
  %163 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %151, i32 %152, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %156, i32 %162)
  %164 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9300_iq_calibration.offset_array, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_IQCORR_Q_I_COFF, align 4
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %164, i32 %168, i32 %169, i32 %170)
  %172 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9300_iq_calibration.offset_array, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_IQCORR_Q_Q_COFF, align 4
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %172, i32 %176, i32 %177, i32 %178)
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %181 = icmp ne %struct.TYPE_4__* %180, null
  br i1 %181, label %182, label %206

182:                                              ; preds = %140
  %183 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9300_iq_calibration.offset_array, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @OS_REG_READ(%struct.ath_hal* %183, i32 %187)
  %189 = and i32 %188, 32767
  %190 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %191 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %189, i32* %195, align 4
  %196 = load i32, i32* @AH_TRUE, align 4
  %197 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %198 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %203 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %202, i32 0, i32 6
  store i32 %201, i32* %203, align 8
  %204 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %205 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %204, i32 0, i32 5
  store i64 0, i64* %205, align 8
  br label %210

206:                                              ; preds = %140
  %207 = load i32, i32* @AH_FALSE, align 4
  %208 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %209 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %206, %182
  %211 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %212 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9300_iq_calibration.offset_array, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_IQCORR_Q_I_COFF, align 4
  %218 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %219 = load i32, i32* %14, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9300_iq_calibration.offset_array, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @OS_REG_READ(%struct.ath_hal* %218, i32 %222)
  %224 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %211, i32 %212, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0), i32 %216, i32 %217, i32 %223)
  %225 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %226 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %227 = load i32, i32* %14, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9300_iq_calibration.offset_array, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_IQCORR_Q_Q_COFF, align 4
  %232 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9300_iq_calibration.offset_array, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @OS_REG_READ(%struct.ath_hal* %232, i32 %236)
  %238 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %225, i32 %226, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0), i32 %230, i32 %231, i32 %237)
  %239 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %240 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %241 = load i32, i32* %14, align 4
  %242 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %239, i32 %240, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %241)
  br label %243

243:                                              ; preds = %210, %96, %71
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %14, align 4
  br label %24

247:                                              ; preds = %24
  %248 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %249 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_IQCORR_ENABLE, align 4
  %250 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %248, i32 130, i32 %249)
  %251 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %252 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %253 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_IQCORR_ENABLE, align 4
  %254 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %255 = call i32 @OS_REG_READ(%struct.ath_hal* %254, i32 130)
  %256 = call i32 (%struct.ath_hal*, i32, i8*, i32, ...) @HALDEBUG(%struct.ath_hal* %251, i32 %252, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.12, i64 0, i64 0), i32 130, i32 %253, i32 %255)
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_4__* @ath_hal_checkchannel(%struct.ath_hal*, i32) #1

declare dso_local %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i32, ...) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
