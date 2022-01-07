; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_cipher_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_cipher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_cipher* @crypto_cipher_init(i32 %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.crypto_cipher*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.crypto_cipher*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = call %struct.crypto_cipher* @os_zalloc(i32 16)
  store %struct.crypto_cipher* %12, %struct.crypto_cipher** %10, align 8
  %13 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %14 = icmp eq %struct.crypto_cipher* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %139

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %38 [
    i32 128, label %18
    i32 131, label %20
    i32 132, label %32
    i32 130, label %34
    i32 129, label %36
  ]

18:                                               ; preds = %16
  %19 = call i32* (...) @EVP_rc4()
  store i32* %19, i32** %11, align 8
  br label %41

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  switch i64 %21, label %28 [
    i64 16, label %22
    i64 24, label %24
    i64 32, label %26
  ]

22:                                               ; preds = %20
  %23 = call i32* (...) @EVP_aes_128_cbc()
  store i32* %23, i32** %11, align 8
  br label %31

24:                                               ; preds = %20
  %25 = call i32* (...) @EVP_aes_192_cbc()
  store i32* %25, i32** %11, align 8
  br label %31

26:                                               ; preds = %20
  %27 = call i32* (...) @EVP_aes_256_cbc()
  store i32* %27, i32** %11, align 8
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %30 = call i32 @os_free(%struct.crypto_cipher* %29)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %139

31:                                               ; preds = %26, %24, %22
  br label %41

32:                                               ; preds = %16
  %33 = call i32* (...) @EVP_des_ede3_cbc()
  store i32* %33, i32** %11, align 8
  br label %41

34:                                               ; preds = %16
  %35 = call i32* (...) @EVP_des_cbc()
  store i32* %35, i32** %11, align 8
  br label %41

36:                                               ; preds = %16
  %37 = call i32* (...) @EVP_rc2_ecb()
  store i32* %37, i32** %11, align 8
  br label %41

38:                                               ; preds = %16
  %39 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %40 = call i32 @os_free(%struct.crypto_cipher* %39)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %139

41:                                               ; preds = %36, %34, %32, %31, %18
  %42 = call i8* (...) @EVP_CIPHER_CTX_new()
  %43 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %44 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = icmp ne i8* %42, null
  br i1 %45, label %46, label %74

46:                                               ; preds = %41
  %47 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %48 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @EVP_CIPHER_CTX_set_padding(i8* %49, i32 0)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %46
  %53 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %54 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @EVP_EncryptInit_ex(i8* %55, i32* %56, i32* null, i32* null, i32* null)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %52
  %60 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %61 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @EVP_CIPHER_CTX_set_key_length(i8* %62, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %68 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @EVP_EncryptInit_ex(i8* %69, i32* null, i32* null, i32* %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %66, %59, %52, %46, %41
  %75 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %76 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %81 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @EVP_CIPHER_CTX_free(i8* %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %86 = call i32 @os_free(%struct.crypto_cipher* %85)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %139

87:                                               ; preds = %66
  %88 = call i8* (...) @EVP_CIPHER_CTX_new()
  %89 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %90 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = icmp ne i8* %88, null
  br i1 %91, label %92, label %120

92:                                               ; preds = %87
  %93 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %94 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @EVP_CIPHER_CTX_set_padding(i8* %95, i32 0)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %92
  %99 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %100 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @EVP_DecryptInit_ex(i8* %101, i32* %102, i32* null, i32* null, i32* null)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %98
  %106 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %107 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @EVP_CIPHER_CTX_set_key_length(i8* %108, i64 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %114 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @EVP_DecryptInit_ex(i8* %115, i32* null, i32* null, i32* %116, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %137, label %120

120:                                              ; preds = %112, %105, %98, %92, %87
  %121 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %122 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @EVP_CIPHER_CTX_free(i8* %123)
  %125 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %126 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %131 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @EVP_CIPHER_CTX_free(i8* %132)
  br label %134

134:                                              ; preds = %129, %120
  %135 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %136 = call i32 @os_free(%struct.crypto_cipher* %135)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %139

137:                                              ; preds = %112
  %138 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  store %struct.crypto_cipher* %138, %struct.crypto_cipher** %5, align 8
  br label %139

139:                                              ; preds = %137, %134, %84, %38, %28, %15
  %140 = load %struct.crypto_cipher*, %struct.crypto_cipher** %5, align 8
  ret %struct.crypto_cipher* %140
}

declare dso_local %struct.crypto_cipher* @os_zalloc(i32) #1

declare dso_local i32* @EVP_rc4(...) #1

declare dso_local i32* @EVP_aes_128_cbc(...) #1

declare dso_local i32* @EVP_aes_192_cbc(...) #1

declare dso_local i32* @EVP_aes_256_cbc(...) #1

declare dso_local i32 @os_free(%struct.crypto_cipher*) #1

declare dso_local i32* @EVP_des_ede3_cbc(...) #1

declare dso_local i32* @EVP_des_cbc(...) #1

declare dso_local i32* @EVP_rc2_ecb(...) #1

declare dso_local i8* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(i8*, i32) #1

declare dso_local i32 @EVP_EncryptInit_ex(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_key_length(i8*, i64) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i8*) #1

declare dso_local i32 @EVP_DecryptInit_ex(i8*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
