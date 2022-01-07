; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_bignum_div.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_bignum_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_bignum_div(%struct.crypto_bignum* %0, %struct.crypto_bignum* %1, %struct.crypto_bignum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_bignum*, align 8
  %6 = alloca %struct.crypto_bignum*, align 8
  %7 = alloca %struct.crypto_bignum*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %5, align 8
  store %struct.crypto_bignum* %1, %struct.crypto_bignum** %6, align 8
  store %struct.crypto_bignum* %2, %struct.crypto_bignum** %7, align 8
  %10 = call i64 (...) @TEST_FAIL()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %37

13:                                               ; preds = %3
  %14 = call i32* (...) @BN_CTX_new()
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %37

18:                                               ; preds = %13
  %19 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %20 = bitcast %struct.crypto_bignum* %19 to i32*
  %21 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %22 = call i32 @BN_set_flags(i32* %20, i32 %21)
  %23 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %24 = bitcast %struct.crypto_bignum* %23 to i32*
  %25 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %26 = bitcast %struct.crypto_bignum* %25 to i32*
  %27 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %28 = bitcast %struct.crypto_bignum* %27 to i32*
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @BN_div(i32* %24, i32* null, i32* %26, i32* %28, i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @BN_CTX_free(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 -1
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %18, %17, %12
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_set_flags(i32*, i32) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
