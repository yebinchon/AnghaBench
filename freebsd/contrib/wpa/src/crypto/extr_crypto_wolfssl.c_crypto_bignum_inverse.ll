; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_inverse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_inverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

@MP_OKAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_bignum_inverse(%struct.crypto_bignum* %0, %struct.crypto_bignum* %1, %struct.crypto_bignum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_bignum*, align 8
  %6 = alloca %struct.crypto_bignum*, align 8
  %7 = alloca %struct.crypto_bignum*, align 8
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %5, align 8
  store %struct.crypto_bignum* %1, %struct.crypto_bignum** %6, align 8
  store %struct.crypto_bignum* %2, %struct.crypto_bignum** %7, align 8
  %8 = call i64 (...) @TEST_FAIL()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

11:                                               ; preds = %3
  %12 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %13 = bitcast %struct.crypto_bignum* %12 to i32*
  %14 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %15 = bitcast %struct.crypto_bignum* %14 to i32*
  %16 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %17 = bitcast %struct.crypto_bignum* %16 to i32*
  %18 = call i64 @mp_invmod(i32* %13, i32* %15, i32* %17)
  %19 = load i64, i64* @MP_OKAY, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 -1
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %11, %10
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i64 @mp_invmod(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
