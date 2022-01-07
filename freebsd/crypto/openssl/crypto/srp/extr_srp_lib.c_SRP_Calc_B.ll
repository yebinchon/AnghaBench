; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/srp/extr_srp_lib.c_SRP_Calc_B.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/srp/extr_srp_lib.c_SRP_Calc_B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SRP_Calc_B(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = call i32* (...) @BN_CTX_new()
  store i32* %27, i32** %14, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %20, %17, %4
  store i32* null, i32** %5, align 8
  br label %83

30:                                               ; preds = %26
  %31 = call i32* (...) @BN_new()
  store i32* %31, i32** %10, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = call i32* (...) @BN_new()
  store i32* %34, i32** %11, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = call i32* (...) @BN_new()
  store i32* %37, i32** %12, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33, %30
  br label %73

40:                                               ; preds = %36
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call i32 @BN_mod_exp(i32* %41, i32* %42, i32* %43, i32* %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %40
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32* @srp_Calc_k(i32* %49, i32* %50)
  store i32* %51, i32** %13, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %69, label %53

53:                                               ; preds = %48
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @BN_mod_mul(i32* %54, i32* %55, i32* %56, i32* %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @BN_mod_add(i32* %62, i32* %63, i32* %64, i32* %65, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %61, %53, %48, %40
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @BN_free(i32* %70)
  store i32* null, i32** %12, align 8
  br label %72

72:                                               ; preds = %69, %61
  br label %73

73:                                               ; preds = %72, %39
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @BN_CTX_free(i32* %74)
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @BN_clear_free(i32* %76)
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @BN_clear_free(i32* %78)
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @BN_free(i32* %80)
  %82 = load i32*, i32** %12, align 8
  store i32* %82, i32** %5, align 8
  br label %83

83:                                               ; preds = %73, %29
  %84 = load i32*, i32** %5, align 8
  ret i32* %84
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @srp_Calc_k(i32*, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_add(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
