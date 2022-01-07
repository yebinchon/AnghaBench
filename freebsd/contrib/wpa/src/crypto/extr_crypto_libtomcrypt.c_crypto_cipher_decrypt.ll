; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_libtomcrypt.c_crypto_cipher_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_libtomcrypt.c_crypto_cipher_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@CRYPT_OK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"LibTomCrypt: CBC decryption failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_cipher_decrypt(%struct.crypto_cipher* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_cipher*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_cipher* %0, %struct.crypto_cipher** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %12 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @os_memcpy(i32* %20, i32* %21, i64 %22)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %26 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %31 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %36 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @rc4_skip(i32 %29, i32 %34, i64 %39, i32* %40, i64 %41)
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %45 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, %43
  store i64 %49, i64* %47, align 8
  store i32 0, i32* %5, align 4
  br label %67

50:                                               ; preds = %4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %55 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @cbc_decrypt(i32* %51, i32* %52, i64 %53, i32* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @CRYPT_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %50
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @error_to_string(i32 %63)
  %65 = call i32 @wpa_printf(i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i32 -1, i32* %5, align 4
  br label %67

66:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %61, %24
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @rc4_skip(i32, i32, i64, i32*, i64) #1

declare dso_local i32 @cbc_decrypt(i32*, i32*, i64, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @error_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
