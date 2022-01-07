; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_sign.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_sign.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@crypto_sign_ed25519_SEEDBYTES = common dso_local global i32 0, align 4
@crypto_sign_ed25519_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_sign_BYTES = common dso_local global i32 0, align 4
@crypto_sign_SECRETKEYBYTES = common dso_local global i32 0, align 4
@crypto_sign_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@test_data = common dso_local global %struct.TYPE_2__* null, align 8
@crypto_sign_SEEDBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"crypto_sign() failure: [%u]\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"signature failure: [%u]\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"crypto_sign_open() failure: [%u]\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"crypto_sign_open(): signature [%u] is malleable\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"message verification failure: [%u]\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"message can be forged: [%u]\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"short signed message verifies: [%u]\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"detached signature failed: [%u]\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"detached signature has an unexpected length: [%u]\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"detached signature failure: [%u]\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"detached signature verification failed: [%u]\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%u tests\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"crypto_sign() with overlap failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"crypto_sign_open() with overlap failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"crypto_sign_open() with overlap failed (content)\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"detached signature verification should have failed\0A\00", align 1
@non_canonical_p = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [75 x i8] c"detached signature verification with non-canonical key should have failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"3eee494fb9eac773144e34b0c755affaf33ea782c0722e5ea8b150e61209ab36\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"signature with an invalid public key should have failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"0200000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"0500000000000000000000000000000000000000000000000000000000000000\00", align 1
@keypair_seed = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [36 x i8] c"crypto_sign_seed_keypair() failure\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"ed25519ph sig: [%s]\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"ed5519ph verification failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"ed5519ph verification could be forged\0A\00", align 1
@.str.25 = private unnamed_addr constant [65 x i8] c"833fe62409237b9d62ec77587520911e9a759cec1d19755b7da901b96dca3d42\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"ec172b93ad5e563bf4932c70e1245034c35467ef2efd4d64ebf819683467e2bf\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"ed25519ph signature has an unexpected length\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"ed25519ph tv sig: [%s]\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"ed25519ph verification failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"crypto_sign_keypair() failure\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"crypto_sign_ed25519_sk_to_seed() failure\0A\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"crypto_sign_ed25519_sk_to_pk() failure\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"pk: [%s]\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sk: [%s]\0A\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"ed25519\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %21 = load i32, i32* @crypto_sign_ed25519_SEEDBYTES, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %3, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %4, align 8
  %25 = load i32, i32* @crypto_sign_ed25519_PUBLICKEYBYTES, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %5, align 8
  %28 = load i32, i32* @crypto_sign_BYTES, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %6, align 8
  %31 = load i32, i32* @crypto_sign_BYTES, align 4
  %32 = add nsw i32 1024, %31
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %7, align 8
  %35 = load i32, i32* @crypto_sign_SECRETKEYBYTES, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %9, align 8
  %38 = load i32, i32* @crypto_sign_PUBLICKEYBYTES, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %10, align 8
  %41 = load i32, i32* @crypto_sign_SECRETKEYBYTES, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %11, align 8
  %44 = load i32, i32* @crypto_sign_BYTES, align 4
  %45 = mul nsw i32 %44, 2
  %46 = add nsw i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %12, align 8
  %49 = load i32, i32* @crypto_sign_PUBLICKEYBYTES, align 4
  %50 = mul nsw i32 %49, 2
  %51 = add nsw i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = alloca i8, i64 %52, align 16
  store i64 %52, i64* %13, align 8
  %54 = load i32, i32* @crypto_sign_SECRETKEYBYTES, align 4
  %55 = mul nsw i32 %54, 2
  %56 = add nsw i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = alloca i8, i64 %57, align 16
  store i64 %57, i64* %14, align 8
  %59 = trunc i64 %29 to i32
  %60 = call i32 @memset(i8* %30, i32 0, i32 %59)
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %253, %0
  %62 = load i32, i32* %18, align 4
  %63 = zext i32 %62 to i64
  %64 = icmp ult i64 %63, 0
  br i1 %64, label %65, label %256

