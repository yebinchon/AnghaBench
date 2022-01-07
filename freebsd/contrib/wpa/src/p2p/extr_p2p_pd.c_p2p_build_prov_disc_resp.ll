; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_pd.c_p2p_build_prov_disc_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_pd.c_p2p_build_prov_disc_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_data = type { i64, i32, %struct.wpabuf**, %struct.p2ps_provision*, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i64, %struct.p2p_group**, %struct.wpabuf* }
%struct.p2ps_provision = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32*, i64, i32*, i32*, i64*, i32*)*, i32, i32, i32, i32, i64 }
%struct.p2p_group = type { i32 }
%struct.p2p_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VENDOR_ELEM_P2P_PD_RESP = common dso_local global i64 0, align 8
@P2P_PROV_DISC_RESP = common dso_local global i32 0, align 4
@P2P_SC_SUCCESS = common dso_local global i32 0, align 4
@P2P_SC_SUCCESS_DEFERRED = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_PERSISTENT_GROUP = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_PERSISTENT_RECONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_CROSS_CONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_INTRA_BSS_DIST = common dso_local global i32 0, align 4
@P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY = common dso_local global i32 0, align 4
@SSID_MAX_LEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@P2PS_SETUP_GROUP_OWNER = common dso_local global i32 0, align 4
@P2PS_SETUP_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.p2p_data*, %struct.p2p_device*, i32, i32, i32, i32, i32*, i64, i32*, i64, i32*, i32)* @p2p_build_prov_disc_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_prov_disc_resp(%struct.p2p_data* %0, %struct.p2p_device* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i64 %7, i32* %8, i64 %9, i32* %10, i32 %11) #0 {
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca %struct.p2p_data*, align 8
  %15 = alloca %struct.p2p_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.wpabuf*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca %struct.p2ps_provision*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %14, align 8
  store %struct.p2p_device* %1, %struct.p2p_device** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i64 %7, i64* %21, align 8
  store i32* %8, i32** %22, align 8
  store i64 %9, i64* %23, align 8
  store i32* %10, i32** %24, align 8
  store i32 %11, i32* %25, align 4
  store i64 0, i64* %27, align 8
  store i32 0, i32* %28, align 4
  %39 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %40 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %39, i32 0, i32 2
  %41 = load %struct.wpabuf**, %struct.wpabuf*** %40, align 8
  %42 = icmp ne %struct.wpabuf** %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %12
  %44 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %45 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %44, i32 0, i32 2
  %46 = load %struct.wpabuf**, %struct.wpabuf*** %45, align 8
  %47 = load i64, i64* @VENDOR_ELEM_P2P_PD_RESP, align 8
  %48 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %46, i64 %47
  %49 = load %struct.wpabuf*, %struct.wpabuf** %48, align 8
  %50 = icmp ne %struct.wpabuf* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %53 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %52, i32 0, i32 2
  %54 = load %struct.wpabuf**, %struct.wpabuf*** %53, align 8
  %55 = load i64, i64* @VENDOR_ELEM_P2P_PD_RESP, align 8
  %56 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %54, i64 %55
  %57 = load %struct.wpabuf*, %struct.wpabuf** %56, align 8
  %58 = call i64 @wpabuf_len(%struct.wpabuf* %57)
  %59 = load i64, i64* %27, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %27, align 8
  br label %61

61:                                               ; preds = %51, %43, %12
  %62 = load i64, i64* %27, align 8
  %63 = add i64 1000, %62
  %64 = trunc i64 %63 to i32
  %65 = call %struct.wpabuf* @wpabuf_alloc(i32 %64)
  store %struct.wpabuf* %65, %struct.wpabuf** %26, align 8
  %66 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %67 = icmp eq %struct.wpabuf* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store %struct.wpabuf* null, %struct.wpabuf** %13, align 8
  br label %409

69:                                               ; preds = %61
  %70 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %71 = load i32, i32* @P2P_PROV_DISC_RESP, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf* %70, i32 %71, i32 %72)
  %74 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %75 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %74, i32 0, i32 3
  %76 = load %struct.p2ps_provision*, %struct.p2ps_provision** %75, align 8
  %77 = icmp ne %struct.p2ps_provision* %76, null
  br i1 %77, label %78, label %351

78:                                               ; preds = %69
  %79 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %80 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %79, i32 0, i32 3
  %81 = load %struct.p2ps_provision*, %struct.p2ps_provision** %80, align 8
  %82 = getelementptr inbounds %struct.p2ps_provision, %struct.p2ps_provision* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %351

