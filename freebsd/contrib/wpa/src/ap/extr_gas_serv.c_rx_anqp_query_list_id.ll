; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_rx_anqp_query_list_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_rx_anqp_query_list_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.anqp_query_info = type { i64, i32* }

@ANQP_REQ_CAPABILITY_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Capability List\00", align 1
@ANQP_REQ_VENUE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Venue Name\00", align 1
@ANQP_REQ_EMERGENCY_CALL_NUMBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Emergency Call Number\00", align 1
@ANQP_REQ_NETWORK_AUTH_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Network Auth Type\00", align 1
@ANQP_REQ_ROAMING_CONSORTIUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Roaming Consortium\00", align 1
@ANQP_REQ_IP_ADDR_TYPE_AVAILABILITY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"IP Addr Type Availability\00", align 1
@ANQP_REQ_NAI_REALM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"NAI Realm\00", align 1
@ANQP_REQ_3GPP_CELLULAR_NETWORK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"3GPP Cellular Network\00", align 1
@ANQP_REQ_AP_GEOSPATIAL_LOCATION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"AP Geospatial Location\00", align 1
@ANQP_REQ_AP_CIVIC_LOCATION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"AP Civic Location\00", align 1
@ANQP_REQ_AP_LOCATION_PUBLIC_URI = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"AP Location Public URI\00", align 1
@ANQP_REQ_DOMAIN_NAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"Domain Name\00", align 1
@ANQP_REQ_EMERGENCY_ALERT_URI = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"Emergency Alert URI\00", align 1
@ANQP_REQ_TDLS_CAPABILITY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"TDLS Capability\00", align 1
@ANQP_REQ_EMERGENCY_NAI = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"Emergency NAI\00", align 1
@ANQP_VENUE_URL = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"ANQP: Venue URL (local)\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"ANQP: Unsupported Info Id %u\00", align 1
@ANQP_MAX_EXTRA_REQ = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [58 x i8] c"ANQP: No more room for extra requests - ignore Info Id %u\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"ANQP: Info Id %u (local)\00", align 1
@ANQP_FILS_REALM_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, i32, %struct.anqp_query_info*)* @rx_anqp_query_list_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_anqp_query_list_id(%struct.hostapd_data* %0, i32 %1, %struct.anqp_query_info* %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.anqp_query_info*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.anqp_query_info* %2, %struct.anqp_query_info** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %150 [
    i32 138, label %8
    i32 128, label %12
    i32 135, label %23
    i32 131, label %32
    i32 130, label %43
    i32 133, label %54
    i32 132, label %63
    i32 142, label %74
    i32 140, label %85
    i32 141, label %94
    i32 139, label %103
    i32 137, label %112
    i32 136, label %123
    i32 129, label %132
    i32 134, label %141
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* @ANQP_REQ_CAPABILITY_LIST, align 4
  %10 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %11 = call i32 @set_anqp_req(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 1, %struct.anqp_query_info* %10)
  br label %200

12:                                               ; preds = %3
  %13 = load i32, i32* @ANQP_REQ_VENUE_NAME, align 4
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %22 = call i32 @set_anqp_req(i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %20, %struct.anqp_query_info* %21)
  br label %200

23:                                               ; preds = %3
  %24 = load i32, i32* @ANQP_REQ_EMERGENCY_CALL_NUMBER, align 4
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32* @get_anqp_elem(%struct.hostapd_data* %25, i32 %26)
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %31 = call i32 @set_anqp_req(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %29, %struct.anqp_query_info* %30)
  br label %200

32:                                               ; preds = %3
  %33 = load i32, i32* @ANQP_REQ_NETWORK_AUTH_TYPE, align 4
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %35 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 7
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %42 = call i32 @set_anqp_req(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %40, %struct.anqp_query_info* %41)
  br label %200

43:                                               ; preds = %3
  %44 = load i32, i32* @ANQP_REQ_ROAMING_CONSORTIUM, align 4
  %45 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %46 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %53 = call i32 @set_anqp_req(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %51, %struct.anqp_query_info* %52)
  br label %200

54:                                               ; preds = %3
  %55 = load i32, i32* @ANQP_REQ_IP_ADDR_TYPE_AVAILABILITY, align 4
  %56 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %57 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %62 = call i32 @set_anqp_req(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %60, %struct.anqp_query_info* %61)
  br label %200

63:                                               ; preds = %3
  %64 = load i32, i32* @ANQP_REQ_NAI_REALM, align 4
  %65 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %66 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %73 = call i32 @set_anqp_req(i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %71, %struct.anqp_query_info* %72)
  br label %200

74:                                               ; preds = %3
  %75 = load i32, i32* @ANQP_REQ_3GPP_CELLULAR_NETWORK, align 4
  %76 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %77 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  %82 = zext i1 %81 to i32
  %83 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %84 = call i32 @set_anqp_req(i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %82, %struct.anqp_query_info* %83)
  br label %200

85:                                               ; preds = %3
  %86 = load i32, i32* @ANQP_REQ_AP_GEOSPATIAL_LOCATION, align 4
  %87 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32* @get_anqp_elem(%struct.hostapd_data* %87, i32 %88)
  %90 = icmp ne i32* %89, null
  %91 = zext i1 %90 to i32
  %92 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %93 = call i32 @set_anqp_req(i32 %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %91, %struct.anqp_query_info* %92)
  br label %200

94:                                               ; preds = %3
  %95 = load i32, i32* @ANQP_REQ_AP_CIVIC_LOCATION, align 4
  %96 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32* @get_anqp_elem(%struct.hostapd_data* %96, i32 %97)
  %99 = icmp ne i32* %98, null
  %100 = zext i1 %99 to i32
  %101 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %102 = call i32 @set_anqp_req(i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %100, %struct.anqp_query_info* %101)
  br label %200

103:                                              ; preds = %3
  %104 = load i32, i32* @ANQP_REQ_AP_LOCATION_PUBLIC_URI, align 4
  %105 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32* @get_anqp_elem(%struct.hostapd_data* %105, i32 %106)
  %108 = icmp ne i32* %107, null
  %109 = zext i1 %108 to i32
  %110 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %111 = call i32 @set_anqp_req(i32 %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %109, %struct.anqp_query_info* %110)
  br label %200

112:                                              ; preds = %3
  %113 = load i32, i32* @ANQP_REQ_DOMAIN_NAME, align 4
  %114 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %115 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  %120 = zext i1 %119 to i32
  %121 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %122 = call i32 @set_anqp_req(i32 %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %120, %struct.anqp_query_info* %121)
  br label %200

123:                                              ; preds = %3
  %124 = load i32, i32* @ANQP_REQ_EMERGENCY_ALERT_URI, align 4
  %125 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32* @get_anqp_elem(%struct.hostapd_data* %125, i32 %126)
  %128 = icmp ne i32* %127, null
  %129 = zext i1 %128 to i32
  %130 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %131 = call i32 @set_anqp_req(i32 %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %129, %struct.anqp_query_info* %130)
  br label %200

132:                                              ; preds = %3
  %133 = load i32, i32* @ANQP_REQ_TDLS_CAPABILITY, align 4
  %134 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32* @get_anqp_elem(%struct.hostapd_data* %134, i32 %135)
  %137 = icmp ne i32* %136, null
  %138 = zext i1 %137 to i32
  %139 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %140 = call i32 @set_anqp_req(i32 %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %138, %struct.anqp_query_info* %139)
  br label %200

141:                                              ; preds = %3
  %142 = load i32, i32* @ANQP_REQ_EMERGENCY_NAI, align 4
  %143 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32* @get_anqp_elem(%struct.hostapd_data* %143, i32 %144)
  %146 = icmp ne i32* %145, null
  %147 = zext i1 %146 to i32
  %148 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %149 = call i32 @set_anqp_req(i32 %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %147, %struct.anqp_query_info* %148)
  br label %200

150:                                              ; preds = %3
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @ANQP_VENUE_URL, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %150
  %155 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %156 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load i32, i32* @MSG_DEBUG, align 4
  %163 = call i32 (i32, i8*, ...) @wpa_printf(i32 %162, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  br label %174

164:                                              ; preds = %154, %150
  %165 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %166 = load i32, i32* %5, align 4
  %167 = call i32* @get_anqp_elem(%struct.hostapd_data* %165, i32 %166)
  %168 = icmp ne i32* %167, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = load i32, i32* @MSG_DEBUG, align 4
  %171 = load i32, i32* %5, align 4
  %172 = call i32 (i32, i8*, ...) @wpa_printf(i32 %170, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 %171)
  br label %200

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173, %161
  %175 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %176 = getelementptr inbounds %struct.anqp_query_info, %struct.anqp_query_info* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @ANQP_MAX_EXTRA_REQ, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i32, i32* @MSG_DEBUG, align 4
  %182 = load i32, i32* %5, align 4
  %183 = call i32 (i32, i8*, ...) @wpa_printf(i32 %181, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 %182)
  br label %200

184:                                              ; preds = %174
  %185 = load i32, i32* @MSG_DEBUG, align 4
  %186 = load i32, i32* %5, align 4
  %187 = call i32 (i32, i8*, ...) @wpa_printf(i32 %185, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %190 = getelementptr inbounds %struct.anqp_query_info, %struct.anqp_query_info* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %193 = getelementptr inbounds %struct.anqp_query_info, %struct.anqp_query_info* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  store i32 %188, i32* %195, align 4
  %196 = load %struct.anqp_query_info*, %struct.anqp_query_info** %6, align 8
  %197 = getelementptr inbounds %struct.anqp_query_info, %struct.anqp_query_info* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %197, align 8
  br label %200

200:                                              ; preds = %184, %180, %169, %141, %132, %123, %112, %103, %94, %85, %74, %63, %54, %43, %32, %23, %12, %8
  ret void
}

declare dso_local i32 @set_anqp_req(i32, i8*, i32, %struct.anqp_query_info*) #1

declare dso_local i32* @get_anqp_elem(%struct.hostapd_data*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
