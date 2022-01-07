; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_tls1_prf.c_tls1_prf_P_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_tls1_prf.c_tls1_prf_P_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@EVP_MD_CTX_FLAG_NON_FIPS_ALLOW = common dso_local global i32 0, align 4
@EVP_PKEY_HMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i64, i8*, i64)* @tls1_prf_P_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls1_prf_P_hash(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  %25 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %20, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %21, align 8
  store i32 0, i32* %23, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @EVP_MD_size(i32* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp sgt i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ossl_assert(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %7
  br label %157

37:                                               ; preds = %7
  %38 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %38, i32** %16, align 8
  %39 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %39, i32** %17, align 8
  %40 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %40, i32** %18, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i32*, i32** %17, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32*, i32** %18, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43, %37
  br label %157

50:                                               ; preds = %46
  %51 = load i32*, i32** %18, align 8
  %52 = load i32, i32* @EVP_MD_CTX_FLAG_NON_FIPS_ALLOW, align 4
  %53 = call i32 @EVP_MD_CTX_set_flags(i32* %51, i32 %52)
  %54 = load i32, i32* @EVP_PKEY_HMAC, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32* @EVP_PKEY_new_raw_private_key(i32 %54, i32* null, i8* %55, i64 %56)
  store i32* %57, i32** %19, align 8
  %58 = load i32*, i32** %19, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %157

61:                                               ; preds = %50
  %62 = load i32*, i32** %18, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = call i32 @EVP_DigestSignInit(i32* %62, i32* null, i32* %63, i32* null, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %157

68:                                               ; preds = %61
  %69 = load i32*, i32** %16, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = call i32 @EVP_MD_CTX_copy_ex(i32* %69, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %157

74:                                               ; preds = %68
  %75 = load i8*, i8** %11, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32*, i32** %16, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @EVP_DigestSignUpdate(i32* %78, i8* %79, i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %157

84:                                               ; preds = %77, %74
  %85 = load i32*, i32** %16, align 8
  %86 = call i32 @EVP_DigestSignFinal(i32* %85, i8* %28, i64* %22)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  br label %157

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %155, %89
  %91 = load i32*, i32** %16, align 8
  %92 = load i32*, i32** %18, align 8
  %93 = call i32 @EVP_MD_CTX_copy_ex(i32* %91, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  br label %157

96:                                               ; preds = %90
  %97 = load i32*, i32** %16, align 8
  %98 = load i64, i64* %22, align 8
  %99 = call i32 @EVP_DigestSignUpdate(i32* %97, i8* %28, i64 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  br label %157

102:                                              ; preds = %96
  %103 = load i64, i64* %14, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp ugt i64 %103, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32*, i32** %17, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = call i32 @EVP_MD_CTX_copy_ex(i32* %108, i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %157

113:                                              ; preds = %107, %102
  %114 = load i8*, i8** %11, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32*, i32** %16, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @EVP_DigestSignUpdate(i32* %117, i8* %118, i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  br label %157

123:                                              ; preds = %116, %113
  %124 = load i64, i64* %14, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = icmp ugt i64 %124, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %123
  %129 = load i32*, i32** %16, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = call i32 @EVP_DigestSignFinal(i32* %129, i8* %130, i64* %24)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  br label %157

134:                                              ; preds = %128
  %135 = load i64, i64* %24, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 %135
  store i8* %137, i8** %13, align 8
  %138 = load i64, i64* %24, align 8
  %139 = load i64, i64* %14, align 8
  %140 = sub i64 %139, %138
  store i64 %140, i64* %14, align 8
  %141 = load i32*, i32** %17, align 8
  %142 = call i32 @EVP_DigestSignFinal(i32* %141, i8* %28, i64* %22)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %134
  br label %157

145:                                              ; preds = %134
  br label %155

146:                                              ; preds = %123
  %147 = load i32*, i32** %16, align 8
  %148 = call i32 @EVP_DigestSignFinal(i32* %147, i8* %28, i64* %22)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  br label %157

151:                                              ; preds = %146
  %152 = load i8*, i8** %13, align 8
  %153 = load i64, i64* %14, align 8
  %154 = call i32 @memcpy(i8* %152, i8* %28, i64 %153)
  br label %156

155:                                              ; preds = %145
  br label %90

156:                                              ; preds = %151
  store i32 1, i32* %23, align 4
  br label %157

157:                                              ; preds = %156, %150, %144, %133, %122, %112, %101, %95, %88, %83, %73, %67, %60, %49, %36
  %158 = load i32*, i32** %19, align 8
  %159 = call i32 @EVP_PKEY_free(i32* %158)
  %160 = load i32*, i32** %16, align 8
  %161 = call i32 @EVP_MD_CTX_free(i32* %160)
  %162 = load i32*, i32** %17, align 8
  %163 = call i32 @EVP_MD_CTX_free(i32* %162)
  %164 = load i32*, i32** %18, align 8
  %165 = call i32 @EVP_MD_CTX_free(i32* %164)
  %166 = trunc i64 %26 to i32
  %167 = call i32 @OPENSSL_cleanse(i8* %28, i32 %166)
  %168 = load i32, i32* %23, align 4
  %169 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %169)
  ret i32 %168
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @EVP_MD_CTX_set_flags(i32*, i32) #2

declare dso_local i32* @EVP_PKEY_new_raw_private_key(i32, i32*, i8*, i64) #2

declare dso_local i32 @EVP_DigestSignInit(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @EVP_MD_CTX_copy_ex(i32*, i32*) #2

declare dso_local i32 @EVP_DigestSignUpdate(i32*, i8*, i64) #2

declare dso_local i32 @EVP_DigestSignFinal(i32*, i8*, i64*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @EVP_PKEY_free(i32*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