65:                                               ; preds = %61
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %67 = load i32, i32* %18, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @crypto_sign_SEEDBYTES, align 4
  %73 = call i32 @memcpy(i8* %37, i8* %71, i32 %72)
  %74 = load i32, i32* @crypto_sign_SEEDBYTES, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %37, i64 %75
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %78 = load i32, i32* %18, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* @crypto_sign_PUBLICKEYBYTES, align 4
  %84 = call i32 @memcpy(i8* %76, i8* %82, i32 %83)
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %86 = load i32, i32* %18, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %18, align 4
  %92 = call i64 @crypto_sign(i8* %34, i64* %16, i8* %90, i32 %91, i8* %37)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %65
  %95 = load i32, i32* %18, align 4
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %253

97:                                               ; preds = %65
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %99 = load i32, i32* %18, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @crypto_sign_BYTES, align 4
  %105 = call i64 @memcmp(i8* %103, i8* %34, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load i32, i32* %18, align 4
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %253

110:                                              ; preds = %97
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %112 = load i64, i64* %16, align 8
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %114 = load i32, i32* %18, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @crypto_sign_open(i8* %111, i64* null, i8* %34, i64 %112, i8* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %110
  %122 = load i32, i32* %18, align 4
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  br label %253

124:                                              ; preds = %110
  %125 = getelementptr inbounds i8, i8* %34, i64 32
  %126 = call i32 @add_l(i8* %125)
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %128 = load i64, i64* %16, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %130 = load i32, i32* %18, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @crypto_sign_open(i8* %127, i64* %17, i8* %34, i64 %128, i8* %134)
  %136 = icmp ne i32 %135, -1
  br i1 %136, label %137, label %140

137:                                              ; preds = %124
  %138 = load i32, i32* %18, align 4
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  br label %253

140:                                              ; preds = %124
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %142 = load i32, i32* %18, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %148 = load i64, i64* %17, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i64 @memcmp(i8* %146, i8* %147, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load i32, i32* %18, align 4
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %153)
  br label %253

155:                                              ; preds = %140
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* @crypto_sign_BYTES, align 4
  %158 = add i32 %156, %157
  %159 = sub i32 %158, 1
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %34, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = add i8 %162, 1
  store i8 %163, i8* %161, align 1
  %164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %165 = load i64, i64* %16, align 8
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %167 = load i32, i32* %18, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @crypto_sign_open(i8* %164, i64* %17, i8* %34, i64 %165, i8* %171)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %155
  %175 = load i32, i32* %18, align 4
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %175)
  br label %253

177:                                              ; preds = %155
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* @crypto_sign_BYTES, align 4
  %181 = urem i32 %179, %180
  %182 = zext i32 %181 to i64
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %184 = load i32, i32* %18, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @crypto_sign_open(i8* %178, i64* %17, i8* %34, i64 %182, i8* %188)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %177
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* @crypto_sign_BYTES, align 4
  %194 = urem i32 %192, %193
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %194)
  br label %253

196:                                              ; preds = %177
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %198 = load i32, i32* %18, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = load i32, i32* %18, align 4
  %204 = call i64 @crypto_sign_detached(i8* %30, i64* %15, i8* %202, i32 %203, i8* %37)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %196
  %207 = load i32, i32* %18, align 4
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %207)
  br label %253

209:                                              ; preds = %196
  %210 = load i64, i64* %15, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %209
  %213 = load i64, i64* %15, align 8
  %214 = load i32, i32* @crypto_sign_BYTES, align 4
  %215 = sext i32 %214 to i64
  %216 = icmp ugt i64 %213, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %212, %209
  %218 = load i32, i32* %18, align 4
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %218)
  br label %253

