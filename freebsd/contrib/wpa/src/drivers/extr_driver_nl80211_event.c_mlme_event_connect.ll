; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32, i32*, i32*, i32, i32*, i32, i32, %struct.TYPE_7__*, i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nlattr = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i8*, i64, i64, i8*, i8*, i8*, i32, i8*, i8* }
%struct.TYPE_6__ = type { i32*, i32*, i8*, i64, i32, i64, i8* }

@WPA_DRIVER_FLAGS_SME = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"nl80211: Ignore connect event (cmd=%d) when using userspace SME\00", align 1
@WLAN_STATUS_SUCCESS = common dso_local global i64 0, align 8
@NL80211_CMD_CONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"nl80211: Connect event (status=%u ignore_next_local_disconnect=%d)\00", align 1
@NL80211_CMD_ROAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"nl80211: Roam event\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [72 x i8] c"nl80211: Ignore connection failure event triggered during reassociation\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"scan\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"assoc\00", align 1
@EVENT_ASSOC_REJECT = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"nl80211: Set drv->ssid based on req_ie to '%s'\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"nl80211: Set drv->ssid based on scan res info to '%s'\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"nl80211: connection authorized\00", align 1
@EVENT_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, i32, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*)* @mlme_event_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlme_event_connect(%struct.wpa_driver_nl80211_data* %0, i32 %1, %struct.nlattr* %2, %struct.nlattr* %3, %struct.nlattr* %4, %struct.nlattr* %5, %struct.nlattr* %6, %struct.nlattr* %7, %struct.nlattr* %8, %struct.nlattr* %9, %struct.nlattr* %10, %struct.nlattr* %11, %struct.nlattr* %12, %struct.nlattr* %13, %struct.nlattr* %14, %struct.nlattr* %15) #0 {
  %17 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.nlattr*, align 8
  %20 = alloca %struct.nlattr*, align 8
  %21 = alloca %struct.nlattr*, align 8
  %22 = alloca %struct.nlattr*, align 8
  %23 = alloca %struct.nlattr*, align 8
  %24 = alloca %struct.nlattr*, align 8
  %25 = alloca %struct.nlattr*, align 8
  %26 = alloca %struct.nlattr*, align 8
  %27 = alloca %struct.nlattr*, align 8
  %28 = alloca %struct.nlattr*, align 8
  %29 = alloca %struct.nlattr*, align 8
  %30 = alloca %struct.nlattr*, align 8
  %31 = alloca %struct.nlattr*, align 8
  %32 = alloca %struct.nlattr*, align 8
  %33 = alloca %union.wpa_event_data, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %17, align 8
  store i32 %1, i32* %18, align 4
  store %struct.nlattr* %2, %struct.nlattr** %19, align 8
  store %struct.nlattr* %3, %struct.nlattr** %20, align 8
  store %struct.nlattr* %4, %struct.nlattr** %21, align 8
  store %struct.nlattr* %5, %struct.nlattr** %22, align 8
  store %struct.nlattr* %6, %struct.nlattr** %23, align 8
  store %struct.nlattr* %7, %struct.nlattr** %24, align 8
  store %struct.nlattr* %8, %struct.nlattr** %25, align 8
  store %struct.nlattr* %9, %struct.nlattr** %26, align 8
  store %struct.nlattr* %10, %struct.nlattr** %27, align 8
  store %struct.nlattr* %11, %struct.nlattr** %28, align 8
  store %struct.nlattr* %12, %struct.nlattr** %29, align 8
  store %struct.nlattr* %13, %struct.nlattr** %30, align 8
  store %struct.nlattr* %14, %struct.nlattr** %31, align 8
  store %struct.nlattr* %15, %struct.nlattr** %32, align 8
  store i32* null, i32** %34, align 8
  %38 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %39 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %38, i32 0, i32 11
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @WPA_DRIVER_FLAGS_SME, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %16
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load i32, i32* %18, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %406

49:                                               ; preds = %16
  %50 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %51 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %50, i32 0, i32 10
  store i64 0, i64* %51, align 8
  %52 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %56 = call i64 @nla_get_u16(%struct.nlattr* %55)
  br label %59

