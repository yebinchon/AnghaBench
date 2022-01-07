; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_bignum_legendre.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_bignum_legendre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_bignum_legendre(%struct.crypto_bignum* %0, %struct.crypto_bignum* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_bignum*, align 8
  %5 = alloca %struct.crypto_bignum*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %4, align 8
  store %struct.crypto_bignum* %1, %struct.crypto_bignum** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 -2, i32* %9, align 4
  %11 = call i64 (...) @TEST_FAIL()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %71

14:                                               ; preds = %2
  %15 = call i32* (...) @BN_CTX_new()
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -2, i32* %3, align 4
  br label %71

19:                                               ; preds = %14
  %20 = call i32* (...) @BN_new()
  store i32* %20, i32** %7, align 8
  %21 = call i32* (...) @BN_new()
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %30 = bitcast %struct.crypto_bignum* %29 to i32*
  %31 = call i32 (...) @BN_value_one()
  %32 = call i32 @BN_sub(i32* %28, i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %27
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @BN_rshift1(i32* %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.crypto_bignum*, %struct.crypto_bignum** %4, align 8
  %42 = bitcast %struct.crypto_bignum* %41 to i32*
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %45 = bitcast %struct.crypto_bignum* %44 to i32*
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @BN_mod_exp_mont_consttime(i32* %40, i32* %42, i32* %43, i32* %45, i32* %46, i32* null)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %39, %34, %27, %24, %19
  br label %63

50:                                               ; preds = %39
  store i32 -1, i32* %9, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @BN_is_word(i32* %51, i32 1)
  %53 = call i32 @const_time_eq(i32 %52, i32 1)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @const_time_select_int(i32 %54, i32 1, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @BN_is_zero(i32* %57)
  %59 = call i32 @const_time_eq(i32 %58, i32 1)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @const_time_select_int(i32 %60, i32 0, i32 %61)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %50, %49
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @BN_clear_free(i32* %64)
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @BN_clear_free(i32* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @BN_CTX_free(i32* %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %63, %18, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i32 @BN_rshift1(i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_mont_consttime(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @const_time_eq(i32, i32) #1

declare dso_local i32 @BN_is_word(i32*, i32) #1

declare dso_local i32 @const_time_select_int(i32, i32, i32) #1

declare dso_local i32 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
