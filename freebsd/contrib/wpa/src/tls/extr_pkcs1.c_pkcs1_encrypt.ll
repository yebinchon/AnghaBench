; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs1.c_pkcs1_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs1.c_pkcs1_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rsa_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs1_encrypt(i32 %0, %struct.crypto_rsa_key* %1, i32 %2, i32* %3, i64 %4, i32* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_rsa_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct.crypto_rsa_key* %1, %struct.crypto_rsa_key** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64* %6, i64** %15, align 8
  %17 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %10, align 8
  %18 = call i64 @crypto_rsa_get_modulus_len(%struct.crypto_rsa_key* %17)
  store i64 %18, i64* %16, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i64, i64* %16, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = load i64*, i64** %15, align 8
  %25 = call i64 @pkcs1_generate_encryption_block(i32 %19, i64 %20, i32* %21, i64 %22, i32* %23, i64* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %36

28:                                               ; preds = %7
  %29 = load i32*, i32** %14, align 8
  %30 = load i64, i64* %16, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load i64*, i64** %15, align 8
  %33 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @crypto_rsa_exptmod(i32* %29, i64 %30, i32* %31, i64* %32, %struct.crypto_rsa_key* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %28, %27
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local i64 @crypto_rsa_get_modulus_len(%struct.crypto_rsa_key*) #1

declare dso_local i64 @pkcs1_generate_encryption_block(i32, i64, i32*, i64, i32*, i64*) #1

declare dso_local i32 @crypto_rsa_exptmod(i32*, i64, i32*, i64*, %struct.crypto_rsa_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
