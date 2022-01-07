; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_consider_moving_one_go.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_consider_moving_one_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_11__*, %struct.TYPE_12__*, i32, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.wpa_used_freq_data = type { i32, i32 }

@WPA_DRIVER_FLAGS_DFS_OFFLOAD = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"P2P: Freq=%d MHz no longer valid for GO\00", align 1
@P2P_GO_FREQ_MOVE_SCM = common dso_local global i64 0, align 8
@P2P_GO_FREQ_MOVE_SCM_PEER_SUPPORTS = common dso_local global i64 0, align 8
@P2P_GO_FREQ_MOVE_SCM_ECSA = common dso_local global i64 0, align 8
@WPA_DRIVER_FLAGS_AP_CSA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"P2P: GO move: invalid_freq=%u, policy_move=%u, flags=0x%X\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"P2P: Cancel a GO move from freq=%d MHz\00", align 1
@wpas_p2p_move_go = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [80 x i8] c"P2P: GO move: policy CS is not allowed - setting timeout to re-consider GO move\00", align 1
@wpas_p2p_reconsider_moving_go = common dso_local global i32 0, align 4
@P2P_RECONSIDER_GO_MOVE_DELAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"P2P: Not initiating a GO frequency change\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"P2P: Not initiating a GO frequency change - CSA is in progress\00", align 1
@P2P_GO_FREQ_CHANGE_TIME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"P2P: Move GO from freq=%d MHz in %d secs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpa_used_freq_data*, i32)* @wpas_p2p_consider_moving_one_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_consider_moving_one_go(%struct.wpa_supplicant* %0, %struct.wpa_used_freq_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_used_freq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_used_freq_data* %1, %struct.wpa_used_freq_data** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %16 = call i32 @wpas_p2p_go_update_common_freqs(%struct.wpa_supplicant* %15)
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 6
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @WPA_DRIVER_FLAGS_DFS_OFFLOAD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %3
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @ieee80211_is_dfs(i32 %29, i32 %33, i32 %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %28, %3
  %41 = phi i1 [ false, %3 ], [ %39, %28 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %13, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %197, %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %200

47:                                               ; preds = %43
  %48 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %48, i64 %50
  %52 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %47
  %57 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %57, i64 %59
  %61 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %10, align 4
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %64 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @p2p_supported_freq_go(i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %56
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %75, i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %77)
  store i32 1, i32* %8, align 4
  br label %79

79:                                               ; preds = %74, %71, %56
  br label %196

80:                                               ; preds = %47
  %81 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %81, i64 %83
  %85 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %197

89:                                               ; preds = %80
  %90 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %91 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %95, i64 %97
  %99 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @p2p_supported_freq(i32 %94, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %89
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  br label %197

107:                                              ; preds = %103, %89
  %108 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %109 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %108, i32 0, i32 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @P2P_GO_FREQ_MOVE_SCM, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  store i32 1, i32* %9, align 4
  br label %193

116:                                              ; preds = %107
  %117 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %118 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %117, i32 0, i32 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @P2P_GO_FREQ_MOVE_SCM_PEER_SUPPORTS, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %116
  %125 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %126 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %126, i64 %128
  %130 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @wpas_p2p_go_is_peer_freq(%struct.wpa_supplicant* %125, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  store i32 1, i32* %9, align 4
  br label %192

135:                                              ; preds = %124, %116
  %136 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %137 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %136, i32 0, i32 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @P2P_GO_FREQ_MOVE_SCM_ECSA, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %191

143:                                              ; preds = %135
  %144 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %145 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %5, align 8
  %146 = load i32, i32* %7, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %145, i64 %147
  %149 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @wpas_p2p_go_is_peer_freq(%struct.wpa_supplicant* %144, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %191

153:                                              ; preds = %143
  %154 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %155 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @p2p_get_group_num_members(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %153
  store i32 1, i32* %9, align 4
  br label %190

160:                                              ; preds = %153
  %161 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %162 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @WPA_DRIVER_FLAGS_AP_CSA, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %160
  %168 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %169 = call i64 @wpas_p2p_go_clients_support_ecsa(%struct.wpa_supplicant* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %167
  %172 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %173 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %172, i32 0, i32 2
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %5, align 8
  %180 = load i32, i32* %7, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %179, i64 %181
  %183 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @ieee80211_freq_to_chan(i32 %184, i32* %14)
  %186 = icmp eq i64 %178, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %171
  store i32 1, i32* %9, align 4
  br label %188

188:                                              ; preds = %187, %171
  br label %189

189:                                              ; preds = %188, %167, %160
  br label %190

190:                                              ; preds = %189, %159
  br label %191

191:                                              ; preds = %190, %143, %135
  br label %192

192:                                              ; preds = %191, %134
  br label %193

193:                                              ; preds = %192, %115
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195, %79
  br label %197

197:                                              ; preds = %196, %106, %88
  %198 = load i32, i32* %7, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %7, align 4
  br label %43

200:                                              ; preds = %43
  %201 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %202 = load i32, i32* @MSG_DEBUG, align 4
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %10, align 4
  %206 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %201, i32 %202, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %203, i32 %204, i32 %205)
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %200
  %210 = load i32, i32* %9, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %235

212:                                              ; preds = %209, %200
  %213 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %214 = load i32, i32* @MSG_DEBUG, align 4
  %215 = load i32, i32* %12, align 4
  %216 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %213, i32 %214, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* @wpas_p2p_move_go, align 4
  %218 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %219 = call i32 @eloop_cancel_timeout(i32 %217, %struct.wpa_supplicant* %218, i32* null)
  %220 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %221 = call i64 @wpas_p2p_in_progress(%struct.wpa_supplicant* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %212
  %224 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %225 = load i32, i32* @MSG_DEBUG, align 4
  %226 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %224, i32 %225, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0))
  %227 = load i32, i32* @wpas_p2p_reconsider_moving_go, align 4
  %228 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %229 = call i32 @eloop_cancel_timeout(i32 %227, %struct.wpa_supplicant* %228, i32* null)
  %230 = load i32, i32* @P2P_RECONSIDER_GO_MOVE_DELAY, align 4
  %231 = load i32, i32* @wpas_p2p_reconsider_moving_go, align 4
  %232 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %233 = call i32 @eloop_register_timeout(i32 %230, i32 0, i32 %231, %struct.wpa_supplicant* %232, i32* null)
  br label %284

234:                                              ; preds = %212
  br label %235

235:                                              ; preds = %234, %209
  %236 = load i32, i32* %8, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %248, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* %9, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i32, i32* %10, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %241, %238
  %245 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %246 = load i32, i32* @MSG_DEBUG, align 4
  %247 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %245, i32 %246, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %284

248:                                              ; preds = %241, %235
  %249 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %250 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %249, i32 0, i32 2
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = call i64 @hostapd_csa_in_progress(%struct.TYPE_12__* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %248
  %255 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %256 = load i32, i32* @MSG_DEBUG, align 4
  %257 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %255, i32 %256, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  br label %284

258:                                              ; preds = %248
  %259 = load i32, i32* %8, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %258
  %262 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %263 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %262, i32 0, i32 1
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %263, align 8
  %265 = load i32, i32* %12, align 4
  %266 = call i32 @wpas_p2p_disallowed_freq(%struct.TYPE_11__* %264, i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %261
  %269 = load i32, i32* @P2P_GO_FREQ_CHANGE_TIME, align 4
  store i32 %269, i32* %11, align 4
  br label %271

270:                                              ; preds = %261, %258
  store i32 0, i32* %11, align 4
  br label %271

271:                                              ; preds = %270, %268
  %272 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %273 = load i32, i32* @MSG_DEBUG, align 4
  %274 = load i32, i32* %12, align 4
  %275 = load i32, i32* %11, align 4
  %276 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %272, i32 %273, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %274, i32 %275)
  %277 = load i32, i32* @wpas_p2p_move_go, align 4
  %278 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %279 = call i32 @eloop_cancel_timeout(i32 %277, %struct.wpa_supplicant* %278, i32* null)
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* @wpas_p2p_move_go, align 4
  %282 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %283 = call i32 @eloop_register_timeout(i32 %280, i32 0, i32 %281, %struct.wpa_supplicant* %282, i32* null)
  br label %284

284:                                              ; preds = %271, %254, %244, %223
  ret void
}

declare dso_local i32 @wpas_p2p_go_update_common_freqs(%struct.wpa_supplicant*) #1

declare dso_local i64 @ieee80211_is_dfs(i32, i32, i32) #1

declare dso_local i32 @p2p_supported_freq_go(i32, i32) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i32 @p2p_supported_freq(i32, i32) #1

declare dso_local i64 @wpas_p2p_go_is_peer_freq(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @p2p_get_group_num_members(i32) #1

declare dso_local i64 @wpas_p2p_go_clients_support_ecsa(%struct.wpa_supplicant*) #1

declare dso_local i64 @ieee80211_freq_to_chan(i32, i32*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i64 @wpas_p2p_in_progress(%struct.wpa_supplicant*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i64 @hostapd_csa_in_progress(%struct.TYPE_12__*) #1

declare dso_local i32 @wpas_p2p_disallowed_freq(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
