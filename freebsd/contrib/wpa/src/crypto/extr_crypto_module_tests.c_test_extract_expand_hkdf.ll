; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_module_tests.c_test_extract_expand_hkdf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_module_tests.c_test_extract_expand_hkdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@__const.test_extract_expand_hkdf.ikm1 = private unnamed_addr constant [22 x i32] [i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11], align 16
@__const.test_extract_expand_hkdf.salt1 = private unnamed_addr constant [13 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12], align 16
@__const.test_extract_expand_hkdf.info1 = private unnamed_addr constant [10 x i32] [i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247, i32 248, i32 249], align 16
@__const.test_extract_expand_hkdf.prk1 = private unnamed_addr constant [32 x i32] [i32 7, i32 119, i32 9, i32 54, i32 44, i32 46, i32 50, i32 223, i32 13, i32 220, i32 63, i32 13, i32 196, i32 123, i32 186, i32 99, i32 144, i32 182, i32 199, i32 59, i32 181, i32 15, i32 156, i32 49, i32 34, i32 236, i32 132, i32 74, i32 215, i32 194, i32 179, i32 229], align 16
@__const.test_extract_expand_hkdf.okm1 = private unnamed_addr constant [42 x i32] [i32 60, i32 178, i32 95, i32 37, i32 250, i32 172, i32 213, i32 122, i32 144, i32 67, i32 79, i32 100, i32 208, i32 54, i32 47, i32 42, i32 45, i32 45, i32 10, i32 144, i32 207, i32 26, i32 90, i32 76, i32 93, i32 176, i32 45, i32 86, i32 236, i32 196, i32 197, i32 191, i32 52, i32 0, i32 114, i32 8, i32 213, i32 184, i32 135, i32 24, i32 88, i32 101], align 16
@__const.test_extract_expand_hkdf.ikm2 = private unnamed_addr constant [80 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79], align 16
@__const.test_extract_expand_hkdf.salt2 = private unnamed_addr constant [80 x i32] [i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 156, i32 157, i32 158, i32 159, i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168, i32 169, i32 170, i32 171, i32 172, i32 173, i32 174, i32 175], align 16
@__const.test_extract_expand_hkdf.info2 = private unnamed_addr constant [80 x i32] [i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183, i32 184, i32 185, i32 186, i32 187, i32 188, i32 189, i32 190, i32 191, i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199, i32 200, i32 201, i32 202, i32 203, i32 204, i32 205, i32 206, i32 207, i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215, i32 216, i32 217, i32 218, i32 219, i32 220, i32 221, i32 222, i32 223, i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231, i32 232, i32 233, i32 234, i32 235, i32 236, i32 237, i32 238, i32 239, i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247, i32 248, i32 249, i32 250, i32 251, i32 252, i32 253, i32 254, i32 255], align 16
@__const.test_extract_expand_hkdf.prk2 = private unnamed_addr constant [32 x i32] [i32 6, i32 166, i32 184, i32 140, i32 88, i32 83, i32 54, i32 26, i32 6, i32 16, i32 76, i32 156, i32 235, i32 53, i32 180, i32 92, i32 239, i32 118, i32 0, i32 20, i32 144, i32 70, i32 113, i32 1, i32 74, i32 25, i32 63, i32 64, i32 193, i32 95, i32 194, i32 68], align 16
@__const.test_extract_expand_hkdf.okm2 = private unnamed_addr constant [82 x i32] [i32 177, i32 30, i32 57, i32 141, i32 200, i32 3, i32 39, i32 161, i32 200, i32 231, i32 247, i32 140, i32 89, i32 106, i32 73, i32 52, i32 79, i32 1, i32 46, i32 218, i32 45, i32 78, i32 250, i32 216, i32 160, i32 80, i32 204, i32 76, i32 25, i32 175, i32 169, i32 124, i32 89, i32 4, i32 90, i32 153, i32 202, i32 199, i32 130, i32 114, i32 113, i32 203, i32 65, i32 198, i32 94, i32 89, i32 14, i32 9, i32 218, i32 50, i32 117, i32 96, i32 12, i32 47, i32 9, i32 184, i32 54, i32 119, i32 147, i32 169, i32 172, i32 163, i32 219, i32 113, i32 204, i32 48, i32 197, i32 129, i32 121, i32 236, i32 62, i32 135, i32 193, i32 76, i32 1, i32 213, i32 193, i32 243, i32 67, i32 79, i32 29, i32 135], align 16
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Testing Extract-and-Expand HKDF (RFC 5869)\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"RFC 5869 - Test Case 1\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"HKDF-Extract mismatch in PRK\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"HKDF-Expand mismatch in OKM\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"RFC 5869 - Test Case 2\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Extract-and-Expand HKDF test cases passed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_extract_expand_hkdf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_extract_expand_hkdf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [82 x i32], align 16
  %5 = alloca [22 x i32], align 16
  %6 = alloca [13 x i32], align 16
  %7 = alloca [10 x i32], align 16
  %8 = alloca [32 x i32], align 16
  %9 = alloca [42 x i32], align 16
  %10 = alloca [80 x i32], align 16
  %11 = alloca [80 x i32], align 16
  %12 = alloca [80 x i32], align 16
  %13 = alloca [32 x i32], align 16
  %14 = alloca [82 x i32], align 16
  %15 = alloca i32, align 4
  %16 = load i32, i32* @SHA256_MAC_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %2, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %3, align 8
  %20 = bitcast [22 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([22 x i32]* @__const.test_extract_expand_hkdf.ikm1 to i8*), i64 88, i1 false)
  %21 = bitcast [13 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([13 x i32]* @__const.test_extract_expand_hkdf.salt1 to i8*), i64 52, i1 false)
  %22 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([10 x i32]* @__const.test_extract_expand_hkdf.info1 to i8*), i64 40, i1 false)
  %23 = bitcast [32 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([32 x i32]* @__const.test_extract_expand_hkdf.prk1 to i8*), i64 128, i1 false)
  %24 = bitcast [42 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([42 x i32]* @__const.test_extract_expand_hkdf.okm1 to i8*), i64 168, i1 false)
  %25 = bitcast [80 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([80 x i32]* @__const.test_extract_expand_hkdf.ikm2 to i8*), i64 320, i1 false)
  %26 = bitcast [80 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([80 x i32]* @__const.test_extract_expand_hkdf.salt2 to i8*), i64 320, i1 false)
  %27 = bitcast [80 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([80 x i32]* @__const.test_extract_expand_hkdf.info2 to i8*), i64 320, i1 false)
  %28 = bitcast [32 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([32 x i32]* @__const.test_extract_expand_hkdf.prk2 to i8*), i64 128, i1 false)
  %29 = bitcast [82 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 bitcast ([82 x i32]* @__const.test_extract_expand_hkdf.okm2 to i8*), i64 328, i1 false)
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @MSG_INFO, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %34 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 0
  %35 = getelementptr inbounds [22 x i32], [22 x i32]* %5, i64 0, i64 0
  %36 = call i64 @hmac_sha256(i32* %34, i32 52, i32* %35, i32 88, i32* %19)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %96

