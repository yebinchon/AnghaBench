; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_build_resp_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_build_resp_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32*, i32*, %struct.wpabuf*, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i8* }
%struct.wpabuf = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@DPP_MAX_HASH_LEN = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@DPP_STATUS_OK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DPP: Build Authentication Response\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"DPP: Failed to generate R-nonce\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"DPP: R-nonce\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"DPP: ECDH shared secret (N.x)\00", align 1
@DPP_ATTR_R_AUTH_TAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"DPP: {R-auth}ke\00", align 1
@DPP_TEST_INVALID_I_BOOTSTRAP_KEY_HASH_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_INVALID_R_BOOTSTRAP_KEY_HASH_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_INVALID_R_PROTO_KEY_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_INVALID_STATUS_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_I_BOOTSTRAP_KEY_HASH_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_I_NONCE_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_R_AUTH_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_R_BOOTSTRAP_KEY_HASH_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_R_NONCE_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_R_PROTO_KEY_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_STATUS_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_R_AUTH_MISMATCH_AUTH_RESP = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@dpp_nonce_override = common dso_local global i32* null, align 8
@dpp_nonce_override_len = common dso_local global i64 0, align 8
@dpp_protocol_key_override = common dso_local global i32 0, align 4
@dpp_protocol_key_override_len = common dso_local global i64 0, align 8
@dpp_test = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*)* @dpp_auth_build_resp_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_auth_build_resp_ok(%struct.dpp_authentication* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpp_authentication*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %3, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  %20 = load i32, i32* @DPP_MAX_HASH_LEN, align 4
  %21 = add nsw i32 4, %20
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %25 = load i32, i32* @DPP_MAX_HASH_LEN, align 4
  %26 = add nsw i32 4, %25
  %27 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %28 = add nsw i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  store i32 -1, i32* %13, align 4
  %31 = load i32, i32* @DPP_STATUS_OK, align 4
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %35 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %34, i32 0, i32 6
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %255

39:                                               ; preds = %1
  %40 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %41 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %40, i32 0, i32 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %4, align 8
  %45 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %46 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @random_get_bytes(i32* %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @MSG_ERROR, align 4
  %53 = call i32 @wpa_printf(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %251

54:                                               ; preds = %39
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %57 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @wpa_hexdump(i32 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %58, i64 %59)
  %61 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %62 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %61, i32 0, i32 12
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @EVP_PKEY_free(i8* %63)
  %65 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %66 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %65, i32 0, i32 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call i8* @dpp_gen_keypair(%struct.TYPE_7__* %67)
  %69 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %70 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %69, i32 0, i32 12
  store i8* %68, i8** %70, align 8
  %71 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %72 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %71, i32 0, i32 12
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %54
  br label %251

76:                                               ; preds = %54
  %77 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %78 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %77, i32 0, i32 12
  %79 = load i8*, i8** %78, align 8
  %80 = call %struct.wpabuf* @dpp_get_pubkey_point(i8* %79, i32 0)
  store %struct.wpabuf* %80, %struct.wpabuf** %7, align 8
  %81 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %82 = icmp ne %struct.wpabuf* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  br label %251

84:                                               ; preds = %76
  %85 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %86 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %85, i32 0, i32 12
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %89 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %92 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @dpp_ecdh(i8* %87, i32 %90, i32 %93, i64* %5)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %251

97:                                               ; preds = %84
  %98 = load i32, i32* @MSG_DEBUG, align 4
  %99 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %100 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %103 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @wpa_hexdump_key(i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %104)
  %106 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %107 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %110 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %109, i32 0, i32 10
  store i32 %108, i32* %110, align 4
  %111 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %112 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %115 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %118 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %121 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %120, i32 0, i32 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @dpp_derive_k2(i32 %113, i32 %116, i32 %119, i32 %124)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %97
  br label %251

128:                                              ; preds = %97
  %129 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %130 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %129, i32 0, i32 6
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = icmp ne %struct.TYPE_5__* %131, null
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %135 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %134, i32 0, i32 5
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = icmp ne %struct.TYPE_6__* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %140 = call i64 @dpp_auth_derive_l_responder(%struct.dpp_authentication* %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %251

143:                                              ; preds = %138
  br label %144

144:                                              ; preds = %143, %133, %128
  %145 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %146 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %147 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %150 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %149, i32 0, i32 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @dpp_derive_ke(%struct.dpp_authentication* %145, i32 %148, i32 %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %144
  br label %251

157:                                              ; preds = %144
  %158 = load i32, i32* @DPP_ATTR_R_AUTH_TAG, align 4
  %159 = call i32 @WPA_PUT_LE16(i32* %24, i32 %158)
  %160 = getelementptr inbounds i32, i32* %24, i64 2
  %161 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %162 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %161, i32 0, i32 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @WPA_PUT_LE16(i32* %160, i32 %165)
  %167 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %168 = getelementptr inbounds i32, i32* %24, i64 4
  %169 = call i64 @dpp_gen_r_auth(%struct.dpp_authentication* %167, i32* %168)
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %157
  br label %251

172:                                              ; preds = %157
  %173 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %174 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %177 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %176, i32 0, i32 4
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %182 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %181, i32 0, i32 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 4, %185
  %187 = call i64 @aes_siv_encrypt(i32 %175, i32 %180, i32* %24, i32 %186, i32 0, i32* null, i32* null, i32* %30)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %172
  br label %251

190:                                              ; preds = %172
  %191 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %192 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %191, i32 0, i32 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 4, %195
  %197 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  store i64 %199, i64* %12, align 8
  %200 = load i32, i32* @MSG_DEBUG, align 4
  %201 = load i64, i64* %12, align 8
  %202 = call i32 @wpa_hexdump(i32 %200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %30, i64 %201)
  store i32* %30, i32** %11, align 8
  %203 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %204 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %203, i32 0, i32 6
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  store i32* %207, i32** %14, align 8
  %208 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %209 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %208, i32 0, i32 5
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = icmp ne %struct.TYPE_6__* %210, null
  br i1 %211, label %212, label %218

212:                                              ; preds = %190
  %213 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %214 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %213, i32 0, i32 5
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  store i32* %217, i32** %15, align 8
  br label %219

218:                                              ; preds = %190
  store i32* null, i32** %15, align 8
  br label %219

219:                                              ; preds = %218, %212
  %220 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %221 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  store i32* %222, i32** %17, align 8
  %223 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %224 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  store i32* %225, i32** %16, align 8
  %226 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %227 = load i32, i32* %18, align 4
  %228 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %229 = load i64, i64* %4, align 8
  %230 = load i32*, i32** %14, align 8
  %231 = load i32*, i32** %15, align 8
  %232 = load i32*, i32** %16, align 8
  %233 = load i32*, i32** %17, align 8
  %234 = load i32*, i32** %11, align 8
  %235 = load i64, i64* %12, align 8
  %236 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %237 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = call %struct.wpabuf* @dpp_auth_build_resp(%struct.dpp_authentication* %226, i32 %227, %struct.wpabuf* %228, i64 %229, i32* %230, i32* %231, i32* %232, i32* %233, i32* %234, i64 %235, i32 %238)
  store %struct.wpabuf* %239, %struct.wpabuf** %6, align 8
  %240 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %241 = icmp ne %struct.wpabuf* %240, null
  br i1 %241, label %243, label %242

242:                                              ; preds = %219
  br label %251

243:                                              ; preds = %219
  %244 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %245 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %244, i32 0, i32 2
  %246 = load %struct.wpabuf*, %struct.wpabuf** %245, align 8
  %247 = call i32 @wpabuf_free(%struct.wpabuf* %246)
  %248 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %249 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %250 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %249, i32 0, i32 2
  store %struct.wpabuf* %248, %struct.wpabuf** %250, align 8
  store i32 0, i32* %13, align 4
  br label %251

251:                                              ; preds = %243, %242, %189, %171, %156, %142, %127, %96, %83, %75, %51
  %252 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %253 = call i32 @wpabuf_free(%struct.wpabuf* %252)
  %254 = load i32, i32* %13, align 4
  store i32 %254, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %255

255:                                              ; preds = %251, %38
  %256 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %256)
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i64 @random_get_bytes(i32*, i64) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

declare dso_local i32 @EVP_PKEY_free(i8*) #2

declare dso_local i8* @dpp_gen_keypair(%struct.TYPE_7__*) #2

declare dso_local %struct.wpabuf* @dpp_get_pubkey_point(i8*, i32) #2

declare dso_local i64 @dpp_ecdh(i8*, i32, i32, i64*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #2

declare dso_local i64 @dpp_derive_k2(i32, i32, i32, i32) #2

declare dso_local i64 @dpp_auth_derive_l_responder(%struct.dpp_authentication*) #2

declare dso_local i64 @dpp_derive_ke(%struct.dpp_authentication*, i32, i32) #2

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #2

declare dso_local i64 @dpp_gen_r_auth(%struct.dpp_authentication*, i32*) #2

declare dso_local i64 @aes_siv_encrypt(i32, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local %struct.wpabuf* @dpp_auth_build_resp(%struct.dpp_authentication*, i32, %struct.wpabuf*, i64, i32*, i32*, i32*, i32*, i32*, i64, i32) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
