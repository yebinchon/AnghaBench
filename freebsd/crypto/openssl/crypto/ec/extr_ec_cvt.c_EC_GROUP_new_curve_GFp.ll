; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_cvt.c_EC_GROUP_new_curve_GFp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_cvt.c_EC_GROUP_new_curve_GFp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @EC_GROUP_new_curve_GFp(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @BN_nist_mod_func(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32* (...) @EC_GFp_nist_method()
  store i32* %16, i32** %10, align 8
  br label %19

17:                                               ; preds = %4
  %18 = call i32* (...) @EC_GFp_mont_method()
  store i32* %18, i32** %10, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32*, i32** %10, align 8
  %21 = call i32* @EC_GROUP_new(i32* %20)
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32* null, i32** %5, align 8
  br label %38

25:                                               ; preds = %19
  %26 = load i32*, i32** %11, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @EC_GROUP_set_curve(i32* %26, i32* %27, i32* %28, i32* %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @EC_GROUP_clear_free(i32* %34)
  store i32* null, i32** %5, align 8
  br label %38

36:                                               ; preds = %25
  %37 = load i32*, i32** %11, align 8
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %36, %33, %24
  %39 = load i32*, i32** %5, align 8
  ret i32* %39
}

declare dso_local i64 @BN_nist_mod_func(i32*) #1

declare dso_local i32* @EC_GFp_nist_method(...) #1

declare dso_local i32* @EC_GFp_mont_method(...) #1

declare dso_local i32* @EC_GROUP_new(i32*) #1

declare dso_local i32 @EC_GROUP_set_curve(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