220:                                              ; preds = %212
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %222 = load i32, i32* %18, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 3
  %226 = load i8*, i8** %225, align 8
  %227 = load i32, i32* @crypto_sign_BYTES, align 4
  %228 = call i64 @memcmp(i8* %226, i8* %30, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %220
  %231 = load i32, i32* %18, align 4
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %231)
  br label %253

233:                                              ; preds = %220
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %235 = load i32, i32* %18, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 2
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* %18, align 4
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %242 = load i32, i32* %18, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @crypto_sign_verify_detached(i8* %30, i8* %239, i32 %240, i8* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %233
  %250 = load i32, i32* %18, align 4
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %250)
  br label %253

252:                                              ; preds = %233
  br label %253

253:                                              ; preds = %252, %249, %230, %217, %206, %191, %174, %152, %137, %121, %107, %94
  %254 = load i32, i32* %18, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %18, align 4
  br label %61

256:                                              ; preds = %61
  %257 = load i32, i32* %18, align 4
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* %18, align 4
  %260 = add i32 %259, -1
  store i32 %260, i32* %18, align 4
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %262 = load i32, i32* %18, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 2
  %266 = load i8*, i8** %265, align 8
  %267 = load i32, i32* %18, align 4
  %268 = call i32 @memcpy(i8* %34, i8* %266, i32 %267)
  %269 = load i32, i32* %18, align 4
  %270 = call i64 @crypto_sign(i8* %34, i64* %16, i8* %34, i32 %269, i8* %37)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %256
  %273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %274

274:                                              ; preds = %272, %256
  %275 = load i64, i64* %16, align 8
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %277 = load i32, i32* %18, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 1
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @crypto_sign_open(i8* %34, i64* %17, i8* %34, i64 %275, i8* %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %274
  %285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %286

286:                                              ; preds = %284, %274
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %288 = load i32, i32* %18, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 2
  %292 = load i8*, i8** %291, align 8
  %293 = load i64, i64* %17, align 8
  %294 = trunc i64 %293 to i32
  %295 = call i64 @memcmp(i8* %292, i8* %34, i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %286
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0))
  br label %299

299:                                              ; preds = %297, %286
  store i32 1, i32* %19, align 4
  br label %300

300:                                              ; preds = %336, %299
  %301 = load i32, i32* %19, align 4
  %302 = icmp ult i32 %301, 8
  br i1 %302, label %303, label %339

303:                                              ; preds = %300
  %304 = load i32, i32* %19, align 4
  %305 = shl i32 %304, 5
  %306 = getelementptr inbounds i8, i8* %30, i64 63
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = xor i32 %308, %305
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %306, align 1
  %311 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %312 = load i32, i32* %18, align 4
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 2
  %316 = load i8*, i8** %315, align 8
  %317 = load i32, i32* %18, align 4
  %318 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %319 = load i32, i32* %18, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %321, i32 0, i32 1
  %323 = load i8*, i8** %322, align 8
  %324 = call i32 @crypto_sign_verify_detached(i8* %30, i8* %316, i32 %317, i8* %323)
  %325 = icmp ne i32 %324, -1
  br i1 %325, label %326, label %328

326:                                              ; preds = %303
  %327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0))
  br label %336

328:                                              ; preds = %303
  %329 = load i32, i32* %19, align 4
  %330 = shl i32 %329, 5
  %331 = getelementptr inbounds i8, i8* %30, i64 63
  %332 = load i8, i8* %331, align 1
  %333 = zext i8 %332 to i32
  %334 = xor i32 %333, %330
  %335 = trunc i32 %334 to i8
  store i8 %335, i8* %331, align 1
  br label %336

336:                                              ; preds = %328, %326
  %337 = load i32, i32* %19, align 4
  %338 = add i32 %337, 1
  store i32 %338, i32* %19, align 4
  br label %300

