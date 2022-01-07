; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_tls13_enc.c_derive_secret_key_and_iv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_tls13_enc.c_derive_secret_key_and_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@EVP_MAX_KEY_LENGTH = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_DERIVE_SECRET_KEY_AND_IV = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@EVP_CIPH_CCM_MODE = common dso_local global i64 0, align 8
@EVP_CCM_TLS_IV_LEN = common dso_local global i64 0, align 8
@SSL_AES128CCM8 = common dso_local global i32 0, align 4
@SSL_AES256CCM8 = common dso_local global i32 0, align 4
@EVP_CCM8_TLS_TAG_LEN = common dso_local global i64 0, align 8
@EVP_CCM_TLS_TAG_LEN = common dso_local global i64 0, align 8
@EVP_CTRL_AEAD_SET_IVLEN = common dso_local global i32 0, align 4
@EVP_CTRL_AEAD_SET_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i32*, i32*, i8*, i8*, i8*, i64, i8*, i8*, i32*)* @derive_secret_key_and_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_secret_key_and_iv(%struct.TYPE_17__* %0, i32 %1, i32* %2, i32* %3, i8* %4, i8* %5, i8* %6, i64 %7, i8* %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i64 %7, i64* %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  %33 = load i32, i32* @EVP_MAX_KEY_LENGTH, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %24, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %25, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = call i32 @EVP_MD_size(i32* %37)
  store i32 %38, i32* %29, align 4
  %39 = load i32, i32* %29, align 4
  %40 = icmp sge i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @ossl_assert(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %11
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %46 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %47 = load i32, i32* @SSL_F_DERIVE_SECRET_KEY_AND_IV, align 4
  %48 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %49 = call i32 @SSLfatal(%struct.TYPE_17__* %45, i32 %46, i32 %47, i32 %48)
  br label %161

50:                                               ; preds = %11
  %51 = load i32, i32* %29, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %30, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = load i8*, i8** %19, align 8
  %57 = load i64, i64* %20, align 8
  %58 = load i8*, i8** %18, align 8
  %59 = load i64, i64* %30, align 8
  %60 = load i8*, i8** %21, align 8
  %61 = load i64, i64* %30, align 8
  %62 = call i32 @tls13_hkdf_expand(%struct.TYPE_17__* %53, i32* %54, i8* %55, i8* %56, i64 %57, i8* %58, i64 %59, i8* %60, i64 %61, i32 1)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  br label %161

65:                                               ; preds = %50
  %66 = load i32*, i32** %16, align 8
  %67 = call i64 @EVP_CIPHER_key_length(i32* %66)
  store i64 %67, i64* %27, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = call i64 @EVP_CIPHER_mode(i32* %68)
  %70 = load i64, i64* @EVP_CIPH_CCM_MODE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %110

72:                                               ; preds = %65
  %73 = load i64, i64* @EVP_CCM_TLS_IV_LEN, align 8
  store i64 %73, i64* %26, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = icmp eq %struct.TYPE_14__* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %72
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %31, align 4
  br label %98

89:                                               ; preds = %72
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %31, align 4
  br label %98

98:                                               ; preds = %89, %81
  %99 = load i32, i32* %31, align 4
  %100 = load i32, i32* @SSL_AES128CCM8, align 4
  %101 = load i32, i32* @SSL_AES256CCM8, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i64, i64* @EVP_CCM8_TLS_TAG_LEN, align 8
  store i64 %106, i64* %28, align 8
  br label %109

107:                                              ; preds = %98
  %108 = load i64, i64* @EVP_CCM_TLS_TAG_LEN, align 8
  store i64 %108, i64* %28, align 8
  br label %109

109:                                              ; preds = %107, %105
  br label %113

110:                                              ; preds = %65
  %111 = load i32*, i32** %16, align 8
  %112 = call i64 @EVP_CIPHER_iv_length(i32* %111)
  store i64 %112, i64* %26, align 8
  store i64 0, i64* %28, align 8
  br label %113

113:                                              ; preds = %110, %109
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %115 = load i32*, i32** %15, align 8
  %116 = load i8*, i8** %21, align 8
  %117 = load i64, i64* %27, align 8
  %118 = call i32 @tls13_derive_key(%struct.TYPE_17__* %114, i32* %115, i8* %116, i8* %36, i64 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = load i8*, i8** %21, align 8
  %124 = load i8*, i8** %22, align 8
  %125 = load i64, i64* %26, align 8
  %126 = call i32 @tls13_derive_iv(%struct.TYPE_17__* %121, i32* %122, i8* %123, i8* %124, i64 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %120, %113
  br label %161

129:                                              ; preds = %120
  %130 = load i32*, i32** %23, align 8
  %131 = load i32*, i32** %16, align 8
  %132 = load i32, i32* %14, align 4
  %133 = call i64 @EVP_CipherInit_ex(i32* %130, i32* %131, i32* null, i8* null, i32* null, i32 %132)
  %134 = icmp sle i64 %133, 0
  br i1 %134, label %154, label %135

135:                                              ; preds = %129
  %136 = load i32*, i32** %23, align 8
  %137 = load i32, i32* @EVP_CTRL_AEAD_SET_IVLEN, align 4
  %138 = load i64, i64* %26, align 8
  %139 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %136, i32 %137, i64 %138, i32* null)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = load i64, i64* %28, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i32*, i32** %23, align 8
  %146 = load i32, i32* @EVP_CTRL_AEAD_SET_TAG, align 4
  %147 = load i64, i64* %28, align 8
  %148 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %145, i32 %146, i64 %147, i32* null)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %144, %141
  %151 = load i32*, i32** %23, align 8
  %152 = call i64 @EVP_CipherInit_ex(i32* %151, i32* null, i32* null, i8* %36, i32* null, i32 -1)
  %153 = icmp sle i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %150, %144, %135, %129
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %156 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %157 = load i32, i32* @SSL_F_DERIVE_SECRET_KEY_AND_IV, align 4
  %158 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %159 = call i32 @SSLfatal(%struct.TYPE_17__* %155, i32 %156, i32 %157, i32 %158)
  br label %161

160:                                              ; preds = %150
  store i32 1, i32* %12, align 4
  store i32 1, i32* %32, align 4
  br label %164

161:                                              ; preds = %154, %128, %64, %44
  %162 = trunc i64 %34 to i32
  %163 = call i32 @OPENSSL_cleanse(i8* %36, i32 %162)
  store i32 0, i32* %12, align 4
  store i32 1, i32* %32, align 4
  br label %164

164:                                              ; preds = %161, %160
  %165 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %12, align 4
  ret i32 %166
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_17__*, i32, i32, i32) #2

declare dso_local i32 @tls13_hkdf_expand(%struct.TYPE_17__*, i32*, i8*, i8*, i64, i8*, i64, i8*, i64, i32) #2

declare dso_local i64 @EVP_CIPHER_key_length(i32*) #2

declare dso_local i64 @EVP_CIPHER_mode(i32*) #2

declare dso_local i64 @EVP_CIPHER_iv_length(i32*) #2

declare dso_local i32 @tls13_derive_key(%struct.TYPE_17__*, i32*, i8*, i8*, i64) #2

declare dso_local i32 @tls13_derive_iv(%struct.TYPE_17__*, i32*, i8*, i8*, i64) #2

declare dso_local i64 @EVP_CipherInit_ex(i32*, i32*, i32*, i8*, i32*, i32) #2

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(i32*, i32, i64, i32*) #2

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
