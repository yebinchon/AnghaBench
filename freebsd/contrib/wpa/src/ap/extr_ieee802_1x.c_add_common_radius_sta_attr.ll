; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_add_common_radius_sta_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_add_common_radius_sta_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32 }
%struct.hostapd_radius_attr = type { i32 }
%struct.sta_info = type { i64, i32, i64, i64, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.radius_msg = type { i32 }

@RADIUS_ATTR_SERVICE_TYPE = common dso_local global i32 0, align 4
@RADIUS_SERVICE_TYPE_FRAMED = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not add Service-Type\00", align 1
@RADIUS_ATTR_NAS_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Could not add NAS-Port\00", align 1
@RADIUS_802_1X_ADDR_FORMAT = common dso_local global i8* null, align 8
@RADIUS_ATTR_CALLING_STATION_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not add Calling-Station-Id\00", align 1
@WLAN_STA_PREAUTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"IEEE 802.11i Pre-Authentication\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"CONNECT %d%sMbps %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".5\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RADIUS_ATTR_CONNECT_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Could not add Connect-Info\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%016llX\00", align 1
@RADIUS_ATTR_ACCT_SESSION_ID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Could not add Acct-Session-Id\00", align 1
@RADIUS_ATTR_ACCT_MULTI_SESSION_ID = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"Could not add Acct-Multi-Session-Id\00", align 1
@RADIUS_ATTR_MOBILITY_DOMAIN_ID = common dso_local global i32 0, align 4
@WLAN_AUTH_FT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.hostapd_radius_attr*, %struct.sta_info*, %struct.radius_msg*)* @add_common_radius_sta_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_common_radius_sta_attr(%struct.hostapd_data* %0, %struct.hostapd_radius_attr* %1, %struct.sta_info* %2, %struct.radius_msg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.hostapd_radius_attr*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.radius_msg*, align 8
  %10 = alloca [128 x i8], align 16
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store %struct.hostapd_radius_attr* %1, %struct.hostapd_radius_attr** %7, align 8
  store %struct.sta_info* %2, %struct.sta_info** %8, align 8
  store %struct.radius_msg* %3, %struct.radius_msg** %9, align 8
  %11 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %7, align 8
  %12 = load i32, i32* @RADIUS_ATTR_SERVICE_TYPE, align 4
  %13 = call i32 @hostapd_config_get_radius_attr(%struct.hostapd_radius_attr* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %17 = load i32, i32* @RADIUS_ATTR_SERVICE_TYPE, align 4
  %18 = load i64, i64* @RADIUS_SERVICE_TYPE_FRAMED, align 8
  %19 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %16, i32 %17, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @MSG_ERROR, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %208

24:                                               ; preds = %15, %4
  %25 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %7, align 8
  %26 = load i32, i32* @RADIUS_ATTR_NAS_PORT, align 4
  %27 = call i32 @hostapd_config_get_radius_attr(%struct.hostapd_radius_attr* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %24
  %30 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %36 = load i32, i32* @RADIUS_ATTR_NAS_PORT, align 4
  %37 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %35, i32 %36, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @MSG_ERROR, align 4
  %44 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %208

45:                                               ; preds = %34, %29, %24
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %47 = load i8*, i8** @RADIUS_802_1X_ADDR_FORMAT, align 8
  %48 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @MAC2STR(i32 %50)
  %52 = call i32 (i8*, i32, i8*, i64, ...) @os_snprintf(i8* %46, i32 128, i8* %47, i64 %51)
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 127
  store i8 0, i8* %53, align 1
  %54 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %55 = load i32, i32* @RADIUS_ATTR_CALLING_STATION_ID, align 4
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %57 = bitcast i8* %56 to i32*
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %59 = call i32 @os_strlen(i8* %58)
  %60 = call i32 @radius_msg_add_attr(%struct.radius_msg* %54, i32 %55, i32* %57, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %45
  %63 = load i32, i32* @MSG_ERROR, align 4
  %64 = call i32 @wpa_printf(i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %208

65:                                               ; preds = %45
  %66 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @WLAN_STA_PREAUTH, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %74 = call i32 @os_strlcpy(i8* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 128)
  br label %93

75:                                               ; preds = %65
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %77 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %78 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %79 = call i32 @radius_sta_rate(%struct.hostapd_data* %77, %struct.sta_info* %78)
  %80 = sdiv i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %83 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %84 = call i32 @radius_sta_rate(%struct.hostapd_data* %82, %struct.sta_info* %83)
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %89 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %90 = call i32 @radius_mode_txt(%struct.hostapd_data* %89)
  %91 = call i32 (i8*, i32, i8*, i64, ...) @os_snprintf(i8* %76, i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %81, i8* %88, i32 %90)
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 127
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %75, %72
  %94 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %7, align 8
  %95 = load i32, i32* @RADIUS_ATTR_CONNECT_INFO, align 4
  %96 = call i32 @hostapd_config_get_radius_attr(%struct.hostapd_radius_attr* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %93
  %99 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %100 = load i32, i32* @RADIUS_ATTR_CONNECT_INFO, align 4
  %101 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %102 = bitcast i8* %101 to i32*
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %104 = call i32 @os_strlen(i8* %103)
  %105 = call i32 @radius_msg_add_attr(%struct.radius_msg* %99, i32 %100, i32* %102, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* @MSG_ERROR, align 4
  %109 = call i32 @wpa_printf(i32 %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %208

110:                                              ; preds = %98, %93
  %111 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %112 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %110
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %117 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %118 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (i8*, i32, i8*, i64, ...) @os_snprintf(i8* %116, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 %119)
  %121 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %122 = load i32, i32* @RADIUS_ATTR_ACCT_SESSION_ID, align 4
  %123 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %124 = bitcast i8* %123 to i32*
  %125 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %126 = call i32 @os_strlen(i8* %125)
  %127 = call i32 @radius_msg_add_attr(%struct.radius_msg* %121, i32 %122, i32* %124, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %115
  %130 = load i32, i32* @MSG_ERROR, align 4
  %131 = call i32 @wpa_printf(i32 %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %208

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %110
  %134 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %135 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, 2
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %180

141:                                              ; preds = %133
  %142 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %143 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %180, label %148

148:                                              ; preds = %141
  %149 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %150 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %149, i32 0, i32 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = icmp ne %struct.TYPE_3__* %151, null
  br i1 %152, label %153, label %180

153:                                              ; preds = %148
  %154 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %155 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %154, i32 0, i32 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %153
  %161 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %162 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %163 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %162, i32 0, i32 4
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 (i8*, i32, i8*, i64, ...) @os_snprintf(i8* %161, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 %166)
  %168 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %169 = load i32, i32* @RADIUS_ATTR_ACCT_MULTI_SESSION_ID, align 4
  %170 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %171 = bitcast i8* %170 to i32*
  %172 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %173 = call i32 @os_strlen(i8* %172)
  %174 = call i32 @radius_msg_add_attr(%struct.radius_msg* %168, i32 %169, i32* %171, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %160
  %177 = load i32, i32* @MSG_INFO, align 4
  %178 = call i32 @wpa_printf(i32 %177, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %208

179:                                              ; preds = %160
  br label %180

180:                                              ; preds = %179, %153, %148, %141, %133
  %181 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %182 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %181, i32 0, i32 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %180
  %188 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %189 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %188, i32 0, i32 0
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %187, %180
  %195 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %196 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %194
  %200 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %201 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %7, align 8
  %202 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %203 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %204 = call i64 @add_common_radius_sta_attr_rsn(%struct.hostapd_data* %200, %struct.hostapd_radius_attr* %201, %struct.sta_info* %202, %struct.radius_msg* %203)
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  store i32 -1, i32* %5, align 4
  br label %208

207:                                              ; preds = %199, %194, %187
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %207, %206, %176, %129, %107, %62, %42, %21
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32 @hostapd_config_get_radius_attr(%struct.hostapd_radius_attr*, i32) #1

declare dso_local i32 @radius_msg_add_attr_int32(%struct.radius_msg*, i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i64, ...) #1

declare dso_local i64 @MAC2STR(i32) #1

declare dso_local i32 @radius_msg_add_attr(%struct.radius_msg*, i32, i32*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @radius_sta_rate(%struct.hostapd_data*, %struct.sta_info*) #1

declare dso_local i32 @radius_mode_txt(%struct.hostapd_data*) #1

declare dso_local i64 @add_common_radius_sta_attr_rsn(%struct.hostapd_data*, %struct.hostapd_radius_attr*, %struct.sta_info*, %struct.radius_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
