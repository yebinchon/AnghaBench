; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_process_signed_connector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_process_signed_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_signed_connector_info = type { i8*, i64 }
%struct.wpabuf = type { i32 }
%struct.dpp_curve_params = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DPP: C-sign-key group: %s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"DPP: Missing dot(1) in signedConnector\00", align 1
@DPP_STATUS_INVALID_CONNECTOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"DPP: Failed to base64url decode signedConnector JWS Protected Header\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"DPP: signedConnector - JWS Protected Header\00", align 1
@SHA256_MAC_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [82 x i8] c"DPP: Unexpected signedConnector JWS Protected Header kid length: %u (expected %u)\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"DPP: Missing dot(2) in signedConnector\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"DPP: Failed to base64url decode signedConnector JWS Payload\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"DPP: signedConnector - JWS Payload\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"DPP: Failed to base64url decode signedConnector signature\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"DPP: signedConnector - signature\00", align 1
@DPP_STATUS_NO_MATCH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [54 x i8] c"DPP: Unexpected signedConnector signature length (%d)\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"DPP: Could not DER encode signature\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"DPP: DER encoded signature\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"DPP: EVP_DigestVerifyInit failed: %s\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"DPP: EVP_DigestVerifyUpdate failed: %s\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"DPP: EVP_DigestVerifyFinal failed (res=%d): %s\00", align 1
@DPP_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_signed_connector_info*, i32*, i8*)* @dpp_process_signed_connector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_process_signed_connector(%struct.dpp_signed_connector_info* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.dpp_signed_connector_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.dpp_curve_params*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  store %struct.dpp_signed_connector_info* %0, %struct.dpp_signed_connector_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 255, i32* %7, align 4
  store %struct.wpabuf* null, %struct.wpabuf** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32* null, i32** %17, align 8
  store i8* null, i8** %18, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @EVP_PKEY_get1_EC_KEY(i32* %29)
  store i32* %30, i32** %26, align 8
  %31 = load i32*, i32** %26, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  br label %273

34:                                               ; preds = %3
  %35 = load i32*, i32** %26, align 8
  %36 = call i32* @EC_KEY_get0_group(i32* %35)
  store i32* %36, i32** %27, align 8
  %37 = load i32*, i32** %27, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %273

40:                                               ; preds = %34
  %41 = load i32*, i32** %27, align 8
  %42 = call i32 @EC_GROUP_get_curve_name(i32* %41)
  store i32 %42, i32* %28, align 4
  %43 = load i32, i32* %28, align 4
  %44 = call %struct.dpp_curve_params* @dpp_get_curve_nid(i32 %43)
  store %struct.dpp_curve_params* %44, %struct.dpp_curve_params** %25, align 8
  %45 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %25, align 8
  %46 = icmp ne %struct.dpp_curve_params* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %273

48:                                               ; preds = %40
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %25, align 8
  %51 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.dpp_signed_connector_info*, %struct.dpp_signed_connector_info** %4, align 8
  %55 = call i32 @os_memset(%struct.dpp_signed_connector_info* %54, i32 0, i32 16)
  %56 = load i8*, i8** %6, align 8
  store i8* %56, i8** %8, align 8
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i8* @os_strchr(i8* %57, i8 signext 46)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %48
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @DPP_STATUS_INVALID_CONNECTOR, align 4
  store i32 %64, i32* %7, align 4
  br label %273

65:                                               ; preds = %48
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i8* @base64_url_decode(i8* %66, i32 %72, i64* %15)
  store i8* %73, i8** %13, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %65
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = call i32 (i32, i8*, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @DPP_STATUS_INVALID_CONNECTOR, align 4
  store i32 %79, i32* %7, align 4
  br label %273

80:                                               ; preds = %65
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = load i64, i64* %15, align 8
  %84 = call i32 @wpa_hexdump_ascii(i32 %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %82, i64 %83)
  %85 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %25, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = load i64, i64* %15, align 8
  %88 = call %struct.wpabuf* @dpp_parse_jws_prot_hdr(%struct.dpp_curve_params* %85, i8* %86, i64 %87, i32** %17)
  store %struct.wpabuf* %88, %struct.wpabuf** %12, align 8
  %89 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %90 = icmp ne %struct.wpabuf* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %80
  %92 = load i32, i32* @DPP_STATUS_INVALID_CONNECTOR, align 4
  store i32 %92, i32* %7, align 4
  br label %273

93:                                               ; preds = %80
  %94 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %95 = call i64 @wpabuf_len(%struct.wpabuf* %94)
  %96 = load i64, i64* @SHA256_MAC_LEN, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load i32, i32* @MSG_DEBUG, align 4
  %100 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %101 = call i64 @wpabuf_len(%struct.wpabuf* %100)
  %102 = trunc i64 %101 to i32
  %103 = load i64, i64* @SHA256_MAC_LEN, align 8
  %104 = call i32 (i32, i8*, ...) @wpa_printf(i32 %99, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i32 %102, i64 %103)
  %105 = load i32, i32* @DPP_STATUS_INVALID_CONNECTOR, align 4
  store i32 %105, i32* %7, align 4
  br label %273

106:                                              ; preds = %93
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  store i8* %108, i8** %8, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = call i8* @os_strchr(i8* %109, i8 signext 46)
  store i8* %110, i8** %9, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %114, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* @DPP_STATUS_INVALID_CONNECTOR, align 4
  store i32 %116, i32* %7, align 4
  br label %273

117:                                              ; preds = %106
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 -1
  store i8* %119, i8** %11, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  %127 = load %struct.dpp_signed_connector_info*, %struct.dpp_signed_connector_info** %4, align 8
  %128 = getelementptr inbounds %struct.dpp_signed_connector_info, %struct.dpp_signed_connector_info* %127, i32 0, i32 1
  %129 = call i8* @base64_url_decode(i8* %120, i32 %126, i64* %128)
  %130 = load %struct.dpp_signed_connector_info*, %struct.dpp_signed_connector_info** %4, align 8
  %131 = getelementptr inbounds %struct.dpp_signed_connector_info, %struct.dpp_signed_connector_info* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  %132 = load %struct.dpp_signed_connector_info*, %struct.dpp_signed_connector_info** %4, align 8
  %133 = getelementptr inbounds %struct.dpp_signed_connector_info, %struct.dpp_signed_connector_info* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %117
  %137 = load i32, i32* @MSG_DEBUG, align 4
  %138 = call i32 (i32, i8*, ...) @wpa_printf(i32 %137, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32, i32* @DPP_STATUS_INVALID_CONNECTOR, align 4
  store i32 %139, i32* %7, align 4
  br label %273

140:                                              ; preds = %117
  %141 = load i32, i32* @MSG_DEBUG, align 4
  %142 = load %struct.dpp_signed_connector_info*, %struct.dpp_signed_connector_info** %4, align 8
  %143 = getelementptr inbounds %struct.dpp_signed_connector_info, %struct.dpp_signed_connector_info* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.dpp_signed_connector_info*, %struct.dpp_signed_connector_info** %4, align 8
  %146 = getelementptr inbounds %struct.dpp_signed_connector_info, %struct.dpp_signed_connector_info* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @wpa_hexdump_ascii(i32 %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %144, i64 %147)
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  store i8* %150, i8** %8, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = call i32 @os_strlen(i8* %152)
  %154 = call i8* @base64_url_decode(i8* %151, i32 %153, i64* %16)
  store i8* %154, i8** %14, align 8
  %155 = load i8*, i8** %14, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %161, label %157

157:                                              ; preds = %140
  %158 = load i32, i32* @MSG_DEBUG, align 4
  %159 = call i32 (i32, i8*, ...) @wpa_printf(i32 %158, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  %160 = load i32, i32* @DPP_STATUS_INVALID_CONNECTOR, align 4
  store i32 %160, i32* %7, align 4
  br label %273

161:                                              ; preds = %140
  %162 = load i32, i32* @MSG_DEBUG, align 4
  %163 = load i8*, i8** %14, align 8
  %164 = load i64, i64* %16, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 @wpa_hexdump(i32 %162, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %163, i32 %165)
  %167 = load i32*, i32** %5, align 8
  %168 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %169 = call i64 @dpp_check_pubkey_match(i32* %167, %struct.wpabuf* %168)
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %161
  %172 = load i32, i32* @DPP_STATUS_NO_MATCH, align 4
  store i32 %172, i32* %7, align 4
  br label %273

173:                                              ; preds = %161
  %174 = load i64, i64* %16, align 8
  %175 = and i64 %174, 1
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i32, i32* @MSG_DEBUG, align 4
  %179 = load i64, i64* %16, align 8
  %180 = trunc i64 %179 to i32
  %181 = call i32 (i32, i8*, ...) @wpa_printf(i32 %178, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @DPP_STATUS_INVALID_CONNECTOR, align 4
  store i32 %182, i32* %7, align 4
  br label %273

183:                                              ; preds = %173
  %184 = load i8*, i8** %14, align 8
  %185 = load i64, i64* %16, align 8
  %186 = udiv i64 %185, 2
  %187 = call i32* @BN_bin2bn(i8* %184, i64 %186, i32* null)
  store i32* %187, i32** %23, align 8
  %188 = load i8*, i8** %14, align 8
  %189 = load i64, i64* %16, align 8
  %190 = udiv i64 %189, 2
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i64, i64* %16, align 8
  %193 = udiv i64 %192, 2
  %194 = call i32* @BN_bin2bn(i8* %191, i64 %193, i32* null)
  store i32* %194, i32** %24, align 8
  %195 = call i32* (...) @ECDSA_SIG_new()
  store i32* %195, i32** %22, align 8
  %196 = load i32*, i32** %23, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %210

198:                                              ; preds = %183
  %199 = load i32*, i32** %24, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %210

201:                                              ; preds = %198
  %202 = load i32*, i32** %22, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load i32*, i32** %22, align 8
  %206 = load i32*, i32** %23, align 8
  %207 = load i32*, i32** %24, align 8
  %208 = call i32 @ECDSA_SIG_set0(i32* %205, i32* %206, i32* %207)
  %209 = icmp ne i32 %208, 1
  br i1 %209, label %210, label %211

210:                                              ; preds = %204, %201, %198, %183
  br label %273

211:                                              ; preds = %204
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  %212 = load i32*, i32** %22, align 8
  %213 = call i32 @i2d_ECDSA_SIG(i32* %212, i8** %18)
  store i32 %213, i32* %19, align 4
  %214 = load i32, i32* %19, align 4
  %215 = icmp sle i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load i32, i32* @MSG_DEBUG, align 4
  %218 = call i32 (i32, i8*, ...) @wpa_printf(i32 %217, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  br label %273

219:                                              ; preds = %211
  %220 = load i32, i32* @MSG_DEBUG, align 4
  %221 = load i8*, i8** %18, align 8
  %222 = load i32, i32* %19, align 4
  %223 = call i32 @wpa_hexdump(i32 %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %221, i32 %222)
  %224 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %224, i32** %21, align 8
  %225 = load i32*, i32** %21, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %228, label %227

227:                                              ; preds = %219
  br label %273

228:                                              ; preds = %219
  %229 = call i32 (...) @ERR_clear_error()
  %230 = load i32*, i32** %21, align 8
  %231 = load i32*, i32** %17, align 8
  %232 = load i32*, i32** %5, align 8
  %233 = call i32 @EVP_DigestVerifyInit(i32* %230, i32* null, i32* %231, i32* null, i32* %232)
  %234 = icmp ne i32 %233, 1
  br i1 %234, label %235, label %240

235:                                              ; preds = %228
  %236 = load i32, i32* @MSG_DEBUG, align 4
  %237 = call i32 (...) @ERR_get_error()
  %238 = call i64 @ERR_error_string(i32 %237, i32* null)
  %239 = call i32 (i32, i8*, ...) @wpa_printf(i32 %236, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i64 %238)
  br label %273

240:                                              ; preds = %228
  %241 = load i32*, i32** %21, align 8
  %242 = load i8*, i8** %10, align 8
  %243 = load i8*, i8** %11, align 8
  %244 = load i8*, i8** %10, align 8
  %245 = ptrtoint i8* %243 to i64
  %246 = ptrtoint i8* %244 to i64
  %247 = sub i64 %245, %246
  %248 = add nsw i64 %247, 1
  %249 = trunc i64 %248 to i32
  %250 = call i32 @EVP_DigestVerifyUpdate(i32* %241, i8* %242, i32 %249)
  %251 = icmp ne i32 %250, 1
  br i1 %251, label %252, label %257

252:                                              ; preds = %240
  %253 = load i32, i32* @MSG_DEBUG, align 4
  %254 = call i32 (...) @ERR_get_error()
  %255 = call i64 @ERR_error_string(i32 %254, i32* null)
  %256 = call i32 (i32, i8*, ...) @wpa_printf(i32 %253, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i64 %255)
  br label %273

257:                                              ; preds = %240
  %258 = load i32*, i32** %21, align 8
  %259 = load i8*, i8** %18, align 8
  %260 = load i32, i32* %19, align 4
  %261 = call i32 @EVP_DigestVerifyFinal(i32* %258, i8* %259, i32 %260)
  store i32 %261, i32* %20, align 4
  %262 = load i32, i32* %20, align 4
  %263 = icmp ne i32 %262, 1
  br i1 %263, label %264, label %271

264:                                              ; preds = %257
  %265 = load i32, i32* @MSG_DEBUG, align 4
  %266 = load i32, i32* %20, align 4
  %267 = call i32 (...) @ERR_get_error()
  %268 = call i64 @ERR_error_string(i32 %267, i32* null)
  %269 = call i32 (i32, i8*, ...) @wpa_printf(i32 %265, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i32 %266, i64 %268)
  %270 = load i32, i32* @DPP_STATUS_INVALID_CONNECTOR, align 4
  store i32 %270, i32* %7, align 4
  br label %273

271:                                              ; preds = %257
  %272 = load i32, i32* @DPP_STATUS_OK, align 4
  store i32 %272, i32* %7, align 4
  br label %273

273:                                              ; preds = %271, %264, %252, %235, %227, %216, %210, %177, %171, %157, %136, %113, %98, %91, %76, %61, %47, %39, %33
  %274 = load i32*, i32** %26, align 8
  %275 = call i32 @EC_KEY_free(i32* %274)
  %276 = load i32*, i32** %21, align 8
  %277 = call i32 @EVP_MD_CTX_destroy(i32* %276)
  %278 = load i8*, i8** %13, align 8
  %279 = call i32 @os_free(i8* %278)
  %280 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %281 = call i32 @wpabuf_free(%struct.wpabuf* %280)
  %282 = load i8*, i8** %14, align 8
  %283 = call i32 @os_free(i8* %282)
  %284 = load i32*, i32** %22, align 8
  %285 = call i32 @ECDSA_SIG_free(i32* %284)
  %286 = load i32*, i32** %23, align 8
  %287 = call i32 @BN_free(i32* %286)
  %288 = load i32*, i32** %24, align 8
  %289 = call i32 @BN_free(i32* %288)
  %290 = load i8*, i8** %18, align 8
  %291 = call i32 @OPENSSL_free(i8* %290)
  %292 = load i32, i32* %7, align 4
  ret i32 %292
}

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @EC_GROUP_get_curve_name(i32*) #1

declare dso_local %struct.dpp_curve_params* @dpp_get_curve_nid(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memset(%struct.dpp_signed_connector_info*, i32, i32) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i8* @base64_url_decode(i8*, i32, i64*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i64) #1

declare dso_local %struct.wpabuf* @dpp_parse_jws_prot_hdr(%struct.dpp_curve_params*, i8*, i64, i32**) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i8*, i32) #1

declare dso_local i64 @dpp_check_pubkey_match(i32*, %struct.wpabuf*) #1

declare dso_local i32* @BN_bin2bn(i8*, i64, i32*) #1

declare dso_local i32* @ECDSA_SIG_new(...) #1

declare dso_local i32 @ECDSA_SIG_set0(i32*, i32*, i32*) #1

declare dso_local i32 @i2d_ECDSA_SIG(i32*, i8**) #1

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @EVP_DigestVerifyInit(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @ERR_error_string(i32, i32*) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @EVP_DigestVerifyUpdate(i32*, i8*, i32) #1

declare dso_local i32 @EVP_DigestVerifyFinal(i32*, i8*, i32) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @ECDSA_SIG_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
