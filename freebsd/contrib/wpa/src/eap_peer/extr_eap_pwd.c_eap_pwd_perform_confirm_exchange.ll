; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pwd.c_eap_pwd_perform_confirm_exchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pwd.c_eap_pwd_perform_confirm_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_pwd_data = type { i64, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.eap_method_ret = type { i32, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.crypto_hash = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@PWD_Confirm_Req = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"EAP-pwd: Unexpected Confirm payload length %u (expected %u)\00", align 1
@EAP_PWD_DEFAULT_RAND_FUNC = common dso_local global i32 0, align 4
@EAP_PWD_DEFAULT_PRF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"EAP-PWD (server): confirm allocation fail\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"EAP-PWD (server): confirm point assignment fail\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"EAP-PWD (peer): confirm did not verify\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"EAP-pwd (peer): confirm verified\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"EAP-PWD (peer): confirm point assignment fail\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"EAP-PWD (peer): unable to compute MSK | EMSK\00", align 1
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS_ON_FRAG_COMPLETION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_pwd_data*, %struct.eap_method_ret*, %struct.wpabuf*, i32*, i64)* @eap_pwd_perform_confirm_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pwd_perform_confirm_exchange(%struct.eap_sm* %0, %struct.eap_pwd_data* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_pwd_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.crypto_hash*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_pwd_data* %1, %struct.eap_pwd_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  store %struct.crypto_hash* null, %struct.crypto_hash** %13, align 8
  %22 = load i32, i32* @SHA256_MAC_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %16, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %17, align 8
  store i32* null, i32** %18, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %26 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %27 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PWD_Confirm_Req, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = load i32, i32* @TRUE, align 4
  %33 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %34 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %322

35:                                               ; preds = %6
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* @SHA256_MAC_LEN, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @MSG_INFO, align 4
  %42 = load i64, i64* %12, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @SHA256_MAC_LEN, align 4
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  br label %322

46:                                               ; preds = %35
  %47 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %48 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %47, i32 0, i32 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @crypto_ec_prime_len(i32 %51)
  store i64 %52, i64* %20, align 8
  %53 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %54 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %53, i32 0, i32 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @crypto_ec_order_len(i32 %57)
  store i64 %58, i64* %21, align 8
  %59 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %60 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @htons(i32 %61)
  store i32 %62, i32* %15, align 4
  store i32* %14, i32** %19, align 8
  %63 = load i32*, i32** %19, align 8
  %64 = call i32 @os_memcpy(i32* %63, i32* %15, i32 4)
  %65 = load i32*, i32** %19, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32* %66, i32** %19, align 8
  %67 = load i32, i32* @EAP_PWD_DEFAULT_RAND_FUNC, align 4
  %68 = load i32*, i32** %19, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %19, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  store i32* %70, i32** %19, align 8
  %71 = load i32, i32* @EAP_PWD_DEFAULT_PRF, align 4
  %72 = load i32*, i32** %19, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i64, i64* %20, align 8
  %74 = mul i64 %73, 2
  %75 = call i32* @os_malloc(i64 %74)
  store i32* %75, i32** %18, align 8
  %76 = load i32*, i32** %18, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %46
  %79 = load i32, i32* @MSG_INFO, align 4
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %322

81:                                               ; preds = %46
  %82 = call %struct.crypto_hash* (...) @eap_pwd_h_init()
  store %struct.crypto_hash* %82, %struct.crypto_hash** %13, align 8
  %83 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %84 = icmp eq %struct.crypto_hash* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %322

86:                                               ; preds = %81
  %87 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %88 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %18, align 8
  %91 = load i64, i64* %20, align 8
  %92 = load i64, i64* %20, align 8
  %93 = call i32 @crypto_bignum_to_bin(i32 %89, i32* %90, i64 %91, i64 %92)
  %94 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %95 = load i32*, i32** %18, align 8
  %96 = load i64, i64* %20, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %94, i32* %95, i32 %97)
  %99 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %100 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %99, i32 0, i32 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %105 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %18, align 8
  %108 = load i32*, i32** %18, align 8
  %109 = load i64, i64* %20, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = call i64 @crypto_ec_point_to_bin(i32 %103, i32 %106, i32* %107, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %86
  %114 = load i32, i32* @MSG_INFO, align 4
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %114, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %322

116:                                              ; preds = %86
  %117 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %118 = load i32*, i32** %18, align 8
  %119 = load i64, i64* %20, align 8
  %120 = mul i64 %119, 2
  %121 = trunc i64 %120 to i32
  %122 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %117, i32* %118, i32 %121)
  %123 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %124 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %18, align 8
  %127 = load i64, i64* %21, align 8
  %128 = load i64, i64* %21, align 8
  %129 = call i32 @crypto_bignum_to_bin(i32 %125, i32* %126, i64 %127, i64 %128)
  %130 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %131 = load i32*, i32** %18, align 8
  %132 = load i64, i64* %21, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %130, i32* %131, i32 %133)
  %135 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %136 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %135, i32 0, i32 8
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %141 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %18, align 8
  %144 = load i32*, i32** %18, align 8
  %145 = load i64, i64* %20, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = call i64 @crypto_ec_point_to_bin(i32 %139, i32 %142, i32* %143, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %116
  %150 = load i32, i32* @MSG_INFO, align 4
  %151 = call i32 (i32, i8*, ...) @wpa_printf(i32 %150, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %322

152:                                              ; preds = %116
  %153 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %154 = load i32*, i32** %18, align 8
  %155 = load i64, i64* %20, align 8
  %156 = mul i64 %155, 2
  %157 = trunc i64 %156 to i32
  %158 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %153, i32* %154, i32 %157)
  %159 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %160 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = load i32*, i32** %18, align 8
  %163 = load i64, i64* %21, align 8
  %164 = load i64, i64* %21, align 8
  %165 = call i32 @crypto_bignum_to_bin(i32 %161, i32* %162, i64 %163, i64 %164)
  %166 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %167 = load i32*, i32** %18, align 8
  %168 = load i64, i64* %21, align 8
  %169 = trunc i64 %168 to i32
  %170 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %166, i32* %167, i32 %169)
  %171 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %172 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %171, i32* %14, i32 4)
  %173 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %174 = call i32 @eap_pwd_h_final(%struct.crypto_hash* %173, i32* %25)
  store %struct.crypto_hash* null, %struct.crypto_hash** %13, align 8
  %175 = load i32*, i32** %11, align 8
  store i32* %175, i32** %19, align 8
  %176 = load i32*, i32** %19, align 8
  %177 = load i32, i32* @SHA256_MAC_LEN, align 4
  %178 = call i64 @os_memcmp_const(i32* %25, i32* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %152
  %181 = load i32, i32* @MSG_INFO, align 4
  %182 = call i32 (i32, i8*, ...) @wpa_printf(i32 %181, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %322

183:                                              ; preds = %152
  %184 = load i32, i32* @MSG_DEBUG, align 4
  %185 = call i32 (i32, i8*, ...) @wpa_printf(i32 %184, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %186 = call %struct.crypto_hash* (...) @eap_pwd_h_init()
  store %struct.crypto_hash* %186, %struct.crypto_hash** %13, align 8
  %187 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %188 = icmp eq %struct.crypto_hash* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %322

190:                                              ; preds = %183
  %191 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %192 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %18, align 8
  %195 = load i64, i64* %20, align 8
  %196 = load i64, i64* %20, align 8
  %197 = call i32 @crypto_bignum_to_bin(i32 %193, i32* %194, i64 %195, i64 %196)
  %198 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %199 = load i32*, i32** %18, align 8
  %200 = load i64, i64* %20, align 8
  %201 = trunc i64 %200 to i32
  %202 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %198, i32* %199, i32 %201)
  %203 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %204 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %203, i32 0, i32 8
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %209 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %208, i32 0, i32 10
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %18, align 8
  %212 = load i32*, i32** %18, align 8
  %213 = load i64, i64* %20, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = call i64 @crypto_ec_point_to_bin(i32 %207, i32 %210, i32* %211, i32* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %190
  %218 = load i32, i32* @MSG_INFO, align 4
  %219 = call i32 (i32, i8*, ...) @wpa_printf(i32 %218, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %322

220:                                              ; preds = %190
  %221 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %222 = load i32*, i32** %18, align 8
  %223 = load i64, i64* %20, align 8
  %224 = mul i64 %223, 2
  %225 = trunc i64 %224 to i32
  %226 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %221, i32* %222, i32 %225)
  %227 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %228 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = load i32*, i32** %18, align 8
  %231 = load i64, i64* %21, align 8
  %232 = load i64, i64* %21, align 8
  %233 = call i32 @crypto_bignum_to_bin(i32 %229, i32* %230, i64 %231, i64 %232)
  %234 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %235 = load i32*, i32** %18, align 8
  %236 = load i64, i64* %21, align 8
  %237 = trunc i64 %236 to i32
  %238 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %234, i32* %235, i32 %237)
  %239 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %240 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %239, i32 0, i32 8
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %245 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 8
  %247 = load i32*, i32** %18, align 8
  %248 = load i32*, i32** %18, align 8
  %249 = load i64, i64* %20, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = call i64 @crypto_ec_point_to_bin(i32 %243, i32 %246, i32* %247, i32* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %220
  %254 = load i32, i32* @MSG_INFO, align 4
  %255 = call i32 (i32, i8*, ...) @wpa_printf(i32 %254, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %322

256:                                              ; preds = %220
  %257 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %258 = load i32*, i32** %18, align 8
  %259 = load i64, i64* %20, align 8
  %260 = mul i64 %259, 2
  %261 = trunc i64 %260 to i32
  %262 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %257, i32* %258, i32 %261)
  %263 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %264 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** %18, align 8
  %267 = load i64, i64* %21, align 8
  %268 = load i64, i64* %21, align 8
  %269 = call i32 @crypto_bignum_to_bin(i32 %265, i32* %266, i64 %267, i64 %268)
  %270 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %271 = load i32*, i32** %18, align 8
  %272 = load i64, i64* %21, align 8
  %273 = trunc i64 %272 to i32
  %274 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %270, i32* %271, i32 %273)
  %275 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %276 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %275, i32* %14, i32 4)
  %277 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %278 = call i32 @eap_pwd_h_final(%struct.crypto_hash* %277, i32* %25)
  store %struct.crypto_hash* null, %struct.crypto_hash** %13, align 8
  %279 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %280 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %279, i32 0, i32 8
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** %280, align 8
  %282 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %283 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %282, i32 0, i32 7
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %286 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %285, i32 0, i32 6
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %289 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 4
  %291 = load i32*, i32** %19, align 8
  %292 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %293 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %296 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %299 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = call i64 @compute_keys(%struct.TYPE_2__* %281, i32 %284, i32 %287, i32 %290, i32* %25, i32* %291, i32* %14, i32 %294, i32 %297, i32 %300)
  %302 = icmp slt i64 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %256
  %304 = load i32, i32* @MSG_INFO, align 4
  %305 = call i32 (i32, i8*, ...) @wpa_printf(i32 %304, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %322

306:                                              ; preds = %256
  %307 = load i32, i32* @SHA256_MAC_LEN, align 4
  %308 = call i32* @wpabuf_alloc(i32 %307)
  %309 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %310 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %309, i32 0, i32 1
  store i32* %308, i32** %310, align 8
  %311 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %312 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = icmp eq i32* %313, null
  br i1 %314, label %315, label %316

315:                                              ; preds = %306
  br label %322

316:                                              ; preds = %306
  %317 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %318 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* @SHA256_MAC_LEN, align 4
  %321 = call i32 @wpabuf_put_data(i32* %319, i32* %25, i32 %320)
  br label %322

322:                                              ; preds = %316, %315, %303, %253, %217, %189, %180, %149, %113, %85, %78, %40, %31
  %323 = load i32*, i32** %18, align 8
  %324 = load i64, i64* %20, align 8
  %325 = mul i64 %324, 2
  %326 = call i32 @bin_clear_free(i32* %323, i64 %325)
  %327 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %328 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  %330 = icmp eq i32* %329, null
  br i1 %330, label %331, label %341

331:                                              ; preds = %322
  %332 = load i32, i32* @METHOD_DONE, align 4
  %333 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %334 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %333, i32 0, i32 1
  store i32 %332, i32* %334, align 4
  %335 = load i32, i32* @DECISION_FAIL, align 4
  %336 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %337 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %336, i32 0, i32 0
  store i32 %335, i32* %337, align 4
  %338 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %339 = load i32, i32* @FAILURE, align 4
  %340 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %338, i32 %339)
  br label %345

341:                                              ; preds = %322
  %342 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %343 = load i32, i32* @SUCCESS_ON_FRAG_COMPLETION, align 4
  %344 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %342, i32 %343)
  br label %345

