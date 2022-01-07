; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_to_bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_wolfssl.c_crypto_bignum_to_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_bignum_to_bin(%struct.crypto_bignum* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_bignum*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = call i64 (...) @TEST_FAIL()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %57

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %57

20:                                               ; preds = %15
  %21 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %22 = bitcast %struct.crypto_bignum* %21 to i32*
  %23 = call i32 @mp_count_bits(i32* %22)
  %24 = add nsw i32 %23, 7
  %25 = sdiv i32 %24, 8
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %8, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %57

31:                                               ; preds = %20
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %37, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  br label %43

42:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @os_memset(i32* %44, i32 0, i32 %45)
  %47 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %48 = bitcast %struct.crypto_bignum* %47 to i32*
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @mp_to_unsigned_bin(i32* %48, i32* %52)
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %43, %30, %19, %14
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i32 @mp_count_bits(i32*) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @mp_to_unsigned_bin(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
