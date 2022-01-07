; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_get_bb_panic_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_get_bb_panic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.hal_bb_panic_info = type { i32, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@AR_PHY_BB_WD_STATUS = common dso_local global i32 0, align 4
@AR_PHY_BB_WD_DET_HANG = common dso_local global i32 0, align 4
@AR_PHY_BB_WD_RADAR_SM = common dso_local global i32 0, align 4
@AR_PHY_BB_WD_RX_OFDM_SM = common dso_local global i32 0, align 4
@AR_PHY_BB_WD_RX_CCK_SM = common dso_local global i32 0, align 4
@AR_PHY_BB_WD_TX_OFDM_SM = common dso_local global i32 0, align 4
@AR_PHY_BB_WD_TX_CCK_SM = common dso_local global i32 0, align 4
@AR_PHY_BB_WD_AGC_SM = common dso_local global i32 0, align 4
@AR_PHY_BB_WD_SRCH_SM = common dso_local global i32 0, align 4
@AR_PHY_PANIC_WD_CTL_1 = common dso_local global i32 0, align 4
@AR_PHY_PANIC_WD_CTL_2 = common dso_local global i32 0, align 4
@AR_PHY_GEN_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"\0A==== BB update: BB status=0x%08x, tsf=0x%08x ====\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"** BB state: wd=%u det=%u rdar=%u rOFDM=%d rCCK=%u tOFDM=%u tCCK=%u agc=%u src=%u **\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"** BB WD cntl: cntl1=0x%08x cntl2=0x%08x **\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"** BB mode: BB_gen_controls=0x%08x **\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"** BB busy times: rx_clear=%d%%, rx_frame=%d%%, tx_frame=%d%% **\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"==== BB update: done ====\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_get_bb_panic_info(%struct.ath_hal* %0, %struct.hal_bb_panic_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.hal_bb_panic_info*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.hal_bb_panic_info* %1, %struct.hal_bb_panic_info** %5, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %7 = call %struct.TYPE_4__* @AH9300(%struct.ath_hal* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %11 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %13 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %16 [
    i32 67110201, label %15
    i32 67141641, label %15
    i32 67111689, label %15
    i32 318767114, label %15
  ]

15:                                               ; preds = %2, %2, %2, %2
  store i32 -1, i32* %3, align 4
  br label %191

16:                                               ; preds = %2
  %17 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %18 = call i32 @ar9300_get_tsf32(%struct.ath_hal* %17)
  %19 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %20 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %19, i32 0, i32 17
  store i32 %18, i32* %20, align 8
  %21 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %22 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AR_PHY_BB_WD_STATUS, align 4
  %25 = call i8* @MS(i32 %23, i32 %24)
  %26 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %27 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %26, i32 0, i32 16
  store i8* %25, i8** %27, align 8
  %28 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %29 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AR_PHY_BB_WD_DET_HANG, align 4
  %32 = call i8* @MS(i32 %30, i32 %31)
  %33 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %34 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %33, i32 0, i32 15
  store i8* %32, i8** %34, align 8
  %35 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %36 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AR_PHY_BB_WD_RADAR_SM, align 4
  %39 = call i8* @MS(i32 %37, i32 %38)
  %40 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %41 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %40, i32 0, i32 14
  store i8* %39, i8** %41, align 8
  %42 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %43 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AR_PHY_BB_WD_RX_OFDM_SM, align 4
  %46 = call i8* @MS(i32 %44, i32 %45)
  %47 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %48 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %47, i32 0, i32 13
  store i8* %46, i8** %48, align 8
  %49 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %50 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @AR_PHY_BB_WD_RX_CCK_SM, align 4
  %53 = call i8* @MS(i32 %51, i32 %52)
  %54 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %55 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %54, i32 0, i32 12
  store i8* %53, i8** %55, align 8
  %56 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %57 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @AR_PHY_BB_WD_TX_OFDM_SM, align 4
  %60 = call i8* @MS(i32 %58, i32 %59)
  %61 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %62 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %61, i32 0, i32 11
  store i8* %60, i8** %62, align 8
  %63 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %64 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @AR_PHY_BB_WD_TX_CCK_SM, align 4
  %67 = call i8* @MS(i32 %65, i32 %66)
  %68 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %69 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %68, i32 0, i32 10
  store i8* %67, i8** %69, align 8
  %70 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %71 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @AR_PHY_BB_WD_AGC_SM, align 4
  %74 = call i8* @MS(i32 %72, i32 %73)
  %75 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %76 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %75, i32 0, i32 9
  store i8* %74, i8** %76, align 8
  %77 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %78 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @AR_PHY_BB_WD_SRCH_SM, align 4
  %81 = call i8* @MS(i32 %79, i32 %80)
  %82 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %83 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %82, i32 0, i32 8
  store i8* %81, i8** %83, align 8
  %84 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %85 = load i32, i32* @AR_PHY_PANIC_WD_CTL_1, align 4
  %86 = call i8* @OS_REG_READ(%struct.ath_hal* %84, i32 %85)
  %87 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %88 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %87, i32 0, i32 7
  store i8* %86, i8** %88, align 8
  %89 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %90 = load i32, i32* @AR_PHY_PANIC_WD_CTL_2, align 4
  %91 = call i8* @OS_REG_READ(%struct.ath_hal* %89, i32 %90)
  %92 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %93 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %92, i32 0, i32 6
  store i8* %91, i8** %93, align 8
  %94 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %95 = load i32, i32* @AR_PHY_GEN_CTRL, align 4
  %96 = call i8* @OS_REG_READ(%struct.ath_hal* %94, i32 %95)
  %97 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %98 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %100 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %102 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %104 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %103, i32 0, i32 3
  store i64 0, i64* %104, align 8
  %105 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %106 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %107 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %106, i32 0, i32 3
  %108 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %109 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %108, i32 0, i32 2
  %110 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %111 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %110, i32 0, i32 1
  %112 = call i64 @ar9300_get_mib_cycle_counts_pct(%struct.ath_hal* %105, i64* %107, i64* %109, i64* %111)
  %113 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %114 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %113, i32 0, i32 4
  store i64 %112, i64* %114, align 8
  %115 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %116 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %190

120:                                              ; preds = %16
  %121 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %122 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %123 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %126 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %125, i32 0, i32 17
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %121, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %124, i32 %127)
  %129 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %130 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %131 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %130, i32 0, i32 16
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %134 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %133, i32 0, i32 15
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %137 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %136, i32 0, i32 14
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %140 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %139, i32 0, i32 13
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %143 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %142, i32 0, i32 12
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %146 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %145, i32 0, i32 11
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %149 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %148, i32 0, i32 10
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %152 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %151, i32 0, i32 9
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %155 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %154, i32 0, i32 8
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %129, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i8* %132, i8* %135, i8* %138, i8* %141, i8* %144, i8* %147, i8* %150, i8* %153, i8* %156)
  %158 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %159 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %160 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %159, i32 0, i32 7
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %163 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %162, i32 0, i32 6
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %158, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %161, i8* %164)
  %166 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %167 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %168 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %167, i32 0, i32 5
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %166, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %169)
  %171 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %172 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %120
  %176 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %177 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %178 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %181 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.hal_bb_panic_info*, %struct.hal_bb_panic_info** %5, align 8
  %184 = getelementptr inbounds %struct.hal_bb_panic_info, %struct.hal_bb_panic_info* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %176, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i64 %179, i64 %182, i64 %185)
  br label %187

187:                                              ; preds = %175, %120
  %188 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %189 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %188, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187, %16
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %15
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local %struct.TYPE_4__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_get_tsf32(%struct.ath_hal*) #1

declare dso_local i8* @MS(i32, i32) #1

declare dso_local i8* @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @ar9300_get_mib_cycle_counts_pct(%struct.ath_hal*, i64*, i64*, i64*) #1

declare dso_local i32 @ath_hal_printf(%struct.ath_hal*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