86:                                               ; preds = %78
  %87 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %88 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %87)
  store i32* %88, i32** %29, align 8
  %89 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %90 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %89, i32 0, i32 3
  %91 = load %struct.p2ps_provision*, %struct.p2ps_provision** %90, align 8
  store %struct.p2ps_provision* %91, %struct.p2ps_provision** %30, align 8
  store i32 0, i32* %32, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* @P2P_SC_SUCCESS, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* @P2P_SC_SUCCESS_DEFERRED, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95, %86
  %100 = load %struct.p2ps_provision*, %struct.p2ps_provision** %30, align 8
  %101 = getelementptr inbounds %struct.p2ps_provision, %struct.p2ps_provision* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %32, align 4
  br label %103

103:                                              ; preds = %99, %95
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %103
  %107 = load %struct.p2ps_provision*, %struct.p2ps_provision** %30, align 8
  %108 = getelementptr inbounds %struct.p2ps_provision, %struct.p2ps_provision* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.p2ps_provision*, %struct.p2ps_provision** %30, align 8
  %113 = getelementptr inbounds %struct.p2ps_provision, %struct.p2ps_provision* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %17, align 4
  br label %115

115:                                              ; preds = %111, %106, %103
  %116 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @p2p_buf_add_status(%struct.wpabuf* %116, i32 %117)
  %119 = load i32, i32* @P2P_GROUP_CAPAB_PERSISTENT_GROUP, align 4
  %120 = load i32, i32* @P2P_GROUP_CAPAB_PERSISTENT_RECONN, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* %31, align 4
  %122 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %123 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %122, i32 0, i32 10
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %115
  %127 = load i32, i32* @P2P_GROUP_CAPAB_CROSS_CONN, align 4
  %128 = load i32, i32* %31, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %31, align 4
  br label %130

130:                                              ; preds = %126, %115
  %131 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %132 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %131, i32 0, i32 7
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* @P2P_GROUP_CAPAB_INTRA_BSS_DIST, align 4
  %139 = load i32, i32* %31, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %31, align 4
  br label %141

141:                                              ; preds = %137, %130
  %142 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %143 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %144 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY, align 4
  %147 = xor i32 %146, -1
  %148 = and i32 %145, %147
  %149 = load i32, i32* %31, align 4
  %150 = call i32 @p2p_buf_add_capability(%struct.wpabuf* %142, i32 %148, i32 %149)
  %151 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %152 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %153 = call i32 @p2p_buf_add_device_info(%struct.wpabuf* %151, %struct.p2p_data* %152, i32* null)
  %154 = load i32*, i32** %22, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %216

156:                                              ; preds = %141
  %157 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %158 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %157, i32 0, i32 7
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32 (i32, i32, i32*, i64, i32*, i32*, i64*, i32*)*, i32 (i32, i32, i32*, i64, i32*, i32*, i64*, i32*)** %160, align 8
  %162 = icmp ne i32 (i32, i32, i32*, i64, i32*, i32*, i64*, i32*)* %161, null
  br i1 %162, label %163, label %216

163:                                              ; preds = %156
  %164 = load %struct.p2p_device*, %struct.p2p_device** %15, align 8
  %165 = icmp ne %struct.p2p_device* %164, null
  br i1 %165, label %166, label %216

166:                                              ; preds = %163
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* @P2P_SC_SUCCESS, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* @P2P_SC_SUCCESS_DEFERRED, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %216

174:                                              ; preds = %170, %166
  %175 = load i32, i32* @SSID_MAX_LEN, align 4
  %176 = zext i32 %175 to i64
  %177 = call i8* @llvm.stacksave()
  store i8* %177, i8** %33, align 8
  %178 = alloca i32, i64 %176, align 16
  store i64 %176, i64* %34, align 8
  %179 = load i32, i32* @ETH_ALEN, align 4
  %180 = zext i32 %179 to i64
  %181 = alloca i32, i64 %180, align 16
  store i64 %180, i64* %36, align 8
  %182 = load i32, i32* @ETH_ALEN, align 4
  %183 = zext i32 %182 to i64
  %184 = alloca i32, i64 %183, align 16
  store i64 %183, i64* %37, align 8
  %185 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %186 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %185, i32 0, i32 7
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32 (i32, i32, i32*, i64, i32*, i32*, i64*, i32*)*, i32 (i32, i32, i32*, i64, i32*, i32*, i64*, i32*)** %188, align 8
  %190 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %191 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %190, i32 0, i32 7
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.p2p_device*, %struct.p2p_device** %15, align 8
  %196 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %22, align 8
  %200 = load i64, i64* %23, align 8
  %201 = call i32 %189(i32 %194, i32 %198, i32* %199, i64 %200, i32* %181, i32* %178, i64* %35, i32* %184)
  store i32 %201, i32* %28, align 4
  %202 = load i32, i32* %28, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %174
  %205 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %206 = load i64, i64* %35, align 8
  %207 = call i32 @p2p_buf_add_persistent_group_info(%struct.wpabuf* %205, i32* %181, i32* %178, i64 %206)
  %208 = call i32 @is_zero_ether_addr(i32* %184)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %204
  %211 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %212 = call i32 @p2p_buf_add_intended_addr(%struct.wpabuf* %211, i32* %184)
  br label %213

