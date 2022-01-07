; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wifi_display.c_wifi_display_update_wfd_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wifi_display.c_wifi_display_update_wfd_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { i32*, i32**, i32 }
%struct.wpabuf = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"WFD: Update WFD IE\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"WFD: Wi-Fi Display disabled - do not include WFD IE\00", align 1
@WFD_SUBELEM_DEVICE_INFO = common dso_local global i64 0, align 8
@WFD_SUBELEM_R2_DEVICE_INFO = common dso_local global i64 0, align 8
@WFD_SUBELEM_ASSOCIATED_BSSID = common dso_local global i64 0, align 8
@WFD_SUBELEM_COUPLED_SINK = common dso_local global i64 0, align 8
@WFD_SUBELEM_SESSION_INFO = common dso_local global i64 0, align 8
@WFD_SUBELEM_EXT_CAPAB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"WFD: WFD IE for Beacon\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"WFD: WFD IE for (Re)Association Request\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"WFD: WFD IE for GO Negotiation\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"WFD: WFD IE for Provision Discovery Request\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"WFD: WFD IE for Probe Request\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"WFD: WFD IE for Probe Response\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"WFD: WFD IE for P2P Invitation\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"WFD: WFD IE for Provision Discovery Response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_global*)* @wifi_display_update_wfd_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_display_update_wfd_ie(%struct.wpa_global* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_global*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %3, align 8
  %8 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %433

13:                                               ; preds = %1
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %71, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %24 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @p2p_set_wfd_ie_beacon(i32* %25, %struct.wpabuf* null)
  %27 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %28 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @p2p_set_wfd_ie_probe_req(i32* %29, %struct.wpabuf* null)
  %31 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %32 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @p2p_set_wfd_ie_probe_resp(i32* %33, %struct.wpabuf* null)
  %35 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %36 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @p2p_set_wfd_ie_assoc_req(i32* %37, %struct.wpabuf* null)
  %39 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %40 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @p2p_set_wfd_ie_invitation(i32* %41, %struct.wpabuf* null)
  %43 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %44 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @p2p_set_wfd_ie_prov_disc_req(i32* %45, %struct.wpabuf* null)
  %47 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %48 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @p2p_set_wfd_ie_prov_disc_resp(i32* %49, %struct.wpabuf* null)
  %51 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %52 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @p2p_set_wfd_ie_go_neg(i32* %53, %struct.wpabuf* null)
  %55 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %56 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @p2p_set_wfd_dev_info(i32* %57, i32* null)
  %59 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %60 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @p2p_set_wfd_r2_dev_info(i32* %61, i32* null)
  %63 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %64 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @p2p_set_wfd_assoc_bssid(i32* %65, i32* null)
  %67 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %68 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @p2p_set_wfd_coupled_sink_info(i32* %69, i32* null)
  store i32 0, i32* %2, align 4
  br label %433

71:                                               ; preds = %13
  %72 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %73 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %76 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %75, i32 0, i32 1
  %77 = load i32**, i32*** %76, align 8
  %78 = load i64, i64* @WFD_SUBELEM_DEVICE_INFO, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @p2p_set_wfd_dev_info(i32* %74, i32* %80)
  %82 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %83 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %86 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %85, i32 0, i32 1
  %87 = load i32**, i32*** %86, align 8
  %88 = load i64, i64* @WFD_SUBELEM_R2_DEVICE_INFO, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @p2p_set_wfd_r2_dev_info(i32* %84, i32* %90)
  %92 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %93 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %96 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = load i64, i64* @WFD_SUBELEM_ASSOCIATED_BSSID, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @p2p_set_wfd_assoc_bssid(i32* %94, i32* %100)
  %102 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %103 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %106 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %105, i32 0, i32 1
  %107 = load i32**, i32*** %106, align 8
  %108 = load i64, i64* @WFD_SUBELEM_COUPLED_SINK, align 8
  %109 = getelementptr inbounds i32*, i32** %107, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @p2p_set_wfd_coupled_sink_info(i32* %104, i32* %110)
  store i64 0, i64* %6, align 8
  %112 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %113 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %112, i32 0, i32 1
  %114 = load i32**, i32*** %113, align 8
  %115 = load i64, i64* @WFD_SUBELEM_DEVICE_INFO, align 8
  %116 = getelementptr inbounds i32*, i32** %114, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %71
  %120 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %121 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %120, i32 0, i32 1
  %122 = load i32**, i32*** %121, align 8
  %123 = load i64, i64* @WFD_SUBELEM_DEVICE_INFO, align 8
  %124 = getelementptr inbounds i32*, i32** %122, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = call i64 @wpabuf_len(i32* %125)
  %127 = load i64, i64* %6, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %6, align 8
  br label %129

129:                                              ; preds = %119, %71
  %130 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %131 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %130, i32 0, i32 1
  %132 = load i32**, i32*** %131, align 8
  %133 = load i64, i64* @WFD_SUBELEM_R2_DEVICE_INFO, align 8
  %134 = getelementptr inbounds i32*, i32** %132, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %129
  %138 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %139 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %138, i32 0, i32 1
  %140 = load i32**, i32*** %139, align 8
  %141 = load i64, i64* @WFD_SUBELEM_R2_DEVICE_INFO, align 8
  %142 = getelementptr inbounds i32*, i32** %140, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = call i64 @wpabuf_len(i32* %143)
  %145 = load i64, i64* %6, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %6, align 8
  br label %147

147:                                              ; preds = %137, %129
  %148 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %149 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %148, i32 0, i32 1
  %150 = load i32**, i32*** %149, align 8
  %151 = load i64, i64* @WFD_SUBELEM_ASSOCIATED_BSSID, align 8
  %152 = getelementptr inbounds i32*, i32** %150, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %165

155:                                              ; preds = %147
  %156 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %157 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %156, i32 0, i32 1
  %158 = load i32**, i32*** %157, align 8
  %159 = load i64, i64* @WFD_SUBELEM_ASSOCIATED_BSSID, align 8
  %160 = getelementptr inbounds i32*, i32** %158, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = call i64 @wpabuf_len(i32* %161)
  %163 = load i64, i64* %6, align 8
  %164 = add i64 %163, %162
  store i64 %164, i64* %6, align 8
  br label %165

165:                                              ; preds = %155, %147
  %166 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %167 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %166, i32 0, i32 1
  %168 = load i32**, i32*** %167, align 8
  %169 = load i64, i64* @WFD_SUBELEM_COUPLED_SINK, align 8
  %170 = getelementptr inbounds i32*, i32** %168, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %183

173:                                              ; preds = %165
  %174 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %175 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %174, i32 0, i32 1
  %176 = load i32**, i32*** %175, align 8
  %177 = load i64, i64* @WFD_SUBELEM_COUPLED_SINK, align 8
  %178 = getelementptr inbounds i32*, i32** %176, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = call i64 @wpabuf_len(i32* %179)
  %181 = load i64, i64* %6, align 8
  %182 = add i64 %181, %180
  store i64 %182, i64* %6, align 8
  br label %183

183:                                              ; preds = %173, %165
  %184 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %185 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %184, i32 0, i32 1
  %186 = load i32**, i32*** %185, align 8
  %187 = load i64, i64* @WFD_SUBELEM_SESSION_INFO, align 8
  %188 = getelementptr inbounds i32*, i32** %186, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %201

191:                                              ; preds = %183
  %192 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %193 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %192, i32 0, i32 1
  %194 = load i32**, i32*** %193, align 8
  %195 = load i64, i64* @WFD_SUBELEM_SESSION_INFO, align 8
  %196 = getelementptr inbounds i32*, i32** %194, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = call i64 @wpabuf_len(i32* %197)
  %199 = load i64, i64* %6, align 8
  %200 = add i64 %199, %198
  store i64 %200, i64* %6, align 8
  br label %201

201:                                              ; preds = %191, %183
  %202 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %203 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %202, i32 0, i32 1
  %204 = load i32**, i32*** %203, align 8
  %205 = load i64, i64* @WFD_SUBELEM_EXT_CAPAB, align 8
  %206 = getelementptr inbounds i32*, i32** %204, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %219

209:                                              ; preds = %201
  %210 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %211 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %210, i32 0, i32 1
  %212 = load i32**, i32*** %211, align 8
  %213 = load i64, i64* @WFD_SUBELEM_EXT_CAPAB, align 8
  %214 = getelementptr inbounds i32*, i32** %212, i64 %213
  %215 = load i32*, i32** %214, align 8
  %216 = call i64 @wpabuf_len(i32* %215)
  %217 = load i64, i64* %6, align 8
  %218 = add i64 %217, %216
  store i64 %218, i64* %6, align 8
  br label %219

219:                                              ; preds = %209, %201
  %220 = load i64, i64* %6, align 8
  %221 = call %struct.wpabuf* @wpabuf_alloc(i64 %220)
  store %struct.wpabuf* %221, %struct.wpabuf** %5, align 8
  %222 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %223 = icmp eq %struct.wpabuf* %222, null
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  store i32 -1, i32* %2, align 4
  br label %433

225:                                              ; preds = %219
  %226 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %227 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %226, i32 0, i32 1
  %228 = load i32**, i32*** %227, align 8
  %229 = load i64, i64* @WFD_SUBELEM_DEVICE_INFO, align 8
  %230 = getelementptr inbounds i32*, i32** %228, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %242

233:                                              ; preds = %225
  %234 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %235 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %236 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %235, i32 0, i32 1
  %237 = load i32**, i32*** %236, align 8
  %238 = load i64, i64* @WFD_SUBELEM_DEVICE_INFO, align 8
  %239 = getelementptr inbounds i32*, i32** %237, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @wpabuf_put_buf(%struct.wpabuf* %234, i32* %240)
  br label %242

242:                                              ; preds = %233, %225
  %243 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %244 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %243, i32 0, i32 1
  %245 = load i32**, i32*** %244, align 8
  %246 = load i64, i64* @WFD_SUBELEM_R2_DEVICE_INFO, align 8
  %247 = getelementptr inbounds i32*, i32** %245, i64 %246
  %248 = load i32*, i32** %247, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %250, label %259

250:                                              ; preds = %242
  %251 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %252 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %253 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %252, i32 0, i32 1
  %254 = load i32**, i32*** %253, align 8
  %255 = load i64, i64* @WFD_SUBELEM_R2_DEVICE_INFO, align 8
  %256 = getelementptr inbounds i32*, i32** %254, i64 %255
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @wpabuf_put_buf(%struct.wpabuf* %251, i32* %257)
  br label %259

259:                                              ; preds = %250, %242
  %260 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %261 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %260, i32 0, i32 1
  %262 = load i32**, i32*** %261, align 8
  %263 = load i64, i64* @WFD_SUBELEM_ASSOCIATED_BSSID, align 8
  %264 = getelementptr inbounds i32*, i32** %262, i64 %263
  %265 = load i32*, i32** %264, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %276

267:                                              ; preds = %259
  %268 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %269 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %270 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %269, i32 0, i32 1
  %271 = load i32**, i32*** %270, align 8
  %272 = load i64, i64* @WFD_SUBELEM_ASSOCIATED_BSSID, align 8
  %273 = getelementptr inbounds i32*, i32** %271, i64 %272
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 @wpabuf_put_buf(%struct.wpabuf* %268, i32* %274)
  br label %276

276:                                              ; preds = %267, %259
  %277 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %278 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %277, i32 0, i32 1
  %279 = load i32**, i32*** %278, align 8
  %280 = load i64, i64* @WFD_SUBELEM_COUPLED_SINK, align 8
  %281 = getelementptr inbounds i32*, i32** %279, i64 %280
  %282 = load i32*, i32** %281, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %284, label %293

284:                                              ; preds = %276
  %285 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %286 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %287 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %286, i32 0, i32 1
  %288 = load i32**, i32*** %287, align 8
  %289 = load i64, i64* @WFD_SUBELEM_COUPLED_SINK, align 8
  %290 = getelementptr inbounds i32*, i32** %288, i64 %289
  %291 = load i32*, i32** %290, align 8
  %292 = call i32 @wpabuf_put_buf(%struct.wpabuf* %285, i32* %291)
  br label %293

293:                                              ; preds = %284, %276
  %294 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %295 = call %struct.wpabuf* @wifi_display_encaps(%struct.wpabuf* %294)
  store %struct.wpabuf* %295, %struct.wpabuf** %4, align 8
  %296 = load i32, i32* @MSG_DEBUG, align 4
  %297 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %298 = call i32 @wpa_hexdump_buf(i32 %296, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %297)
  %299 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %300 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %303 = call i32 @p2p_set_wfd_ie_beacon(i32* %301, %struct.wpabuf* %302)
  %304 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %305 = call %struct.wpabuf* @wifi_display_encaps(%struct.wpabuf* %304)
  store %struct.wpabuf* %305, %struct.wpabuf** %4, align 8
  %306 = load i32, i32* @MSG_DEBUG, align 4
  %307 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %308 = call i32 @wpa_hexdump_buf(i32 %306, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), %struct.wpabuf* %307)
  %309 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %310 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %313 = call i32 @p2p_set_wfd_ie_assoc_req(i32* %311, %struct.wpabuf* %312)
  %314 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %315 = call %struct.wpabuf* @wifi_display_encaps(%struct.wpabuf* %314)
  store %struct.wpabuf* %315, %struct.wpabuf** %4, align 8
  %316 = load i32, i32* @MSG_DEBUG, align 4
  %317 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %318 = call i32 @wpa_hexdump_buf(i32 %316, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), %struct.wpabuf* %317)
  %319 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %320 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %323 = call i32 @p2p_set_wfd_ie_go_neg(i32* %321, %struct.wpabuf* %322)
  %324 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %325 = call %struct.wpabuf* @wifi_display_encaps(%struct.wpabuf* %324)
  store %struct.wpabuf* %325, %struct.wpabuf** %4, align 8
  %326 = load i32, i32* @MSG_DEBUG, align 4
  %327 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %328 = call i32 @wpa_hexdump_buf(i32 %326, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), %struct.wpabuf* %327)
  %329 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %330 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %333 = call i32 @p2p_set_wfd_ie_prov_disc_req(i32* %331, %struct.wpabuf* %332)
  %334 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %335 = getelementptr inbounds %struct.wpabuf, %struct.wpabuf* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  store i64 %336, i64* %7, align 8
  %337 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %338 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %337, i32 0, i32 1
  %339 = load i32**, i32*** %338, align 8
  %340 = load i64, i64* @WFD_SUBELEM_EXT_CAPAB, align 8
  %341 = getelementptr inbounds i32*, i32** %339, i64 %340
  %342 = load i32*, i32** %341, align 8
  %343 = icmp ne i32* %342, null
  br i1 %343, label %344, label %353

