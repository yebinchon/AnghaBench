; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_encr_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_encr_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }

@CRYPTO_CIPHER_ALG_3DES = common dso_local global i32 0, align 4
@CRYPTO_CIPHER_ALG_AES = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"IKEV2: Unsupported encr alg %d\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"IKEV2: Failed to initialize cipher\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"IKEV2: Decryption failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ikev2_encr_decrypt(i32 %0, i32* %1, i64 %2, i32* %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.crypto_cipher*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %23 [
    i32 129, label %19
    i32 128, label %21
  ]

19:                                               ; preds = %7
  %20 = load i32, i32* @CRYPTO_CIPHER_ALG_3DES, align 4
  store i32 %20, i32* %17, align 4
  br label %27

21:                                               ; preds = %7
  %22 = load i32, i32* @CRYPTO_CIPHER_ALG_AES, align 4
  store i32 %22, i32* %17, align 4
  br label %27

23:                                               ; preds = %7
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 -1, i32* %8, align 4
  br label %53

27:                                               ; preds = %21, %19
  %28 = load i32, i32* %17, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call %struct.crypto_cipher* @crypto_cipher_init(i32 %28, i32* %29, i32* %30, i64 %31)
  store %struct.crypto_cipher* %32, %struct.crypto_cipher** %16, align 8
  %33 = load %struct.crypto_cipher*, %struct.crypto_cipher** %16, align 8
  %34 = icmp eq %struct.crypto_cipher* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @MSG_INFO, align 4
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %53

38:                                               ; preds = %27
  %39 = load %struct.crypto_cipher*, %struct.crypto_cipher** %16, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i64, i64* %15, align 8
  %43 = call i64 @crypto_cipher_decrypt(%struct.crypto_cipher* %39, i32* %40, i32* %41, i64 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* @MSG_INFO, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.crypto_cipher*, %struct.crypto_cipher** %16, align 8
  %49 = call i32 @crypto_cipher_deinit(%struct.crypto_cipher* %48)
  store i32 -1, i32* %8, align 4
  br label %53

50:                                               ; preds = %38
  %51 = load %struct.crypto_cipher*, %struct.crypto_cipher** %16, align 8
  %52 = call i32 @crypto_cipher_deinit(%struct.crypto_cipher* %51)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %45, %35, %23
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.crypto_cipher* @crypto_cipher_init(i32, i32*, i32*, i64) #1

declare dso_local i64 @crypto_cipher_decrypt(%struct.crypto_cipher*, i32*, i32*, i64) #1

declare dso_local i32 @crypto_cipher_deinit(%struct.crypto_cipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