213:                                              ; preds = %210, %204
  br label %214

214:                                              ; preds = %213, %174
  %215 = load i8*, i8** %33, align 8
  call void @llvm.stackrestore(i8* %215)
  br label %216

216:                                              ; preds = %214, %170, %163, %156, %141
  %217 = load i32, i32* %28, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %229, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %32, align 4
  %221 = load i32, i32* @P2PS_SETUP_GROUP_OWNER, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %219
  %225 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %226 = load %struct.p2p_device*, %struct.p2p_device** %15, align 8
  %227 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %228 = call i32 @p2ps_add_new_group_info(%struct.p2p_data* %225, %struct.p2p_device* %226, %struct.wpabuf* %227)
  br label %229

229:                                              ; preds = %224, %219, %216
  %230 = load i32, i32* %28, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* %32, align 4
  %234 = load i32, i32* @P2PS_SETUP_GROUP_OWNER, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %280

237:                                              ; preds = %232, %229
  %238 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %239 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %237
  %243 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %244 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %243, i32 0, i32 8
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %261

247:                                              ; preds = %242
  %248 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %249 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %250 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %249, i32 0, i32 7
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %255 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %254, i32 0, i32 9
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %258 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %257, i32 0, i32 8
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @p2p_buf_add_operating_channel(%struct.wpabuf* %248, i32 %253, i32 %256, i32 %259)
  br label %279

261:                                              ; preds = %242, %237
  %262 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %263 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %264 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %263, i32 0, i32 7
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %269 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %268, i32 0, i32 7
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %274 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %273, i32 0, i32 7
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @p2p_buf_add_operating_channel(%struct.wpabuf* %262, i32 %267, i32 %272, i32 %277)
  br label %279

279:                                              ; preds = %261, %247
  br label %280

280:                                              ; preds = %279, %232
  %281 = load i32, i32* %28, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %290, label %283

283:                                              ; preds = %280
  %284 = load i32, i32* %32, align 4
  %285 = load i32, i32* @P2PS_SETUP_CLIENT, align 4
  %286 = load i32, i32* @P2PS_SETUP_GROUP_OWNER, align 4
  %287 = or i32 %285, %286
  %288 = and i32 %284, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %300

290:                                              ; preds = %283, %280
  %291 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %292 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %293 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %292, i32 0, i32 7
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %298 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %297, i32 0, i32 6
  %299 = call i32 @p2p_buf_add_channel_list(%struct.wpabuf* %291, i32 %296, i32* %298)
  br label %300

300:                                              ; preds = %290, %283
  %301 = load i32, i32* %28, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %310, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* %32, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %303
  %307 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %308 = load i32, i32* %32, align 4
  %309 = call i32 @p2p_buf_add_connection_capability(%struct.wpabuf* %307, i32 %308)
  br label %310

310:                                              ; preds = %306, %303, %300
  %311 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %312 = load i32, i32* %19, align 4
  %313 = load %struct.p2ps_provision*, %struct.p2ps_provision** %30, align 8
  %314 = getelementptr inbounds %struct.p2ps_provision, %struct.p2ps_provision* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @p2p_buf_add_advertisement_id(%struct.wpabuf* %311, i32 %312, i32 %315)
  %317 = load i32, i32* %28, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %326, label %319

319:                                              ; preds = %310
  %320 = load i32, i32* %32, align 4
  %321 = load i32, i32* @P2PS_SETUP_CLIENT, align 4
  %322 = load i32, i32* @P2PS_SETUP_GROUP_OWNER, align 4
  %323 = or i32 %321, %322
  %324 = and i32 %320, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %335

326:                                              ; preds = %319, %310
  %327 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %328 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %329 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %332 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @p2p_buf_add_config_timeout(%struct.wpabuf* %327, i32 %330, i32 %333)
  br label %335