344:                                              ; preds = %293
  %345 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %346 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %347 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %346, i32 0, i32 1
  %348 = load i32**, i32*** %347, align 8
  %349 = load i64, i64* @WFD_SUBELEM_EXT_CAPAB, align 8
  %350 = getelementptr inbounds i32*, i32** %348, i64 %349
  %351 = load i32*, i32** %350, align 8
  %352 = call i32 @wpabuf_put_buf(%struct.wpabuf* %345, i32* %351)
  br label %353

353:                                              ; preds = %344, %293
  %354 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %355 = call %struct.wpabuf* @wifi_display_encaps(%struct.wpabuf* %354)
  store %struct.wpabuf* %355, %struct.wpabuf** %4, align 8
  %356 = load i32, i32* @MSG_DEBUG, align 4
  %357 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %358 = call i32 @wpa_hexdump_buf(i32 %356, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), %struct.wpabuf* %357)
  %359 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %360 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %363 = call i32 @p2p_set_wfd_ie_probe_req(i32* %361, %struct.wpabuf* %362)
  %364 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %365 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %364, i32 0, i32 1
  %366 = load i32**, i32*** %365, align 8
  %367 = load i64, i64* @WFD_SUBELEM_SESSION_INFO, align 8
  %368 = getelementptr inbounds i32*, i32** %366, i64 %367
  %369 = load i32*, i32** %368, align 8
  %370 = icmp ne i32* %369, null
  br i1 %370, label %371, label %380

