; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_module_tests.c_test_sha256.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_module_tests.c_test_sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmac_test = type { i64, i32, i32, i32, i32* }

@tests = common dso_local global %struct.hmac_test* null, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SHA256 test case %d:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" FAIL\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" OK\00", align 1
@hmac_tests = common dso_local global %struct.hmac_test* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"HMAC-SHA256 test case %d:\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Test IEEE 802.11r KDF\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"KDF test\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"SHA256 test cases passed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_sha256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_sha256() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i32], align 16
  %3 = alloca [2 x i32*], align 16
  %4 = alloca [2 x i64], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hmac_test*, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %109, %0
  %9 = load i32, i32* %1, align 4
  %10 = load %struct.hmac_test*, %struct.hmac_test** @tests, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.hmac_test* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %112

13:                                               ; preds = %8
  %14 = load i32, i32* @MSG_INFO, align 4
  %15 = load i32, i32* %1, align 4
  %16 = add i32 %15, 1
  %17 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.hmac_test*, %struct.hmac_test** @tests, align 8
  %19 = load i32, i32* %1, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %18, i64 %20
  %22 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  store i32* %23, i32** %24, align 16
  %25 = load %struct.hmac_test*, %struct.hmac_test** @tests, align 8
  %26 = load i32, i32* %1, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %25, i64 %27
  %29 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @strlen(i32* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  store i64 %32, i64* %33, align 16
  %34 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %36 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %37 = call i32 @sha256_vector(i32 1, i32** %34, i64* %35, i32* %36)
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %39 = load %struct.hmac_test*, %struct.hmac_test** @tests, align 8
  %40 = load i32, i32* %1, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %39, i64 %41
  %43 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @memcmp(i32* %38, i32 %44, i32 32)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %13
  %48 = load i32, i32* @MSG_INFO, align 4
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %55

52:                                               ; preds = %13
  %53 = load i32, i32* @MSG_INFO, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %57 = load i64, i64* %56, align 16
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %108

59:                                               ; preds = %55
  %60 = load %struct.hmac_test*, %struct.hmac_test** @tests, align 8
  %61 = load i32, i32* %1, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %60, i64 %62
  %64 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  store i32* %65, i32** %66, align 16
  %67 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  store i64 1, i64* %67, align 16
  %68 = load %struct.hmac_test*, %struct.hmac_test** @tests, align 8
  %69 = load i32, i32* %1, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %68, i64 %70
  %72 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  store i32* %74, i32** %75, align 8
  %76 = load %struct.hmac_test*, %struct.hmac_test** @tests, align 8
  %77 = load i32, i32* %1, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %76, i64 %78
  %80 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @strlen(i32* %81)
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  store i64 %84, i64* %85, align 8
  %86 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %87 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %88 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %89 = call i32 @sha256_vector(i32 2, i32** %86, i64* %87, i32* %88)
  %90 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %91 = load %struct.hmac_test*, %struct.hmac_test** @tests, align 8
  %92 = load i32, i32* %1, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %91, i64 %93
  %95 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @memcmp(i32* %90, i32 %96, i32 32)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %59
  %100 = load i32, i32* @MSG_INFO, align 4
  %101 = call i32 (i32, i8*, ...) @wpa_printf(i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %107

104:                                              ; preds = %59
  %105 = load i32, i32* @MSG_INFO, align 4
  %106 = call i32 (i32, i8*, ...) @wpa_printf(i32 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %99
  br label %108

108:                                              ; preds = %107, %55
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %1, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %1, align 4
  br label %8

112:                                              ; preds = %8
  store i32 0, i32* %1, align 4
  br label %113

113:                                              ; preds = %240, %112
  %114 = load i32, i32* %1, align 4
  %115 = load %struct.hmac_test*, %struct.hmac_test** @hmac_tests, align 8
  %116 = call i32 @ARRAY_SIZE(%struct.hmac_test* %115)
  %117 = icmp ult i32 %114, %116
  br i1 %117, label %118, label %243

118:                                              ; preds = %113
  %119 = load %struct.hmac_test*, %struct.hmac_test** @hmac_tests, align 8
  %120 = load i32, i32* %1, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %119, i64 %121
  store %struct.hmac_test* %122, %struct.hmac_test** %7, align 8
  %123 = load i32, i32* @MSG_INFO, align 4
  %124 = load i32, i32* %1, align 4
  %125 = add i32 %124, 1
  %126 = call i32 (i32, i8*, ...) @wpa_printf(i32 %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %128 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %131 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %134 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %133, i32 0, i32 4
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %137 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %140 = call i64 @hmac_sha256(i32 %129, i32 %132, i32* %135, i64 %138, i32* %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %118
  %143 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %144 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %145 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @os_memcmp(i32* %143, i32 %146, i32 32)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %142, %118
  %150 = load i32, i32* @MSG_INFO, align 4
  %151 = call i32 (i32, i8*, ...) @wpa_printf(i32 %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %5, align 4
  br label %157

154:                                              ; preds = %142
  %155 = load i32, i32* @MSG_INFO, align 4
  %156 = call i32 (i32, i8*, ...) @wpa_printf(i32 %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %149
  %158 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %159 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  store i32* %160, i32** %161, align 16
  %162 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %163 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  store i64 %164, i64* %165, align 16
  %166 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %167 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %170 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %173 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %174 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %175 = call i64 @hmac_sha256_vector(i32 %168, i32 %171, i32 1, i32** %172, i64* %173, i32* %174)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %157
  %178 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %179 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %180 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @os_memcmp(i32* %178, i32 %181, i32 32)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %177, %157
  %185 = load i32, i32* @MSG_INFO, align 4
  %186 = call i32 (i32, i8*, ...) @wpa_printf(i32 %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %5, align 4
  br label %192

189:                                              ; preds = %177
  %190 = load i32, i32* @MSG_INFO, align 4
  %191 = call i32 (i32, i8*, ...) @wpa_printf(i32 %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %184
  %193 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %194 = load i64, i64* %193, align 16
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %239

196:                                              ; preds = %192
  %197 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %198 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  store i32* %199, i32** %200, align 16
  %201 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  store i64 1, i64* %201, align 16
  %202 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %203 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %202, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  store i32* %205, i32** %206, align 8
  %207 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %208 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = sub i64 %209, 1
  %211 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  store i64 %210, i64* %211, align 8
  %212 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %213 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %216 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %219 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %220 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %221 = call i64 @hmac_sha256_vector(i32 %214, i32 %217, i32 2, i32** %218, i64* %219, i32* %220)
  %222 = icmp slt i64 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %196
  %224 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %225 = load %struct.hmac_test*, %struct.hmac_test** %7, align 8
  %226 = getelementptr inbounds %struct.hmac_test, %struct.hmac_test* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i64 @os_memcmp(i32* %224, i32 %227, i32 32)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %223, %196
  %231 = load i32, i32* @MSG_INFO, align 4
  %232 = call i32 (i32, i8*, ...) @wpa_printf(i32 %231, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %233 = load i32, i32* %5, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %5, align 4
  br label %238

235:                                              ; preds = %223
  %236 = load i32, i32* @MSG_INFO, align 4
  %237 = call i32 (i32, i8*, ...) @wpa_printf(i32 %236, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %238

238:                                              ; preds = %235, %230
  br label %239

239:                                              ; preds = %238, %192
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %1, align 4
  %242 = add i32 %241, 1
  store i32 %242, i32* %1, align 4
  br label %113

243:                                              ; preds = %113
  %244 = load i32, i32* @MSG_INFO, align 4
  %245 = call i32 (i32, i8*, ...) @wpa_printf(i32 %244, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %246 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %247 = call i32 @sha256_prf(i32* bitcast ([4 x i8]* @.str.5 to i32*), i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* bitcast ([5 x i8]* @.str.7 to i32*), i32 4, i32* %246, i32 128)
  %248 = call i32* @os_malloc(i32 8161)
  store i32* %248, i32** %6, align 8
  %249 = load i32*, i32** %6, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %243
  %252 = load i32*, i32** %6, align 8
  %253 = call i32 @os_free(i32* %252)
  br label %254

254:                                              ; preds = %251, %243
  %255 = load i32, i32* %5, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* @MSG_INFO, align 4
  %259 = call i32 (i32, i8*, ...) @wpa_printf(i32 %258, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %260

260:                                              ; preds = %257, %254
  %261 = load i32, i32* %5, align 4
  ret i32 %261
}

declare dso_local i32 @ARRAY_SIZE(%struct.hmac_test*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @sha256_vector(i32, i32**, i64*, i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i64 @hmac_sha256(i32, i32, i32*, i64, i32*) #1

declare dso_local i64 @os_memcmp(i32*, i32, i32) #1

declare dso_local i64 @hmac_sha256_vector(i32, i32, i32, i32**, i64*, i32*) #1

declare dso_local i32 @sha256_prf(i32*, i32, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