57:                                               ; preds = %49
  %58 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i64 [ %56, %54 ], [ %58, %57 ]
  store i64 %60, i64* %35, align 8
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* @NL80211_CMD_CONNECT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = load i64, i64* %35, align 8
  %67 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %68 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32 %69)
  br label %79

71:                                               ; preds = %59
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* @NL80211_CMD_ROAM, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %71
  br label %79

79:                                               ; preds = %78, %64
  %80 = call i32 @os_memset(%union.wpa_event_data* %33, i32 0, i32 136)
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* @NL80211_CMD_CONNECT, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %177

84:                                               ; preds = %79
  %85 = load i64, i64* %35, align 8
  %86 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %177

88:                                               ; preds = %84
  %89 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %90 = icmp ne %struct.nlattr* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %93 = call i32* @nla_data(%struct.nlattr* %92)
  %94 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_6__*
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32* %93, i32** %95, align 8
  br label %96

96:                                               ; preds = %91, %88
  %97 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %98 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %96
  %102 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %103 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %102, i32 0, i32 9
  store i32 0, i32* %103, align 4
  %104 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_6__*
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %101
  %109 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_6__*
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %113 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ETH_ALEN, align 4
  %116 = call i64 @os_memcmp(i32* %111, i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %108, %101
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = call i32 (i32, i8*, ...) @wpa_printf(i32 %119, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0))
  br label %406

121:                                              ; preds = %108
  br label %122

122:                                              ; preds = %121, %96
  %123 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %124 = icmp ne %struct.nlattr* %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %127 = call i32* @nla_data(%struct.nlattr* %126)
  %128 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_6__*
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  store i32* %127, i32** %129, align 8
  %130 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %131 = call i8* @nla_len(%struct.nlattr* %130)
  %132 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_6__*
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 6
  store i8* %131, i8** %133, align 8
  br label %134

134:                                              ; preds = %125, %122
  %135 = load i64, i64* %35, align 8
  %136 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_6__*
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 5
  store i64 %135, i64* %137, align 8
  %138 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %139 = icmp ne %struct.nlattr* %138, null
  %140 = zext i1 %139 to i32
  %141 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_6__*
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  %143 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %144 = icmp ne %struct.nlattr* %143, null
  br i1 %144, label %145, label %163

145:                                              ; preds = %134
  %146 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %147 = icmp ne %struct.nlattr* %146, null
  br i1 %147, label %148, label %163

148:                                              ; preds = %145
  %149 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %150 = call i32 @nla_get_u32(%struct.nlattr* %149)
  store i32 %150, i32* %37, align 4
  %151 = load i32, i32* %37, align 4
  switch i32 %151, label %161 [
    i32 128, label %152
    i32 129, label %155
    i32 130, label %158
  ]

152:                                              ; preds = %148
  %153 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_6__*
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %154, align 8
  br label %162

155:                                              ; preds = %148
  %156 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_6__*
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %157, align 8
  br label %162

158:                                              ; preds = %148
  %159 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_6__*
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %160, align 8
  br label %162

161:                                              ; preds = %148
  br label %162

162:                                              ; preds = %161, %158, %155, %152
  br label %163

163:                                              ; preds = %162, %145, %134
  %164 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %165 = icmp ne %struct.nlattr* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %168 = call i64 @nla_get_u16(%struct.nlattr* %167)
  %169 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_6__*
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 3
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %166, %163
  %172 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %173 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @EVENT_ASSOC_REJECT, align 4
  %176 = call i32 @wpa_supplicant_event(i32 %174, i32 %175, %union.wpa_event_data* %33)
  br label %406

177:                                              ; preds = %84, %79
  %178 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %179 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %178, i32 0, i32 0
  store i32 1, i32* %179, align 8
  %180 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %181 = icmp ne %struct.nlattr* %180, null
  br i1 %181, label %182, label %198

182:                                              ; preds = %177
  %183 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %184 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %187 = call i32* @nla_data(%struct.nlattr* %186)
  %188 = load i32, i32* @ETH_ALEN, align 4
  %189 = call i32 @os_memcpy(i32* %185, i32* %187, i32 %188)
  %190 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %191 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %194 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* @ETH_ALEN, align 4
  %197 = call i32 @os_memcpy(i32* %192, i32* %195, i32 %196)
  br label %198

