; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_init_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_init_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

@MP_OKAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_bignum* @crypto_bignum_init_set(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.crypto_bignum*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i64 (...) @TEST_FAIL()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %3, align 8
  br label %29

10:                                               ; preds = %2
  %11 = call i64 (...) @crypto_bignum_init()
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %3, align 8
  br label %29

16:                                               ; preds = %10
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @mp_read_unsigned_bin(i32* %17, i32* %18, i64 %19)
  %21 = load i64, i64* @MP_OKAY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @os_free(i32* %24)
  store i32* null, i32** %6, align 8
  br label %26

26:                                               ; preds = %23, %16
  %27 = load i32*, i32** %6, align 8
  %28 = bitcast i32* %27 to %struct.crypto_bignum*
  store %struct.crypto_bignum* %28, %struct.crypto_bignum** %3, align 8
  br label %29

29:                                               ; preds = %26, %15, %9
  %30 = load %struct.crypto_bignum*, %struct.crypto_bignum** %3, align 8
  ret %struct.crypto_bignum* %30
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i64 @crypto_bignum_init(...) #1

declare dso_local i64 @mp_read_unsigned_bin(i32*, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
