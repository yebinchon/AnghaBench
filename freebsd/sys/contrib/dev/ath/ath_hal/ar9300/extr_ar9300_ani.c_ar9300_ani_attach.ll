; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_ani.c_ar9300_ani_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_ani.c_ar9300_ani_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.ath_hal = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ath_hal_9300 = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HAL_ANI_OFDM_TRIG_HIGH = common dso_local global i32 0, align 4
@HAL_ANI_OFDM_TRIG_LOW = common dso_local global i32 0, align 4
@HAL_ANI_CCK_TRIG_HIGH = common dso_local global i32 0, align 4
@HAL_ANI_CCK_TRIG_LOW = common dso_local global i32 0, align 4
@HAL_ANI_RSSI_THR_HIGH = common dso_local global i32 0, align 4
@HAL_ANI_RSSI_THR_LOW = common dso_local global i32 0, align 4
@HAL_ANI_OFDM_DEF_LEVEL = common dso_local global i64 0, align 8
@HAL_ANI_CCK_DEF_LEVEL = common dso_local global i64 0, align 8
@HAL_ANI_USE_OFDM_WEAK_SIG = common dso_local global i32 0, align 4
@HAL_ANI_DEF_SPUR_IMMUNE_LVL = common dso_local global i64 0, align 8
@HAL_ANI_DEF_FIRSTEP_LVL = common dso_local global i64 0, align 8
@HAL_ANI_ENABLE_MRC_CCK = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@firstep_table = common dso_local global i64* null, align 8
@cycpwr_thr1_table = common dso_local global i64* null, align 8
@ofdm_level_table = common dso_local global %struct.TYPE_7__* null, align 8
@cck_level_table = common dso_local global %struct.TYPE_8__* null, align 8
@AR_PHY_ERR_1 = common dso_local global i32 0, align 4
@AR_PHY_ERR_2 = common dso_local global i32 0, align 4
@HAL_ANI_PERIOD = common dso_local global i32 0, align 4
@HAL_PROCESS_ANI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_ani_attach(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_9300*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %6 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %5)
  store %struct.ath_hal_9300* %6, %struct.ath_hal_9300** %3, align 8
  %7 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %7, i32 0, i32 2
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = call i32 @OS_MEMZERO(%struct.TYPE_9__* %9, i32 8)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %137, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %14 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %13, i32 0, i32 2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = call i32 @ARRAY_LENGTH(%struct.TYPE_9__* %15)
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %140

18:                                               ; preds = %11
  %19 = load i32, i32* @HAL_ANI_OFDM_TRIG_HIGH, align 4
  %20 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %21 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 13
  store i32 %19, i32* %26, align 8
  %27 = load i32, i32* @HAL_ANI_OFDM_TRIG_LOW, align 4
  %28 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %29 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 12
  store i32 %27, i32* %34, align 4
  %35 = load i32, i32* @HAL_ANI_CCK_TRIG_HIGH, align 4
  %36 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %37 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %36, i32 0, i32 2
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 11
  store i32 %35, i32* %42, align 8
  %43 = load i32, i32* @HAL_ANI_CCK_TRIG_LOW, align 4
  %44 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %45 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 10
  store i32 %43, i32* %50, align 4
  %51 = load i32, i32* @HAL_ANI_RSSI_THR_HIGH, align 4
  %52 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %53 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %52, i32 0, i32 2
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 9
  store i32 %51, i32* %58, align 8
  %59 = load i32, i32* @HAL_ANI_RSSI_THR_LOW, align 4
  %60 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %61 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %60, i32 0, i32 2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 8
  store i32 %59, i32* %66, align 4
  %67 = load i64, i64* @HAL_ANI_OFDM_DEF_LEVEL, align 8
  %68 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %69 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %68, i32 0, i32 2
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i64 %67, i64* %74, align 8
  %75 = load i64, i64* @HAL_ANI_CCK_DEF_LEVEL, align 8
  %76 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %77 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %76, i32 0, i32 2
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  store i64 %75, i64* %82, align 8
  %83 = load i32, i32* @HAL_ANI_USE_OFDM_WEAK_SIG, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %88 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  store i32 %86, i32* %93, align 8
  %94 = load i64, i64* @HAL_ANI_DEF_SPUR_IMMUNE_LVL, align 8
  %95 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %96 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %95, i32 0, i32 2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  store i64 %94, i64* %101, align 8
  %102 = load i64, i64* @HAL_ANI_DEF_FIRSTEP_LVL, align 8
  %103 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %104 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %103, i32 0, i32 2
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 4
  store i64 %102, i64* %109, align 8
  %110 = load i32, i32* @HAL_ANI_ENABLE_MRC_CCK, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %115 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %114, i32 0, i32 2
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 5
  store i32 %113, i32* %120, align 8
  %121 = load i32, i32* @AH_TRUE, align 4
  %122 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %123 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 7
  store i32 %121, i32* %128, align 8
  %129 = load i32, i32* @AH_FALSE, align 4
  %130 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %131 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %130, i32 0, i32 2
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 6
  store i32 %129, i32* %136, align 4
  br label %137

137:                                              ; preds = %18
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %11

140:                                              ; preds = %11
  %141 = load i64*, i64** @firstep_table, align 8
  %142 = load i64, i64* @HAL_ANI_DEF_FIRSTEP_LVL, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @HALASSERT(i32 %146)
  %148 = load i64*, i64** @cycpwr_thr1_table, align 8
  %149 = load i64, i64* @HAL_ANI_DEF_SPUR_IMMUNE_LVL, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @HALASSERT(i32 %153)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ofdm_level_table, align 8
  %156 = load i64, i64* @HAL_ANI_OFDM_DEF_LEVEL, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @HAL_ANI_DEF_FIRSTEP_LVL, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @HALASSERT(i32 %162)
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ofdm_level_table, align 8
  %165 = load i64, i64* @HAL_ANI_OFDM_DEF_LEVEL, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @HAL_ANI_DEF_SPUR_IMMUNE_LVL, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @HALASSERT(i32 %171)
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cck_level_table, align 8
  %174 = load i64, i64* @HAL_ANI_CCK_DEF_LEVEL, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @HAL_ANI_DEF_FIRSTEP_LVL, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @HALASSERT(i32 %180)
  %182 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %183 = load i32, i32* @AR_PHY_ERR_1, align 4
  %184 = call i32 @OS_REG_WRITE(%struct.ath_hal* %182, i32 %183, i32 0)
  %185 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %186 = load i32, i32* @AR_PHY_ERR_2, align 4
  %187 = call i32 @OS_REG_WRITE(%struct.ath_hal* %185, i32 %186, i32 0)
  %188 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %189 = call i32 @ar9300_enable_mib_counters(%struct.ath_hal* %188)
  %190 = load i32, i32* @HAL_ANI_PERIOD, align 4
  %191 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %192 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %194 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %140
  %199 = load i32, i32* @HAL_PROCESS_ANI, align 4
  %200 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %201 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %198, %140
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_MEMZERO(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ARRAY_LENGTH(%struct.TYPE_9__*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar9300_enable_mib_counters(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