198:                                              ; preds = %182, %177
  %199 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %200 = icmp ne %struct.nlattr* %199, null
  br i1 %200, label %201, label %260

201:                                              ; preds = %198
  %202 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %203 = call i32* @nla_data(%struct.nlattr* %202)
  %204 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  store i32* %203, i32** %205, align 8
  %206 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %207 = call i8* @nla_len(%struct.nlattr* %206)
  %208 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 16
  store i8* %207, i8** %209, align 8
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* @NL80211_CMD_ROAM, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %259

213:                                              ; preds = %201
  %214 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 16
  %219 = load i8*, i8** %218, align 8
  %220 = load i32, i32* @WLAN_EID_SSID, align 4
  %221 = call i32* @get_ie(i32* %216, i8* %219, i32 %220)
  store i32* %221, i32** %34, align 8
  %222 = load i32*, i32** %34, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %258

224:                                              ; preds = %213
  %225 = load i32*, i32** %34, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %258

229:                                              ; preds = %224
  %230 = load i32*, i32** %34, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp sle i32 %232, 32
  br i1 %233, label %234, label %258

234:                                              ; preds = %229
  %235 = load i32*, i32** %34, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %239 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %238, i32 0, i32 3
  store i32 %237, i32* %239, align 8
  %240 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %241 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %240, i32 0, i32 4
  %242 = load i32*, i32** %241, align 8
  %243 = load i32*, i32** %34, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 2
  %245 = load i32*, i32** %34, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @os_memcpy(i32* %242, i32* %244, i32 %247)
  %249 = load i32, i32* @MSG_DEBUG, align 4
  %250 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %251 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %250, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %254 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @wpa_ssid_txt(i32* %252, i32 %255)
  %257 = call i32 (i32, i8*, ...) @wpa_printf(i32 %249, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %256)
  br label %258

258:                                              ; preds = %234, %229, %224, %213
  br label %259

259:                                              ; preds = %258, %201
  br label %260

260:                                              ; preds = %259, %198
  %261 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %262 = icmp ne %struct.nlattr* %261, null
  br i1 %262, label %263, label %272

263:                                              ; preds = %260
  %264 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %265 = call i32* @nla_data(%struct.nlattr* %264)
  %266 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 1
  store i32* %265, i32** %267, align 8
  %268 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %269 = call i8* @nla_len(%struct.nlattr* %268)
  %270 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 15
  store i8* %269, i8** %271, align 8
  br label %272

272:                                              ; preds = %263, %260
  %273 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %274 = call i32 @nl80211_get_assoc_freq(%struct.wpa_driver_nl80211_data* %273)
  %275 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 14
  store i32 %274, i32* %276, align 8
  %277 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %278 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %281 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %280, i32 0, i32 7
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  store i32 %279, i32* %283, align 4
  %284 = load i32*, i32** %34, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %296

286:                                              ; preds = %272
  %287 = load i32*, i32** %34, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  %289 = load i32, i32* %288, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %286
  %292 = load i32*, i32** %34, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp sgt i32 %294, 32
  br i1 %295, label %296, label %316

296:                                              ; preds = %291, %286, %272
  %297 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %298 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %299 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %298, i32 0, i32 4
  %300 = load i32*, i32** %299, align 8
  %301 = call i32 @nl80211_get_assoc_ssid(%struct.wpa_driver_nl80211_data* %297, i32* %300)
  store i32 %301, i32* %36, align 4
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %303, label %316

303:                                              ; preds = %296
  %304 = load i32, i32* %36, align 4
  %305 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %306 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %305, i32 0, i32 3
  store i32 %304, i32* %306, align 8
  %307 = load i32, i32* @MSG_DEBUG, align 4
  %308 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %309 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %308, i32 0, i32 4
  %310 = load i32*, i32** %309, align 8
  %311 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %312 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @wpa_ssid_txt(i32* %310, i32 %313)
  %315 = call i32 (i32, i8*, ...) @wpa_printf(i32 %307, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 %314)
  br label %316

316:                                              ; preds = %303, %296, %291
  %317 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %318 = icmp ne %struct.nlattr* %317, null
  br i1 %318, label %319, label %328

