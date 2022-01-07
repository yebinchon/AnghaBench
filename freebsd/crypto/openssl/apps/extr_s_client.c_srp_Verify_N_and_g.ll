; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_client.c_srp_Verify_N_and_g.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_client.c_srp_Verify_N_and_g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SRP_NUMBER_ITERATIONS_FOR_PRIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @srp_Verify_N_and_g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_Verify_N_and_g(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = call i32* (...) @BN_CTX_new()
  store i32* %9, i32** %5, align 8
  %10 = call i32* (...) @BN_new()
  store i32* %10, i32** %6, align 8
  %11 = call i32* (...) @BN_new()
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %64

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %64

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %64

20:                                               ; preds = %17
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @BN_is_odd(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @SRP_NUMBER_ITERATIONS_FOR_PRIME, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @BN_is_prime_ex(i32* %25, i32 %26, i32* %27, i32* null)
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %64

30:                                               ; preds = %24
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %64

33:                                               ; preds = %30
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @BN_rshift1(i32* %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @SRP_NUMBER_ITERATIONS_FOR_PRIME, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @BN_is_prime_ex(i32* %39, i32 %40, i32* %41, i32* null)
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @BN_mod_exp(i32* %48, i32* %49, i32* %50, i32* %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load i32*, i32** %7, align 8
  %57 = call i64 @BN_add_word(i32* %56, i32 1)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @BN_cmp(i32* %60, i32* %61)
  %63 = icmp eq i64 %62, 0
  br label %64

64:                                               ; preds = %59, %55, %47, %44, %38, %33, %30, %24, %20, %17, %14, %2
  %65 = phi i1 [ false, %55 ], [ false, %47 ], [ false, %44 ], [ false, %38 ], [ false, %33 ], [ false, %30 ], [ false, %24 ], [ false, %20 ], [ false, %17 ], [ false, %14 ], [ false, %2 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @BN_free(i32* %67)
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @BN_free(i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @BN_CTX_free(i32* %71)
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i64 @BN_is_odd(i32*) #1

declare dso_local i32 @BN_is_prime_ex(i32*, i32, i32*, i32*) #1

declare dso_local i64 @BN_rshift1(i32*, i32*) #1

declare dso_local i64 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_add_word(i32*, i32) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
