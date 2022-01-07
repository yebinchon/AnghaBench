; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_ieee802_1x_encapsulate_radius.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_ieee802_1x_encapsulate_radius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_test_data = type { i64*, i64, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.radius_msg = type { i32 }
%struct.eap_hdr = type { i64 }
%struct.TYPE_4__ = type { i64 }

@RADIUS_MAX_ATTR_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Encapsulating EAP message into a RADIUS packet\00", align 1
@RADIUS_CODE_ACCESS_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not create net RADIUS packet\0A\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i64 0, align 8
@EAP_TYPE_IDENTITY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Learned identity from EAP-Response-Identity\00", align 1
@RADIUS_ATTR_USER_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Could not add User-Name\0A\00", align 1
@RADIUS_ATTR_EAP_KEY_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Could not add EAP-Key-Name\0A\00", align 1
@RADIUS_ATTR_NAS_IP_ADDRESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Could not add NAS-IP-Address\0A\00", align 1
@RADIUS_802_1X_ADDR_FORMAT = common dso_local global i8* null, align 8
@RADIUS_ATTR_CALLING_STATION_ID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Could not add Calling-Station-Id\0A\00", align 1
@RADIUS_ATTR_FRAMED_MTU = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Could not add Framed-MTU\0A\00", align 1
@RADIUS_ATTR_NAS_PORT_TYPE = common dso_local global i32 0, align 4
@RADIUS_NAS_PORT_TYPE_IEEE_802_11 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"Could not add NAS-Port-Type\0A\00", align 1
@RADIUS_ATTR_SERVICE_TYPE = common dso_local global i32 0, align 4
@RADIUS_SERVICE_TYPE_FRAMED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"Could not add Service-Type\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@RADIUS_ATTR_CONNECT_INFO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"Could not add Connect-Info\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Could not add EAP-Message\0A\00", align 1
@RADIUS_CODE_ACCESS_CHALLENGE = common dso_local global i64 0, align 8
@RADIUS_ATTR_STATE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [63 x i8] c"Could not copy State attribute from previous Access-Challenge\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"  Copied RADIUS State Attribute\00", align 1
@RADIUS_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eapol_test_data*, i64*, i64)* @ieee802_1x_encapsulate_radius to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_encapsulate_radius(%struct.eapol_test_data* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.eapol_test_data*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.radius_msg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.eap_hdr*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.eapol_test_data* %0, %struct.eapol_test_data** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i32, i32* @RADIUS_MAX_ATTR_LEN, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %22 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @radius_client_get_id(i32 %23)
  %25 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %26 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @RADIUS_CODE_ACCESS_REQUEST, align 4
  %28 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %29 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.radius_msg* @radius_msg_new(i32 %27, i32 %30)
  store %struct.radius_msg* %31, %struct.radius_msg** %7, align 8
  %32 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %33 = icmp eq %struct.radius_msg* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %305

36:                                               ; preds = %3
  %37 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %38 = call i32 @radius_msg_make_authenticator(%struct.radius_msg* %37)
  %39 = load i64*, i64** %5, align 8
  %40 = bitcast i64* %39 to %struct.eap_hdr*
  store %struct.eap_hdr* %40, %struct.eap_hdr** %10, align 8
  %41 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %42 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %41, i64 1
  %43 = bitcast %struct.eap_hdr* %42 to i64*
  store i64* %43, i64** %11, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ugt i64 %44, 8
  br i1 %45, label %46, label %98

46:                                               ; preds = %36
  %47 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %48 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EAP_CODE_RESPONSE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %98

52:                                               ; preds = %46
  %53 = load i64*, i64** %11, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %98

58:                                               ; preds = %52
  %59 = load i64*, i64** %11, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %11, align 8
  %61 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %62 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = call i32 @os_free(i64* %63)
  %65 = load i64, i64* %6, align 8
  %66 = sub i64 %65, 8
  %67 = sub i64 %66, 1
  %68 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %69 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %71 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64* @os_malloc(i64 %72)
  %74 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %75 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %74, i32 0, i32 0
  store i64* %73, i64** %75, align 8
  %76 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %77 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %58
  %81 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %82 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64*, i64** %11, align 8
  %85 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %86 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @os_memcpy(i64* %83, i64* %84, i64 %87)
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %91 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %94 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @wpa_hexdump(i32 %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64* %92, i64 %95)
  br label %97

97:                                               ; preds = %80, %58
  br label %98

98:                                               ; preds = %97, %52, %46, %36
  %99 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %100 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = icmp ne i64* %101, null
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %105 = load i32, i32* @RADIUS_ATTR_USER_NAME, align 4
  %106 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %107 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %110 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @radius_msg_add_attr(%struct.radius_msg* %104, i32 %105, i64* %108, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %103
  %116 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %302

117:                                              ; preds = %103, %98
  %118 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %119 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %118, i32 0, i32 8
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %124 = load i32, i32* @RADIUS_ATTR_EAP_KEY_NAME, align 4
  %125 = call i32 @radius_msg_add_attr(%struct.radius_msg* %123, i32 %124, i64* bitcast ([2 x i8]* @.str.4 to i64*), i32 1)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %122
  %128 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %302

129:                                              ; preds = %122, %117
  %130 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %131 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @RADIUS_ATTR_NAS_IP_ADDRESS, align 4
  %134 = call i32 @find_extra_attr(i32 %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %129
  %137 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %138 = load i32, i32* @RADIUS_ATTR_NAS_IP_ADDRESS, align 4
  %139 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %140 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %139, i32 0, i32 7
  %141 = bitcast i32* %140 to i64*
  %142 = call i32 @radius_msg_add_attr(%struct.radius_msg* %137, i32 %138, i64* %141, i32 4)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %136
  %145 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %302

146:                                              ; preds = %136, %129
  %147 = trunc i64 %16 to i32
  %148 = load i8*, i8** @RADIUS_802_1X_ADDR_FORMAT, align 8
  %149 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %150 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %149, i32 0, i32 2
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @MAC2STR(i32 %153)
  %155 = call i32 @os_snprintf(i8* %18, i32 %147, i8* %148, i32 %154)
  %156 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %157 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @RADIUS_ATTR_CALLING_STATION_ID, align 4
  %160 = call i32 @find_extra_attr(i32 %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %146
  %163 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %164 = load i32, i32* @RADIUS_ATTR_CALLING_STATION_ID, align 4
  %165 = bitcast i8* %18 to i64*
  %166 = call i32 @os_strlen(i8* %18)
  %167 = call i32 @radius_msg_add_attr(%struct.radius_msg* %163, i32 %164, i64* %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %162
  %170 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %302

171:                                              ; preds = %162, %146
  %172 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %173 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @RADIUS_ATTR_FRAMED_MTU, align 4
  %176 = call i32 @find_extra_attr(i32 %174, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %171
  %179 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %180 = load i32, i32* @RADIUS_ATTR_FRAMED_MTU, align 4
  %181 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %179, i32 %180, i32 1400)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %178
  %184 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %302

185:                                              ; preds = %178, %171
  %186 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %187 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @RADIUS_ATTR_NAS_PORT_TYPE, align 4
  %190 = call i32 @find_extra_attr(i32 %188, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %185
  %193 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %194 = load i32, i32* @RADIUS_ATTR_NAS_PORT_TYPE, align 4
  %195 = load i32, i32* @RADIUS_NAS_PORT_TYPE_IEEE_802_11, align 4
  %196 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %193, i32 %194, i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %192
  %199 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %302

200:                                              ; preds = %192, %185
  %201 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %202 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @RADIUS_ATTR_SERVICE_TYPE, align 4
  %205 = call i32 @find_extra_attr(i32 %203, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %215, label %207

207:                                              ; preds = %200
  %208 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %209 = load i32, i32* @RADIUS_ATTR_SERVICE_TYPE, align 4
  %210 = load i32, i32* @RADIUS_SERVICE_TYPE_FRAMED, align 4
  %211 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %208, i32 %209, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %207
  %214 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %302

215:                                              ; preds = %207, %200
  %216 = trunc i64 %16 to i32
  %217 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %218 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @os_snprintf(i8* %18, i32 %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %219)
  %221 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %222 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @RADIUS_ATTR_CONNECT_INFO, align 4
  %225 = call i32 @find_extra_attr(i32 %223, i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %236, label %227

227:                                              ; preds = %215
  %228 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %229 = load i32, i32* @RADIUS_ATTR_CONNECT_INFO, align 4
  %230 = bitcast i8* %18 to i64*
  %231 = call i32 @os_strlen(i8* %18)
  %232 = call i32 @radius_msg_add_attr(%struct.radius_msg* %228, i32 %229, i64* %230, i32 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %227
  %235 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %302

236:                                              ; preds = %227, %215
  %237 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %238 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %239 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 8
  %241 = call i64 @add_extra_attrs(%struct.radius_msg* %237, i32 %240)
  %242 = icmp slt i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %302

244:                                              ; preds = %236
  %245 = load i64*, i64** %5, align 8
  %246 = icmp ne i64* %245, null
  br i1 %246, label %247, label %255

247:                                              ; preds = %244
  %248 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %249 = load i64*, i64** %5, align 8
  %250 = load i64, i64* %6, align 8
  %251 = call i32 @radius_msg_add_eap(%struct.radius_msg* %248, i64* %249, i64 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %247
  %254 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  br label %302

255:                                              ; preds = %247, %244
  %256 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %257 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %287

260:                                              ; preds = %255
  %261 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %262 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = call %struct.TYPE_4__* @radius_msg_get_hdr(i32 %263)
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @RADIUS_CODE_ACCESS_CHALLENGE, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %287

269:                                              ; preds = %260
  %270 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %271 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %272 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @RADIUS_ATTR_STATE, align 4
  %275 = call i32 @radius_msg_copy_attr(%struct.radius_msg* %270, i32 %273, i32 %274)
  store i32 %275, i32* %13, align 4
  %276 = load i32, i32* %13, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %269
  %279 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i64 0, i64 0))
  br label %302

280:                                              ; preds = %269
  %281 = load i32, i32* %13, align 4
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load i32, i32* @MSG_DEBUG, align 4
  %285 = call i32 @wpa_printf(i32 %284, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  br label %286

286:                                              ; preds = %283, %280
  br label %287

287:                                              ; preds = %286, %260, %255
  %288 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %289 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %292 = load i32, i32* @RADIUS_AUTH, align 4
  %293 = load %struct.eapol_test_data*, %struct.eapol_test_data** %4, align 8
  %294 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %293, i32 0, i32 2
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i64 @radius_client_send(i32 %290, %struct.radius_msg* %291, i32 %292, i32 %297)
  %299 = icmp slt i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %287
  br label %302

301:                                              ; preds = %287
  store i32 1, i32* %12, align 4
  br label %305

302:                                              ; preds = %300, %278, %253, %243, %234, %213, %198, %183, %169, %144, %127, %115
  %303 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %304 = call i32 @radius_msg_free(%struct.radius_msg* %303)
  store i32 0, i32* %12, align 4
  br label %305

305:                                              ; preds = %302, %301, %34
  %306 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %306)
  %307 = load i32, i32* %12, align 4
  switch i32 %307, label %309 [
    i32 0, label %308
    i32 1, label %308
  ]

308:                                              ; preds = %305, %305
  ret void

309:                                              ; preds = %305
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @radius_client_get_id(i32) #2

declare dso_local %struct.radius_msg* @radius_msg_new(i32, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @radius_msg_make_authenticator(%struct.radius_msg*) #2

declare dso_local i32 @os_free(i64*) #2

declare dso_local i64* @os_malloc(i64) #2

declare dso_local i32 @os_memcpy(i64*, i64*, i64) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #2

declare dso_local i32 @radius_msg_add_attr(%struct.radius_msg*, i32, i64*, i32) #2

declare dso_local i32 @find_extra_attr(i32, i32) #2

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @MAC2STR(i32) #2

declare dso_local i32 @os_strlen(i8*) #2

declare dso_local i32 @radius_msg_add_attr_int32(%struct.radius_msg*, i32, i32) #2

declare dso_local i64 @add_extra_attrs(%struct.radius_msg*, i32) #2

declare dso_local i32 @radius_msg_add_eap(%struct.radius_msg*, i64*, i64) #2

declare dso_local %struct.TYPE_4__* @radius_msg_get_hdr(i32) #2

declare dso_local i32 @radius_msg_copy_attr(%struct.radius_msg*, i32, i32) #2

declare dso_local i64 @radius_client_send(i32, %struct.radius_msg*, i32, i32) #2

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
