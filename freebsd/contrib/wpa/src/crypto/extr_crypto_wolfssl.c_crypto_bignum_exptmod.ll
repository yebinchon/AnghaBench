; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_exptmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_exptmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

@MP_OKAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_bignum_exptmod(%struct.crypto_bignum* %0, %struct.crypto_bignum* %1, %struct.crypto_bignum* %2, %struct.crypto_bignum* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_bignum*, align 8
  %7 = alloca %struct.crypto_bignum*, align 8
  %8 = alloca %struct.crypto_bignum*, align 8
  %9 = alloca %struct.crypto_bignum*, align 8
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %6, align 8
  store %struct.crypto_bignum* %1, %struct.crypto_bignum** %7, align 8
  store %struct.crypto_bignum* %2, %struct.crypto_bignum** %8, align 8
  store %struct.crypto_bignum* %3, %struct.crypto_bignum** %9, align 8
  %10 = call i64 (...) @TEST_FAIL()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %27

13:                                               ; preds = %4
  %14 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %15 = bitcast %struct.crypto_bignum* %14 to i32*
  %16 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %17 = bitcast %struct.crypto_bignum* %16 to i32*
  %18 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %19 = bitcast %struct.crypto_bignum* %18 to i32*
  %20 = load %struct.crypto_bignum*, %struct.crypto_bignum** %9, align 8
  %21 = bitcast %struct.crypto_bignum* %20 to i32*
  %22 = call i64 @mp_exptmod(i32* %15, i32* %17, i32* %19, i32* %21)
  %23 = load i64, i64* @MP_OKAY, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 -1
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %13, %12
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i64 @mp_exptmod(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
