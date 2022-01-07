; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_capab_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_capab_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.wpabuf = type { i32 }

@ANQP_CAPABILITY_LIST = common dso_local global i32 0, align 4
@ANQP_VENUE_NAME = common dso_local global i32 0, align 4
@ANQP_EMERGENCY_CALL_NUMBER = common dso_local global i32 0, align 4
@ANQP_NETWORK_AUTH_TYPE = common dso_local global i32 0, align 4
@ANQP_ROAMING_CONSORTIUM = common dso_local global i32 0, align 4
@ANQP_IP_ADDR_TYPE_AVAILABILITY = common dso_local global i32 0, align 4
@ANQP_NAI_REALM = common dso_local global i32 0, align 4
@ANQP_3GPP_CELLULAR_NETWORK = common dso_local global i32 0, align 4
@ANQP_AP_GEOSPATIAL_LOCATION = common dso_local global i32 0, align 4
@ANQP_AP_CIVIC_LOCATION = common dso_local global i32 0, align 4
@ANQP_AP_LOCATION_PUBLIC_URI = common dso_local global i32 0, align 4
@ANQP_DOMAIN_NAME = common dso_local global i32 0, align 4
@ANQP_EMERGENCY_ALERT_URI = common dso_local global i32 0, align 4
@ANQP_TDLS_CAPABILITY = common dso_local global i32 0, align 4
@ANQP_EMERGENCY_NAI = common dso_local global i32 0, align 4
@ANQP_NEIGHBOR_REPORT = common dso_local global i32 0, align 4
@ANQP_CAG = common dso_local global i32 0, align 4
@ANQP_VENUE_URL = common dso_local global i32 0, align 4
@ANQP_ADVICE_OF_CHARGE = common dso_local global i32 0, align 4
@ANQP_LOCAL_CONTENT = common dso_local global i32 0, align 4
@ANQP_FILS_REALM_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.wpabuf*)* @anqp_add_capab_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anqp_add_capab_list(%struct.hostapd_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %7 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %8 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %9 = load i32, i32* @ANQP_CAPABILITY_LIST, align 4
  %10 = call i64 @anqp_add_override(%struct.hostapd_data* %7, %struct.wpabuf* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %267

13:                                               ; preds = %2
  %14 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %15 = load i32, i32* @ANQP_CAPABILITY_LIST, align 4
  %16 = call i32* @gas_anqp_add_element(%struct.wpabuf* %14, i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %18 = load i32, i32* @ANQP_CAPABILITY_LIST, align 4
  %19 = call i32 @wpabuf_put_le16(%struct.wpabuf* %17, i32 %18)
  %20 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %21 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %13
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %28 = load i32, i32* @ANQP_VENUE_NAME, align 4
  %29 = call i64 @get_anqp_elem(%struct.hostapd_data* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %13
  %32 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %33 = load i32, i32* @ANQP_VENUE_NAME, align 4
  %34 = call i32 @wpabuf_put_le16(%struct.wpabuf* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %37 = load i32, i32* @ANQP_EMERGENCY_CALL_NUMBER, align 4
  %38 = call i64 @get_anqp_elem(%struct.hostapd_data* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %42 = load i32, i32* @ANQP_EMERGENCY_CALL_NUMBER, align 4
  %43 = call i32 @wpabuf_put_le16(%struct.wpabuf* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %46 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %44
  %52 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %53 = load i32, i32* @ANQP_NETWORK_AUTH_TYPE, align 4
  %54 = call i64 @get_anqp_elem(%struct.hostapd_data* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51, %44
  %57 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %58 = load i32, i32* @ANQP_NETWORK_AUTH_TYPE, align 4
  %59 = call i32 @wpabuf_put_le16(%struct.wpabuf* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %62 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %69 = load i32, i32* @ANQP_ROAMING_CONSORTIUM, align 4
  %70 = call i64 @get_anqp_elem(%struct.hostapd_data* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67, %60
  %73 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %74 = load i32, i32* @ANQP_ROAMING_CONSORTIUM, align 4
  %75 = call i32 @wpabuf_put_le16(%struct.wpabuf* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %78 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %85 = load i32, i32* @ANQP_IP_ADDR_TYPE_AVAILABILITY, align 4
  %86 = call i64 @get_anqp_elem(%struct.hostapd_data* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83, %76
  %89 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %90 = load i32, i32* @ANQP_IP_ADDR_TYPE_AVAILABILITY, align 4
  %91 = call i32 @wpabuf_put_le16(%struct.wpabuf* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %83
  %93 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %94 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %92
  %100 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %101 = load i32, i32* @ANQP_NAI_REALM, align 4
  %102 = call i64 @get_anqp_elem(%struct.hostapd_data* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99, %92
  %105 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %106 = load i32, i32* @ANQP_NAI_REALM, align 4
  %107 = call i32 @wpabuf_put_le16(%struct.wpabuf* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %99
  %109 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %110 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %108
  %116 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %117 = load i32, i32* @ANQP_3GPP_CELLULAR_NETWORK, align 4
  %118 = call i64 @get_anqp_elem(%struct.hostapd_data* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115, %108
  %121 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %122 = load i32, i32* @ANQP_3GPP_CELLULAR_NETWORK, align 4
  %123 = call i32 @wpabuf_put_le16(%struct.wpabuf* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %115
  %125 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %126 = load i32, i32* @ANQP_AP_GEOSPATIAL_LOCATION, align 4
  %127 = call i64 @get_anqp_elem(%struct.hostapd_data* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %131 = load i32, i32* @ANQP_AP_GEOSPATIAL_LOCATION, align 4
  %132 = call i32 @wpabuf_put_le16(%struct.wpabuf* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %124
  %134 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %135 = load i32, i32* @ANQP_AP_CIVIC_LOCATION, align 4
  %136 = call i64 @get_anqp_elem(%struct.hostapd_data* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %140 = load i32, i32* @ANQP_AP_CIVIC_LOCATION, align 4
  %141 = call i32 @wpabuf_put_le16(%struct.wpabuf* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %133
  %143 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %144 = load i32, i32* @ANQP_AP_LOCATION_PUBLIC_URI, align 4
  %145 = call i64 @get_anqp_elem(%struct.hostapd_data* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %149 = load i32, i32* @ANQP_AP_LOCATION_PUBLIC_URI, align 4
  %150 = call i32 @wpabuf_put_le16(%struct.wpabuf* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %142
  %152 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %153 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %151
  %159 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %160 = load i32, i32* @ANQP_DOMAIN_NAME, align 4
  %161 = call i64 @get_anqp_elem(%struct.hostapd_data* %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158, %151
  %164 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %165 = load i32, i32* @ANQP_DOMAIN_NAME, align 4
  %166 = call i32 @wpabuf_put_le16(%struct.wpabuf* %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %158
  %168 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %169 = load i32, i32* @ANQP_EMERGENCY_ALERT_URI, align 4
  %170 = call i64 @get_anqp_elem(%struct.hostapd_data* %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %174 = load i32, i32* @ANQP_EMERGENCY_ALERT_URI, align 4
  %175 = call i32 @wpabuf_put_le16(%struct.wpabuf* %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %167
  %177 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %178 = load i32, i32* @ANQP_TDLS_CAPABILITY, align 4
  %179 = call i64 @get_anqp_elem(%struct.hostapd_data* %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %183 = load i32, i32* @ANQP_TDLS_CAPABILITY, align 4
  %184 = call i32 @wpabuf_put_le16(%struct.wpabuf* %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %176
  %186 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %187 = load i32, i32* @ANQP_EMERGENCY_NAI, align 4
  %188 = call i64 @get_anqp_elem(%struct.hostapd_data* %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %192 = load i32, i32* @ANQP_EMERGENCY_NAI, align 4
  %193 = call i32 @wpabuf_put_le16(%struct.wpabuf* %191, i32 %192)
  br label %194

194:                                              ; preds = %190, %185
  %195 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %196 = load i32, i32* @ANQP_NEIGHBOR_REPORT, align 4
  %197 = call i64 @get_anqp_elem(%struct.hostapd_data* %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %201 = load i32, i32* @ANQP_NEIGHBOR_REPORT, align 4
  %202 = call i32 @wpabuf_put_le16(%struct.wpabuf* %200, i32 %201)
  br label %203

203:                                              ; preds = %199, %194
  %204 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %205 = load i32, i32* @ANQP_CAG, align 4
  %206 = call i64 @get_anqp_elem(%struct.hostapd_data* %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %210 = load i32, i32* @ANQP_CAG, align 4
  %211 = call i32 @wpabuf_put_le16(%struct.wpabuf* %209, i32 %210)
  br label %212

212:                                              ; preds = %208, %203
  %213 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %214 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %213, i32 0, i32 0
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %212
  %220 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %221 = load i32, i32* @ANQP_VENUE_URL, align 4
  %222 = call i64 @get_anqp_elem(%struct.hostapd_data* %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %219, %212
  %225 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %226 = load i32, i32* @ANQP_VENUE_URL, align 4
  %227 = call i32 @wpabuf_put_le16(%struct.wpabuf* %225, i32 %226)
  br label %228

228:                                              ; preds = %224, %219
  %229 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %230 = load i32, i32* @ANQP_ADVICE_OF_CHARGE, align 4
  %231 = call i64 @get_anqp_elem(%struct.hostapd_data* %229, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %235 = load i32, i32* @ANQP_ADVICE_OF_CHARGE, align 4
  %236 = call i32 @wpabuf_put_le16(%struct.wpabuf* %234, i32 %235)
  br label %237

237:                                              ; preds = %233, %228
  %238 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %239 = load i32, i32* @ANQP_LOCAL_CONTENT, align 4
  %240 = call i64 @get_anqp_elem(%struct.hostapd_data* %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %244 = load i32, i32* @ANQP_LOCAL_CONTENT, align 4
  %245 = call i32 @wpabuf_put_le16(%struct.wpabuf* %243, i32 %244)
  br label %246

246:                                              ; preds = %242, %237
  store i32 280, i32* %6, align 4
  br label %247

247:                                              ; preds = %260, %246
  %248 = load i32, i32* %6, align 4
  %249 = icmp slt i32 %248, 300
  br i1 %249, label %250, label %263

250:                                              ; preds = %247
  %251 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %252 = load i32, i32* %6, align 4
  %253 = call i64 @get_anqp_elem(%struct.hostapd_data* %251, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %250
  %256 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %257 = load i32, i32* %6, align 4
  %258 = call i32 @wpabuf_put_le16(%struct.wpabuf* %256, i32 %257)
  br label %259

259:                                              ; preds = %255, %250
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %6, align 4
  br label %247

263:                                              ; preds = %247
  %264 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %265 = load i32*, i32** %5, align 8
  %266 = call i32 @gas_anqp_set_element_len(%struct.wpabuf* %264, i32* %265)
  br label %267

267:                                              ; preds = %263, %12
  ret void
}

declare dso_local i64 @anqp_add_override(%struct.hostapd_data*, %struct.wpabuf*, i32) #1

declare dso_local i32* @gas_anqp_add_element(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i64 @get_anqp_elem(%struct.hostapd_data*, i32) #1

declare dso_local i32 @gas_anqp_set_element_len(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