371:                                              ; preds = %353
  %372 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %373 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %374 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %373, i32 0, i32 1
  %375 = load i32**, i32*** %374, align 8
  %376 = load i64, i64* @WFD_SUBELEM_SESSION_INFO, align 8
  %377 = getelementptr inbounds i32*, i32** %375, i64 %376
  %378 = load i32*, i32** %377, align 8
  %379 = call i32 @wpabuf_put_buf(%struct.wpabuf* %372, i32* %378)
  br label %380

380:                                              ; preds = %371, %353
  %381 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %382 = call %struct.wpabuf* @wifi_display_encaps(%struct.wpabuf* %381)
  store %struct.wpabuf* %382, %struct.wpabuf** %4, align 8
  %383 = load i32, i32* @MSG_DEBUG, align 4
  %384 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %385 = call i32 @wpa_hexdump_buf(i32 %383, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), %struct.wpabuf* %384)
  %386 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %387 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %386, i32 0, i32 0
  %388 = load i32*, i32** %387, align 8
  %389 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %390 = call i32 @p2p_set_wfd_ie_probe_resp(i32* %388, %struct.wpabuf* %389)
  %391 = load i64, i64* %7, align 8
  %392 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %393 = getelementptr inbounds %struct.wpabuf, %struct.wpabuf* %392, i32 0, i32 0
  store i64 %391, i64* %393, align 8
  %394 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %395 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %394, i32 0, i32 1
  %396 = load i32**, i32*** %395, align 8
  %397 = load i64, i64* @WFD_SUBELEM_SESSION_INFO, align 8
  %398 = getelementptr inbounds i32*, i32** %396, i64 %397
  %399 = load i32*, i32** %398, align 8
  %400 = icmp ne i32* %399, null
  br i1 %400, label %401, label %410

