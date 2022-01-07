; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_wpa_driver_nl80211_capa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_wpa_driver_nl80211_capa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.wiphy_info_data = type { %struct.TYPE_3__*, i32, i32, i64, i32, i64, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@WPA_DRIVER_CAPA_KEY_MGMT_WPA = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_WPA2 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_SUITE_B = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_SUITE_B_192 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_DPP = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SME = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_FT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_FT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_FILS_SK_OFFLOAD = common dso_local global i32 0, align 4
@WPA_DRIVER_AUTH_OPEN = common dso_local global i32 0, align 4
@WPA_DRIVER_AUTH_SHARED = common dso_local global i32 0, align 4
@WPA_DRIVER_AUTH_LEAP = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SANE_ERROR_CODES = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SET_KEYS_AFTER_ASSOC_DONE = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_EAPOL_TX_STATUS = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_DEAUTH_TX_STATUS = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_AP_MLME = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_QOS_MAPPING = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_DFS_OFFLOAD = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_OFFCHANNEL_SIMULTANEOUS = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_OFFCHANNEL_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_driver_nl80211_capa(%struct.wpa_driver_nl80211_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %4 = alloca %struct.wiphy_info_data, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %3, align 8
  %5 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %6 = call i64 @wpa_driver_nl80211_get_info(%struct.wpa_driver_nl80211_data* %5, %struct.wiphy_info_data* %4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %192

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %4, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %192

14:                                               ; preds = %9
  %15 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %16 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA, align 4
  %18 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA2, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_SUITE_B, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_SUITE_B_192, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_OWE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_DPP, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %33 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %36 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @WPA_DRIVER_FLAGS_SME, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %14
  %43 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA256, align 4
  %44 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA384, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_FT_FILS_SHA256, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_FT_FILS_SHA384, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_SAE, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %53 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 8
  br label %75

57:                                               ; preds = %14
  %58 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %59 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @WPA_DRIVER_FLAGS_FILS_SK_OFFLOAD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA256, align 4
  %67 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA384, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %70 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %65, %57
  br label %75

75:                                               ; preds = %74, %42
  %76 = load i32, i32* @WPA_DRIVER_AUTH_OPEN, align 4
  %77 = load i32, i32* @WPA_DRIVER_AUTH_SHARED, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @WPA_DRIVER_AUTH_LEAP, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %82 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @WPA_DRIVER_FLAGS_SANE_ERROR_CODES, align 4
  %85 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %86 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @WPA_DRIVER_FLAGS_SET_KEYS_AFTER_ASSOC_DONE, align 4
  %91 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %92 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @WPA_DRIVER_FLAGS_EAPOL_TX_STATUS, align 4
  %97 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %98 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT, align 4
  %103 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %104 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 4
  %108 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %4, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %75
  %112 = load i32, i32* @WPA_DRIVER_FLAGS_DEAUTH_TX_STATUS, align 4
  %113 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %114 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @WPA_DRIVER_FLAGS_AP_MLME, align 4
  %119 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %120 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %118
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %111, %75
  %125 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %4, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %128 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %127, i32 0, i32 7
  store i64 %126, i64* %128, align 8
  %129 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %4, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %132 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 8
  %133 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %4, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %136 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 4
  %137 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %4, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %140 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 8
  %141 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %4, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %124
  %145 = load i32, i32* @WPA_DRIVER_FLAGS_QOS_MAPPING, align 4
  %146 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %147 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %145
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %144, %124
  %152 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %4, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %155 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %4, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %170, label %159

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %4, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %4, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  br label %168

168:                                              ; preds = %163, %159
  %169 = phi i1 [ true, %159 ], [ %167, %163 ]
  br label %170

170:                                              ; preds = %168, %151
  %171 = phi i1 [ false, %151 ], [ %169, %168 ]
  %172 = zext i1 %171 to i32
  %173 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %174 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %176 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %170
  %180 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %4, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %191, label %183

183:                                              ; preds = %179
  %184 = load i32, i32* @WPA_DRIVER_FLAGS_EAPOL_TX_STATUS, align 4
  %185 = xor i32 %184, -1
  %186 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %187 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, %185
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %183, %179, %170
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %191, %13, %8
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i64 @wpa_driver_nl80211_get_info(%struct.wpa_driver_nl80211_data*, %struct.wiphy_info_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
