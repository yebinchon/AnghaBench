; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_encapsulate_radius.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_encapsulate_radius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i32 }
%struct.sta_info = type { i32, i64, i64, %struct.eapol_state_machine* }
%struct.eapol_state_machine = type { i32*, i64, i64, i64, i32 }
%struct.radius_msg = type { i32 }
%struct.TYPE_4__ = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Encapsulating EAP message into a RADIUS packet\00", align 1
@RADIUS_CODE_ACCESS_REQUEST = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not create new RADIUS packet\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Could not make Request Authenticator\00", align 1
@RADIUS_ATTR_USER_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Could not add User-Name\00", align 1
@RADIUS_ATTR_FRAMED_MTU = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Could not add Framed-MTU\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Could not add EAP-Message\00", align 1
@RADIUS_CODE_ACCESS_CHALLENGE = common dso_local global i64 0, align 8
@RADIUS_ATTR_STATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [62 x i8] c"Could not copy State attribute from previous Access-Challenge\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Copied RADIUS State Attribute\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@RADIUS_ATTR_CHARGEABLE_USER_IDENTITY = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"Could not add CUI\00", align 1
@RADIUS_AUTH = common dso_local global i32 0, align 4
@HS20_PPS_MO_ID_PRESENT = common dso_local global i32 0, align 4
@RADIUS_VENDOR_ATTR_WFA_HS20_AP_VERSION = common dso_local global i32 0, align 4
@RADIUS_VENDOR_ATTR_WFA_HS20_ROAMING_CONSORTIUM = common dso_local global i32 0, align 4
@RADIUS_VENDOR_ATTR_WFA_HS20_STA_VERSION = common dso_local global i32 0, align 4
@RADIUS_VENDOR_ATTR_WFA_HS20_TIMESTAMP = common dso_local global i32 0, align 4
@RADIUS_VENDOR_ATTR_WFA_HS20_T_C_FILENAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee802_1x_encapsulate_radius(%struct.hostapd_data* %0, %struct.sta_info* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.radius_msg*, align 8
  %10 = alloca %struct.eapol_state_machine*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 3
  %16 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %15, align 8
  store %struct.eapol_state_machine* %16, %struct.eapol_state_machine** %10, align 8
  %17 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %18 = icmp eq %struct.eapol_state_machine* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %201

20:                                               ; preds = %4
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %22 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @ieee802_1x_learn_identity(%struct.hostapd_data* %21, %struct.eapol_state_machine* %22, i32* %23, i64 %24)
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %29 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @radius_client_get_id(i32 %30)
  %32 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %33 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @RADIUS_CODE_ACCESS_REQUEST, align 4
  %35 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %36 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.radius_msg* @radius_msg_new(i32 %34, i32 %37)
  store %struct.radius_msg* %38, %struct.radius_msg** %9, align 8
  %39 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %40 = icmp eq %struct.radius_msg* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %20
  %42 = load i32, i32* @MSG_INFO, align 4
  %43 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %201

44:                                               ; preds = %20
  %45 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %46 = call i64 @radius_msg_make_authenticator(%struct.radius_msg* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @MSG_INFO, align 4
  %50 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %198

51:                                               ; preds = %44
  %52 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %53 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %58 = load i32, i32* @RADIUS_ATTR_USER_NAME, align 4
  %59 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %60 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %63 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @radius_msg_add_attr(%struct.radius_msg* %57, i32 %58, i32* %61, i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* @MSG_INFO, align 4
  %69 = call i32 @wpa_printf(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %198

70:                                               ; preds = %56, %51
  %71 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %72 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %73 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %78 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %79 = call i64 @add_common_radius_attr(%struct.hostapd_data* %71, i32 %76, %struct.sta_info* %77, %struct.radius_msg* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %198

82:                                               ; preds = %70
  %83 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %84 = icmp ne %struct.sta_info* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %87 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %88 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %89 = call i64 @add_sqlite_radius_attr(%struct.hostapd_data* %86, %struct.sta_info* %87, %struct.radius_msg* %88, i32 0)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %198

92:                                               ; preds = %85, %82
  %93 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %94 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @RADIUS_ATTR_FRAMED_MTU, align 4
  %99 = call i32 @hostapd_config_get_radius_attr(i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %92
  %102 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %103 = load i32, i32* @RADIUS_ATTR_FRAMED_MTU, align 4
  %104 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %102, i32 %103, i32 1400)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @MSG_INFO, align 4
  %108 = call i32 @wpa_printf(i32 %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %198

109:                                              ; preds = %101, %92
  %110 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @radius_msg_add_eap(%struct.radius_msg* %110, i32* %111, i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* @MSG_INFO, align 4
  %117 = call i32 @wpa_printf(i32 %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %198

118:                                              ; preds = %109
  %119 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %120 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %151

123:                                              ; preds = %118
  %124 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %125 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call %struct.TYPE_4__* @radius_msg_get_hdr(i64 %126)
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @RADIUS_CODE_ACCESS_CHALLENGE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %123
  %133 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %134 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %135 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @RADIUS_ATTR_STATE, align 4
  %138 = call i32 @radius_msg_copy_attr(%struct.radius_msg* %133, i64 %136, i32 %137)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load i32, i32* @MSG_INFO, align 4
  %143 = call i32 @wpa_printf(i32 %142, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  br label %198

144:                                              ; preds = %132
  %145 = load i32, i32* %11, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* @MSG_DEBUG, align 4
  %149 = call i32 @wpa_printf(i32 %148, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %123, %118
  %152 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %153 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %152, i32 0, i32 1
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %185

158:                                              ; preds = %151
  %159 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %160 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %158
  %164 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %165 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = call i32* @wpabuf_head(i64 %166)
  store i32* %167, i32** %12, align 8
  %168 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %169 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @wpabuf_len(i64 %170)
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %13, align 8
  br label %174

173:                                              ; preds = %158
  store i32* bitcast ([2 x i8]* @.str.8 to i32*), i32** %12, align 8
  store i64 1, i64* %13, align 8
  br label %174

174:                                              ; preds = %173, %163
  %175 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %176 = load i32, i32* @RADIUS_ATTR_CHARGEABLE_USER_IDENTITY, align 4
  %177 = load i32*, i32** %12, align 8
  %178 = load i64, i64* %13, align 8
  %179 = call i32 @radius_msg_add_attr(%struct.radius_msg* %175, i32 %176, i32* %177, i64 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %174
  %182 = load i32, i32* @MSG_ERROR, align 4
  %183 = call i32 @wpa_printf(i32 %182, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %198

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %151
  %186 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %187 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %190 = load i32, i32* @RADIUS_AUTH, align 4
  %191 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %192 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i64 @radius_client_send(i32 %188, %struct.radius_msg* %189, i32 %190, i32 %193)
  %195 = icmp slt i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %185
  br label %198

197:                                              ; preds = %185
  br label %201

198:                                              ; preds = %196, %181, %141, %115, %106, %91, %81, %67, %48
  %199 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %200 = call i32 @radius_msg_free(%struct.radius_msg* %199)
  br label %201

201:                                              ; preds = %198, %197, %41, %19
  ret void
}

declare dso_local i32 @ieee802_1x_learn_identity(%struct.hostapd_data*, %struct.eapol_state_machine*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @radius_client_get_id(i32) #1

declare dso_local %struct.radius_msg* @radius_msg_new(i32, i32) #1

declare dso_local i64 @radius_msg_make_authenticator(%struct.radius_msg*) #1

declare dso_local i32 @radius_msg_add_attr(%struct.radius_msg*, i32, i32*, i64) #1

declare dso_local i64 @add_common_radius_attr(%struct.hostapd_data*, i32, %struct.sta_info*, %struct.radius_msg*) #1

declare dso_local i64 @add_sqlite_radius_attr(%struct.hostapd_data*, %struct.sta_info*, %struct.radius_msg*, i32) #1

declare dso_local i32 @hostapd_config_get_radius_attr(i32, i32) #1

declare dso_local i32 @radius_msg_add_attr_int32(%struct.radius_msg*, i32, i32) #1

declare dso_local i32 @radius_msg_add_eap(%struct.radius_msg*, i32*, i64) #1

declare dso_local %struct.TYPE_4__* @radius_msg_get_hdr(i64) #1

declare dso_local i32 @radius_msg_copy_attr(%struct.radius_msg*, i64, i32) #1

declare dso_local i32* @wpabuf_head(i64) #1

declare dso_local i32 @wpabuf_len(i64) #1

declare dso_local i64 @radius_client_send(i32, %struct.radius_msg*, i32, i32) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