401:                                              ; preds = %380
  %402 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %403 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %404 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %403, i32 0, i32 1
  %405 = load i32**, i32*** %404, align 8
  %406 = load i64, i64* @WFD_SUBELEM_SESSION_INFO, align 8
  %407 = getelementptr inbounds i32*, i32** %405, i64 %406
  %408 = load i32*, i32** %407, align 8
  %409 = call i32 @wpabuf_put_buf(%struct.wpabuf* %402, i32* %408)
  br label %410

410:                                              ; preds = %401, %380
  %411 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %412 = call %struct.wpabuf* @wifi_display_encaps(%struct.wpabuf* %411)
  store %struct.wpabuf* %412, %struct.wpabuf** %4, align 8
  %413 = load i32, i32* @MSG_DEBUG, align 4
  %414 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %415 = call i32 @wpa_hexdump_buf(i32 %413, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), %struct.wpabuf* %414)
  %416 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %417 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %416, i32 0, i32 0
  %418 = load i32*, i32** %417, align 8
  %419 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %420 = call i32 @p2p_set_wfd_ie_invitation(i32* %418, %struct.wpabuf* %419)
  %421 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %422 = call %struct.wpabuf* @wifi_display_encaps(%struct.wpabuf* %421)
  store %struct.wpabuf* %422, %struct.wpabuf** %4, align 8
  %423 = load i32, i32* @MSG_DEBUG, align 4
  %424 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %425 = call i32 @wpa_hexdump_buf(i32 %423, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), %struct.wpabuf* %424)
  %426 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %427 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %426, i32 0, i32 0
  %428 = load i32*, i32** %427, align 8
  %429 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %430 = call i32 @p2p_set_wfd_ie_prov_disc_resp(i32* %428, %struct.wpabuf* %429)
  %431 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %432 = call i32 @wpabuf_free(%struct.wpabuf* %431)
  store i32 0, i32* %2, align 4
  br label %433

