; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

@MP_OKAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_bignum* @crypto_bignum_init() #0 {
  %1 = alloca %struct.crypto_bignum*, align 8
  %2 = alloca i32*, align 8
  %3 = call i64 (...) @TEST_FAIL()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %1, align 8
  br label %21

6:                                                ; preds = %0
  %7 = call i32* @os_malloc(i32 4)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @mp_init(i32* %11)
  %13 = load i64, i64* @MP_OKAY, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %6
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @os_free(i32* %16)
  store i32* null, i32** %2, align 8
  br label %18

18:                                               ; preds = %15, %10
  %19 = load i32*, i32** %2, align 8
  %20 = bitcast i32* %19 to %struct.crypto_bignum*
  store %struct.crypto_bignum* %20, %struct.crypto_bignum** %1, align 8
  br label %21

21:                                               ; preds = %18, %5
  %22 = load %struct.crypto_bignum*, %struct.crypto_bignum** %1, align 8
  ret %struct.crypto_bignum* %22
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i64 @mp_init(i32*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
