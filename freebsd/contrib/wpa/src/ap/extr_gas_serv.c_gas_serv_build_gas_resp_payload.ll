; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_gas_serv_build_gas_resp_payload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_gas_serv_build_gas_resp_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ANQP_REQ_NAI_REALM = common dso_local global i32 0, align 4
@ANQP_REQ_NAI_HOME_REALM = common dso_local global i32 0, align 4
@ANQP_REQ_ICON_REQUEST = common dso_local global i32 0, align 4
@ANQP_REQ_CAPABILITY_LIST = common dso_local global i32 0, align 4
@ANQP_REQ_VENUE_NAME = common dso_local global i32 0, align 4
@ANQP_REQ_EMERGENCY_CALL_NUMBER = common dso_local global i32 0, align 4
@ANQP_EMERGENCY_CALL_NUMBER = common dso_local global i32 0, align 4
@ANQP_REQ_NETWORK_AUTH_TYPE = common dso_local global i32 0, align 4
@ANQP_REQ_ROAMING_CONSORTIUM = common dso_local global i32 0, align 4
@ANQP_REQ_IP_ADDR_TYPE_AVAILABILITY = common dso_local global i32 0, align 4
@ANQP_REQ_3GPP_CELLULAR_NETWORK = common dso_local global i32 0, align 4
@ANQP_REQ_AP_GEOSPATIAL_LOCATION = common dso_local global i32 0, align 4
@ANQP_AP_GEOSPATIAL_LOCATION = common dso_local global i32 0, align 4
@ANQP_REQ_AP_CIVIC_LOCATION = common dso_local global i32 0, align 4
@ANQP_AP_CIVIC_LOCATION = common dso_local global i32 0, align 4
@ANQP_REQ_AP_LOCATION_PUBLIC_URI = common dso_local global i32 0, align 4
@ANQP_AP_LOCATION_PUBLIC_URI = common dso_local global i32 0, align 4
@ANQP_REQ_DOMAIN_NAME = common dso_local global i32 0, align 4
@ANQP_REQ_EMERGENCY_ALERT_URI = common dso_local global i32 0, align 4
@ANQP_EMERGENCY_ALERT_URI = common dso_local global i32 0, align 4
@ANQP_REQ_TDLS_CAPABILITY = common dso_local global i32 0, align 4
@ANQP_TDLS_CAPABILITY = common dso_local global i32 0, align 4
@ANQP_REQ_EMERGENCY_NAI = common dso_local global i32 0, align 4
@ANQP_EMERGENCY_NAI = common dso_local global i32 0, align 4
@ANQP_VENUE_URL = common dso_local global i32 0, align 4
@ANQP_FILS_REALM_INFO = common dso_local global i32 0, align 4
@ANQP_REQ_CONNECTION_CAPABILITY = common dso_local global i32 0, align 4
@ANQP_REQ_HS_CAPABILITY_LIST = common dso_local global i32 0, align 4
@ANQP_REQ_MBO_CELL_DATA_CONN_PREF = common dso_local global i32 0, align 4
@ANQP_REQ_OPERATING_CLASS = common dso_local global i32 0, align 4
@ANQP_REQ_OPERATOR_FRIENDLY_NAME = common dso_local global i32 0, align 4
@ANQP_REQ_OPERATOR_ICON_METADATA = common dso_local global i32 0, align 4
@ANQP_REQ_OSU_PROVIDERS_LIST = common dso_local global i32 0, align 4
@ANQP_REQ_OSU_PROVIDERS_NAI_LIST = common dso_local global i32 0, align 4
@ANQP_REQ_WAN_METRICS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.hostapd_data*, i32, i32*, i64, i32*, i64, i32*, i32)* @gas_serv_build_gas_resp_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @gas_serv_build_gas_resp_payload(%struct.hostapd_data* %0, i32 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.hostapd_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.wpabuf*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i64 1400, i64* %19, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @ANQP_REQ_NAI_REALM, align 4
  %23 = load i32, i32* @ANQP_REQ_NAI_HOME_REALM, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %8
  %28 = load i64, i64* %19, align 8
  %29 = add i64 %28, 1000
  store i64 %29, i64* %19, align 8
  br label %30

30:                                               ; preds = %27, %8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @ANQP_REQ_ICON_REQUEST, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* %19, align 8
  %37 = add i64 %36, 65536
  store i64 %37, i64* %19, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = load i32, i32* %17, align 4
  %42 = call i64 @anqp_get_required_len(%struct.hostapd_data* %39, i32* %40, i32 %41)
  %43 = load i64, i64* %19, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %19, align 8
  %45 = load i64, i64* %19, align 8
  %46 = call %struct.wpabuf* @wpabuf_alloc(i64 %45)
  store %struct.wpabuf* %46, %struct.wpabuf** %18, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %48 = icmp eq %struct.wpabuf* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store %struct.wpabuf* null, %struct.wpabuf** %9, align 8
  br label %233

50:                                               ; preds = %38
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @ANQP_REQ_CAPABILITY_LIST, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %57 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %58 = call i32 @anqp_add_capab_list(%struct.hostapd_data* %56, %struct.wpabuf* %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @ANQP_REQ_VENUE_NAME, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %66 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %67 = call i32 @anqp_add_venue_name(%struct.hostapd_data* %65, %struct.wpabuf* %66)
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @ANQP_REQ_EMERGENCY_CALL_NUMBER, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %75 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %76 = load i32, i32* @ANQP_EMERGENCY_CALL_NUMBER, align 4
  %77 = call i32 @anqp_add_elem(%struct.hostapd_data* %74, %struct.wpabuf* %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @ANQP_REQ_NETWORK_AUTH_TYPE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %85 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %86 = call i32 @anqp_add_network_auth_type(%struct.hostapd_data* %84, %struct.wpabuf* %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @ANQP_REQ_ROAMING_CONSORTIUM, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %94 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %95 = call i32 @anqp_add_roaming_consortium(%struct.hostapd_data* %93, %struct.wpabuf* %94)
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @ANQP_REQ_IP_ADDR_TYPE_AVAILABILITY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %103 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %104 = call i32 @anqp_add_ip_addr_type_availability(%struct.hostapd_data* %102, %struct.wpabuf* %103)
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @ANQP_REQ_NAI_REALM, align 4
  %108 = load i32, i32* @ANQP_REQ_NAI_HOME_REALM, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %114 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @ANQP_REQ_NAI_REALM, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @ANQP_REQ_NAI_HOME_REALM, align 4
  %122 = and i32 %120, %121
  %123 = call i32 @anqp_add_nai_realm(%struct.hostapd_data* %113, %struct.wpabuf* %114, i32* %115, i64 %116, i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %112, %105
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @ANQP_REQ_3GPP_CELLULAR_NETWORK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %131 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %132 = call i32 @anqp_add_3gpp_cellular_network(%struct.hostapd_data* %130, %struct.wpabuf* %131)
  br label %133

133:                                              ; preds = %129, %124
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @ANQP_REQ_AP_GEOSPATIAL_LOCATION, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %140 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %141 = load i32, i32* @ANQP_AP_GEOSPATIAL_LOCATION, align 4
  %142 = call i32 @anqp_add_elem(%struct.hostapd_data* %139, %struct.wpabuf* %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @ANQP_REQ_AP_CIVIC_LOCATION, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %150 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %151 = load i32, i32* @ANQP_AP_CIVIC_LOCATION, align 4
  %152 = call i32 @anqp_add_elem(%struct.hostapd_data* %149, %struct.wpabuf* %150, i32 %151)
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @ANQP_REQ_AP_LOCATION_PUBLIC_URI, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %160 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %161 = load i32, i32* @ANQP_AP_LOCATION_PUBLIC_URI, align 4
  %162 = call i32 @anqp_add_elem(%struct.hostapd_data* %159, %struct.wpabuf* %160, i32 %161)
  br label %163

163:                                              ; preds = %158, %153
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @ANQP_REQ_DOMAIN_NAME, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %170 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %171 = call i32 @anqp_add_domain_name(%struct.hostapd_data* %169, %struct.wpabuf* %170)
  br label %172

172:                                              ; preds = %168, %163
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @ANQP_REQ_EMERGENCY_ALERT_URI, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %179 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %180 = load i32, i32* @ANQP_EMERGENCY_ALERT_URI, align 4
  %181 = call i32 @anqp_add_elem(%struct.hostapd_data* %178, %struct.wpabuf* %179, i32 %180)
  br label %182

182:                                              ; preds = %177, %172
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* @ANQP_REQ_TDLS_CAPABILITY, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %189 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %190 = load i32, i32* @ANQP_TDLS_CAPABILITY, align 4
  %191 = call i32 @anqp_add_elem(%struct.hostapd_data* %188, %struct.wpabuf* %189, i32 %190)
  br label %192

192:                                              ; preds = %187, %182
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* @ANQP_REQ_EMERGENCY_NAI, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %199 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %200 = load i32, i32* @ANQP_EMERGENCY_NAI, align 4
  %201 = call i32 @anqp_add_elem(%struct.hostapd_data* %198, %struct.wpabuf* %199, i32 %200)
  br label %202

202:                                              ; preds = %197, %192
  store i32 0, i32* %20, align 4
  br label %203

203:                                              ; preds = %228, %202
  %204 = load i32, i32* %20, align 4
  %205 = load i32, i32* %17, align 4
  %206 = icmp ult i32 %204, %205
  br i1 %206, label %207, label %231

207:                                              ; preds = %203
  %208 = load i32*, i32** %16, align 8
  %209 = load i32, i32* %20, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @ANQP_VENUE_URL, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %207
  %216 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %217 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %218 = call i32 @anqp_add_venue_url(%struct.hostapd_data* %216, %struct.wpabuf* %217)
  br label %228

219:                                              ; preds = %207
  %220 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %221 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %222 = load i32*, i32** %16, align 8
  %223 = load i32, i32* %20, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @anqp_add_elem(%struct.hostapd_data* %220, %struct.wpabuf* %221, i32 %226)
  br label %228

228:                                              ; preds = %219, %215
  %229 = load i32, i32* %20, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %20, align 4
  br label %203

231:                                              ; preds = %203
  %232 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  store %struct.wpabuf* %232, %struct.wpabuf** %9, align 8
  br label %233

233:                                              ; preds = %231, %49
  %234 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  ret %struct.wpabuf* %234
}

declare dso_local i64 @anqp_get_required_len(%struct.hostapd_data*, i32*, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @anqp_add_capab_list(%struct.hostapd_data*, %struct.wpabuf*) #1

declare dso_local i32 @anqp_add_venue_name(%struct.hostapd_data*, %struct.wpabuf*) #1

declare dso_local i32 @anqp_add_elem(%struct.hostapd_data*, %struct.wpabuf*, i32) #1

declare dso_local i32 @anqp_add_network_auth_type(%struct.hostapd_data*, %struct.wpabuf*) #1

declare dso_local i32 @anqp_add_roaming_consortium(%struct.hostapd_data*, %struct.wpabuf*) #1

declare dso_local i32 @anqp_add_ip_addr_type_availability(%struct.hostapd_data*, %struct.wpabuf*) #1

declare dso_local i32 @anqp_add_nai_realm(%struct.hostapd_data*, %struct.wpabuf*, i32*, i64, i32, i32) #1

declare dso_local i32 @anqp_add_3gpp_cellular_network(%struct.hostapd_data*, %struct.wpabuf*) #1

declare dso_local i32 @anqp_add_domain_name(%struct.hostapd_data*, %struct.wpabuf*) #1

declare dso_local i32 @anqp_add_venue_url(%struct.hostapd_data*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
