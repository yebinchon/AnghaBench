; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_spur_mitigate_mrc_cck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_spur_mitigate_mrc_cck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_3__ = type { i32 }

@__const.ar9300_spur_mitigate_mrc_cck.spur_freq_for_osprey = private unnamed_addr constant [4 x i32] [i32 2420, i32 2440, i32 2464, i32 2480], align 16
@__const.ar9300_spur_mitigate_mrc_cck.spur_freq_for_jupiter = private unnamed_addr constant [2 x i32] [i32 2440, i32 2464], align 4
@OSPREY_EEPROM_MODAL_SPURS = common dso_local global i32 0, align 4
@AR_PHY_GEN_CTRL = common dso_local global i32 0, align 4
@AR_PHY_GC_DYN2040_PRI_CH = common dso_local global i32 0, align 4
@HAL_FREQ_BAND_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_YCOK_MAX = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT_SPUR_RSSI_THR = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT_SPUR_FILTER_TYPE = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT_USE_CCK_SPUR_MIT = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT_CCK_SPUR_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar9300_spur_mitigate_mrc_cck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_spur_mitigate_mrc_cck(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %16 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([4 x i32]* @__const.ar9300_spur_mitigate_mrc_cck.spur_freq_for_osprey to i8*), i64 16, i1 false)
  %17 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast ([2 x i32]* @__const.ar9300_spur_mitigate_mrc_cck.spur_freq_for_jupiter to i8*), i64 8, i1 false)
  store i32 0, i32* %9, align 4
  store i64* null, i64** %11, align 8
  store i32 10, i32* %13, align 4
  %18 = load i32, i32* @OSPREY_EEPROM_MODAL_SPURS, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %21 = call %struct.TYPE_3__* @ath_hal_checkchannel(%struct.ath_hal* %19, %struct.ieee80211_channel* %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %15, align 8
  %22 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %23 = call i64 @AR_SREV_HORNET(%struct.ath_hal* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %2
  %26 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %27 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %31 = call i64 @AR_SREV_WASP(%struct.ath_hal* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %35 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %33, %29, %25, %2
  %38 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %39 = call i64* @ar9300_eeprom_get_spur_chans_ptr(%struct.ath_hal* %38, i32 1)
  store i64* %39, i64** %11, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %194

45:                                               ; preds = %37
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %47 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  store i32 19, i32* %13, align 4
  %50 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %51 = load i32, i32* @AR_PHY_GEN_CTRL, align 4
  %52 = load i32, i32* @AR_PHY_GC_DYN2040_PRI_CH, align 4
  %53 = call i32 @OS_REG_READ_FIELD(%struct.ath_hal* %50, i32 %51, i32 %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 10
  store i32 %59, i32* %12, align 4
  br label %65

60:                                               ; preds = %49
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 10
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %60, %55
  br label %70

66:                                               ; preds = %45
  store i32 10, i32* %13, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %66, %65
  br label %84

71:                                               ; preds = %33
  %72 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %73 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  store i32 5, i32* %13, align 4
  store i32 2, i32* %14, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  br label %83

79:                                               ; preds = %71
  store i32 10, i32* %13, align 4
  store i32 4, i32* %14, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %70
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %178, %84
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %181

89:                                               ; preds = %85
  store i32 0, i32* %9, align 4
  %90 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %91 = call i64 @AR_SREV_HORNET(%struct.ath_hal* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %89
  %94 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %95 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %99 = call i64 @AR_SREV_WASP(%struct.ath_hal* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %103 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %101, %97, %93, %89
  %106 = load i64*, i64** %11, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @HAL_FREQ_BAND_2GHZ, align 4
  %112 = call i32 @FBIN2FREQ(i64 %110, i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = sub nsw i32 %112, %113
  store i32 %114, i32* %8, align 4
  br label %134

115:                                              ; preds = %101
  %116 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %117 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %12, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %8, align 4
  br label %133

126:                                              ; preds = %115
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %12, align 4
  %132 = sub nsw i32 %130, %131
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %126, %119
  br label %134

134:                                              ; preds = %133, %105
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  store i32 1, i32* %9, align 4
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %177

144:                                              ; preds = %140
  %145 = load i32, i32* %8, align 4
  %146 = shl i32 %145, 19
  %147 = sdiv i32 %146, 11
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* %10, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %150, %144
  %154 = load i32, i32* %10, align 4
  %155 = and i32 %154, 1048575
  store i32 %155, i32* %10, align 4
  %156 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %157 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %158 = load i32, i32* @AR_PHY_AGC_CONTROL_YCOK_MAX, align 4
  %159 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %156, i32 %157, i32 %158, i32 7)
  %160 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %161 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %162 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_SPUR_RSSI_THR, align 4
  %163 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %160, i32 %161, i32 %162, i32 127)
  %164 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %165 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %166 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_SPUR_FILTER_TYPE, align 4
  %167 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %164, i32 %165, i32 %166, i32 2)
  %168 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %169 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %170 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_USE_CCK_SPUR_MIT, align 4
  %171 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %168, i32 %169, i32 %170, i32 1)
  %172 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %173 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %174 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_CCK_SPUR_FREQ, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %172, i32 %173, i32 %174, i32 %175)
  br label %194

177:                                              ; preds = %140
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %5, align 4
  br label %85

181:                                              ; preds = %85
  %182 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %183 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %184 = load i32, i32* @AR_PHY_AGC_CONTROL_YCOK_MAX, align 4
  %185 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %182, i32 %183, i32 %184, i32 5)
  %186 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %187 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %188 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_USE_CCK_SPUR_MIT, align 4
  %189 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %186, i32 %187, i32 %188, i32 0)
  %190 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %191 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %192 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_CCK_SPUR_FREQ, align 4
  %193 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %190, i32 %191, i32 %192, i32 0)
  br label %194

194:                                              ; preds = %181, %153, %44
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_3__* @ath_hal_checkchannel(%struct.ath_hal*, %struct.ieee80211_channel*) #2

declare dso_local i64 @AR_SREV_HORNET(%struct.ath_hal*) #2

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #2

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #2

declare dso_local i64 @AR_SREV_SCORPION(%struct.ath_hal*) #2

declare dso_local i64* @ar9300_eeprom_get_spur_chans_ptr(%struct.ath_hal*, i32) #2

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #2

declare dso_local i32 @OS_REG_READ_FIELD(%struct.ath_hal*, i32, i32) #2

declare dso_local i64 @AR_SREV_JUPITER(%struct.ath_hal*) #2

declare dso_local i32 @FBIN2FREQ(i64, i32) #2

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
