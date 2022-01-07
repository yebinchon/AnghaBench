; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_group_add_persistent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_group_add_persistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.wpa_ssid = type { i32, i32, i64, i32*, i32, i32*, i64, i32 }
%struct.p2p_channels = type { i32 }
%struct.p2p_go_neg_results = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.os_reltime = type { i32 }
%struct.wpa_bss = type { i32, i32 }

@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"P2P: Requested persistent group is already running\00", align 1
@wpas_p2p_group_formation_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"P2P: Reschedule group formation timeout since peer is still trying to invite us\00", align 1
@P2P_MAX_INITIAL_CONN_WAIT = common dso_local global i32 0, align 4
@WPAS_MODE_INFRA = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"P2P: Invalid passphrase in persistent group\00", align 1
@P2P_MAX_CHANNELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_group_add_persistent(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct.p2p_channels* %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.wpa_supplicant*, align 8
  %16 = alloca %struct.wpa_ssid*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.p2p_channels*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.p2p_go_neg_results, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.os_reltime, align 4
  %32 = alloca %struct.wpa_bss*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %15, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %16, align 8
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store %struct.p2p_channels* %10, %struct.p2p_channels** %25, align 8
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 0, i32* %29, align 4
  %33 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %34 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 2
  br i1 %36, label %42, label %37

37:                                               ; preds = %13
  %38 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %39 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %13
  store i32 -1, i32* %14, align 4
  br label %267

43:                                               ; preds = %37
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %45 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %46 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %49 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @wpas_get_p2p_group(%struct.wpa_supplicant* %44, i32* %47, i32 %50, i32* %29)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %43
  %54 = load i32, i32* %29, align 4
  %55 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %56 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = icmp eq i32 %54, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %53
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = call i32 @wpa_printf(i32 %63, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* %29, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load i32, i32* @wpas_p2p_group_formation_timeout, align 4
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %70 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @eloop_cancel_timeout(i32 %68, i32 %71, i32* null)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = call i32 @wpa_printf(i32 %75, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @P2P_MAX_INITIAL_CONN_WAIT, align 4
  %78 = load i32, i32* @wpas_p2p_group_formation_timeout, align 4
  %79 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %80 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @eloop_register_timeout(i32 %77, i32 0, i32 %78, i32 %81, i32* null)
  br label %83

83:                                               ; preds = %74, %67, %62
  store i32 0, i32* %14, align 4
  br label %267

84:                                               ; preds = %53, %43
  %85 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %86 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @os_free(i32* %89)
  %91 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %92 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  %95 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %96 = call i32 @wpas_p2p_stop_find_oper(%struct.wpa_supplicant* %95)
  %97 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %98 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %100 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %133

104:                                              ; preds = %84
  %105 = load i32, i32* %18, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %109 = load i32, i32* %18, align 4
  %110 = call i32 @wpas_p2p_select_go_freq(%struct.wpa_supplicant* %108, i32 %109)
  store i32 %110, i32* %30, align 4
  %111 = load i32, i32* %30, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 -1, i32* %14, align 4
  br label %267

114:                                              ; preds = %107
  br label %132

115:                                              ; preds = %104
  %116 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %117 = load i32, i32* %19, align 4
  %118 = call i32 @wpas_p2p_select_go_freq(%struct.wpa_supplicant* %116, i32 %117)
  store i32 %118, i32* %30, align 4
  %119 = load i32, i32* %30, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %30, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %126 = load %struct.p2p_channels*, %struct.p2p_channels** %25, align 8
  %127 = load i32, i32* %30, align 4
  %128 = call i64 @freq_included(%struct.wpa_supplicant* %125, %struct.p2p_channels* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %124, %115
  store i32 0, i32* %30, align 4
  br label %131

131:                                              ; preds = %130, %124, %121
  br label %132

132:                                              ; preds = %131, %114
  br label %185

133:                                              ; preds = %84
  %134 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %135 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @WPAS_MODE_INFRA, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %184

139:                                              ; preds = %133
  %140 = load i32, i32* %19, align 4
  store i32 %140, i32* %30, align 4
  %141 = load i32, i32* %30, align 4
  %142 = icmp sle i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %139
  %144 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %145 = load %struct.p2p_channels*, %struct.p2p_channels** %25, align 8
  %146 = load i32, i32* %30, align 4
  %147 = call i64 @freq_included(%struct.wpa_supplicant* %144, %struct.p2p_channels* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %177, label %149

149:                                              ; preds = %143, %139
  %150 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %151 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %152 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = call %struct.wpa_bss* @wpa_bss_get_p2p_dev_addr(%struct.wpa_supplicant* %150, i32 %153)
  store %struct.wpa_bss* %154, %struct.wpa_bss** %32, align 8
  %155 = call i32 @os_get_reltime(%struct.os_reltime* %31)
  %156 = load %struct.wpa_bss*, %struct.wpa_bss** %32, align 8
  %157 = icmp ne %struct.wpa_bss* %156, null
  br i1 %157, label %158, label %175

158:                                              ; preds = %149
  %159 = load %struct.wpa_bss*, %struct.wpa_bss** %32, align 8
  %160 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %159, i32 0, i32 1
  %161 = call i32 @os_reltime_expired(%struct.os_reltime* %31, i32* %160, i32 5)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %158
  %164 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %165 = load %struct.p2p_channels*, %struct.p2p_channels** %25, align 8
  %166 = load %struct.wpa_bss*, %struct.wpa_bss** %32, align 8
  %167 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @freq_included(%struct.wpa_supplicant* %164, %struct.p2p_channels* %165, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %163
  %172 = load %struct.wpa_bss*, %struct.wpa_bss** %32, align 8
  %173 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %30, align 4
  br label %176

175:                                              ; preds = %163, %158, %149
  store i32 0, i32* %30, align 4
  br label %176

176:                                              ; preds = %175, %171
  br label %177

177:                                              ; preds = %176, %143
  %178 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %179 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %30, align 4
  %182 = load i32, i32* %27, align 4
  %183 = call i32 @wpas_start_p2p_client(%struct.wpa_supplicant* %178, %struct.wpa_ssid* %179, i32 %180, i32 %181, i32 %182)
  store i32 %183, i32* %14, align 4
  br label %267

184:                                              ; preds = %133
  store i32 -1, i32* %14, align 4
  br label %267

185:                                              ; preds = %132
  %186 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %187 = load i32, i32* %30, align 4
  %188 = load i32, i32* %20, align 4
  %189 = load i32, i32* %21, align 4
  %190 = load i32, i32* %22, align 4
  %191 = load i32, i32* %23, align 4
  %192 = load i32, i32* %24, align 4
  %193 = load %struct.p2p_channels*, %struct.p2p_channels** %25, align 8
  %194 = call i64 @wpas_p2p_init_go_params(%struct.wpa_supplicant* %186, %struct.p2p_go_neg_results* %28, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, %struct.p2p_channels* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %185
  store i32 -1, i32* %14, align 4
  br label %267

197:                                              ; preds = %185
  %198 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %28, i32 0, i32 0
  store i32 1, i32* %198, align 8
  %199 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %200 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %199, i32 0, i32 6
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %28, i32 0, i32 7
  store i64 %201, i64* %202, align 8
  %203 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %28, i32 0, i32 7
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %197
  %207 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %28, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %210 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %209, i32 0, i32 5
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @os_memcpy(i32 %208, i32* %211, i32 4)
  br label %213

213:                                              ; preds = %206, %197
  %214 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %215 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %235

218:                                              ; preds = %213
  %219 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %220 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @os_strlen(i32 %221)
  %223 = sext i32 %222 to i64
  %224 = icmp uge i64 %223, 4
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load i32, i32* @MSG_ERROR, align 4
  %227 = call i32 @wpa_printf(i32 %226, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %267

228:                                              ; preds = %218
  %229 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %28, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %232 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @os_strlcpy(i32 %230, i32 %233, i32 4)
  br label %235

235:                                              ; preds = %228, %213
  %236 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %28, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %239 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %238, i32 0, i32 3
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %242 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @os_memcpy(i32 %237, i32* %240, i32 %243)
  %245 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %246 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %28, i32 0, i32 1
  store i32 %247, i32* %248, align 4
  %249 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %28, i32 0, i32 2
  store i32 1, i32* %249, align 8
  %250 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %251 = load i32, i32* %17, align 4
  %252 = call %struct.wpa_supplicant* @wpas_p2p_get_group_iface(%struct.wpa_supplicant* %250, i32 %251, i32 1)
  store %struct.wpa_supplicant* %252, %struct.wpa_supplicant** %15, align 8
  %253 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %254 = icmp eq %struct.wpa_supplicant* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %235
  store i32 -1, i32* %14, align 4
  br label %267

256:                                              ; preds = %235
  %257 = load %struct.p2p_channels*, %struct.p2p_channels** %25, align 8
  %258 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %28, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @P2P_MAX_CHANNELS, align 4
  %261 = call i32 @p2p_channels_to_freqs(%struct.p2p_channels* %257, i32 %259, i32 %260)
  %262 = load i32, i32* %26, align 4
  %263 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %264 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 8
  %265 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %266 = call i32 @wpas_start_wps_go(%struct.wpa_supplicant* %265, %struct.p2p_go_neg_results* %28, i32 0)
  store i32 0, i32* %14, align 4
  br label %267

267:                                              ; preds = %256, %255, %225, %196, %184, %177, %113, %83, %42
  %268 = load i32, i32* %14, align 4
  ret i32 %268
}

declare dso_local i64 @wpas_get_p2p_group(%struct.wpa_supplicant*, i32*, i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @eloop_cancel_timeout(i32, i32, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpas_p2p_stop_find_oper(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_p2p_select_go_freq(%struct.wpa_supplicant*, i32) #1

declare dso_local i64 @freq_included(%struct.wpa_supplicant*, %struct.p2p_channels*, i32) #1

declare dso_local %struct.wpa_bss* @wpa_bss_get_p2p_dev_addr(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @os_reltime_expired(%struct.os_reltime*, i32*, i32) #1

declare dso_local i32 @wpas_start_p2p_client(%struct.wpa_supplicant*, %struct.wpa_ssid*, i32, i32, i32) #1

declare dso_local i64 @wpas_p2p_init_go_params(%struct.wpa_supplicant*, %struct.p2p_go_neg_results*, i32, i32, i32, i32, i32, i32, %struct.p2p_channels*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @os_strlen(i32) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local %struct.wpa_supplicant* @wpas_p2p_get_group_iface(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @p2p_channels_to_freqs(%struct.p2p_channels*, i32, i32) #1

declare dso_local i32 @wpas_start_wps_go(%struct.wpa_supplicant*, %struct.p2p_go_neg_results*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
