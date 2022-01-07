; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_pwe_ecc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_pwe_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, %struct.crypto_bignum* }
%struct.crypto_bignum = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@SAE_MAX_ECC_PRIME_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SAE: password\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"SAE: password identifier: %s\00", align 1
@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"SAE: Failed to derive PWE\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"SAE: counter = %03u\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"SAE: pwd-seed result %d found=0x%02x\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"SAE: Could not generate PWE\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"SAE: Could not solve y\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sae_data*, i32*, i32*, i32*, i64, i8*)* @sae_derive_pwe_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sae_derive_pwe_ecc(%struct.sae_data* %0, i32* %1, i32* %2, i32* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sae_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [3 x i32*], align 16
  %19 = alloca [3 x i64], align 16
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.crypto_bignum*, align 8
  %27 = alloca %struct.crypto_bignum*, align 8
  %28 = alloca %struct.crypto_bignum*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  store %struct.sae_data* %0, %struct.sae_data** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = mul nsw i32 2, %38
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %16, align 8
  %42 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %17, align 8
  store i32 0, i32* %23, align 4
  %43 = load i32, i32* @SAE_MAX_ECC_PRIME_LEN, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %24, align 8
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %26, align 8
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %27, align 8
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %28, align 8
  %46 = load i32, i32* @SAE_MAX_ECC_PRIME_LEN, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %29, align 8
  %49 = load i32, i32* @SAE_MAX_ECC_PRIME_LEN, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca i32, i64 %50, align 16
  store i64 %50, i64* %30, align 8
  %52 = load i32, i32* @SAE_MAX_ECC_PRIME_LEN, align 4
  %53 = zext i32 %52 to i64
  %54 = alloca i32, i64 %53, align 16
  store i64 %53, i64* %31, align 8
  %55 = load i32, i32* @SAE_MAX_ECC_PRIME_LEN, align 4
  %56 = zext i32 %55 to i64
  %57 = alloca i32, i64 %56, align 16
  store i64 %56, i64* %32, align 8
  store i32 -1, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %58 = mul nuw i64 4, %47
  %59 = trunc i64 %58 to i32
  %60 = call i32 @os_memset(i32* %48, i32 0, i32 %59)
  %61 = load i64, i64* %12, align 8
  %62 = call i32* @os_malloc(i64 %61)
  store i32* %62, i32** %21, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32* @os_malloc(i64 %63)
  store i32* %64, i32** %22, align 8
  %65 = load i32*, i32** %21, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %6
  %68 = load i32*, i32** %22, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32*, i32** %21, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i64 @random_get_bytes(i32* %71, i64 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %67, %6
  br label %293

76:                                               ; preds = %70
  %77 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %78 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %25, align 8
  %82 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %83 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load %struct.crypto_bignum*, %struct.crypto_bignum** %85, align 8
  %87 = mul nuw i64 4, %44
  %88 = trunc i64 %87 to i32
  %89 = load i64, i64* %25, align 8
  %90 = call i64 @crypto_bignum_to_bin(%struct.crypto_bignum* %86, i32* %45, i32 %88, i64 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  br label %293

93:                                               ; preds = %76
  %94 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %95 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load %struct.crypto_bignum*, %struct.crypto_bignum** %97, align 8
  %99 = call i64 @dragonfly_get_random_qr_qnr(%struct.crypto_bignum* %98, %struct.crypto_bignum** %27, %struct.crypto_bignum** %28)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %93
  %102 = load %struct.crypto_bignum*, %struct.crypto_bignum** %27, align 8
  %103 = mul nuw i64 4, %53
  %104 = trunc i64 %103 to i32
  %105 = load i64, i64* %25, align 8
  %106 = call i64 @crypto_bignum_to_bin(%struct.crypto_bignum* %102, i32* %54, i32 %104, i64 %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %101
  %109 = load %struct.crypto_bignum*, %struct.crypto_bignum** %28, align 8
  %110 = mul nuw i64 4, %56
  %111 = trunc i64 %110 to i32
  %112 = load i64, i64* %25, align 8
  %113 = call i64 @crypto_bignum_to_bin(%struct.crypto_bignum* %109, i32* %57, i32 %111, i64 %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108, %101, %93
  br label %293

116:                                              ; preds = %108
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @wpa_hexdump_ascii_key(i32 %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %118, i64 %119)
  %121 = load i8*, i8** %13, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i32, i32* @MSG_DEBUG, align 4
  %125 = load i8*, i8** %13, align 8
  %126 = call i32 (i32, i8*, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %123, %116
  %128 = load i32*, i32** %9, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @sae_pwd_seed_key(i32* %128, i32* %129, i32* %42)
  %131 = load i32*, i32** %22, align 8
  %132 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  store i32* %131, i32** %132, align 16
  %133 = load i64, i64* %12, align 8
  %134 = getelementptr inbounds [3 x i64], [3 x i64]* %19, i64 0, i64 0
  store i64 %133, i64* %134, align 16
  store i64 1, i64* %20, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %127
  %138 = load i8*, i8** %13, align 8
  %139 = bitcast i8* %138 to i32*
  %140 = load i64, i64* %20, align 8
  %141 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 %140
  store i32* %139, i32** %141, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = call i64 @os_strlen(i8* %142)
  %144 = load i64, i64* %20, align 8
  %145 = getelementptr inbounds [3 x i64], [3 x i64]* %19, i64 0, i64 %144
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* %20, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %20, align 8
  br label %148

148:                                              ; preds = %137, %127
  %149 = load i64, i64* %20, align 8
  %150 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 %149
  store i32* %14, i32** %150, align 8
  %151 = load i64, i64* %20, align 8
  %152 = getelementptr inbounds [3 x i64], [3 x i64]* %19, i64 0, i64 %151
  store i64 4, i64* %152, align 8
  %153 = load i64, i64* %20, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %20, align 8
  %155 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %156 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @dragonfly_min_pwe_loop_iter(i32 %157)
  store i32 %158, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %159

159:                                              ; preds = %231, %148
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %34, align 4
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  br label %167

167:                                              ; preds = %163, %159
  %168 = phi i1 [ true, %159 ], [ %166, %163 ]
  br i1 %168, label %169, label %234

169:                                              ; preds = %167
  %170 = load i32, i32* @SHA256_MAC_LEN, align 4
  %171 = zext i32 %170 to i64
  %172 = call i8* @llvm.stacksave()
  store i8* %172, i8** %35, align 8
  %173 = alloca i32, i64 %171, align 16
  store i64 %171, i64* %36, align 8
  %174 = load i32, i32* %14, align 4
  %175 = icmp sgt i32 %174, 200
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load i32, i32* @MSG_DEBUG, align 4
  %178 = call i32 (i32, i8*, ...) @wpa_printf(i32 %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 3, i32* %37, align 4
  br label %227

179:                                              ; preds = %169
  %180 = load i32, i32* @MSG_DEBUG, align 4
  %181 = load i32, i32* %14, align 4
  %182 = call i32 (i32, i8*, ...) @wpa_printf(i32 %180, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %34, align 4
  %184 = load i32*, i32** %21, align 8
  %185 = load i32*, i32** %11, align 8
  %186 = load i64, i64* %12, align 8
  %187 = load i32*, i32** %22, align 8
  %188 = call i32 @const_time_select_bin(i32 %183, i32* %184, i32* %185, i64 %186, i32* %187)
  %189 = mul nuw i64 4, %40
  %190 = trunc i64 %189 to i32
  %191 = load i64, i64* %20, align 8
  %192 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %193 = getelementptr inbounds [3 x i64], [3 x i64]* %19, i64 0, i64 0
  %194 = call i64 @hmac_sha256_vector(i32* %42, i32 %190, i64 %191, i32** %192, i64* %193, i32* %173)
  %195 = icmp slt i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %179
  store i32 3, i32* %37, align 4
  br label %227

197:                                              ; preds = %179
  %198 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %199 = call i32 @sae_test_pwd_seed_ecc(%struct.sae_data* %198, i32* %173, i32* %45, i32* %54, i32* %57, i32* %51)
  store i32 %199, i32* %33, align 4
  %200 = load i32, i32* %34, align 4
  %201 = load i64, i64* %25, align 8
  %202 = call i32 @const_time_select_bin(i32 %200, i32* %48, i32* %51, i64 %201, i32* %48)
  %203 = load i32, i32* %34, align 4
  %204 = load i32, i32* %23, align 4
  %205 = load i32, i32* @SHA256_MAC_LEN, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %173, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, 1
  %211 = call i32 @const_time_select_u8(i32 %203, i32 %204, i32 %210)
  store i32 %211, i32* %23, align 4
  %212 = mul nuw i64 4, %171
  %213 = trunc i64 %212 to i32
  %214 = call i32 @os_memset(i32* %173, i32 0, i32 %213)
  %215 = load i32, i32* %33, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %197
  store i32 2, i32* %37, align 4
  br label %227

218:                                              ; preds = %197
  %219 = load i32, i32* %33, align 4
  %220 = mul nsw i32 %219, 255
  %221 = load i32, i32* %34, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %34, align 4
  %223 = load i32, i32* @MSG_DEBUG, align 4
  %224 = load i32, i32* %33, align 4
  %225 = load i32, i32* %34, align 4
  %226 = call i32 (i32, i8*, ...) @wpa_printf(i32 %223, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %224, i32 %225)
  store i32 0, i32* %37, align 4
  br label %227

227:                                              ; preds = %217, %218, %196, %176
  %228 = load i8*, i8** %35, align 8
  call void @llvm.stackrestore(i8* %228)
  %229 = load i32, i32* %37, align 4
  switch i32 %229, label %312 [
    i32 0, label %230
    i32 3, label %234
    i32 2, label %293
  ]

230:                                              ; preds = %227
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %14, align 4
  br label %159

234:                                              ; preds = %227, %167
  %235 = load i32, i32* %34, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* @MSG_DEBUG, align 4
  %239 = call i32 (i32, i8*, ...) @wpa_printf(i32 %238, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %33, align 4
  br label %293

240:                                              ; preds = %234
  %241 = load i64, i64* %25, align 8
  %242 = call %struct.crypto_bignum* @crypto_bignum_init_set(i32* %48, i64 %241)
  store %struct.crypto_bignum* %242, %struct.crypto_bignum** %26, align 8
  %243 = load %struct.crypto_bignum*, %struct.crypto_bignum** %26, align 8
  %244 = icmp ne %struct.crypto_bignum* %243, null
  br i1 %244, label %246, label %245

245:                                              ; preds = %240
  store i32 -1, i32* %33, align 4
  br label %293

246:                                              ; preds = %240
  %247 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %248 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %247, i32 0, i32 0
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %264, label %253

253:                                              ; preds = %246
  %254 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %255 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %254, i32 0, i32 0
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = call i64 @crypto_ec_point_init(i32 %258)
  %260 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %261 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %260, i32 0, i32 0
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 1
  store i64 %259, i64* %263, align 8
  br label %264

264:                                              ; preds = %253, %246
  %265 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %266 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %265, i32 0, i32 0
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %264
  store i32 -1, i32* %33, align 4
  br label %286

272:                                              ; preds = %264
  %273 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %274 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %273, i32 0, i32 0
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %279 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %278, i32 0, i32 0
  %280 = load %struct.TYPE_2__*, %struct.TYPE_2__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.crypto_bignum*, %struct.crypto_bignum** %26, align 8
  %284 = load i32, i32* %23, align 4
  %285 = call i32 @crypto_ec_point_solve_y_coord(i32 %277, i64 %282, %struct.crypto_bignum* %283, i32 %284)
  store i32 %285, i32* %33, align 4
  br label %286

286:                                              ; preds = %272, %271
  %287 = load i32, i32* %33, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load i32, i32* @MSG_DEBUG, align 4
  %291 = call i32 (i32, i8*, ...) @wpa_printf(i32 %290, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %292

292:                                              ; preds = %289, %286
  br label %293

293:                                              ; preds = %292, %227, %245, %237, %115, %92, %75
  %294 = load %struct.crypto_bignum*, %struct.crypto_bignum** %27, align 8
  %295 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %294, i32 0)
  %296 = load %struct.crypto_bignum*, %struct.crypto_bignum** %28, align 8
  %297 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %296, i32 0)
  %298 = load i32*, i32** %21, align 8
  %299 = call i32 @os_free(i32* %298)
  %300 = load i32*, i32** %22, align 8
  %301 = load i64, i64* %12, align 8
  %302 = call i32 @bin_clear_free(i32* %300, i64 %301)
  %303 = load %struct.crypto_bignum*, %struct.crypto_bignum** %26, align 8
  %304 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %303, i32 1)
  %305 = mul nuw i64 4, %47
  %306 = trunc i64 %305 to i32
  %307 = call i32 @os_memset(i32* %48, i32 0, i32 %306)
  %308 = mul nuw i64 4, %50
  %309 = trunc i64 %308 to i32
  %310 = call i32 @os_memset(i32* %51, i32 0, i32 %309)
  %311 = load i32, i32* %33, align 4
  store i32 %311, i32* %7, align 4
  store i32 1, i32* %37, align 4
  br label %312

312:                                              ; preds = %293, %227
  %313 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %313)
  %314 = load i32, i32* %7, align 4
  ret i32 %314
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32* @os_malloc(i64) #2

declare dso_local i64 @random_get_bytes(i32*, i64) #2

declare dso_local i64 @crypto_bignum_to_bin(%struct.crypto_bignum*, i32*, i32, i64) #2

declare dso_local i64 @dragonfly_get_random_qr_qnr(%struct.crypto_bignum*, %struct.crypto_bignum**, %struct.crypto_bignum**) #2

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i64) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @sae_pwd_seed_key(i32*, i32*, i32*) #2

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i32 @dragonfly_min_pwe_loop_iter(i32) #2

declare dso_local i32 @const_time_select_bin(i32, i32*, i32*, i64, i32*) #2

declare dso_local i64 @hmac_sha256_vector(i32*, i32, i64, i32**, i64*, i32*) #2

declare dso_local i32 @sae_test_pwd_seed_ecc(%struct.sae_data*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @const_time_select_u8(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local %struct.crypto_bignum* @crypto_bignum_init_set(i32*, i64) #2

declare dso_local i64 @crypto_ec_point_init(i32) #2

declare dso_local i32 @crypto_ec_point_solve_y_coord(i32, i64, %struct.crypto_bignum*, i32) #2

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #2

declare dso_local i32 @os_free(i32*) #2

declare dso_local i32 @bin_clear_free(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
