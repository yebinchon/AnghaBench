; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_eke.c_eap_eke_process_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_eke.c_eap_eke_process_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_eke_data = type { i64, i64, i64, i64, i64, i32, i32, i64*, %struct.wpabuf*, i32*, i32 }
%struct.eap_method_ret = type { i32 }
%struct.wpabuf = type opaque

@IDENTITY = common dso_local global i64 0, align 8
@EAP_EKE_FAIL_PROTO_ERROR = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"EAP-EKE: Received EAP-EKE-ID/Request\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"EAP-EKE: Too short ID/Request Data\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"EAP-EKE: Too short ID/Request Data (num_prop=%u)\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"EAP-EKE: Proposal #%u: dh=%u encr=%u prf=%u mac=%u\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"EAP-EKE: Selected proposal\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"EAP-EKE: No acceptable proposal found\00", align 1
@EAP_EKE_FAIL_NO_PROPOSAL_CHOSEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [62 x i8] c"EAP-EKE: Too short ID/Request Data to include IDType/Identity\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"EAP-EKE: Server IDType %u\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"EAP-EKE: Server Identity\00", align 1
@EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"EAP-EKE: Sending EAP-EKE-ID/Response\00", align 1
@EAP_EKE_ID = common dso_local global i32 0, align 4
@EAP_EKE_ID_NAI = common dso_local global i32 0, align 4
@COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_eke_data*, %struct.eap_method_ret*, %struct.wpabuf*, i64*, i64)* @eap_eke_process_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_eke_process_id(%struct.eap_eke_data* %0, %struct.eap_method_ret* %1, %struct.wpabuf* %2, i64* %3, i64 %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_eke_data*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  store %struct.eap_eke_data* %0, %struct.eap_eke_data** %7, align 8
  store %struct.eap_method_ret* %1, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64* null, i64** %17, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %22 = call i64 @eap_get_id(%struct.wpabuf* %21)
  store i64 %22, i64* %19, align 8
  %23 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %24 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IDENTITY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %30 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %31 = load i64, i64* %19, align 8
  %32 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %33 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %29, %struct.eap_method_ret* %30, i64 %31, i32 %32)
  store %struct.wpabuf* %33, %struct.wpabuf** %6, align 8
  br label %366

34:                                               ; preds = %5
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %37 = load i64, i64* %11, align 8
  %38 = icmp ult i64 %37, 6
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %43 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %44 = load i64, i64* %19, align 8
  %45 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %46 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %42, %struct.eap_method_ret* %43, i64 %44, i32 %45)
  store %struct.wpabuf* %46, %struct.wpabuf** %6, align 8
  br label %366

47:                                               ; preds = %34
  %48 = load i64*, i64** %10, align 8
  store i64* %48, i64** %15, align 8
  %49 = load i64*, i64** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64* %51, i64** %16, align 8
  %52 = load i64*, i64** %15, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %15, align 8
  %54 = load i64, i64* %52, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %13, align 4
  %56 = load i64*, i64** %15, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %15, align 8
  %58 = load i64*, i64** %15, align 8
  %59 = load i32, i32* %13, align 4
  %60 = mul i32 %59, 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  %63 = load i64*, i64** %16, align 8
  %64 = icmp ugt i64* %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %47
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %70 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %71 = load i64, i64* %19, align 8
  %72 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %73 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %69, %struct.eap_method_ret* %70, i64 %71, i32 %72)
  store %struct.wpabuf* %73, %struct.wpabuf** %6, align 8
  br label %366

74:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %198, %74
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %201

79:                                               ; preds = %75
  %80 = load i64*, i64** %15, align 8
  store i64* %80, i64** %20, align 8
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i64*, i64** %15, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %15, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %15, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %15, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 3
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %82, i64 %85, i64 %88, i64 %91, i64 %94)
  %96 = load i64*, i64** %15, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 4
  store i64* %97, i64** %15, align 8
  %98 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %99 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %79
  %103 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %104 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %20, align 8
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %105, %107
  br i1 %108, label %114, label %109

