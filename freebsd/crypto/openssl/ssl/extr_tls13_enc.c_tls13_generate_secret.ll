; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_tls13_enc.c_tls13_generate_secret.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_tls13_enc.c_tls13_generate_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_PKEY_HKDF = common dso_local global i32 0, align 4
@tls13_generate_secret.derived_secret_label = internal constant [8 x i8] c"derived\00", align 1
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS13_GENERATE_SECRET = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@default_zeros = common dso_local global i8* null, align 8
@EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls13_generate_secret(i32* %0, i32* %1, i8* %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %25 = load i32, i32* @EVP_PKEY_HKDF, align 4
  %26 = call i32* @EVP_PKEY_CTX_new_id(i32 %25, i32* null)
  store i32* %26, i32** %18, align 8
  %27 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %19, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %20, align 8
  %31 = load i32*, i32** %18, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %6
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %36 = load i32, i32* @SSL_F_TLS13_GENERATE_SECRET, align 4
  %37 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %38 = call i32 @SSLfatal(i32* %34, i32 %35, i32 %36, i32 %37)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %166

39:                                               ; preds = %6
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @EVP_MD_size(i32* %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp sge i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @ossl_assert(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %50 = load i32, i32* @SSL_F_TLS13_GENERATE_SECRET, align 4
  %51 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %52 = call i32 @SSLfatal(i32* %48, i32 %49, i32 %50, i32 %51)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %166

53:                                               ; preds = %39
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %14, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** @default_zeros, align 8
  store i8* %59, i8** %11, align 8
  %60 = load i64, i64* %14, align 8
  store i64 %60, i64* %12, align 8
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i8*, i8** %10, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i8*, i8** @default_zeros, align 8
  store i8* %65, i8** %10, align 8
  store i64 0, i64* %15, align 8
  br label %112

66:                                               ; preds = %61
  %67 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %67, i32** %22, align 8
  %68 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %23, align 8
  %71 = alloca i8, i64 %69, align 16
  store i64 %69, i64* %24, align 8
  %72 = load i32*, i32** %22, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %66
  %75 = load i32*, i32** %22, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i64 @EVP_DigestInit_ex(i32* %75, i32* %76, i32* null)
  %78 = icmp sle i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i32*, i32** %22, align 8
  %81 = call i64 @EVP_DigestFinal_ex(i32* %80, i8* %71, i32* null)
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79, %74, %66
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %86 = load i32, i32* @SSL_F_TLS13_GENERATE_SECRET, align 4
  %87 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %88 = call i32 @SSLfatal(i32* %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32*, i32** %22, align 8
  %90 = call i32 @EVP_MD_CTX_free(i32* %89)
  %91 = load i32*, i32** %18, align 8
  %92 = call i32 @EVP_PKEY_CTX_free(i32* %91)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %108

93:                                               ; preds = %79
  %94 = load i32*, i32** %22, align 8
  %95 = call i32 @EVP_MD_CTX_free(i32* %94)
  %96 = load i32*, i32** %8, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i64, i64* %14, align 8
  %100 = load i64, i64* %14, align 8
  %101 = call i32 @tls13_hkdf_expand(i32* %96, i32* %97, i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @tls13_generate_secret.derived_secret_label, i64 0, i64 0), i32 7, i8* %71, i64 %99, i8* %30, i64 %100, i32 1)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %93
  %104 = load i32*, i32** %18, align 8
  %105 = call i32 @EVP_PKEY_CTX_free(i32* %104)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %108

106:                                              ; preds = %93
  store i8* %30, i8** %10, align 8
  %107 = load i64, i64* %14, align 8
  store i64 %107, i64* %15, align 8
  store i32 0, i32* %21, align 4
  br label %108

108:                                              ; preds = %106, %103, %83
  %109 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %21, align 4
  switch i32 %110, label %166 [
    i32 0, label %111
  ]

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %111, %64
  %113 = load i32*, i32** %18, align 8
  %114 = call i64 @EVP_PKEY_derive_init(i32* %113)
  %115 = icmp sle i64 %114, 0
  br i1 %115, label %143, label %116

116:                                              ; preds = %112
  %117 = load i32*, i32** %18, align 8
  %118 = load i32, i32* @EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY, align 4
  %119 = call i64 @EVP_PKEY_CTX_hkdf_mode(i32* %117, i32 %118)
  %120 = icmp sle i64 %119, 0
  br i1 %120, label %143, label %121

121:                                              ; preds = %116
  %122 = load i32*, i32** %18, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = call i64 @EVP_PKEY_CTX_set_hkdf_md(i32* %122, i32* %123)
  %125 = icmp sle i64 %124, 0
  br i1 %125, label %143, label %126

126:                                              ; preds = %121
  %127 = load i32*, i32** %18, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = load i64, i64* %12, align 8
  %130 = call i64 @EVP_PKEY_CTX_set1_hkdf_key(i32* %127, i8* %128, i64 %129)
  %131 = icmp sle i64 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %126
  %133 = load i32*, i32** %18, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = load i64, i64* %15, align 8
  %136 = call i64 @EVP_PKEY_CTX_set1_hkdf_salt(i32* %133, i8* %134, i64 %135)
  %137 = icmp sle i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %132
  %139 = load i32*, i32** %18, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = call i64 @EVP_PKEY_derive(i32* %139, i8* %140, i64* %14)
  %142 = icmp sle i64 %141, 0
  br label %143

143:                                              ; preds = %138, %132, %126, %121, %116, %112
  %144 = phi i1 [ true, %132 ], [ true, %126 ], [ true, %121 ], [ true, %116 ], [ true, %112 ], [ %142, %138 ]
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %17, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %151 = load i32, i32* @SSL_F_TLS13_GENERATE_SECRET, align 4
  %152 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %153 = call i32 @SSLfatal(i32* %149, i32 %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %148, %143
  %155 = load i32*, i32** %18, align 8
  %156 = call i32 @EVP_PKEY_CTX_free(i32* %155)
  %157 = load i8*, i8** %10, align 8
  %158 = icmp eq i8* %157, %30
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i64, i64* %14, align 8
  %161 = call i32 @OPENSSL_cleanse(i8* %30, i64 %160)
  br label %162

162:                                              ; preds = %159, %154
  %163 = load i32, i32* %17, align 4
  %164 = icmp eq i32 %163, 0
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %166

166:                                              ; preds = %162, %108, %47, %33
  %167 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i64 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i32 @tls13_hkdf_expand(i32*, i32*, i8*, i8*, i32, i8*, i64, i8*, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @EVP_PKEY_derive_init(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_hkdf_mode(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_hkdf_md(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set1_hkdf_key(i32*, i8*, i64) #1

declare dso_local i64 @EVP_PKEY_CTX_set1_hkdf_salt(i32*, i8*, i64) #1

declare dso_local i64 @EVP_PKEY_derive(i32*, i8*, i64*) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
