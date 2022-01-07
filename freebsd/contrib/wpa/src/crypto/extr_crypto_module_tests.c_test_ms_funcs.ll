; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_module_tests.c_test_ms_funcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_module_tests.c_test_ms_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"clientPass\00", align 1
@__const.test_ms_funcs.auth_challenge = private unnamed_addr constant [16 x i32] [i32 91, i32 93, i32 124, i32 125, i32 123, i32 63, i32 47, i32 62, i32 60, i32 44, i32 96, i32 33, i32 50, i32 38, i32 38, i32 40], align 16
@__const.test_ms_funcs.peer_challenge = private unnamed_addr constant [16 x i32] [i32 33, i32 64, i32 35, i32 36, i32 37, i32 94, i32 38, i32 42, i32 40, i32 41, i32 95, i32 43, i32 58, i32 51, i32 124, i32 126], align 16
@__const.test_ms_funcs.password_hash = private unnamed_addr constant [16 x i32] [i32 68, i32 235, i32 186, i32 141, i32 83, i32 18, i32 184, i32 214, i32 17, i32 71, i32 68, i32 17, i32 245, i32 105, i32 137, i32 174], align 16
@__const.test_ms_funcs.nt_response = private unnamed_addr constant [24 x i32] [i32 130, i32 48, i32 158, i32 205, i32 141, i32 112, i32 139, i32 94, i32 160, i32 143, i32 170, i32 57, i32 129, i32 205, i32 131, i32 84, i32 66, i32 51, i32 17, i32 74, i32 61, i32 133, i32 214, i32 223], align 16
@__const.test_ms_funcs.password_hash_hash = private unnamed_addr constant [16 x i32] [i32 65, i32 192, i32 12, i32 88, i32 75, i32 210, i32 217, i32 28, i32 64, i32 23, i32 162, i32 161, i32 47, i32 165, i32 159, i32 63], align 16
@__const.test_ms_funcs.authenticator_response = private unnamed_addr constant [20 x i32] [i32 64, i32 122, i32 85, i32 137, i32 17, i32 95, i32 208, i32 214, i32 32, i32 159, i32 81, i32 15, i32 233, i32 192, i32 69, i32 102, i32 147, i32 44, i32 218, i32 86], align 16
@__const.test_ms_funcs.master_key = private unnamed_addr constant [16 x i32] [i32 253, i32 236, i32 227, i32 113, i32 122, i32 140, i32 131, i32 140, i32 179, i32 136, i32 229, i32 39, i32 174, i32 60, i32 221, i32 49], align 16
@__const.test_ms_funcs.send_start_key = private unnamed_addr constant [16 x i32] [i32 139, i32 124, i32 220, i32 20, i32 155, i32 153, i32 58, i32 27, i32 161, i32 24, i32 203, i32 21, i32 63, i32 86, i32 220, i32 203], align 16
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"nt_password_hash failed\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"generate_nt_response failed\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"hash_nt_password_hash failed\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"generate_authenticator_response failed\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"get_master_key failed\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"get_asymetric_start_key failed\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ms_funcs: %d errors\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"ms_funcs test cases passed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_ms_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ms_funcs() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca [16 x i32], align 16
  %5 = alloca [16 x i32], align 16
  %6 = alloca [24 x i32], align 16
  %7 = alloca [16 x i32], align 16
  %8 = alloca [20 x i32], align 16
  %9 = alloca [16 x i32], align 16
  %10 = alloca [16 x i32], align 16
  %11 = alloca [32 x i32], align 16
  %12 = alloca i32, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %13 = bitcast [16 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([16 x i32]* @__const.test_ms_funcs.auth_challenge to i8*), i64 64, i1 false)
  %14 = bitcast [16 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([16 x i32]* @__const.test_ms_funcs.peer_challenge to i8*), i64 64, i1 false)
  %15 = bitcast [16 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([16 x i32]* @__const.test_ms_funcs.password_hash to i8*), i64 64, i1 false)
  %16 = bitcast [24 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([24 x i32]* @__const.test_ms_funcs.nt_response to i8*), i64 96, i1 false)
  %17 = bitcast [16 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([16 x i32]* @__const.test_ms_funcs.password_hash_hash to i8*), i64 64, i1 false)
  %18 = bitcast [20 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([20 x i32]* @__const.test_ms_funcs.authenticator_response to i8*), i64 80, i1 false)
  %19 = bitcast [16 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([16 x i32]* @__const.test_ms_funcs.master_key to i8*), i64 64, i1 false)
  %20 = bitcast [16 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([16 x i32]* @__const.test_ms_funcs.send_start_key to i8*), i64 64, i1 false)
  store i32 0, i32* %12, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @os_strlen(i8* %23)
  %25 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %26 = call i64 @nt_password_hash(i32* %22, i32 %24, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %0
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %31 = call i64 @os_memcmp(i32* %29, i32* %30, i32 64)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28, %0
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %41 = load i8*, i8** %1, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load i8*, i8** %1, align 8
  %44 = call i32 @os_strlen(i8* %43)
  %45 = load i8*, i8** %2, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @os_strlen(i8* %47)
  %49 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %50 = call i64 @generate_nt_response(i32* %39, i32* %40, i32* %42, i32 %44, i32* %46, i32 %48, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %38
  %53 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 0
  %54 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %55 = call i64 @os_memcmp(i32* %53, i32* %54, i32 96)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52, %38
  %58 = load i32, i32* @MSG_ERROR, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %64 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %65 = call i64 @hash_nt_password_hash(i32* %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %69 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %70 = call i64 @os_memcmp(i32* %68, i32* %69, i32 64)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67, %62
  %73 = load i32, i32* @MSG_ERROR, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i8*, i8** %2, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = load i8*, i8** %2, align 8
  %81 = call i32 @os_strlen(i8* %80)
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %84 = load i8*, i8** %1, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = load i8*, i8** %1, align 8
  %87 = call i32 @os_strlen(i8* %86)
  %88 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 0
  %89 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %90 = call i64 @generate_authenticator_response(i32* %79, i32 %81, i32* %82, i32* %83, i32* %85, i32 %87, i32* %88, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %77
  %93 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %94 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %95 = call i64 @os_memcmp(i32* %93, i32* %94, i32 80)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92, %77
  %98 = load i32, i32* @MSG_ERROR, align 4
  %99 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %97, %92
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %104 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 0
  %105 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %106 = call i64 @get_master_key(i32* %103, i32* %104, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %110 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %111 = call i64 @os_memcmp(i32* %109, i32* %110, i32 64)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108, %102
  %114 = load i32, i32* @MSG_ERROR, align 4
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %113, %108
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %120 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %121 = call i64 @get_asymetric_start_key(i32* %119, i32* %120, i32 64, i32 1, i32 1)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %125 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %126 = call i64 @os_memcmp(i32* %124, i32* %125, i32 64)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123, %118
  %129 = load i32, i32* @MSG_ERROR, align 4
  %130 = call i32 (i32, i8*, ...) @wpa_printf(i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32, i32* @MSG_ERROR, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 (i32, i8*, ...) @wpa_printf(i32 %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %138)
  br label %143

140:                                              ; preds = %133
  %141 = load i32, i32* @MSG_INFO, align 4
  %142 = call i32 (i32, i8*, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %136
  %144 = load i32, i32* %12, align 4
  ret i32 %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @nt_password_hash(i32*, i32, i32*) #2

declare dso_local i32 @os_strlen(i8*) #2

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @generate_nt_response(i32*, i32*, i32*, i32, i32*, i32, i32*) #2

declare dso_local i64 @hash_nt_password_hash(i32*, i32*) #2

declare dso_local i64 @generate_authenticator_response(i32*, i32, i32*, i32*, i32*, i32, i32*, i32*) #2

declare dso_local i64 @get_master_key(i32*, i32*, i32*) #2

declare dso_local i64 @get_asymetric_start_key(i32*, i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