109:                                              ; preds = %102, %79
  %110 = load i64*, i64** %20, align 8
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @eap_eke_supp_dhgroup(i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109, %102
  br label %198

115:                                              ; preds = %109
  %116 = load i64*, i64** %20, align 8
  %117 = getelementptr inbounds i64, i64* %116, i32 1
  store i64* %117, i64** %20, align 8
  %118 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %119 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %124 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %20, align 8
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %125, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %122, %115
  %130 = load i64*, i64** %20, align 8
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @eap_eke_supp_encr(i64 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129, %122
  br label %198

135:                                              ; preds = %129
  %136 = load i64*, i64** %20, align 8
  %137 = getelementptr inbounds i64, i64* %136, i32 1
  store i64* %137, i64** %20, align 8
  %138 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %139 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %144 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %20, align 8
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %145, %147
  br i1 %148, label %154, label %149

149:                                              ; preds = %142, %135
  %150 = load i64*, i64** %20, align 8
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @eap_eke_supp_prf(i64 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %149, %142
  br label %198

155:                                              ; preds = %149
  %156 = load i64*, i64** %20, align 8
  %157 = getelementptr inbounds i64, i64* %156, i32 1
  store i64* %157, i64** %20, align 8
  %158 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %159 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %155
  %163 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %164 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = load i64*, i64** %20, align 8
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %165, %167
  br i1 %168, label %174, label %169

169:                                              ; preds = %162, %155
  %170 = load i64*, i64** %20, align 8
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @eap_eke_supp_mac(i64 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169, %162
  br label %198

175:                                              ; preds = %169
  %176 = load i64*, i64** %20, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 -3
  store i64* %177, i64** %17, align 8
  %178 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %179 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %178, i32 0, i32 10
  %180 = load i64*, i64** %17, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64*, i64** %17, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64*, i64** %17, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 2
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %17, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 3
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @eap_eke_session_init(i32* %179, i64 %182, i64 %185, i64 %188, i64 %191)
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %175
  store i64* null, i64** %17, align 8
  br label %198

195:                                              ; preds = %175
  %196 = load i32, i32* @MSG_DEBUG, align 4
  %197 = call i32 (i32, i8*, ...) @wpa_printf(i32 %196, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %201

198:                                              ; preds = %194, %174, %154, %134, %114
  %199 = load i32, i32* %14, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %14, align 4
  br label %75

201:                                              ; preds = %195, %75
  %202 = load i64*, i64** %17, align 8
  %203 = icmp eq i64* %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = load i32, i32* @MSG_DEBUG, align 4
  %206 = call i32 (i32, i8*, ...) @wpa_printf(i32 %205, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %207 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %208 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %209 = load i64, i64* %19, align 8
  %210 = load i32, i32* @EAP_EKE_FAIL_NO_PROPOSAL_CHOSEN, align 4
  %211 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %207, %struct.eap_method_ret* %208, i64 %209, i32 %210)
  store %struct.wpabuf* %211, %struct.wpabuf** %6, align 8
  br label %366

212:                                              ; preds = %201
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %14, align 4
  %215 = sub i32 %213, %214
  %216 = sub i32 %215, 1
  %217 = mul i32 %216, 4
  %218 = load i64*, i64** %15, align 8
  %219 = zext i32 %217 to i64
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  store i64* %220, i64** %15, align 8
  %221 = load i64*, i64** %15, align 8
  %222 = load i64*, i64** %16, align 8
  %223 = icmp eq i64* %221, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %212
  %225 = load i32, i32* @MSG_DEBUG, align 4
  %226 = call i32 (i32, i8*, ...) @wpa_printf(i32 %225, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  %227 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %228 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %229 = load i64, i64* %19, align 8
  %230 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %231 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %227, %struct.eap_method_ret* %228, i64 %229, i32 %230)
  store %struct.wpabuf* %231, %struct.wpabuf** %6, align 8
  br label %366

232:                                              ; preds = %212
  %233 = load i64*, i64** %15, align 8
  %234 = getelementptr inbounds i64, i64* %233, i32 1
  store i64* %234, i64** %15, align 8
  %235 = load i64, i64* %233, align 8
  store i64 %235, i64* %18, align 8
  %236 = load i32, i32* @MSG_DEBUG, align 4
  %237 = load i64, i64* %18, align 8
  %238 = call i32 (i32, i8*, ...) @wpa_printf(i32 %236, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 %237)
  %239 = load i32, i32* @MSG_DEBUG, align 4
  %240 = load i64*, i64** %15, align 8
  %241 = load i64*, i64** %16, align 8
  %242 = load i64*, i64** %15, align 8
  %243 = ptrtoint i64* %241 to i64
  %244 = ptrtoint i64* %242 to i64
  %245 = sub i64 %243, %244
  %246 = sdiv exact i64 %245, 8
  %247 = trunc i64 %246 to i32
  %248 = call i32 @wpa_hexdump_ascii(i32 %239, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64* %240, i32 %247)
  %249 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %250 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %249, i32 0, i32 9
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @os_free(i32* %251)
  %253 = load i64*, i64** %15, align 8
  %254 = load i64*, i64** %16, align 8
  %255 = load i64*, i64** %15, align 8
  %256 = ptrtoint i64* %254 to i64
  %257 = ptrtoint i64* %255 to i64
  %258 = sub i64 %256, %257
  %259 = sdiv exact i64 %258, 8
  %260 = trunc i64 %259 to i32
  %261 = call i32* @os_memdup(i64* %253, i32 %260)
  %262 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %263 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %262, i32 0, i32 9
  store i32* %261, i32** %263, align 8
  %264 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %265 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %264, i32 0, i32 9
  %266 = load i32*, i32** %265, align 8
  %267 = icmp eq i32* %266, null
  br i1 %267, label %268, label %274

268:                                              ; preds = %232
  %269 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %270 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %271 = load i64, i64* %19, align 8
  %272 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %273 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %269, %struct.eap_method_ret* %270, i64 %271, i32 %272)
  store %struct.wpabuf* %273, %struct.wpabuf** %6, align 8
  br label %366

274:                                              ; preds = %232
  %275 = load i64*, i64** %16, align 8
  %276 = load i64*, i64** %15, align 8
  %277 = ptrtoint i64* %275 to i64
  %278 = ptrtoint i64* %276 to i64
  %279 = sub i64 %277, %278
  %280 = sdiv exact i64 %279, 8
  %281 = trunc i64 %280 to i32
  %282 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %283 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %282, i32 0, i32 5
  store i32 %281, i32* %283, align 8
  %284 = load i32, i32* @MSG_DEBUG, align 4
  %285 = call i32 (i32, i8*, ...) @wpa_printf(i32 %284, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %286 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %287 = load i64, i64* %19, align 8
  %288 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %289 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 7, %290
  %292 = load i32, i32* @EAP_EKE_ID, align 4
  %293 = call %struct.wpabuf* @eap_eke_build_msg(%struct.eap_eke_data* %286, i64 %287, i32 %291, i32 %292)
  store %struct.wpabuf* %293, %struct.wpabuf** %12, align 8
  %294 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %295 = icmp eq %struct.wpabuf* %294, null
  br i1 %295, label %296, label %302

296:                                              ; preds = %274
  %297 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %298 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %299 = load i64, i64* %19, align 8
  %300 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %301 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %297, %struct.eap_method_ret* %298, i64 %299, i32 %300)
  store %struct.wpabuf* %301, %struct.wpabuf** %6, align 8
  br label %366

302:                                              ; preds = %274
  %303 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %304 = call i32 @wpabuf_put_u8(%struct.wpabuf* %303, i32 1)
  %305 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %306 = call i32 @wpabuf_put_u8(%struct.wpabuf* %305, i32 0)
  %307 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %308 = load i64*, i64** %17, align 8
  %309 = call i32 @wpabuf_put_data(%struct.wpabuf* %307, i64* %308, i32 4)
  %310 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %311 = load i32, i32* @EAP_EKE_ID_NAI, align 4
  %312 = call i32 @wpabuf_put_u8(%struct.wpabuf* %310, i32 %311)
  %313 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %314 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %313, i32 0, i32 7
  %315 = load i64*, i64** %314, align 8
  %316 = icmp ne i64* %315, null
  br i1 %316, label %317, label %326

317:                                              ; preds = %302
  %318 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %319 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %320 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %319, i32 0, i32 7
  %321 = load i64*, i64** %320, align 8
  %322 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %323 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %322, i32 0, i32 6
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @wpabuf_put_data(%struct.wpabuf* %318, i64* %321, i32 %324)
  br label %326

326:                                              ; preds = %317, %302
  %327 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %328 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %327, i32 0, i32 8
  %329 = load %struct.wpabuf*, %struct.wpabuf** %328, align 8
  %330 = call i32 @wpabuf_free(%struct.wpabuf* %329)
  %331 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %332 = call i64 @wpabuf_len(%struct.wpabuf* %331)
  %333 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %334 = call i64 @wpabuf_len(%struct.wpabuf* %333)
  %335 = add nsw i64 %332, %334
  %336 = call %struct.wpabuf* @wpabuf_alloc(i64 %335)
  %337 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %338 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %337, i32 0, i32 8
  store %struct.wpabuf* %336, %struct.wpabuf** %338, align 8
  %339 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %340 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %339, i32 0, i32 8
  %341 = load %struct.wpabuf*, %struct.wpabuf** %340, align 8
  %342 = icmp eq %struct.wpabuf* %341, null
  br i1 %342, label %343, label %351

343:                                              ; preds = %326
  %344 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %345 = call i32 @wpabuf_free(%struct.wpabuf* %344)
  %346 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %347 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %348 = load i64, i64* %19, align 8
  %349 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %350 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %346, %struct.eap_method_ret* %347, i64 %348, i32 %349)
  store %struct.wpabuf* %350, %struct.wpabuf** %6, align 8
  br label %366

351:                                              ; preds = %326
  %352 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %353 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %352, i32 0, i32 8
  %354 = load %struct.wpabuf*, %struct.wpabuf** %353, align 8
  %355 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %356 = call i32 @wpabuf_put_buf(%struct.wpabuf* %354, %struct.wpabuf* %355)
  %357 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %358 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %357, i32 0, i32 8
  %359 = load %struct.wpabuf*, %struct.wpabuf** %358, align 8
  %360 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %361 = call i32 @wpabuf_put_buf(%struct.wpabuf* %359, %struct.wpabuf* %360)
  %362 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %363 = load i32, i32* @COMMIT, align 4
  %364 = call i32 @eap_eke_state(%struct.eap_eke_data* %362, i32 %363)
  %365 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %365, %struct.wpabuf** %6, align 8
  br label %366

366:                                              ; preds = %351, %343, %296, %268, %224, %204, %65, %39, %28
  %367 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %367
}

declare dso_local i64 @eap_get_id(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data*, %struct.eap_method_ret*, i64, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_eke_supp_dhgroup(i64) #1

declare dso_local i32 @eap_eke_supp_encr(i64) #1

declare dso_local i32 @eap_eke_supp_prf(i64) #1

declare dso_local i32 @eap_eke_supp_mac(i64) #1

declare dso_local i64 @eap_eke_session_init(i32*, i64, i64, i64, i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i64*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_memdup(i64*, i32) #1

declare dso_local %struct.wpabuf* @eap_eke_build_msg(%struct.eap_eke_data*, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @eap_eke_state(%struct.eap_eke_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
