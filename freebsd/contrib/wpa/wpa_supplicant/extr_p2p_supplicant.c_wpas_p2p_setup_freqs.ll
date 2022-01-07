; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_setup_freqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_setup_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wpa_used_freq_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"P2P: Setup freqs: freq=%d num_MCC=%d shared_freqs=%u num_unused=%d\00", align 1
@WPA_DRIVER_FLAGS_DFS_OFFLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"P2P: The forced channel for GO (%u MHz) is DFS, and DFS is offloaded to the driver\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"P2P: The forced channel (%u MHz) is not supported for P2P uses\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"P2P: Cannot start P2P group on %u MHz as there are no available channels\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"P2P: Trying to force us to use the requested channel (%u MHz)\00", align 1
@WPA_IF_P2P_GO = common dso_local global i32 0, align 4
@WPA_IF_P2P_CLIENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"P2P: best_freq=%d, go=%d\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"P2P: preferred_freq_list[%d]=%d is disallowed\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"P2P: Using preferred_freq_list[%d]=%d\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"P2P: All driver preferred frequencies are disallowed for P2P use\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"P2P: No preferred frequency list available\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"P2P: Try to prefer a frequency (%u MHz) we are already using\00", align 1
@.str.11 = private unnamed_addr constant [71 x i8] c"P2P: Try to force us to use frequency (%u MHz) which is already in use\00", align 1
@.str.12 = private unnamed_addr constant [86 x i8] c"P2P: Current operating channels are not available for P2P. Try to use another channel\00", align 1
@.str.13 = private unnamed_addr constant [86 x i8] c"P2P: All channels are in use and none of them are P2P enabled. Cannot start P2P group\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32, i32*, i32*, i32, i32*, i32*)* @wpas_p2p_setup_freqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_setup_freqs(%struct.wpa_supplicant* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_supplicant*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.wpa_used_freq_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %20, align 4
  %26 = load i32*, i32** %15, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %23, align 4
  %28 = load i32*, i32** %15, align 8
  store i32 0, i32* %28, align 4
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.wpa_used_freq_data* @os_calloc(i32 %31, i32 4)
  store %struct.wpa_used_freq_data* %32, %struct.wpa_used_freq_data** %16, align 8
  %33 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %16, align 8
  %34 = icmp ne %struct.wpa_used_freq_data* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %287

36:                                               ; preds = %7
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %38 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %16, align 8
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @wpas_p2p_valid_oper_freqs(%struct.wpa_supplicant* %37, %struct.wpa_used_freq_data* %38, i32 %41)
  store i32 %42, i32* %21, align 4
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %44 = call i32 @wpas_p2p_num_unused_channels(%struct.wpa_supplicant* %43)
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %21, align 4
  %51 = load i32, i32* %19, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %140

55:                                               ; preds = %36
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %60 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @p2p_supported_freq(i32 %63, i32 %64)
  store i32 %65, i32* %24, align 4
  br label %74

66:                                               ; preds = %55
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %68 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @p2p_supported_freq_cli(i32 %71, i32 %72)
  store i32 %73, i32* %24, align 4
  br label %74

74:                                               ; preds = %66, %58
  %75 = load i32, i32* %24, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %105, label %77

