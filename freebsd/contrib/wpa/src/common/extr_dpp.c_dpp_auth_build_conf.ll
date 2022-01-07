; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_build_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_build_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dpp_authentication = type { i32*, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@DPP_MAX_HASH_LEN = common dso_local global i32 0, align 4
@DPP_MAX_NONCE_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"DPP: Build Authentication Confirmation\00", align 1
@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@DPP_PA_AUTHENTICATION_CONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"DDP: AES-SIV AD[0]\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"DDP: AES-SIV AD[1]\00", align 1
@DPP_STATUS_OK = common dso_local global i32 0, align 4
@DPP_ATTR_WRAPPED_DATA = common dso_local global i64 0, align 8
@DPP_ATTR_I_AUTH_TAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"DPP: {I-auth}ke\00", align 1
@DPP_ATTR_R_NONCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"DPP: {R-nonce}k2\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"DPP: Authentication Confirmation frame attributes\00", align 1
@DPP_TEST_AFTER_WRAPPED_DATA_AUTH_CONF = common dso_local global i64 0, align 8
@DPP_TEST_INVALID_I_BOOTSTRAP_KEY_HASH_AUTH_CONF = common dso_local global i64 0, align 8
@DPP_TEST_INVALID_R_BOOTSTRAP_KEY_HASH_AUTH_CONF = common dso_local global i64 0, align 8
@DPP_TEST_INVALID_STATUS_AUTH_CONF = common dso_local global i64 0, align 8
@DPP_TEST_I_AUTH_MISMATCH_AUTH_CONF = common dso_local global i64 0, align 8
@DPP_TEST_NO_I_AUTH_AUTH_CONF = common dso_local global i64 0, align 8
@DPP_TEST_NO_I_BOOTSTRAP_KEY_HASH_AUTH_CONF = common dso_local global i64 0, align 8
@DPP_TEST_NO_R_BOOTSTRAP_KEY_HASH_AUTH_CONF = common dso_local global i64 0, align 8
@DPP_TEST_NO_STATUS_AUTH_CONF = common dso_local global i64 0, align 8
@DPP_TEST_NO_WRAPPED_DATA_AUTH_CONF = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@dpp_test = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.dpp_authentication*, i32)* @dpp_auth_build_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @dpp_auth_build_conf(%struct.dpp_authentication* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.dpp_authentication*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [2 x i32*], align 16
  %13 = alloca [2 x i64], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %4, align 8
  store i32 %1, i32* %5, align 4
  %22 = load i32, i32* @DPP_MAX_HASH_LEN, align 4
  %23 = add nsw i32 4, %22
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %7, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  %27 = load i32, i32* @DPP_MAX_NONCE_LEN, align 4
  %28 = add nsw i32 4, %27
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %34 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 4, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %9, align 8
  %40 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %41 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 4, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %11, align 8
  %47 = load i32, i32* @SHA256_MAC_LEN, align 4
  %48 = add nsw i32 4, %47
  %49 = mul nsw i32 2, %48
  %50 = add nsw i32 5, %49
  %51 = add nsw i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %52, %53
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %54, %55
  %57 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %56, %58
  store i64 %59, i64* %14, align 8
  %60 = load i32, i32* @DPP_PA_AUTHENTICATION_CONF, align 4
  %61 = load i64, i64* %14, align 8
  %62 = call %struct.wpabuf* @dpp_alloc_msg(i32 %60, i64 %61)
  store %struct.wpabuf* %62, %struct.wpabuf** %6, align 8
  %63 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %64 = icmp ne %struct.wpabuf* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %2
  br label %250

66:                                               ; preds = %2
  %67 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %68 = call i32* @wpabuf_put(%struct.wpabuf* %67, i64 0)
  store i32* %68, i32** %17, align 8
  %69 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %70 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %69, i32 0, i32 5
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %19, align 8
  %74 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %75 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %74, i32 0, i32 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = icmp ne %struct.TYPE_5__* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %66
  %79 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %80 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %79, i32 0, i32 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %20, align 8
  br label %85

84:                                               ; preds = %66
  store i32* null, i32** %20, align 8
  br label %85

85:                                               ; preds = %84, %78
  %86 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @dpp_build_attr_status(%struct.wpabuf* %86, i32 %87)
  %89 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = call i32 @dpp_build_attr_r_bootstrap_key_hash(%struct.wpabuf* %89, i32* %90)
  %92 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %93 = load i32*, i32** %20, align 8
  %94 = call i32 @dpp_build_attr_i_bootstrap_key_hash(%struct.wpabuf* %92, i32* %93)
  %95 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %96 = call i32* @wpabuf_put(%struct.wpabuf* %95, i64 0)
  store i32* %96, i32** %18, align 8
  %97 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %98 = call i32* @wpabuf_head_u8(%struct.wpabuf* %97)
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 0
  store i32* %99, i32** %100, align 16
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  store i64 6, i64* %101, align 16
  %102 = load i32, i32* @MSG_DEBUG, align 4
  %103 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 0
  %104 = load i32*, i32** %103, align 16
  %105 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %106 = load i64, i64* %105, align 16
  %107 = call i32 @wpa_hexdump(i32 %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %104, i64 %106)
  %108 = load i32*, i32** %17, align 8
  %109 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 1
  store i32* %108, i32** %109, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = load i32*, i32** %17, align 8
  %112 = ptrtoint i32* %110 to i64
  %113 = ptrtoint i32* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 4
  %116 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  store i64 %115, i64* %116, align 8
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @wpa_hexdump(i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %119, i64 %121)
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @DPP_STATUS_OK, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %180

126:                                              ; preds = %85
  %127 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %128 = load i64, i64* @DPP_ATTR_WRAPPED_DATA, align 8
  %129 = call i32 @wpabuf_put_le16(%struct.wpabuf* %127, i64 %128)
  %130 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %133 = sext i32 %132 to i64
  %134 = add i64 %131, %133
  %135 = call i32 @wpabuf_put_le16(%struct.wpabuf* %130, i64 %134)
  %136 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 %137, %139
  %141 = call i32* @wpabuf_put(%struct.wpabuf* %136, i64 %140)
  store i32* %141, i32** %15, align 8
  %142 = load i32, i32* @DPP_ATTR_I_AUTH_TAG, align 4
  %143 = call i32 @WPA_PUT_LE16(i32* %26, i32 %142)
  %144 = getelementptr inbounds i32, i32* %26, i64 2
  %145 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %146 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %145, i32 0, i32 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @WPA_PUT_LE16(i32* %144, i32 %149)
  %151 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %152 = getelementptr inbounds i32, i32* %26, i64 4
  %153 = call i64 @dpp_gen_i_auth(%struct.dpp_authentication* %151, i32* %152)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %126
  br label %250

156:                                              ; preds = %126
  %157 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %158 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %161 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %160, i32 0, i32 1
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i64, i64* %9, align 8
  %166 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 0
  %167 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %168 = load i32*, i32** %15, align 8
  %169 = call i64 @aes_siv_encrypt(i32 %159, i32 %164, i32* %26, i64 %165, i32 2, i32** %166, i64* %167, i32* %168)
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %156
  br label %250

172:                                              ; preds = %156
  %173 = load i32, i32* @MSG_DEBUG, align 4
  %174 = load i32*, i32** %15, align 8
  %175 = load i64, i64* %9, align 8
  %176 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %177 = sext i32 %176 to i64
  %178 = add i64 %175, %177
  %179 = call i32 @wpa_hexdump(i32 %173, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %174, i64 %178)
  br label %238

180:                                              ; preds = %85
  %181 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %182 = load i64, i64* @DPP_ATTR_WRAPPED_DATA, align 8
  %183 = call i32 @wpabuf_put_le16(%struct.wpabuf* %181, i64 %182)
  %184 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %185 = load i64, i64* %11, align 8
  %186 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %187 = sext i32 %186 to i64
  %188 = add i64 %185, %187
  %189 = call i32 @wpabuf_put_le16(%struct.wpabuf* %184, i64 %188)
  %190 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %191 = load i64, i64* %11, align 8
  %192 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %193 = sext i32 %192 to i64
  %194 = add i64 %191, %193
  %195 = call i32* @wpabuf_put(%struct.wpabuf* %190, i64 %194)
  store i32* %195, i32** %16, align 8
  %196 = load i32, i32* @DPP_ATTR_R_NONCE, align 4
  %197 = call i32 @WPA_PUT_LE16(i32* %30, i32 %196)
  %198 = getelementptr inbounds i32, i32* %30, i64 2
  %199 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %200 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %199, i32 0, i32 1
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @WPA_PUT_LE16(i32* %198, i32 %203)
  %205 = getelementptr inbounds i32, i32* %30, i64 4
  %206 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %207 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %210 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %209, i32 0, i32 1
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @os_memcpy(i32* %205, i32* %208, i32 %213)
  %215 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %216 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %219 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %218, i32 0, i32 1
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i64, i64* %11, align 8
  %224 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 0
  %225 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %226 = load i32*, i32** %16, align 8
  %227 = call i64 @aes_siv_encrypt(i32 %217, i32 %222, i32* %30, i64 %223, i32 2, i32** %224, i64* %225, i32* %226)
  %228 = icmp slt i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %180
  br label %250

230:                                              ; preds = %180
  %231 = load i32, i32* @MSG_DEBUG, align 4
  %232 = load i32*, i32** %16, align 8
  %233 = load i64, i64* %11, align 8
  %234 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %235 = sext i32 %234 to i64
  %236 = add i64 %233, %235
  %237 = call i32 @wpa_hexdump(i32 %231, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %232, i64 %236)
  br label %238

238:                                              ; preds = %230, %172
  %239 = load i32, i32* @MSG_DEBUG, align 4
  %240 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %241 = call i32 @wpa_hexdump_buf(i32 %239, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), %struct.wpabuf* %240)
  %242 = load i32, i32* %5, align 4
  %243 = load i32, i32* @DPP_STATUS_OK, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %238
  %246 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %247 = call i32 @dpp_auth_success(%struct.dpp_authentication* %246)
  br label %248

