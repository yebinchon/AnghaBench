; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_prime.c_witness.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_prime.c_witness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32, i32*, i32*)* @witness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @witness(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = call i32 @BN_mod_exp_mont(i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %65

25:                                               ; preds = %7
  %26 = load i32*, i32** %9, align 8
  %27 = call i64 @BN_is_one(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %65

30:                                               ; preds = %25
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i64 @BN_cmp(i32* %31, i32* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %65

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %61, %36
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = call i32 @BN_mod_mul(i32* %42, i32* %43, i32* %44, i32* %45, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  store i32 -1, i32* %8, align 4
  br label %65

50:                                               ; preds = %41
  %51 = load i32*, i32** %9, align 8
  %52 = call i64 @BN_is_one(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  br label %65

55:                                               ; preds = %50
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i64 @BN_cmp(i32* %56, i32* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %65

61:                                               ; preds = %55
  br label %37

62:                                               ; preds = %37
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @bn_check_top(i32* %63)
  store i32 1, i32* %8, align 4
  br label %65

65:                                               ; preds = %62, %60, %54, %49, %35, %29, %24
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @BN_mod_exp_mont(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_one(i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
