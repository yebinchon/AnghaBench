; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_legendre.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_legendre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

@MP_OKAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_bignum_legendre(%struct.crypto_bignum* %0, %struct.crypto_bignum* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_bignum*, align 8
  %5 = alloca %struct.crypto_bignum*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %4, align 8
  store %struct.crypto_bignum* %1, %struct.crypto_bignum** %5, align 8
  store i32 -2, i32* %8, align 4
  %9 = call i64 (...) @TEST_FAIL()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %54

12:                                               ; preds = %2
  %13 = call i32 @mp_init(i32* %6)
  %14 = load i32, i32* @MP_OKAY, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -2, i32* %3, align 4
  br label %54

17:                                               ; preds = %12
  %18 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %19 = bitcast %struct.crypto_bignum* %18 to i32*
  %20 = call i32 @mp_sub_d(i32* %19, i32 1, i32* %6)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MP_OKAY, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @mp_rshb(i32* %6, i32 1)
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MP_OKAY, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.crypto_bignum*, %struct.crypto_bignum** %4, align 8
  %32 = bitcast %struct.crypto_bignum* %31 to i32*
  %33 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %34 = bitcast %struct.crypto_bignum* %33 to i32*
  %35 = call i32 @mp_exptmod(i32* %32, i32* %6, i32* %34, i32* %6)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %30, %26
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @MP_OKAY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = call i64 @mp_isone(i32* %6)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  br label %50

44:                                               ; preds = %40
  %45 = call i64 @mp_iszero(i32* %6)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %49

48:                                               ; preds = %44
  store i32 -1, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49, %43
  br label %51

51:                                               ; preds = %50, %36
  %52 = call i32 @mp_clear(i32* %6)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %16, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i32 @mp_init(i32*) #1

declare dso_local i32 @mp_sub_d(i32*, i32, i32*) #1

declare dso_local i32 @mp_rshb(i32*, i32) #1

declare dso_local i32 @mp_exptmod(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @mp_isone(i32*) #1

declare dso_local i64 @mp_iszero(i32*) #1

declare dso_local i32 @mp_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
