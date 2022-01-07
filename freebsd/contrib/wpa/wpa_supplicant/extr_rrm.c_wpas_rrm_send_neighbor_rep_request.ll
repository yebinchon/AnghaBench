; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_send_neighbor_rep_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_send_neighbor_rep_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { void (i8*, %struct.wpabuf*)*, i32, i8*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.wpa_ssid_value = type { i32, i32 }
%struct.wpabuf = type { i32 }

@WPA_COMPLETED = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"RRM: No connection, no RRM.\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"RRM: No RRM in current connection.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WLAN_EID_RRM_ENABLED_CAPABILITIES = common dso_local global i32 0, align 4
@IEEE80211_CAP_RRM = common dso_local global i32 0, align 4
@WLAN_RRM_CAPS_NEIGHBOR_REPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"RRM: No network support for Neighbor Report.\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"RRM: Currently handling previous Neighbor Report.\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MEASURE_REQUEST_LCI_LEN = common dso_local global i32 0, align 4
@MEASURE_REQUEST_CIVIC_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"RRM: Failed to allocate Neighbor Report Request\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"RRM: Neighbor report request (for %s), token=%d\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WLAN_ACTION_RADIO_MEASUREMENT = common dso_local global i32 0, align 4
@WLAN_RRM_NEIGHBOR_REPORT_REQUEST = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@WLAN_EID_MEASURE_REQUEST = common dso_local global i32 0, align 4
@MEASURE_TYPE_LCI = common dso_local global i32 0, align 4
@LOCATION_SUBJECT_REMOTE = common dso_local global i32 0, align 4
@LCI_REQ_SUBELEM_MAX_AGE = common dso_local global i32 0, align 4
@MEASURE_TYPE_LOCATION_CIVIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"RRM: Failed to send Neighbor Report Request\00", align 1
@ECANCELED = common dso_local global i32 0, align 4
@RRM_NEIGHBOR_REPORT_TIMEOUT = common dso_local global i32 0, align 4
@wpas_rrm_neighbor_rep_timeout_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_rrm_send_neighbor_rep_request(%struct.wpa_supplicant* %0, %struct.wpa_ssid_value* %1, i32 %2, i32 %3, void (i8*, %struct.wpabuf*)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca %struct.wpa_ssid_value*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca void (i8*, %struct.wpabuf*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i32*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %8, align 8
  store %struct.wpa_ssid_value* %1, %struct.wpa_ssid_value** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store void (i8*, %struct.wpabuf*)* %4, void (i8*, %struct.wpabuf*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WPA_COMPLETED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %6
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21, %6
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOTCONN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %272

31:                                               ; preds = %21
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %272

42:                                               ; preds = %31
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 5
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* @WLAN_EID_RRM_ENABLED_CAPABILITIES, align 4
  %47 = call i32* @wpa_bss_get_ie(%struct.TYPE_3__* %45, i32 %46)
  store i32* %47, i32** %15, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %42
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 5
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_CAP_RRM, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load i32*, i32** %15, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @WLAN_RRM_CAPS_NEIGHBOR_REPORT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %59, %50, %42
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @EOPNOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %272

71:                                               ; preds = %59
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %73 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load void (i8*, %struct.wpabuf*)*, void (i8*, %struct.wpabuf*)** %74, align 8
  %76 = icmp ne void (i8*, %struct.wpabuf*)* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %272

82:                                               ; preds = %71
  %83 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %84 = icmp ne %struct.wpa_ssid_value* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %87 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 2, %88
  br label %91

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %85
  %92 = phi i32 [ %89, %85 ], [ 0, %90 ]
  %93 = add nsw i32 3, %92
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @MEASURE_REQUEST_LCI_LEN, align 4
  %98 = add nsw i32 2, %97
  br label %100

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %96
  %101 = phi i32 [ %98, %96 ], [ 0, %99 ]
  %102 = add nsw i32 %93, %101
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @MEASURE_REQUEST_CIVIC_LEN, align 4
  %107 = add nsw i32 2, %106
  br label %109

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %105
  %110 = phi i32 [ %107, %105 ], [ 0, %108 ]
  %111 = add nsw i32 %102, %110
  %112 = call %struct.wpabuf* @wpabuf_alloc(i32 %111)
  store %struct.wpabuf* %112, %struct.wpabuf** %14, align 8
  %113 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %114 = icmp eq %struct.wpabuf* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load i32, i32* @MSG_DEBUG, align 4
  %117 = call i32 (i32, i8*, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %7, align 4
  br label %272

120:                                              ; preds = %109
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %123 = icmp ne %struct.wpa_ssid_value* %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %126 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %129 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @wpa_ssid_txt(i32 %127, i32 %130)
  br label %133

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132, %124
  %134 = phi i8* [ %131, %124 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %132 ]
  %135 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %136 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i32, i8*, ...) @wpa_printf(i32 %121, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %134, i32 %138)
  %140 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %141 = load i32, i32* @WLAN_ACTION_RADIO_MEASUREMENT, align 4
  %142 = call i32 @wpabuf_put_u8(%struct.wpabuf* %140, i32 %141)
  %143 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %144 = load i32, i32* @WLAN_RRM_NEIGHBOR_REPORT_REQUEST, align 4
  %145 = call i32 @wpabuf_put_u8(%struct.wpabuf* %143, i32 %144)
  %146 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %147 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %148 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @wpabuf_put_u8(%struct.wpabuf* %146, i32 %150)
  %152 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %153 = icmp ne %struct.wpa_ssid_value* %152, null
  br i1 %153, label %154, label %171

154:                                              ; preds = %133
  %155 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %156 = load i32, i32* @WLAN_EID_SSID, align 4
  %157 = call i32 @wpabuf_put_u8(%struct.wpabuf* %155, i32 %156)
  %158 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %159 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %160 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @wpabuf_put_u8(%struct.wpabuf* %158, i32 %161)
  %163 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %164 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %165 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %168 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @wpabuf_put_data(%struct.wpabuf* %163, i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %154, %133
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %198

174:                                              ; preds = %171
  %175 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %176 = load i32, i32* @WLAN_EID_MEASURE_REQUEST, align 4
  %177 = call i32 @wpabuf_put_u8(%struct.wpabuf* %175, i32 %176)
  %178 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %179 = load i32, i32* @MEASURE_REQUEST_LCI_LEN, align 4
  %180 = call i32 @wpabuf_put_u8(%struct.wpabuf* %178, i32 %179)
  %181 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %182 = call i32 @wpabuf_put_u8(%struct.wpabuf* %181, i32 1)
  %183 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %184 = call i32 @wpabuf_put_u8(%struct.wpabuf* %183, i32 0)
  %185 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %186 = load i32, i32* @MEASURE_TYPE_LCI, align 4
  %187 = call i32 @wpabuf_put_u8(%struct.wpabuf* %185, i32 %186)
  %188 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %189 = load i32, i32* @LOCATION_SUBJECT_REMOTE, align 4
  %190 = call i32 @wpabuf_put_u8(%struct.wpabuf* %188, i32 %189)
  %191 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %192 = load i32, i32* @LCI_REQ_SUBELEM_MAX_AGE, align 4
  %193 = call i32 @wpabuf_put_u8(%struct.wpabuf* %191, i32 %192)
  %194 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %195 = call i32 @wpabuf_put_u8(%struct.wpabuf* %194, i32 2)
  %196 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %197 = call i32 @wpabuf_put_le16(%struct.wpabuf* %196, i32 65535)
  br label %198

198:                                              ; preds = %174, %171
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %224

201:                                              ; preds = %198
  %202 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %203 = load i32, i32* @WLAN_EID_MEASURE_REQUEST, align 4
  %204 = call i32 @wpabuf_put_u8(%struct.wpabuf* %202, i32 %203)
  %205 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %206 = load i32, i32* @MEASURE_REQUEST_CIVIC_LEN, align 4
  %207 = call i32 @wpabuf_put_u8(%struct.wpabuf* %205, i32 %206)
  %208 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %209 = call i32 @wpabuf_put_u8(%struct.wpabuf* %208, i32 2)
  %210 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %211 = call i32 @wpabuf_put_u8(%struct.wpabuf* %210, i32 0)
  %212 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %213 = load i32, i32* @MEASURE_TYPE_LOCATION_CIVIC, align 4
  %214 = call i32 @wpabuf_put_u8(%struct.wpabuf* %212, i32 %213)
  %215 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %216 = load i32, i32* @LOCATION_SUBJECT_REMOTE, align 4
  %217 = call i32 @wpabuf_put_u8(%struct.wpabuf* %215, i32 %216)
  %218 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %219 = call i32 @wpabuf_put_u8(%struct.wpabuf* %218, i32 0)
  %220 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %221 = call i32 @wpabuf_put_u8(%struct.wpabuf* %220, i32 0)
  %222 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %223 = call i32 @wpabuf_put_le16(%struct.wpabuf* %222, i32 0)
  br label %224

224:                                              ; preds = %201, %198
  %225 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %226 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 8
  %230 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %231 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %232 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %235 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %238 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %241 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %244 = call i32 @wpabuf_head(%struct.wpabuf* %243)
  %245 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %246 = call i32 @wpabuf_len(%struct.wpabuf* %245)
  %247 = call i64 @wpa_drv_send_action(%struct.wpa_supplicant* %230, i32 %233, i32 0, i32 %236, i32 %239, i32 %242, i32 %244, i32 %246, i32 0)
  %248 = icmp slt i64 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %224
  %250 = load i32, i32* @MSG_DEBUG, align 4
  %251 = call i32 (i32, i8*, ...) @wpa_printf(i32 %250, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %252 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %253 = call i32 @wpabuf_free(%struct.wpabuf* %252)
  %254 = load i32, i32* @ECANCELED, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %7, align 4
  br label %272

256:                                              ; preds = %224
  %257 = load i8*, i8** %13, align 8
  %258 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %259 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 2
  store i8* %257, i8** %260, align 8
  %261 = load void (i8*, %struct.wpabuf*)*, void (i8*, %struct.wpabuf*)** %12, align 8
  %262 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %263 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  store void (i8*, %struct.wpabuf*)* %261, void (i8*, %struct.wpabuf*)** %264, align 8
  %265 = load i32, i32* @RRM_NEIGHBOR_REPORT_TIMEOUT, align 4
  %266 = load i32, i32* @wpas_rrm_neighbor_rep_timeout_handler, align 4
  %267 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %268 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %267, i32 0, i32 1
  %269 = call i32 @eloop_register_timeout(i32 %265, i32 0, i32 %266, %struct.TYPE_4__* %268, i32* null)
  %270 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %271 = call i32 @wpabuf_free(%struct.wpabuf* %270)
  store i32 0, i32* %7, align 4
  br label %272

272:                                              ; preds = %256, %249, %115, %77, %66, %37, %26
  %273 = load i32, i32* %7, align 4
  ret i32 %273
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @wpa_bss_get_ie(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i8* @wpa_ssid_txt(i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i64 @wpa_drv_send_action(%struct.wpa_supplicant*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
