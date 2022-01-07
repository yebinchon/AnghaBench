; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

@MP_OKAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_bignum_mod(%struct.crypto_bignum* %0, %struct.crypto_bignum* %1, %struct.crypto_bignum* %2) #0 {
  %4 = alloca %struct.crypto_bignum*, align 8
  %5 = alloca %struct.crypto_bignum*, align 8
  %6 = alloca %struct.crypto_bignum*, align 8
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %4, align 8
  store %struct.crypto_bignum* %1, %struct.crypto_bignum** %5, align 8
  store %struct.crypto_bignum* %2, %struct.crypto_bignum** %6, align 8
  %7 = load %struct.crypto_bignum*, %struct.crypto_bignum** %4, align 8
  %8 = bitcast %struct.crypto_bignum* %7 to i32*
  %9 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %10 = bitcast %struct.crypto_bignum* %9 to i32*
  %11 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %12 = bitcast %struct.crypto_bignum* %11 to i32*
  %13 = call i64 @mp_mod(i32* %8, i32* %10, i32* %12)
  %14 = load i64, i64* @MP_OKAY, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 0, i32 -1
  ret i32 %17
}

declare dso_local i64 @mp_mod(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