345:                                              ; preds = %341, %331
  %346 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %347 = icmp ne %struct.crypto_hash* %346, null
  br i1 %347, label %348, label %351

348:                                              ; preds = %345
  %349 = load %struct.crypto_hash*, %struct.crypto_hash** %13, align 8
  %350 = call i32 @eap_pwd_h_final(%struct.crypto_hash* %349, i32* %25)
  br label %351

351:                                              ; preds = %348, %345
  %352 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %352)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @crypto_ec_prime_len(i32) #2

declare dso_local i64 @crypto_ec_order_len(i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32* @os_malloc(i64) #2

declare dso_local %struct.crypto_hash* @eap_pwd_h_init(...) #2

declare dso_local i32 @crypto_bignum_to_bin(i32, i32*, i64, i64) #2

declare dso_local i32 @eap_pwd_h_update(%struct.crypto_hash*, i32*, i32) #2

declare dso_local i64 @crypto_ec_point_to_bin(i32, i32, i32*, i32*) #2

declare dso_local i32 @eap_pwd_h_final(%struct.crypto_hash*, i32*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #2

declare dso_local i64 @compute_keys(%struct.TYPE_2__*, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32) #2

declare dso_local i32* @wpabuf_alloc(i32) #2

declare dso_local i32 @wpabuf_put_data(i32*, i32*, i32) #2

declare dso_local i32 @bin_clear_free(i32*, i64) #2

declare dso_local i32 @eap_pwd_state(%struct.eap_pwd_data*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
