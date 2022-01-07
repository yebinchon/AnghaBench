; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_rate_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_rate_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { i32, i64, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wpa_bss = type { i64 }

@WLAN_EID_SUPP_RATES = common dso_local global i32 0, align 4
@WLAN_EID_EXT_SUPP_RATES = common dso_local global i32 0, align 4
@HOSTAPD_MODE_IEEE80211G = common dso_local global i64 0, align 8
@BSS_MEMBERSHIP_SELECTOR_HT_PHY = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"   hardware does not support HT PHY\00", align 1
@BSS_MEMBERSHIP_SELECTOR_VHT_PHY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"   hardware does not support VHT PHY\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"   hardware does not support required rate %d.%d Mbps (freq=%d mode==%d num_rates=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_bss*, i32)* @rate_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rate_match(%struct.wpa_supplicant* %0, %struct.wpa_bss* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_bss*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostapd_hw_modes*, align 8
  %9 = alloca %struct.hostapd_hw_modes*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_bss* %1, %struct.wpa_bss** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.hostapd_hw_modes* null, %struct.hostapd_hw_modes** %8, align 8
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %19 = load i32, i32* @WLAN_EID_SUPP_RATES, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @WLAN_EID_EXT_SUPP_RATES, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %23 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %249

27:                                               ; preds = %3
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %30, align 8
  store %struct.hostapd_hw_modes* %31, %struct.hostapd_hw_modes** %9, align 8
  %32 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %33 = icmp eq %struct.hostapd_hw_modes* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %249

35:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %91, %35
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %94

43:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %87, %43
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %46, i64 %48
  %50 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %45, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %44
  %54 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %54, i64 %56
  %58 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %57, i32 0, i32 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %68 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %53
  %72 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %73 = icmp ne %struct.hostapd_hw_modes* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %76 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @HOSTAPD_MODE_IEEE80211G, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %90

81:                                               ; preds = %74, %71
  %82 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %82, i64 %84
  store %struct.hostapd_hw_modes* %85, %struct.hostapd_hw_modes** %8, align 8
  br label %90

86:                                               ; preds = %53
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %44

90:                                               ; preds = %81, %80, %44
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %36

94:                                               ; preds = %36
  %95 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %96 = icmp eq %struct.hostapd_hw_modes* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %4, align 4
  br label %249

98:                                               ; preds = %94
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %245, %98
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, 8
  br i1 %101, label %102, label %248

102:                                              ; preds = %99
  %103 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32* @wpa_bss_get_ie(%struct.wpa_bss* %103, i32 %107)
  store i32* %108, i32** %11, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %245

112:                                              ; preds = %102
  store i32 2, i32* %13, align 4
  br label %113

113:                                              ; preds = %241, %112
  %114 = load i32, i32* %13, align 4
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 2
  %119 = icmp slt i32 %114, %118
  br i1 %119, label %120, label %244

120:                                              ; preds = %113
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 128
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %16, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 127
  %137 = mul nsw i32 %136, 5
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %162

140:                                              ; preds = %120
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 127
  %147 = load i32, i32* @BSS_MEMBERSHIP_SELECTOR_HT_PHY, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %140
  %150 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %151 = call i32 @ht_supported(%struct.hostapd_hw_modes* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %158 = load i32, i32* @MSG_DEBUG, align 4
  %159 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %157, i32 %158, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %160

160:                                              ; preds = %156, %153
  store i32 0, i32* %4, align 4
  br label %249

161:                                              ; preds = %149
  br label %241

162:                                              ; preds = %140, %120
  %163 = load i32, i32* %16, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %187

165:                                              ; preds = %162
  %166 = load i32*, i32** %11, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 127
  %172 = load i32, i32* @BSS_MEMBERSHIP_SELECTOR_VHT_PHY, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %165
  %175 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %176 = call i32 @vht_supported(%struct.hostapd_hw_modes* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %183 = load i32, i32* @MSG_DEBUG, align 4
  %184 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %182, i32 %183, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %185

185:                                              ; preds = %181, %178
  store i32 0, i32* %4, align 4
  br label %249

186:                                              ; preds = %174
  br label %241

187:                                              ; preds = %165, %162
  %188 = load i32, i32* %16, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %187
  br label %241

191:                                              ; preds = %187
  store i32 0, i32* %14, align 4
  br label %192

192:                                              ; preds = %210, %191
  %193 = load i32, i32* %14, align 4
  %194 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %195 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %213

198:                                              ; preds = %192
  %199 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %200 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %17, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %198
  br label %213

209:                                              ; preds = %198
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %14, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %14, align 4
  br label %192

213:                                              ; preds = %208, %192
  %214 = load i32, i32* %14, align 4
  %215 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %216 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %214, %217
  br i1 %218, label %219, label %240

219:                                              ; preds = %213
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %239

222:                                              ; preds = %219
  %223 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %224 = load i32, i32* @MSG_DEBUG, align 4
  %225 = load i32, i32* %17, align 4
  %226 = sdiv i32 %225, 10
  %227 = load i32, i32* %17, align 4
  %228 = srem i32 %227, 10
  %229 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %230 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %233 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %236 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %223, i32 %224, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %226, i32 %228, i64 %231, i64 %234, i32 %237)
  br label %239

239:                                              ; preds = %222, %219
  store i32 0, i32* %4, align 4
  br label %249

240:                                              ; preds = %213
  br label %241

241:                                              ; preds = %240, %190, %186, %161
  %242 = load i32, i32* %13, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %13, align 4
  br label %113

244:                                              ; preds = %113
  br label %245

245:                                              ; preds = %244, %111
  %246 = load i32, i32* %12, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %12, align 4
  br label %99

248:                                              ; preds = %99
  store i32 1, i32* %4, align 4
  br label %249

249:                                              ; preds = %248, %239, %185, %160, %97, %34, %26
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local i32* @wpa_bss_get_ie(%struct.wpa_bss*, i32) #1

declare dso_local i32 @ht_supported(%struct.hostapd_hw_modes*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i32 @vht_supported(%struct.hostapd_hw_modes*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