339:                                              ; preds = %300
  %340 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %341 = load i32, i32* %18, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 2
  %345 = load i8*, i8** %344, align 8
  %346 = load i32, i32* %18, align 4
  %347 = load i8*, i8** @non_canonical_p, align 8
  %348 = call i32 @crypto_sign_verify_detached(i8* %30, i8* %345, i32 %346, i8* %347)
  %349 = icmp ne i32 %348, -1
  br i1 %349, label %350, label %352

350:                                              ; preds = %339
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.16, i64 0, i64 0))
  br label %352

352:                                              ; preds = %350, %339
  %353 = trunc i64 %39 to i32
  %354 = call i32 @memset(i8* %40, i32 0, i32 %353)
  %355 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %356 = load i32, i32* %18, align 4
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 2
  %360 = load i8*, i8** %359, align 8
  %361 = load i32, i32* %18, align 4
  %362 = call i32 @crypto_sign_verify_detached(i8* %30, i8* %360, i32 %361, i8* %40)
  %363 = icmp ne i32 %362, -1
  br i1 %363, label %364, label %366

364:                                              ; preds = %352
  %365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0))
  br label %366

366:                                              ; preds = %364, %352
  %367 = call i32 @memset(i8* %30, i32 255, i32 32)
  %368 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 -37, i8* %368, align 16
  %369 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %370 = load i32, i32* %18, align 4
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 2
  %374 = load i8*, i8** %373, align 8
  %375 = load i32, i32* %18, align 4
  %376 = call i32 @crypto_sign_verify_detached(i8* %30, i8* %374, i32 %375, i8* %40)
  %377 = icmp ne i32 %376, -1
  br i1 %377, label %378, label %380

378:                                              ; preds = %366
  %379 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0))
  br label %380

380:                                              ; preds = %378, %366
  %381 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %382 = load i32, i32* %18, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %384, i32 0, i32 2
  %386 = load i8*, i8** %385, align 8
  %387 = load i32, i32* %18, align 4
  %388 = call i64 @crypto_sign_detached(i8* %30, i64* null, i8* %386, i32 %387, i8* %37)
  %389 = icmp eq i64 %388, 0
  %390 = zext i1 %389 to i32
  %391 = call i32 @assert(i32 %390)
  %392 = load i32, i32* @crypto_sign_PUBLICKEYBYTES, align 4
  %393 = load i32, i32* @crypto_sign_PUBLICKEYBYTES, align 4
  %394 = mul nsw i32 %393, 2
  %395 = call i32 @sodium_hex2bin(i8* %40, i32 %392, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i64 0, i64 0), i32 %394, i32* null, i32* null, i32* null)
  %396 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %397 = load i32, i32* %18, align 4
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %396, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i32 0, i32 2
  %401 = load i8*, i8** %400, align 8
  %402 = load i32, i32* %18, align 4
  %403 = call i32 @crypto_sign_verify_detached(i8* %30, i8* %401, i32 %402, i8* %40)
  %404 = icmp ne i32 %403, -1
  br i1 %404, label %405, label %407

405:                                              ; preds = %380
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0))
  br label %407

407:                                              ; preds = %405, %380
  %408 = load i32, i32* @crypto_sign_PUBLICKEYBYTES, align 4
  %409 = load i32, i32* @crypto_sign_PUBLICKEYBYTES, align 4
  %410 = mul nsw i32 %409, 2
  %411 = call i32 @sodium_hex2bin(i8* %40, i32 %408, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19, i64 0, i64 0), i32 %410, i32* null, i32* null, i32* null)
  %412 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %413 = load i32, i32* %18, align 4
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i32 0, i32 2
  %417 = load i8*, i8** %416, align 8
  %418 = load i32, i32* %18, align 4
  %419 = call i32 @crypto_sign_verify_detached(i8* %30, i8* %417, i32 %418, i8* %40)
  %420 = icmp ne i32 %419, -1
  br i1 %420, label %421, label %423