319:                                              ; preds = %316
  %320 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %321 = call i64 @nla_get_u8(%struct.nlattr* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %319
  %324 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 2
  store i32 1, i32* %325, align 8
  %326 = load i32, i32* @MSG_DEBUG, align 4
  %327 = call i32 (i32, i8*, ...) @wpa_printf(i32 %326, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %328

328:                                              ; preds = %323, %319, %316
  %329 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %330 = icmp ne %struct.nlattr* %329, null
  br i1 %330, label %331, label %340

331:                                              ; preds = %328
  %332 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %333 = call i32* @nla_data(%struct.nlattr* %332)
  %334 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 3
  store i32* %333, i32** %335, align 8
  %336 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %337 = call i8* @nla_len(%struct.nlattr* %336)
  %338 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 13
  store i8* %337, i8** %339, align 8
  br label %340

340:                                              ; preds = %331, %328
  %341 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %342 = icmp ne %struct.nlattr* %341, null
  br i1 %342, label %343, label %352

343:                                              ; preds = %340
  %344 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %345 = call i32* @nla_data(%struct.nlattr* %344)
  %346 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 4
  store i32* %345, i32** %347, align 8
  %348 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %349 = call i8* @nla_len(%struct.nlattr* %348)
  %350 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 12
  store i8* %349, i8** %351, align 8
  br label %352

352:                                              ; preds = %343, %340
  %353 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %354 = icmp ne %struct.nlattr* %353, null
  br i1 %354, label %355, label %364

355:                                              ; preds = %352
  %356 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %357 = call i32* @nla_data(%struct.nlattr* %356)
  %358 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 5
  store i32* %357, i32** %359, align 8
  %360 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %361 = call i8* @nla_len(%struct.nlattr* %360)
  %362 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 11
  store i8* %361, i8** %363, align 8
  br label %364

364:                                              ; preds = %355, %352
  %365 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %366 = icmp ne %struct.nlattr* %365, null
  br i1 %366, label %367, label %372

367:                                              ; preds = %364
  %368 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %369 = call i64 @nla_get_u8(%struct.nlattr* %368)
  %370 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 10
  store i64 %369, i64* %371, align 8
  br label %372

372:                                              ; preds = %367, %364
  %373 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %374 = icmp ne %struct.nlattr* %373, null
  br i1 %374, label %375, label %380

375:                                              ; preds = %372
  %376 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %377 = call i64 @nla_get_u16(%struct.nlattr* %376)
  %378 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 9
  store i64 %377, i64* %379, align 8
  br label %380

380:                                              ; preds = %375, %372
  %381 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %382 = icmp ne %struct.nlattr* %381, null
  br i1 %382, label %383, label %392

383:                                              ; preds = %380
  %384 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %385 = call i32* @nla_data(%struct.nlattr* %384)
  %386 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 6
  store i32* %385, i32** %387, align 8
  %388 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %389 = call i8* @nla_len(%struct.nlattr* %388)
  %390 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 8
  store i8* %389, i8** %391, align 8
  br label %392

392:                                              ; preds = %383, %380
  %393 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %394 = icmp ne %struct.nlattr* %393, null
  br i1 %394, label %395, label %400

395:                                              ; preds = %392
  %396 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %397 = call i32* @nla_data(%struct.nlattr* %396)
  %398 = bitcast %union.wpa_event_data* %33 to %struct.TYPE_8__*
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 7
  store i32* %397, i32** %399, align 8
  br label %400

400:                                              ; preds = %395, %392
  %401 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %17, align 8
  %402 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %401, i32 0, i32 5
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @EVENT_ASSOC, align 4
  %405 = call i32 @wpa_supplicant_event(i32 %403, i32 %404, %union.wpa_event_data* %33)
  br label %406

406:                                              ; preds = %400, %171, %118, %45
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @os_memcmp(i32*, i32, i32) #1

declare dso_local i8* @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32* @get_ie(i32*, i8*, i32) #1

declare dso_local i32 @wpa_ssid_txt(i32*, i32) #1

declare dso_local i32 @nl80211_get_assoc_freq(%struct.wpa_driver_nl80211_data*) #1

declare dso_local i32 @nl80211_get_assoc_ssid(%struct.wpa_driver_nl80211_data*, i32*) #1

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
