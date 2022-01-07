; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_libtomcrypt.c_crypto_rsa_encrypt_pkcs1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_libtomcrypt.c_crypto_rsa_encrypt_pkcs1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@CRYPT_OK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"LibTomCrypt: rsa_exptmod failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_4__*, i32, i32*, i64, i32*, i64*)* @crypto_rsa_encrypt_pkcs1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_rsa_encrypt_pkcs1(i32 %0, %struct.TYPE_4__* %1, i32 %2, i32* %3, i64 %4, i32* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64* %6, i64** %15, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @mp_unsigned_bin_size(i32 %21)
  store i64 %22, i64* %17, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i64, i64* %17, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load i64*, i64** %15, align 8
  %29 = call i64 @pkcs1_generate_encryption_block(i32 %23, i64 %24, i32* %25, i64 %26, i32* %27, i64* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %52

32:                                               ; preds = %7
  %33 = load i64*, i64** %15, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %16, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = load i64, i64* %17, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = call i32 @rsa_exptmod(i32* %35, i64 %36, i32* %37, i64* %16, i32 %38, %struct.TYPE_4__* %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* @CRYPT_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @error_to_string(i32 %46)
  %48 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 -1, i32* %8, align 4
  br label %52

49:                                               ; preds = %32
  %50 = load i64, i64* %16, align 8
  %51 = load i64*, i64** %15, align 8
  store i64 %50, i64* %51, align 8
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %44, %31
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i64 @mp_unsigned_bin_size(i32) #1

declare dso_local i64 @pkcs1_generate_encryption_block(i32, i64, i32*, i64, i32*, i64*) #1

declare dso_local i32 @rsa_exptmod(i32*, i64, i32*, i64*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @error_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