421:                                              ; preds = %407
  %422 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0))
  br label %423

423:                                              ; preds = %421, %407
  %424 = load i32, i32* @crypto_sign_PUBLICKEYBYTES, align 4
  %425 = load i32, i32* @crypto_sign_PUBLICKEYBYTES, align 4
  %426 = mul nsw i32 %425, 2
  %427 = call i32 @sodium_hex2bin(i8* %40, i32 %424, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.20, i64 0, i64 0), i32 %426, i32* null, i32* null, i32* null)
  %428 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %429 = load i32, i32* %18, align 4
  %430 = zext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %428, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %431, i32 0, i32 2
  %433 = load i8*, i8** %432, align 8
  %434 = load i32, i32* %18, align 4
  %435 = call i32 @crypto_sign_verify_detached(i8* %30, i8* %433, i32 %434, i8* %40)
  %436 = icmp ne i32 %435, -1
  br i1 %436, label %437, label %439

437:                                              ; preds = %423
  %438 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0))
  br label %439

439:                                              ; preds = %437, %423
  %440 = load i8*, i8** @keypair_seed, align 8
  %441 = call i64 @crypto_sign_seed_keypair(i8* %40, i8* %43, i8* %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %445

443:                                              ; preds = %439
  %444 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %20, align 4
  br label %660

445:                                              ; preds = %439
  %446 = call i32 @crypto_sign_init(i32* %2)
  %447 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %448 = load i32, i32* %18, align 4
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %447, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %450, i32 0, i32 2
  %452 = load i8*, i8** %451, align 8
  %453 = load i32, i32* %18, align 4
  %454 = call i32 @crypto_sign_update(i32* %2, i8* %452, i32 %453)
  %455 = call i32 @crypto_sign_final_create(i32* %2, i8* %30, i64* null, i8* %43)
  %456 = trunc i64 %47 to i32
  %457 = trunc i64 %29 to i32
  %458 = call i32 @sodium_bin2hex(i8* %48, i32 %456, i8* %30, i32 %457)
  %459 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %48)
  %460 = call i32 @crypto_sign_init(i32* %2)
  %461 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %462 = load i32, i32* %18, align 4
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %461, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %464, i32 0, i32 2
  %466 = load i8*, i8** %465, align 8
  %467 = load i32, i32* %18, align 4
  %468 = call i32 @crypto_sign_update(i32* %2, i8* %466, i32 %467)
  %469 = call i32 @crypto_sign_final_verify(i32* %2, i8* %30, i8* %40)
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %473

471:                                              ; preds = %445
  %472 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0))
  br label %473

473:                                              ; preds = %471, %445
  %474 = call i32 @crypto_sign_init(i32* %2)
  %475 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %476 = load i32, i32* %18, align 4
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %475, i64 %477
  %479 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %478, i32 0, i32 2
  %480 = load i8*, i8** %479, align 8
  %481 = call i32 @crypto_sign_update(i32* %2, i8* %480, i32 0)
  %482 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %483 = load i32, i32* %18, align 4
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %482, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %485, i32 0, i32 2
  %487 = load i8*, i8** %486, align 8
  %488 = load i32, i32* %18, align 4
  %489 = udiv i32 %488, 2
  %490 = call i32 @crypto_sign_update(i32* %2, i8* %487, i32 %489)
  %491 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %492 = load i32, i32* %18, align 4
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %491, i64 %493
  %495 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %494, i32 0, i32 2
  %496 = load i8*, i8** %495, align 8
  %497 = load i32, i32* %18, align 4
  %498 = udiv i32 %497, 2
  %499 = zext i32 %498 to i64
  %500 = getelementptr inbounds i8, i8* %496, i64 %499
  %501 = load i32, i32* %18, align 4
  %502 = load i32, i32* %18, align 4
  %503 = udiv i32 %502, 2
  %504 = sub i32 %501, %503
  %505 = call i32 @crypto_sign_update(i32* %2, i8* %500, i32 %504)
  %506 = call i32 @crypto_sign_final_verify(i32* %2, i8* %30, i8* %40)
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %473
  %509 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0))
  br label %510

