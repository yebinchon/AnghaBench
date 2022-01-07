; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_rshift.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_rshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

@MP_OKAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_bignum_rshift(%struct.crypto_bignum* %0, i32 %1, %struct.crypto_bignum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_bignum*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_bignum*, align 8
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.crypto_bignum* %2, %struct.crypto_bignum** %7, align 8
  %8 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %9 = bitcast %struct.crypto_bignum* %8 to i32*
  %10 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %11 = bitcast %struct.crypto_bignum* %10 to i32*
  %12 = call i64 @mp_copy(i32* %9, i32* %11)
  %13 = load i64, i64* @MP_OKAY, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %18 = bitcast %struct.crypto_bignum* %17 to i32*
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @mp_rshb(i32* %18, i32 %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %16, %15
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i64 @mp_copy(i32*, i32*) #1

declare dso_local i32 @mp_rshb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