335:                                              ; preds = %326, %319
  %336 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %337 = load %struct.p2ps_provision*, %struct.p2ps_provision** %30, align 8
  %338 = getelementptr inbounds %struct.p2ps_provision, %struct.p2ps_provision* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.p2ps_provision*, %struct.p2ps_provision** %30, align 8
  %341 = getelementptr inbounds %struct.p2ps_provision, %struct.p2ps_provision* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @p2p_buf_add_session_id(%struct.wpabuf* %336, i32 %339, i32 %342)
  %344 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %345 = load i32, i32* %25, align 4
  %346 = load i32*, i32** %24, align 8
  %347 = call i32 @p2p_buf_add_feature_capability(%struct.wpabuf* %344, i32 %345, i32* %346)
  %348 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %349 = load i32*, i32** %29, align 8
  %350 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %348, i32* %349)
  br label %382

351:                                              ; preds = %78, %69
  %352 = load i32, i32* %17, align 4
  %353 = load i32, i32* @P2P_SC_SUCCESS, align 4
  %354 = icmp ne i32 %352, %353
  br i1 %354, label %358, label %355

355:                                              ; preds = %351
  %356 = load i32, i32* %19, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %381

358:                                              ; preds = %355, %351
  %359 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %360 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %359)
  store i32* %360, i32** %38, align 8
  %361 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %362 = load i32, i32* %17, align 4
  %363 = call i32 @p2p_buf_add_status(%struct.wpabuf* %361, i32 %362)
  %364 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %365 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %364, i32 0, i32 3
  %366 = load %struct.p2ps_provision*, %struct.p2ps_provision** %365, align 8
  %367 = icmp ne %struct.p2ps_provision* %366, null
  br i1 %367, label %368, label %377

368:                                              ; preds = %358
  %369 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %370 = load i32, i32* %19, align 4
  %371 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %372 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %371, i32 0, i32 3
  %373 = load %struct.p2ps_provision*, %struct.p2ps_provision** %372, align 8
  %374 = getelementptr inbounds %struct.p2ps_provision, %struct.p2ps_provision* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @p2p_buf_add_advertisement_id(%struct.wpabuf* %369, i32 %370, i32 %375)
  br label %377

377:                                              ; preds = %368, %358
  %378 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %379 = load i32*, i32** %38, align 8
  %380 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %378, i32* %379)
  br label %381

381:                                              ; preds = %377, %355
  br label %382

382:                                              ; preds = %381, %335
  %383 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %384 = load i32, i32* %18, align 4
  %385 = call i32 @p2p_build_wps_ie_config_methods(%struct.wpabuf* %383, i32 %384)
  %386 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %387 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %386, i32 0, i32 2
  %388 = load %struct.wpabuf**, %struct.wpabuf*** %387, align 8
  %389 = icmp ne %struct.wpabuf** %388, null
  br i1 %389, label %390, label %407

390:                                              ; preds = %382
  %391 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %392 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %391, i32 0, i32 2
  %393 = load %struct.wpabuf**, %struct.wpabuf*** %392, align 8
  %394 = load i64, i64* @VENDOR_ELEM_P2P_PD_RESP, align 8
  %395 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %393, i64 %394
  %396 = load %struct.wpabuf*, %struct.wpabuf** %395, align 8
  %397 = icmp ne %struct.wpabuf* %396, null
  br i1 %397, label %398, label %407

398:                                              ; preds = %390
  %399 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %400 = load %struct.p2p_data*, %struct.p2p_data** %14, align 8
  %401 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %400, i32 0, i32 2
  %402 = load %struct.wpabuf**, %struct.wpabuf*** %401, align 8
  %403 = load i64, i64* @VENDOR_ELEM_P2P_PD_RESP, align 8
  %404 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %402, i64 %403
  %405 = load %struct.wpabuf*, %struct.wpabuf** %404, align 8
  %406 = call i32 @wpabuf_put_buf(%struct.wpabuf* %399, %struct.wpabuf* %405)
  br label %407

407:                                              ; preds = %398, %390, %382
  %408 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  store %struct.wpabuf* %408, %struct.wpabuf** %13, align 8
  br label %409

409:                                              ; preds = %407, %68
  %410 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  ret %struct.wpabuf* %410
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_status(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_add_capability(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_device_info(%struct.wpabuf*, %struct.p2p_data*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @p2p_buf_add_persistent_group_info(%struct.wpabuf*, i32*, i32*, i64) #1

declare dso_local i32 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @p2p_buf_add_intended_addr(%struct.wpabuf*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @p2ps_add_new_group_info(%struct.p2p_data*, %struct.p2p_device*, %struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_operating_channel(%struct.wpabuf*, i32, i32, i32) #1

declare dso_local i32 @p2p_buf_add_channel_list(%struct.wpabuf*, i32, i32*) #1

declare dso_local i32 @p2p_buf_add_connection_capability(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_add_advertisement_id(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_config_timeout(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_session_id(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_feature_capability(%struct.wpabuf*, i32, i32*) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

declare dso_local i32 @p2p_build_wps_ie_config_methods(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