39:                                               ; preds = %0
  %40 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %41 = load i32, i32* @SHA256_MAC_LEN, align 4
  %42 = call i64 @os_memcmp(i32* %19, i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @MSG_INFO, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %96

47:                                               ; preds = %39
  %48 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %50 = getelementptr inbounds [82 x i32], [82 x i32]* %4, i64 0, i64 0
  %51 = call i64 @hmac_sha256_kdf(i32* %48, i32 128, i32* null, i32* %49, i32 40, i32* %50, i32 168)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %96

54:                                               ; preds = %47
  %55 = getelementptr inbounds [82 x i32], [82 x i32]* %4, i64 0, i64 0
  %56 = getelementptr inbounds [42 x i32], [42 x i32]* %9, i64 0, i64 0
  %57 = call i64 @os_memcmp(i32* %55, i32* %56, i32 168)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @MSG_INFO, align 4
  %61 = call i32 @wpa_printf(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %96

62:                                               ; preds = %54
  %63 = load i32, i32* @MSG_INFO, align 4
  %64 = call i32 @wpa_printf(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %65 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %66 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 0
  %67 = call i64 @hmac_sha256(i32* %65, i32 320, i32* %66, i32 320, i32* %19)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %96

70:                                               ; preds = %62
  %71 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %72 = load i32, i32* @SHA256_MAC_LEN, align 4
  %73 = call i64 @os_memcmp(i32* %19, i32* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @MSG_INFO, align 4
  %77 = call i32 @wpa_printf(i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %96

78:                                               ; preds = %70
  %79 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %80 = getelementptr inbounds [80 x i32], [80 x i32]* %12, i64 0, i64 0
  %81 = getelementptr inbounds [82 x i32], [82 x i32]* %4, i64 0, i64 0
  %82 = call i64 @hmac_sha256_kdf(i32* %79, i32 128, i32* null, i32* %80, i32 320, i32* %81, i32 328)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %96

85:                                               ; preds = %78
  %86 = getelementptr inbounds [82 x i32], [82 x i32]* %4, i64 0, i64 0
  %87 = getelementptr inbounds [82 x i32], [82 x i32]* %14, i64 0, i64 0
  %88 = call i64 @os_memcmp(i32* %86, i32* %87, i32 328)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @MSG_INFO, align 4
  %92 = call i32 @wpa_printf(i32 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @MSG_INFO, align 4
  %95 = call i32 @wpa_printf(i32 %94, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %96

96:                                               ; preds = %93, %90, %84, %75, %69, %59, %53, %44, %38
  %97 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %1, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wpa_printf(i32, i8*) #3

declare dso_local i64 @hmac_sha256(i32*, i32, i32*, i32, i32*) #3

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #3

declare dso_local i64 @hmac_sha256_kdf(i32*, i32, i32*, i32*, i32, i32*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