77:                                               ; preds = %74
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @WPA_DRIVER_FLAGS_DFS_OFFLOAD, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %77
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %87 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %91 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @ieee80211_is_dfs(i32 %85, i32 %89, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (i32, i8*, ...) @wpa_printf(i32 %97, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %104

100:                                              ; preds = %84, %77
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  store i32 -3, i32* %17, align 4
  br label %283

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %74
  store i32 0, i32* %22, align 4
  br label %106

106:                                              ; preds = %121, %105
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %21, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %106
  %111 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %16, align 8
  %112 = load i32, i32* %22, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %111, i64 %113
  %115 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  store i32 1, i32* %20, align 4
  br label %120

120:                                              ; preds = %119, %110
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %22, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %22, align 4
  br label %106

124:                                              ; preds = %106
  %125 = load i32, i32* %19, align 4
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i32, i32* %20, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 (i32, i8*, ...) @wpa_printf(i32 %131, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  store i32 -2, i32* %17, align 4
  br label %283

134:                                              ; preds = %127, %124
  %135 = load i32, i32* @MSG_DEBUG, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 (i32, i8*, ...) @wpa_printf(i32 %135, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %10, align 4
  %139 = load i32*, i32** %11, align 8
  store i32 %138, i32* %139, align 4
  br label %282

140:                                              ; preds = %36
  %141 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %142 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %16, align 8
  %143 = load i32, i32* %21, align 4
  %144 = call i32 @wpas_p2p_pick_best_used_freq(%struct.wpa_supplicant* %141, %struct.wpa_used_freq_data* %142, i32 %143)
  store i32 %144, i32* %18, align 4
  %145 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %146 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %145, i32 0, i32 2
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %247, label %151

151:                                              ; preds = %140
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %247

155:                                              ; preds = %151
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* @WPA_IF_P2P_GO, align 4
  store i32 %159, i32* %25, align 4
  br label %162

160:                                              ; preds = %155
  %161 = load i32, i32* @WPA_IF_P2P_CLIENT, align 4
  store i32 %161, i32* %25, align 4
  br label %162

162:                                              ; preds = %160, %158
  %163 = load i32, i32* @MSG_DEBUG, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %13, align 4
  %166 = call i32 (i32, i8*, ...) @wpa_printf(i32 %163, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %164, i32 %165)
  %167 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %168 = load i32, i32* %25, align 4
  %169 = load i32*, i32** %14, align 8
  %170 = call i32 @wpa_drv_get_pref_freq_list(%struct.wpa_supplicant* %167, i32 %168, i32* %23, i32* %169)
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %243, label %173

173:                                              ; preds = %162
  %174 = load i32, i32* %23, align 4
  %175 = icmp ugt i32 %174, 0
  br i1 %175, label %176, label %243

176:                                              ; preds = %173
  %177 = load i32, i32* %23, align 4
  %178 = load i32*, i32** %15, align 8
  store i32 %177, i32* %178, align 4
  store i32 0, i32* %22, align 4
  br label %179

179:                                              ; preds = %212, %176
  %180 = load i32, i32* %22, align 4
  %181 = load i32*, i32** %15, align 8
  %182 = load i32, i32* %181, align 4
  %183 = icmp ult i32 %180, %182
  br i1 %183, label %184, label %210

184:                                              ; preds = %179
  %185 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %186 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %185, i32 0, i32 1
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %14, align 8
  %191 = load i32, i32* %22, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @p2p_supported_freq(i32 %189, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %184
  %198 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %199 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %198, i32 0, i32 1
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = load i32*, i32** %14, align 8
  %202 = load i32, i32* %22, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @wpas_p2p_disallowed_freq(%struct.TYPE_6__* %200, i32 %205)
  %207 = icmp ne i64 %206, 0
  br label %208

208:                                              ; preds = %197, %184
  %209 = phi i1 [ true, %184 ], [ %207, %197 ]
  br label %210

210:                                              ; preds = %208, %179
  %211 = phi i1 [ false, %179 ], [ %209, %208 ]
  br i1 %211, label %212, label %223

212:                                              ; preds = %210
  %213 = load i32, i32* @MSG_DEBUG, align 4
  %214 = load i32, i32* %22, align 4
  %215 = load i32*, i32** %14, align 8
  %216 = load i32, i32* %22, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i32, i8*, ...) @wpa_printf(i32 %213, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %214, i32 %219)
  %221 = load i32, i32* %22, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %22, align 4
  br label %179

223:                                              ; preds = %210
  %224 = load i32, i32* %22, align 4
  %225 = load i32*, i32** %15, align 8
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %224, %226
  br i1 %227, label %228, label %238

228:                                              ; preds = %223
  %229 = load i32*, i32** %14, align 8
  %230 = load i32, i32* %22, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %18, align 4
  %234 = load i32, i32* @MSG_DEBUG, align 4
  %235 = load i32, i32* %22, align 4
  %236 = load i32, i32* %18, align 4
  %237 = call i32 (i32, i8*, ...) @wpa_printf(i32 %234, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %235, i32 %236)
  br label %242

238:                                              ; preds = %223
  %239 = load i32, i32* @MSG_DEBUG, align 4
  %240 = call i32 (i32, i8*, ...) @wpa_printf(i32 %239, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0))
  %241 = load i32*, i32** %15, align 8
  store i32 0, i32* %241, align 4
  br label %242

242:                                              ; preds = %238, %228
  br label %246

243:                                              ; preds = %173, %162
  %244 = load i32, i32* @MSG_DEBUG, align 4
  %245 = call i32 (i32, i8*, ...) @wpa_printf(i32 %244, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %246

246:                                              ; preds = %243, %242
  br label %247

247:                                              ; preds = %246, %151, %140
  %248 = load i32, i32* %18, align 4
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %270

250:                                              ; preds = %247
  %251 = load i32*, i32** %12, align 8
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %250
  %255 = load i32, i32* %19, align 4
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %254
  %258 = load i32, i32* @MSG_DEBUG, align 4
  %259 = load i32, i32* %18, align 4
  %260 = call i32 (i32, i8*, ...) @wpa_printf(i32 %258, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i32 %259)
  %261 = load i32, i32* %18, align 4
  %262 = load i32*, i32** %12, align 8
  store i32 %261, i32* %262, align 4
  br label %269

263:                                              ; preds = %254, %250
  %264 = load i32, i32* @MSG_DEBUG, align 4
  %265 = load i32, i32* %18, align 4
  %266 = call i32 (i32, i8*, ...) @wpa_printf(i32 %264, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.11, i64 0, i64 0), i32 %265)
  %267 = load i32, i32* %18, align 4
  %268 = load i32*, i32** %11, align 8
  store i32 %267, i32* %268, align 4
  br label %269

269:                                              ; preds = %263, %257
  br label %281

270:                                              ; preds = %247
  %271 = load i32, i32* %19, align 4
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %270
  %274 = load i32, i32* @MSG_DEBUG, align 4
  %275 = call i32 (i32, i8*, ...) @wpa_printf(i32 %274, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.12, i64 0, i64 0))
  %276 = load i32*, i32** %11, align 8
  store i32 0, i32* %276, align 4
  br label %280

277:                                              ; preds = %270
  %278 = load i32, i32* @MSG_DEBUG, align 4
  %279 = call i32 (i32, i8*, ...) @wpa_printf(i32 %278, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.13, i64 0, i64 0))
  store i32 -2, i32* %17, align 4
  br label %283

280:                                              ; preds = %273
  br label %281

281:                                              ; preds = %280, %269
  br label %282

282:                                              ; preds = %281, %134
  store i32 0, i32* %17, align 4
  br label %283

283:                                              ; preds = %282, %277, %130, %100
  %284 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %16, align 8
  %285 = call i32 @os_free(%struct.wpa_used_freq_data* %284)
  %286 = load i32, i32* %17, align 4
  store i32 %286, i32* %8, align 4
  br label %287

287:                                              ; preds = %283, %35
  %288 = load i32, i32* %8, align 4
  ret i32 %288
}

declare dso_local %struct.wpa_used_freq_data* @os_calloc(i32, i32) #1

declare dso_local i32 @wpas_p2p_valid_oper_freqs(%struct.wpa_supplicant*, %struct.wpa_used_freq_data*, i32) #1

declare dso_local i32 @wpas_p2p_num_unused_channels(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @p2p_supported_freq(i32, i32) #1

declare dso_local i32 @p2p_supported_freq_cli(i32, i32) #1

declare dso_local i64 @ieee80211_is_dfs(i32, i32, i32) #1

declare dso_local i32 @wpas_p2p_pick_best_used_freq(%struct.wpa_supplicant*, %struct.wpa_used_freq_data*, i32) #1

declare dso_local i32 @wpa_drv_get_pref_freq_list(%struct.wpa_supplicant*, i32, i32*, i32*) #1

declare dso_local i64 @wpas_p2p_disallowed_freq(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @os_free(%struct.wpa_used_freq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
