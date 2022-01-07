; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_group_formation_completed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_group_formation_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, i32, %struct.TYPE_2__*, i32, i32, %struct.wpa_ssid*, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32*, i32, %struct.wpa_supplicant* }
%struct.wpa_ssid = type { i64, i32, i32*, i32*, i64, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"P2P: Stop provisioning state due to failure\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@P2P_EVENT_GROUP_FORMATION_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@P2P_GROUP_REMOVAL_FORMATION_FAILED = common dso_local global i32 0, align 4
@P2P_EVENT_GROUP_FORMATION_SUCCESS = common dso_local global i32 0, align 4
@WPAS_MODE_P2P_GROUP_FORMATION = common dso_local global i64 0, align 8
@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@WPAS_MODE_INFRA = common dso_local global i64 0, align 8
@P2P_GROUP_INTERFACE_CLIENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32, i32)* @wpas_group_formation_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_group_formation_completed(%struct.wpa_supplicant* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %20, align 8
  %22 = icmp ne %struct.wpa_supplicant* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %27, align 8
  store %struct.wpa_supplicant* %28, %struct.wpa_supplicant** %4, align 8
  br label %29

29:                                               ; preds = %23, %3
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 9
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %38, align 8
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 8
  store i64 0, i64* %40, align 8
  br label %56

41:                                               ; preds = %29
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 @wpa_msg(%struct.wpa_supplicant* %50, i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %54 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %53, i32 0, i32 8
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %46, %41
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %58 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %57, i32 0, i32 7
  store i64 0, i64* %58, align 8
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %60 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %56
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MSG_INFO, align 4
  %68 = load i32, i32* @P2P_EVENT_GROUP_FORMATION_FAILURE, align 4
  %69 = call i32 @wpa_msg_global(i32 %66, i32 %67, i32 %68)
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %71 = call i32 @wpas_notify_p2p_group_formation_failure(%struct.wpa_supplicant* %70, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store i32 1, i32* %12, align 4
  br label %240

75:                                               ; preds = %63
  %76 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %77 = load i32, i32* @P2P_GROUP_REMOVAL_FORMATION_FAILED, align 4
  %78 = call i32 @wpas_p2p_group_delete(%struct.wpa_supplicant* %76, i32 %77)
  store i32 1, i32* %12, align 4
  br label %240

79:                                               ; preds = %56
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %81 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MSG_INFO, align 4
  %84 = load i32, i32* @P2P_EVENT_GROUP_FORMATION_SUCCESS, align 4
  %85 = call i32 @wpa_msg_global(i32 %82, i32 %83, i32 %84)
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %87 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %86, i32 0, i32 6
  %88 = load %struct.wpa_ssid*, %struct.wpa_ssid** %87, align 8
  store %struct.wpa_ssid* %88, %struct.wpa_ssid** %7, align 8
  %89 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %90 = icmp ne %struct.wpa_ssid* %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %79
  %92 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %93 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @WPAS_MODE_P2P_GROUP_FORMATION, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %99 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %100 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %102 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @p2p_group_notif_formation_done(i32 %103)
  %105 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %106 = call i32 @wpa_supplicant_ap_mac_addr_filter(%struct.wpa_supplicant* %105, i32* null)
  br label %107

107:                                              ; preds = %97, %91, %79
  store i32 0, i32* %9, align 4
  %108 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %109 = icmp ne %struct.wpa_ssid* %108, null
  br i1 %109, label %110, label %143

110:                                              ; preds = %107
  %111 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %112 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @WPAS_MODE_INFRA, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %8, align 4
  %117 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %118 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %110
  %123 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %124 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %9, align 4
  %126 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %127 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %126, i32 0, i32 3
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ETH_ALEN, align 4
  %132 = call i32 @os_memcpy(i32* %16, i32 %130, i32 %131)
  br label %142

133:                                              ; preds = %110
  %134 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %135 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %136 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %139 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @wpas_p2p_persistent_group(%struct.wpa_supplicant* %134, i32* %16, i32 %137, i32 %140)
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %133, %122
  br label %152

143:                                              ; preds = %107
  %144 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %145 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @P2P_GROUP_INTERFACE_CLIENT, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* @ETH_ALEN, align 4
  %151 = call i32 @os_memset(i32* %16, i32 0, i32 %150)
  br label %152

152:                                              ; preds = %143, %142
  %153 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %154 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %153, i32 0, i32 2
  store i32 0, i32* %154, align 8
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %159 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %158, i32 0, i32 2
  store i32 1, i32* %159, align 8
  br label %206

160:                                              ; preds = %152
  %161 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %162 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %163 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %164 = icmp ne %struct.wpa_ssid* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %167 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  br label %170

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169, %165
  %171 = phi i32 [ %168, %165 ], [ 0, %169 ]
  %172 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %173 = icmp ne %struct.wpa_ssid* %172, null
  br i1 %173, label %174, label %188

174:                                              ; preds = %170
  %175 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %176 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %188

179:                                              ; preds = %174
  %180 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %181 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %186 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  br label %189

188:                                              ; preds = %179, %174, %170
  br label %189

189:                                              ; preds = %188, %184
  %190 = phi i32* [ %187, %184 ], [ null, %188 ]
  %191 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %192 = icmp ne %struct.wpa_ssid* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %195 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  br label %198

197:                                              ; preds = %189
  br label %198

198:                                              ; preds = %197, %193
  %199 = phi i32* [ %196, %193 ], [ null, %197 ]
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @wpas_p2p_group_started(%struct.wpa_supplicant* %161, i32 1, %struct.wpa_ssid* %162, i32 %171, i32* %190, i32* %199, i32* %16, i32 %200, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %202 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %203 = call i32 @wpas_p2p_cross_connect_setup(%struct.wpa_supplicant* %202)
  %204 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %205 = call i32 @wpas_p2p_set_group_idle_timeout(%struct.wpa_supplicant* %204)
  br label %206

206:                                              ; preds = %198, %157
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %211 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %214 = call i32 @wpas_p2p_store_persistent_group(i32 %212, %struct.wpa_ssid* %213, i32* %16)
  br label %226

215:                                              ; preds = %206
  %216 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %217 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %216, i32 0, i32 3
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @os_free(i32* %220)
  %222 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %223 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %222, i32 0, i32 3
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 1
  store i32* null, i32** %225, align 8
  br label %226

226:                                              ; preds = %215, %209
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %239, label %229

229:                                              ; preds = %226
  %230 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %231 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @wpas_notify_p2p_group_started(%struct.wpa_supplicant* %230, %struct.wpa_ssid* %231, i32 %232, i32 0, i32* null)
  %234 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %235 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %234, i32 0, i32 3
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = call i32 @os_get_reltime(i32* %237)
  br label %239

239:                                              ; preds = %229, %226
  store i32 0, i32* %12, align 4
  br label %240

240:                                              ; preds = %239, %75, %74
  %241 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %241)
  %242 = load i32, i32* %12, align 4
  switch i32 %242, label %244 [
    i32 0, label %243
    i32 1, label %243
  ]

243:                                              ; preds = %240, %240
  ret void

244:                                              ; preds = %240
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #2

declare dso_local i32 @wpa_msg_global(i32, i32, i32) #2

declare dso_local i32 @wpas_notify_p2p_group_formation_failure(%struct.wpa_supplicant*, i8*) #2

declare dso_local i32 @wpas_p2p_group_delete(%struct.wpa_supplicant*, i32) #2

declare dso_local i32 @p2p_group_notif_formation_done(i32) #2

declare dso_local i32 @wpa_supplicant_ap_mac_addr_filter(%struct.wpa_supplicant*, i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32, i32) #2

declare dso_local i32 @wpas_p2p_persistent_group(%struct.wpa_supplicant*, i32*, i32, i32) #2

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32 @wpas_p2p_group_started(%struct.wpa_supplicant*, i32, %struct.wpa_ssid*, i32, i32*, i32*, i32*, i32, i8*) #2

declare dso_local i32 @wpas_p2p_cross_connect_setup(%struct.wpa_supplicant*) #2

declare dso_local i32 @wpas_p2p_set_group_idle_timeout(%struct.wpa_supplicant*) #2

declare dso_local i32 @wpas_p2p_store_persistent_group(i32, %struct.wpa_ssid*, i32*) #2

declare dso_local i32 @os_free(i32*) #2

declare dso_local i32 @wpas_notify_p2p_group_started(%struct.wpa_supplicant*, %struct.wpa_ssid*, i32, i32, i32*) #2

declare dso_local i32 @os_get_reltime(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