510:                                              ; preds = %508, %473
  %511 = getelementptr inbounds i8, i8* %30, i64 0
  %512 = load i8, i8* %511, align 16
  %513 = add i8 %512, 1
  store i8 %513, i8* %511, align 16
  %514 = call i32 @crypto_sign_final_verify(i32* %2, i8* %30, i8* %40)
  %515 = icmp ne i32 %514, -1
  br i1 %515, label %516, label %518

516:                                              ; preds = %510
  %517 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0))
  br label %518

518:                                              ; preds = %516, %510
  %519 = getelementptr inbounds i8, i8* %30, i64 0
  %520 = load i8, i8* %519, align 16
  %521 = add i8 %520, -1
  store i8 %521, i8* %519, align 16
  %522 = getelementptr inbounds i8, i8* %40, i64 0
  %523 = load i8, i8* %522, align 16
  %524 = add i8 %523, 1
  store i8 %524, i8* %522, align 16
  %525 = call i32 @crypto_sign_final_verify(i32* %2, i8* %30, i8* %40)
  %526 = icmp ne i32 %525, -1
  br i1 %526, label %527, label %529

527:                                              ; preds = %518
  %528 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0))
  br label %529

529:                                              ; preds = %527, %518
  %530 = load i32, i32* @crypto_sign_SECRETKEYBYTES, align 4
  %531 = load i32, i32* @crypto_sign_SECRETKEYBYTES, align 4
  %532 = mul nsw i32 2, %531
  %533 = call i32 @sodium_hex2bin(i8* %43, i32 %530, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.25, i64 0, i64 0), i32 %532, i32* null, i32* null, i32* null)
  %534 = load i32, i32* @crypto_sign_PUBLICKEYBYTES, align 4
  %535 = load i32, i32* @crypto_sign_PUBLICKEYBYTES, align 4
  %536 = mul nsw i32 2, %535
  %537 = call i32 @sodium_hex2bin(i8* %40, i32 %534, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i64 0, i64 0), i32 %536, i32* null, i32* null, i32* null)
  %538 = load i32, i32* @crypto_sign_SECRETKEYBYTES, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i8, i8* %43, i64 %539
  %541 = load i32, i32* @crypto_sign_PUBLICKEYBYTES, align 4
  %542 = sext i32 %541 to i64
  %543 = sub i64 0, %542
  %544 = getelementptr inbounds i8, i8* %540, i64 %543
  %545 = load i32, i32* @crypto_sign_PUBLICKEYBYTES, align 4
  %546 = call i32 @memcpy(i8* %544, i8* %40, i32 %545)
  %547 = call i32 @crypto_sign_init(i32* %2)
  %548 = call i32 @crypto_sign_update(i32* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 3)
  %549 = call i32 @crypto_sign_final_create(i32* %2, i8* %30, i64* %15, i8* %43)
  %550 = load i64, i64* %15, align 8
  %551 = icmp eq i64 %550, 0
  br i1 %551, label %557, label %552

552:                                              ; preds = %529
  %553 = load i64, i64* %15, align 8
  %554 = load i32, i32* @crypto_sign_BYTES, align 4
  %555 = sext i32 %554 to i64
  %556 = icmp ugt i64 %553, %555
  br i1 %556, label %557, label %559

557:                                              ; preds = %552, %529
  %558 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0))
  br label %559

559:                                              ; preds = %557, %552
  %560 = trunc i64 %47 to i32
  %561 = trunc i64 %29 to i32
  %562 = call i32 @sodium_bin2hex(i8* %48, i32 %560, i8* %30, i32 %561)
  %563 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* %48)
  %564 = call i32 @crypto_sign_init(i32* %2)
  %565 = call i32 @crypto_sign_update(i32* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 3)
  %566 = call i32 @crypto_sign_final_verify(i32* %2, i8* %30, i8* %40)
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %570

