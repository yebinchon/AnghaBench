; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_radio.c_ar9300_set_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_radio.c_ar9300_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.ieee80211_channel* }

@ar9300_chansel_xtal_25M = common dso_local global i32* null, align 8
@ar9300_chansel_xtal_40M = common dso_local global i32* null, align 8
@AR_PHY_SYNTH_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_SYNTH4 = common dso_local global i32 0, align 4
@AR_PHY_SYNTH4_LONG_SHIFT_SELECT = common dso_local global i32 0, align 4
@CHANSEL_5G_DOT5MHZ = common dso_local global i64 0, align 8
@AR_PHY_65NM_CH0_SYNTH7 = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AH_MARK_SETCHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar9300_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_set_channel(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %19 = call %struct.TYPE_10__* @AH9300(%struct.ath_hal* %18)
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %24 = call i32 @ar9300_get_channel_centers(%struct.ath_hal* %22, %struct.ieee80211_channel* %23, %struct.TYPE_8__* %12)
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 4800
  br i1 %28, label %29, label %160

29:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  %30 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %31 = call i64 @AR_SREV_HORNET(%struct.ath_hal* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %29
  %34 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ath_hal_mhz2ieee_2ghz(%struct.ath_hal* %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %14, align 4
  %41 = icmp sle i32 %40, 14
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i1 [ false, %33 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @HALASSERT(i32 %44)
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32*, i32** @ar9300_chansel_xtal_25M, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  br label %62

55:                                               ; preds = %42
  %56 = load i32*, i32** @ar9300_chansel_xtal_40M, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %55, %48
  br label %159

63:                                               ; preds = %29
  %64 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %65 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %69 = call i64 @AR_SREV_APHRODITE(%struct.ath_hal* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 %72, 4
  %74 = sdiv i32 %73, 120
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 %75, 4
  %77 = srem i32 %76, 120
  %78 = mul nsw i32 %77, 131072
  %79 = sdiv i32 %78, 120
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 %80, 17
  %82 = load i32, i32* %15, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %9, align 4
  br label %158

84:                                               ; preds = %67
  %85 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %86 = call i64 @AR_SREV_WASP(%struct.ath_hal* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %90 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %94 = call i64 @AR_SREV_HONEYBEE(%struct.ath_hal* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %154

96:                                               ; preds = %92, %88, %84
  %97 = load i64, i64* %11, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %126

99:                                               ; preds = %96
  %100 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %101 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %105 = call i64 @AR_SREV_HONEYBEE(%struct.ath_hal* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %103, %99
  %108 = load i32, i32* %8, align 4
  %109 = mul nsw i32 %108, 4
  %110 = sdiv i32 %109, 75
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %8, align 4
  %112 = mul nsw i32 %111, 4
  %113 = srem i32 %112, 75
  %114 = mul nsw i32 %113, 131072
  %115 = sdiv i32 %114, 75
  store i32 %115, i32* %16, align 4
  br label %125

116:                                              ; preds = %103
  %117 = load i32, i32* %8, align 4
  %118 = mul nsw i32 %117, 2
  %119 = sdiv i32 %118, 75
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = mul nsw i32 %120, 2
  %122 = srem i32 %121, 75
  %123 = mul nsw i32 %122, 131072
  %124 = sdiv i32 %123, 75
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %116, %107
  br label %149

126:                                              ; preds = %96
  %127 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %128 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  %132 = mul nsw i32 %131, 4
  %133 = sdiv i32 %132, 120
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %8, align 4
  %135 = mul nsw i32 %134, 4
  %136 = srem i32 %135, 120
  %137 = mul nsw i32 %136, 131072
  %138 = sdiv i32 %137, 120
  store i32 %138, i32* %16, align 4
  br label %148

139:                                              ; preds = %126
  %140 = load i32, i32* %8, align 4
  %141 = mul nsw i32 %140, 2
  %142 = sdiv i32 %141, 120
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %8, align 4
  %144 = mul nsw i32 %143, 2
  %145 = srem i32 %144, 120
  %146 = mul nsw i32 %145, 131072
  %147 = sdiv i32 %146, 120
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %139, %130
  br label %149

149:                                              ; preds = %148, %125
  %150 = load i32, i32* %9, align 4
  %151 = shl i32 %150, 17
  %152 = load i32, i32* %16, align 4
  %153 = or i32 %151, %152
  store i32 %153, i32* %9, align 4
  br label %157

154:                                              ; preds = %92
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @CHANSEL_2G(i32 %155)
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %154, %149
  br label %158

158:                                              ; preds = %157, %71
  br label %159

159:                                              ; preds = %158, %62
  br label %188

160:                                              ; preds = %2
  store i32 0, i32* %5, align 4
  %161 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %162 = call i64 @AR_SREV_WASP(%struct.ath_hal* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %166 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %164, %160
  %169 = load i64, i64* %11, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %168
  %172 = load i32, i32* %8, align 4
  %173 = sdiv i32 %172, 75
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %8, align 4
  %175 = srem i32 %174, 75
  %176 = mul nsw i32 %175, 131072
  %177 = sdiv i32 %176, 75
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %9, align 4
  %179 = shl i32 %178, 17
  %180 = load i32, i32* %17, align 4
  %181 = or i32 %179, %180
  store i32 %181, i32* %9, align 4
  br label %187

182:                                              ; preds = %168, %164
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @CHANSEL_5G(i32 %183)
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = ashr i32 %185, 1
  store i32 %186, i32* %9, align 4
  br label %187

187:                                              ; preds = %182, %171
  br label %188

188:                                              ; preds = %187, %159
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %189 = load i32, i32* %5, align 4
  %190 = shl i32 %189, 29
  store i32 %190, i32* %10, align 4
  %191 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %192 = load i32, i32* @AR_PHY_SYNTH_CONTROL, align 4
  %193 = load i32, i32* %10, align 4
  %194 = call i32 @OS_REG_WRITE(%struct.ath_hal* %191, i32 %192, i32 %193)
  %195 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %196 = load i32, i32* @AR_PHY_65NM_CH0_SYNTH4, align 4
  %197 = load i32, i32* @AR_PHY_SYNTH4_LONG_SHIFT_SELECT, align 4
  %198 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %195, i32 %196, i32 %197, i32 1)
  %199 = load i32, i32* %9, align 4
  %200 = shl i32 %199, 2
  %201 = load i32, i32* %7, align 4
  %202 = shl i32 %201, 28
  %203 = or i32 %200, %202
  %204 = load i32, i32* %6, align 4
  %205 = shl i32 %204, 30
  %206 = or i32 %203, %205
  %207 = load i32, i32* %13, align 4
  %208 = shl i32 %207, 31
  %209 = or i32 %206, %208
  store i32 %209, i32* %10, align 4
  %210 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %211 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %188
  %214 = load i64, i64* @CHANSEL_5G_DOT5MHZ, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %216, %214
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %213, %188
  %220 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %221 = load i32, i32* @AR_PHY_65NM_CH0_SYNTH7, align 4
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @OS_REG_WRITE(%struct.ath_hal* %220, i32 %221, i32 %222)
  store i32 1, i32* %13, align 4
  %224 = load i32, i32* %13, align 4
  %225 = shl i32 %224, 31
  %226 = load i32, i32* %10, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %10, align 4
  %228 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %229 = load i32, i32* @AR_PHY_65NM_CH0_SYNTH7, align 4
  %230 = load i32, i32* %10, align 4
  %231 = call i32 @OS_REG_WRITE(%struct.ath_hal* %228, i32 %229, i32 %230)
  %232 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %233 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %234 = call %struct.TYPE_9__* @AH_PRIVATE(%struct.ath_hal* %233)
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  store %struct.ieee80211_channel* %232, %struct.ieee80211_channel** %235, align 8
  %236 = load i32, i32* @AH_TRUE, align 4
  ret i32 %236
}

declare dso_local %struct.TYPE_10__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_get_channel_centers(%struct.ath_hal*, %struct.ieee80211_channel*, %struct.TYPE_8__*) #1

declare dso_local i64 @AR_SREV_HORNET(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_mhz2ieee_2ghz(%struct.ath_hal*, i32) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_APHRODITE(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_SCORPION(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_HONEYBEE(%struct.ath_hal*) #1

declare dso_local i32 @CHANSEL_2G(i32) #1

declare dso_local i32 @CHANSEL_5G(i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local %struct.TYPE_9__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
