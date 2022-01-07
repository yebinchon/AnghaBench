; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_bignum_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_bignum_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_bignum_mod(%struct.crypto_bignum* %0, %struct.crypto_bignum* %1, %struct.crypto_bignum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_bignum*, align 8
  %6 = alloca %struct.crypto_bignum*, align 8
  %7 = alloca %struct.crypto_bignum*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %5, align 8
  store %struct.crypto_bignum* %1, %struct.crypto_bignum** %6, align 8
  store %struct.crypto_bignum* %2, %struct.crypto_bignum** %7, align 8
  %10 = call i32* (...) @BN_CTX_new()
  store i32* %10, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %29

14:                                               ; preds = %3
  %15 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %16 = bitcast %struct.crypto_bignum* %15 to i32*
  %17 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %18 = bitcast %struct.crypto_bignum* %17 to i32*
  %19 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %20 = bitcast %struct.crypto_bignum* %19 to i32*
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @BN_mod(i32* %16, i32* %18, i32* %20, i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @BN_CTX_free(i32* %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 -1
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %14, %13
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
