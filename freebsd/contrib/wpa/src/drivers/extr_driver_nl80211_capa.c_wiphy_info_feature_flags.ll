; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_wiphy_info_feature_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_wiphy_info_feature_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy_info_data = type { i32, i32, i32, i32, i32, i32, %struct.wpa_driver_capa* }
%struct.wpa_driver_capa = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@NL80211_FEATURE_SK_TX_STATUS = common dso_local global i32 0, align 4
@NL80211_FEATURE_INACTIVITY_TIMER = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_INACTIVITY_TIMER = common dso_local global i32 0, align 4
@NL80211_FEATURE_SAE = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SAE = common dso_local global i32 0, align 4
@NL80211_FEATURE_NEED_OBSS_SCAN = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_OBSS_SCAN = common dso_local global i32 0, align 4
@NL80211_FEATURE_AP_MODE_CHAN_WIDTH_CHANGE = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_HT_2040_COEX = common dso_local global i32 0, align 4
@NL80211_FEATURE_TDLS_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"nl80211: TDLS channel switch\00", align 1
@WPA_DRIVER_FLAGS_TDLS_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@NL80211_FEATURE_P2P_GO_CTWIN = common dso_local global i32 0, align 4
@NL80211_FEATURE_LOW_PRIORITY_SCAN = common dso_local global i32 0, align 4
@NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR = common dso_local global i32 0, align 4
@NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR = common dso_local global i32 0, align 4
@NL80211_FEATURE_STATIC_SMPS = common dso_local global i32 0, align 4
@WPA_DRIVER_SMPS_MODE_STATIC = common dso_local global i32 0, align 4
@NL80211_FEATURE_DYNAMIC_SMPS = common dso_local global i32 0, align 4
@WPA_DRIVER_SMPS_MODE_DYNAMIC = common dso_local global i32 0, align 4
@NL80211_FEATURE_SUPPORTS_WMM_ADMISSION = common dso_local global i32 0, align 4
@NL80211_FEATURE_DS_PARAM_SET_IE_IN_PROBES = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_DS_PARAM_SET_IE_IN_PROBES = common dso_local global i32 0, align 4
@NL80211_FEATURE_WFA_TPC_IE_IN_PROBES = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_WFA_TPC_IE_IN_PROBES = common dso_local global i32 0, align 4
@NL80211_FEATURE_QUIET = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_QUIET = common dso_local global i32 0, align 4
@NL80211_FEATURE_TX_POWER_INSERTION = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_TX_POWER_INSERTION = common dso_local global i32 0, align 4
@NL80211_FEATURE_HT_IBSS = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_HT_IBSS = common dso_local global i32 0, align 4
@NL80211_FEATURE_FULL_AP_CLIENT_STATE = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_FULL_AP_CLIENT_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy_info_data*, %struct.nlattr*)* @wiphy_info_feature_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiphy_info_feature_flags(%struct.wiphy_info_data* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.wiphy_info_data*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_driver_capa*, align 8
  store %struct.wiphy_info_data* %0, %struct.wiphy_info_data** %3, align 8
  store %struct.nlattr* %1, %struct.nlattr** %4, align 8
  %7 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %8 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %7, i32 0, i32 6
  %9 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %8, align 8
  store %struct.wpa_driver_capa* %9, %struct.wpa_driver_capa** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %11 = icmp eq %struct.nlattr* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %208

13:                                               ; preds = %2
  %14 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %15 = call i32 @nla_get_u32(%struct.nlattr* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NL80211_FEATURE_SK_TX_STATUS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %22 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NL80211_FEATURE_INACTIVITY_TIMER, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @WPA_DRIVER_FLAGS_INACTIVITY_TIMER, align 4
  %30 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %6, align 8
  %31 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NL80211_FEATURE_SAE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @WPA_DRIVER_FLAGS_SAE, align 4
  %41 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %6, align 8
  %42 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %34
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @NL80211_FEATURE_NEED_OBSS_SCAN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @WPA_DRIVER_FLAGS_OBSS_SCAN, align 4
  %52 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %6, align 8
  %53 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %45
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @NL80211_FEATURE_AP_MODE_CHAN_WIDTH_CHANGE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @WPA_DRIVER_FLAGS_HT_2040_COEX, align 4
  %63 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %6, align 8
  %64 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @NL80211_FEATURE_TDLS_CHANNEL_SWITCH, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = call i32 @wpa_printf(i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @WPA_DRIVER_FLAGS_TDLS_CHANNEL_SWITCH, align 4
  %76 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %6, align 8
  %77 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %72, %67
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @NL80211_FEATURE_P2P_GO_CTWIN, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %87 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @NL80211_FEATURE_LOW_PRIORITY_SCAN, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %95 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %94, i32 0, i32 2
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %103 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %102, i32 0, i32 3
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %111 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %110, i32 0, i32 4
  store i32 1, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @NL80211_FEATURE_STATIC_SMPS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i32, i32* @WPA_DRIVER_SMPS_MODE_STATIC, align 4
  %119 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %6, align 8
  %120 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %117, %112
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @NL80211_FEATURE_DYNAMIC_SMPS, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load i32, i32* @WPA_DRIVER_SMPS_MODE_DYNAMIC, align 4
  %130 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %6, align 8
  %131 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %128, %123
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @NL80211_FEATURE_SUPPORTS_WMM_ADMISSION, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %141 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %140, i32 0, i32 5
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %134
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @NL80211_FEATURE_DS_PARAM_SET_IE_IN_PROBES, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load i32, i32* @WPA_DRIVER_FLAGS_DS_PARAM_SET_IE_IN_PROBES, align 4
  %149 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %6, align 8
  %150 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %147, %142
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @NL80211_FEATURE_WFA_TPC_IE_IN_PROBES, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load i32, i32* @WPA_DRIVER_FLAGS_WFA_TPC_IE_IN_PROBES, align 4
  %160 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %6, align 8
  %161 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %158, %153
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @NL80211_FEATURE_QUIET, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load i32, i32* @WPA_DRIVER_FLAGS_QUIET, align 4
  %171 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %6, align 8
  %172 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %169, %164
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @NL80211_FEATURE_TX_POWER_INSERTION, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load i32, i32* @WPA_DRIVER_FLAGS_TX_POWER_INSERTION, align 4
  %182 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %6, align 8
  %183 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %180, %175
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @NL80211_FEATURE_HT_IBSS, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load i32, i32* @WPA_DRIVER_FLAGS_HT_IBSS, align 4
  %193 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %6, align 8
  %194 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %191, %186
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* @NL80211_FEATURE_FULL_AP_CLIENT_STATE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load i32, i32* @WPA_DRIVER_FLAGS_FULL_AP_CLIENT_STATE, align 4
  %204 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %6, align 8
  %205 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %12, %202, %197
  ret void
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