568:                                              ; preds = %559
  %569 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0))
  br label %570

570:                                              ; preds = %568, %559
  %571 = call i64 @crypto_sign_keypair(i8* %40, i8* %43)
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %573, label %575

573:                                              ; preds = %570
  %574 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0))
  br label %575

575:                                              ; preds = %573, %570
  %576 = load i8*, i8** @keypair_seed, align 8
  %577 = call i64 @crypto_sign_seed_keypair(i8* %40, i8* %43, i8* %576)
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %579, label %581

579:                                              ; preds = %575
  %580 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %20, align 4
  br label %660

581:                                              ; preds = %575
  %582 = call i32 @crypto_sign_ed25519_sk_to_seed(i8* %24, i8* %43)
  %583 = load i8*, i8** @keypair_seed, align 8
  %584 = load i32, i32* @crypto_sign_ed25519_SEEDBYTES, align 4
  %585 = call i64 @memcmp(i8* %24, i8* %583, i32 %584)
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %587, label %589

587:                                              ; preds = %581
  %588 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0))
  br label %589

589:                                              ; preds = %587, %581
  %590 = call i32 @crypto_sign_ed25519_sk_to_pk(i8* %27, i8* %43)
  %591 = load i32, i32* @crypto_sign_ed25519_PUBLICKEYBYTES, align 4
  %592 = call i64 @memcmp(i8* %27, i8* %40, i32 %591)
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %596

594:                                              ; preds = %589
  %595 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0))
  br label %596

596:                                              ; preds = %594, %589
  %597 = trunc i64 %52 to i32
  %598 = trunc i64 %39 to i32
  %599 = call i32 @sodium_bin2hex(i8* %53, i32 %597, i8* %40, i32 %598)
  %600 = trunc i64 %57 to i32
  %601 = trunc i64 %42 to i32
  %602 = call i32 @sodium_bin2hex(i8* %58, i32 %600, i8* %43, i32 %601)
  %603 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8* %53)
  %604 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i8* %58)
  %605 = call i32 (...) @crypto_sign_bytes()
  %606 = icmp ugt i32 %605, 0
  %607 = zext i1 %606 to i32
  %608 = call i32 @assert(i32 %607)
  %609 = call i32 (...) @crypto_sign_seedbytes()
  %610 = icmp ugt i32 %609, 0
  %611 = zext i1 %610 to i32
  %612 = call i32 @assert(i32 %611)
  %613 = call i32 (...) @crypto_sign_publickeybytes()
  %614 = icmp ugt i32 %613, 0
  %615 = zext i1 %614 to i32
  %616 = call i32 @assert(i32 %615)
  %617 = call i32 (...) @crypto_sign_secretkeybytes()
  %618 = icmp ugt i32 %617, 0
  %619 = zext i1 %618 to i32
  %620 = call i32 @assert(i32 %619)
  %621 = call i32 (...) @crypto_sign_messagebytes_max()
  %622 = icmp ugt i32 %621, 0
  %623 = zext i1 %622 to i32
  %624 = call i32 @assert(i32 %623)
  %625 = call i32 (...) @crypto_sign_primitive()
  %626 = call i64 @strcmp(i32 %625, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0))
  %627 = icmp eq i64 %626, 0
  %628 = zext i1 %627 to i32
  %629 = call i32 @assert(i32 %628)
  %630 = call i32 (...) @crypto_sign_bytes()
  %631 = call i32 (...) @crypto_sign_ed25519_bytes()
  %632 = icmp eq i32 %630, %631
  %633 = zext i1 %632 to i32
  %634 = call i32 @assert(i32 %633)
  %635 = call i32 (...) @crypto_sign_seedbytes()
  %636 = call i32 (...) @crypto_sign_ed25519_seedbytes()
  %637 = icmp eq i32 %635, %636
  %638 = zext i1 %637 to i32
  %639 = call i32 @assert(i32 %638)
  %640 = call i32 (...) @crypto_sign_messagebytes_max()
  %641 = call i32 (...) @crypto_sign_ed25519_messagebytes_max()
  %642 = icmp eq i32 %640, %641
  %643 = zext i1 %642 to i32
  %644 = call i32 @assert(i32 %643)
  %645 = call i32 (...) @crypto_sign_publickeybytes()
  %646 = call i32 (...) @crypto_sign_ed25519_publickeybytes()
  %647 = icmp eq i32 %645, %646
  %648 = zext i1 %647 to i32
  %649 = call i32 @assert(i32 %648)
  %650 = call i32 (...) @crypto_sign_secretkeybytes()
  %651 = call i32 (...) @crypto_sign_ed25519_secretkeybytes()
  %652 = icmp eq i32 %650, %651
  %653 = zext i1 %652 to i32
  %654 = call i32 @assert(i32 %653)
  %655 = call i64 (...) @crypto_sign_statebytes()
  %656 = call i64 (...) @crypto_sign_ed25519ph_statebytes()
  %657 = icmp eq i64 %655, %656
  %658 = zext i1 %657 to i32
  %659 = call i32 @assert(i32 %658)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %20, align 4
  br label %660