248:                                              ; preds = %245, %238
  %249 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %249, %struct.wpabuf** %3, align 8
  store i32 1, i32* %21, align 4
  br label %253

250:                                              ; preds = %229, %171, %155, %65
  %251 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %252 = call i32 @wpabuf_free(%struct.wpabuf* %251)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  store i32 1, i32* %21, align 4
  br label %253

253:                                              ; preds = %250, %248
  %254 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %254)
  %255 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %255
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local %struct.wpabuf* @dpp_alloc_msg(i32, i64) #2

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i64) #2

declare dso_local i32 @dpp_build_attr_status(%struct.wpabuf*, i32) #2

declare dso_local i32 @dpp_build_attr_r_bootstrap_key_hash(%struct.wpabuf*, i32*) #2

declare dso_local i32 @dpp_build_attr_i_bootstrap_key_hash(%struct.wpabuf*, i32*) #2

declare dso_local i32* @wpabuf_head_u8(%struct.wpabuf*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i64) #2

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #2

declare dso_local i64 @dpp_gen_i_auth(%struct.dpp_authentication*, i32*) #2

declare dso_local i64 @aes_siv_encrypt(i32, i32, i32*, i64, i32, i32**, i64*, i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #2

declare dso_local i32 @dpp_auth_success(%struct.dpp_authentication*) #2

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
