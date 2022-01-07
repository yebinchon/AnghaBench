; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_security_workaround.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_security_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_ssid = type { i32, i32, i32, i32* }
%struct.wps_credential = type { i32 }
%struct.wpa_driver_capa = type { i32, i32 }
%struct.wpa_bss = type { i32 }
%struct.wpa_ie_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"WPS: The AP was not found from BSS table - use credential as-is\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"WPS: AP found from BSS table\00", align 1
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@WPA_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@WPA_PROTO_WPA = common dso_local global i32 0, align 4
@WPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"WPS: The AP did not yet advertise WPA support - use credential as-is\00", align 1
@WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"WPS: Add CCMP into the credential based on scan results\00", align 1
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_CCMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"WPS: Add WPA2 into the credential based on scan results\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.wps_credential*)* @wpas_wps_security_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_wps_security_workaround(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, %struct.wps_credential* %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.wps_credential*, align 8
  %7 = alloca %struct.wpa_driver_capa, align 4
  %8 = alloca %struct.wpa_bss*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.wpa_ie_data, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  store %struct.wps_credential* %2, %struct.wps_credential** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %14 = call i64 @wpa_drv_get_capa(%struct.wpa_supplicant* %13, %struct.wpa_driver_capa* %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %207

17:                                               ; preds = %3
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %207

23:                                               ; preds = %17
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %25 = load %struct.wps_credential*, %struct.wps_credential** %6, align 8
  %26 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %29 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %32 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.wpa_bss* @wpa_bss_get(%struct.wpa_supplicant* %24, i32 %27, i32* %30, i32 %33)
  store %struct.wpa_bss* %34, %struct.wpa_bss** %8, align 8
  %35 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %36 = icmp ne %struct.wpa_bss* %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %23
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %43 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %46 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.wpa_bss* @wpa_bss_get(%struct.wpa_supplicant* %38, i32 %41, i32* %44, i32 %47)
  store %struct.wpa_bss* %48, %struct.wpa_bss** %8, align 8
  br label %49

49:                                               ; preds = %37, %23
  %50 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %51 = icmp eq %struct.wpa_bss* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 @wpa_printf(i32 %53, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %207

55:                                               ; preds = %49
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %59 = load i32, i32* @WLAN_EID_RSN, align 4
  %60 = call i64* @wpa_bss_get_ie(%struct.wpa_bss* %58, i32 %59)
  store i64* %60, i64** %9, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %63, label %79

63:                                               ; preds = %55
  %64 = load i64*, i64** %9, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 2, %67
  %69 = call i64 @wpa_parse_wpa_ie(i64* %64, i64 %68, %struct.wpa_ie_data* %10)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  store i32 1, i32* %11, align 4
  %72 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 1, i32* %12, align 4
  br label %78

78:                                               ; preds = %77, %71
  br label %101

79:                                               ; preds = %63, %55
  %80 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %81 = load i32, i32* @WPA_IE_VENDOR_TYPE, align 4
  %82 = call i64* @wpa_bss_get_vendor_ie(%struct.wpa_bss* %80, i32 %81)
  store i64* %82, i64** %9, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %79
  %86 = load i64*, i64** %9, align 8
  %87 = load i64*, i64** %9, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 2, %89
  %91 = call i64 @wpa_parse_wpa_ie(i64* %86, i64 %90, %struct.wpa_ie_data* %10)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 1, i32* %12, align 4
  br label %100

100:                                              ; preds = %99, %93, %85, %79
  br label %101

101:                                              ; preds = %100, %78
  %102 = load i64*, i64** %9, align 8
  %103 = icmp eq i64* %102, null
  br i1 %103, label %104, label %121

104:                                              ; preds = %101
  %105 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %106 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @WPA_PROTO_WPA, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %113 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = call i32 @wpa_printf(i32 %119, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  br label %207

121:                                              ; preds = %111, %104, %101
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %164

124:                                              ; preds = %121
  %125 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %126 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %164, label %131

131:                                              ; preds = %124
  %132 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %133 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %164

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %7, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %164

144:                                              ; preds = %138
  %145 = load i32, i32* @MSG_DEBUG, align 4
  %146 = call i32 @wpa_printf(i32 %145, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %147 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %148 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %159

153:                                              ; preds = %144
  %154 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %155 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %156 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %163

159:                                              ; preds = %144
  %160 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %161 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %162 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %159, %153
  br label %164

164:                                              ; preds = %163, %138, %131, %124, %121
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %207

167:                                              ; preds = %164
  %168 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %169 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @WPA_PROTO_RSN, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %207, label %174

174:                                              ; preds = %167
  %175 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %176 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @WPA_PROTO_WPA, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %207

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %7, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @WPA_DRIVER_CAPA_ENC_CCMP, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %181
  %188 = load i32, i32* @MSG_DEBUG, align 4
  %189 = call i32 @wpa_printf(i32 %188, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %190 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %191 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %190, i32 0, i32 0
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %202

196:                                              ; preds = %187
  %197 = load i32, i32* @WPA_PROTO_RSN, align 4
  %198 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %199 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %206

202:                                              ; preds = %187
  %203 = load i32, i32* @WPA_PROTO_RSN, align 4
  %204 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %205 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %202, %196
  br label %207

207:                                              ; preds = %16, %22, %52, %118, %206, %181, %174, %167, %164
  ret void
}

declare dso_local i64 @wpa_drv_get_capa(%struct.wpa_supplicant*, %struct.wpa_driver_capa*) #1

declare dso_local %struct.wpa_bss* @wpa_bss_get(%struct.wpa_supplicant*, i32, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64* @wpa_bss_get_ie(%struct.wpa_bss*, i32) #1

declare dso_local i64 @wpa_parse_wpa_ie(i64*, i64, %struct.wpa_ie_data*) #1

declare dso_local i64* @wpa_bss_get_vendor_ie(%struct.wpa_bss*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