660:                                              ; preds = %596, %579, %443
  %661 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %661)
  %662 = load i32, i32* %1, align 4
  ret i32 %662
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @crypto_sign(i8*, i64*, i8*, i32, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @crypto_sign_open(i8*, i64*, i8*, i64, i8*) #2

declare dso_local i32 @add_l(i8*) #2

declare dso_local i64 @crypto_sign_detached(i8*, i64*, i8*, i32, i8*) #2

declare dso_local i32 @crypto_sign_verify_detached(i8*, i8*, i32, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @sodium_hex2bin(i8*, i32, i8*, i32, i32*, i32*, i32*) #2

declare dso_local i64 @crypto_sign_seed_keypair(i8*, i8*, i8*) #2

declare dso_local i32 @crypto_sign_init(i32*) #2

declare dso_local i32 @crypto_sign_update(i32*, i8*, i32) #2

declare dso_local i32 @crypto_sign_final_create(i32*, i8*, i64*, i8*) #2

declare dso_local i32 @sodium_bin2hex(i8*, i32, i8*, i32) #2

declare dso_local i32 @crypto_sign_final_verify(i32*, i8*, i8*) #2

declare dso_local i64 @crypto_sign_keypair(i8*, i8*) #2

declare dso_local i32 @crypto_sign_ed25519_sk_to_seed(i8*, i8*) #2

declare dso_local i32 @crypto_sign_ed25519_sk_to_pk(i8*, i8*) #2

declare dso_local i32 @crypto_sign_bytes(...) #2

declare dso_local i32 @crypto_sign_seedbytes(...) #2

declare dso_local i32 @crypto_sign_publickeybytes(...) #2

declare dso_local i32 @crypto_sign_secretkeybytes(...) #2

declare dso_local i32 @crypto_sign_messagebytes_max(...) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @crypto_sign_primitive(...) #2

declare dso_local i32 @crypto_sign_ed25519_bytes(...) #2

declare dso_local i32 @crypto_sign_ed25519_seedbytes(...) #2

declare dso_local i32 @crypto_sign_ed25519_messagebytes_max(...) #2

declare dso_local i32 @crypto_sign_ed25519_publickeybytes(...) #2

declare dso_local i32 @crypto_sign_ed25519_secretkeybytes(...) #2

declare dso_local i64 @crypto_sign_statebytes(...) #2

declare dso_local i64 @crypto_sign_ed25519ph_statebytes(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