433:                                              ; preds = %410, %224, %20, %12
  %434 = load i32, i32* %2, align 4
  ret i32 %434
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @p2p_set_wfd_ie_beacon(i32*, %struct.wpabuf*) #1

declare dso_local i32 @p2p_set_wfd_ie_probe_req(i32*, %struct.wpabuf*) #1

declare dso_local i32 @p2p_set_wfd_ie_probe_resp(i32*, %struct.wpabuf*) #1

declare dso_local i32 @p2p_set_wfd_ie_assoc_req(i32*, %struct.wpabuf*) #1

declare dso_local i32 @p2p_set_wfd_ie_invitation(i32*, %struct.wpabuf*) #1

declare dso_local i32 @p2p_set_wfd_ie_prov_disc_req(i32*, %struct.wpabuf*) #1

declare dso_local i32 @p2p_set_wfd_ie_prov_disc_resp(i32*, %struct.wpabuf*) #1

declare dso_local i32 @p2p_set_wfd_ie_go_neg(i32*, %struct.wpabuf*) #1

declare dso_local i32 @p2p_set_wfd_dev_info(i32*, i32*) #1

declare dso_local i32 @p2p_set_wfd_r2_dev_info(i32*, i32*) #1

declare dso_local i32 @p2p_set_wfd_assoc_bssid(i32*, i32*) #1

declare dso_local i32 @p2p_set_wfd_coupled_sink_info(i32*, i32*) #1

declare dso_local i64 @wpabuf_len(i32*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i32*) #1

declare dso_local %struct.wpabuf* @wifi_display_encaps(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
