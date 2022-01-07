; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_prime.c_bn_probable_prime_dh.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_prime.c_bn_probable_prime_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_RAND_TOP_ONE = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ODD = common dso_local global i32 0, align 4
@NUMPRIMES = common dso_local global i32 0, align 4
@primes = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bn_probable_prime_dh(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @BN_CTX_start(i32* %15)
  %17 = load i32*, i32** %10, align 8
  %18 = call i32* @BN_CTX_get(i32* %17)
  store i32* %18, i32** %13, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %95

21:                                               ; preds = %5
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %25 = load i32, i32* @BN_RAND_BOTTOM_ODD, align 4
  %26 = call i32 @BN_rand(i32* %22, i32 %23, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %95

29:                                               ; preds = %21
  %30 = load i32*, i32** %13, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @BN_mod(i32* %30, i32* %31, i32* %32, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %95

37:                                               ; preds = %29
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @BN_sub(i32* %38, i32* %39, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %95

44:                                               ; preds = %37
  %45 = load i32*, i32** %9, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @BN_add_word(i32* %48, i32 1)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %95

52:                                               ; preds = %47
  br label %61

53:                                               ; preds = %44
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @BN_add(i32* %54, i32* %55, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %95

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %52
  br label %62

62:                                               ; preds = %89, %61
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %91, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @NUMPRIMES, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %63
  %68 = load i32*, i32** %6, align 8
  %69 = load i64*, i64** @primes, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @BN_mod_word(i32* %68, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %95

79:                                               ; preds = %67
  %80 = load i32, i32* %14, align 4
  %81 = icmp sle i32 %80, 1
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @BN_add(i32* %83, i32* %84, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  br label %95

89:                                               ; preds = %82
  br label %62

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %63

94:                                               ; preds = %63
  store i32 1, i32* %12, align 4
  br label %95

95:                                               ; preds = %94, %88, %78, %59, %51, %43, %36, %28, %20
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @BN_CTX_end(i32* %96)
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @bn_check_top(i32* %98)
  %100 = load i32, i32* %12, align 4
  ret i32 %100
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_rand(i32*, i32, i32, i32) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_word(i32*, i32) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
