; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_ciph.c_ssl_cipher_get_overhead.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_ciph.c_ssl_cipher_get_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SSL_AESGCM = common dso_local global i32 0, align 4
@SSL_ARIAGCM = common dso_local global i32 0, align 4
@EVP_GCM_TLS_EXPLICIT_IV_LEN = common dso_local global i64 0, align 8
@EVP_GCM_TLS_TAG_LEN = common dso_local global i64 0, align 8
@SSL_AES128CCM = common dso_local global i32 0, align 4
@SSL_AES256CCM = common dso_local global i32 0, align 4
@EVP_CCM_TLS_EXPLICIT_IV_LEN = common dso_local global i32 0, align 4
@SSL_AES128CCM8 = common dso_local global i32 0, align 4
@SSL_AES256CCM8 = common dso_local global i32 0, align 4
@SSL_CHACHA20POLY1305 = common dso_local global i32 0, align 4
@SSL_AEAD = common dso_local global i32 0, align 4
@SSL_eNULL = common dso_local global i32 0, align 4
@EVP_CIPH_CBC_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_cipher_get_overhead(%struct.TYPE_5__* %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SSL_AESGCM, align 4
  %24 = load i32, i32* @SSL_ARIAGCM, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load i64, i64* @EVP_GCM_TLS_EXPLICIT_IV_LEN, align 8
  %30 = load i64, i64* @EVP_GCM_TLS_TAG_LEN, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %15, align 8
  br label %113

32:                                               ; preds = %5
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SSL_AES128CCM, align 4
  %37 = load i32, i32* @SSL_AES256CCM, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32, i32* @EVP_CCM_TLS_EXPLICIT_IV_LEN, align 4
  %43 = add nsw i32 %42, 16
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %15, align 8
  br label %112

45:                                               ; preds = %32
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SSL_AES128CCM8, align 4
  %50 = load i32, i32* @SSL_AES256CCM8, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @EVP_CCM_TLS_EXPLICIT_IV_LEN, align 4
  %56 = add nsw i32 %55, 8
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %15, align 8
  br label %111

58:                                               ; preds = %45
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SSL_CHACHA20POLY1305, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i64 16, i64* %15, align 8
  br label %110

66:                                               ; preds = %58
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SSL_AEAD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %122

74:                                               ; preds = %66
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = call i32 @SSL_CIPHER_get_digest_nid(%struct.TYPE_5__* %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32* @EVP_get_digestbynid(i32 %77)
  store i32* %78, i32** %17, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %122

82:                                               ; preds = %74
  %83 = load i32*, i32** %17, align 8
  %84 = call i64 @EVP_MD_size(i32* %83)
  store i64 %84, i64* %12, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SSL_eNULL, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %82
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = call i32 @SSL_CIPHER_get_cipher_nid(%struct.TYPE_5__* %91)
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = call i32* @EVP_get_cipherbynid(i32 %93)
  store i32* %94, i32** %19, align 8
  %95 = load i32*, i32** %19, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = load i32*, i32** %19, align 8
  %99 = call i64 @EVP_CIPHER_mode(i32* %98)
  %100 = load i64, i64* @EVP_CIPH_CBC_MODE, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97, %90
  store i32 0, i32* %6, align 4
  br label %122

103:                                              ; preds = %97
  store i64 1, i64* %13, align 8
  %104 = load i32*, i32** %19, align 8
  %105 = call i64 @EVP_CIPHER_iv_length(i32* %104)
  store i64 %105, i64* %15, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = call i64 @EVP_CIPHER_block_size(i32* %106)
  store i64 %107, i64* %14, align 8
  br label %108

108:                                              ; preds = %103, %82
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109, %65
  br label %111

111:                                              ; preds = %110, %54
  br label %112

112:                                              ; preds = %111, %41
  br label %113

113:                                              ; preds = %112, %28
  %114 = load i64, i64* %12, align 8
  %115 = load i64*, i64** %8, align 8
  store i64 %114, i64* %115, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load i64*, i64** %9, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64*, i64** %10, align 8
  store i64 %118, i64* %119, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load i64*, i64** %11, align 8
  store i64 %120, i64* %121, align 8
  store i32 1, i32* %6, align 4
  br label %122

122:                                              ; preds = %113, %102, %81, %73
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @SSL_CIPHER_get_digest_nid(%struct.TYPE_5__*) #1

declare dso_local i32* @EVP_get_digestbynid(i32) #1

declare dso_local i64 @EVP_MD_size(i32*) #1

declare dso_local i32 @SSL_CIPHER_get_cipher_nid(%struct.TYPE_5__*) #1

declare dso_local i32* @EVP_get_cipherbynid(i32) #1

declare dso_local i64 @EVP_CIPHER_mode(i32*) #1

declare dso_local i64 @EVP_CIPHER_iv_length(i32*) #1

declare dso_local i64 @EVP_CIPHER_block_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
