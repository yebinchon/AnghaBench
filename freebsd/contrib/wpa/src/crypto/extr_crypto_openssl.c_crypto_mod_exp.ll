; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_mod_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_mod_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_mod_exp(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i64* %7, i64** %17, align 8
  store i32 -1, i32* %22, align 4
  %24 = call i32* (...) @BN_CTX_new()
  store i32* %24, i32** %23, align 8
  %25 = load i32*, i32** %23, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %77

28:                                               ; preds = %8
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32* @BN_bin2bn(i32* %29, i64 %30, i32* null)
  store i32* %31, i32** %18, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i32* @BN_bin2bn(i32* %32, i64 %33, i32* null)
  store i32* %34, i32** %19, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = load i64, i64* %15, align 8
  %37 = call i32* @BN_bin2bn(i32* %35, i64 %36, i32* null)
  store i32* %37, i32** %20, align 8
  %38 = call i32* (...) @BN_new()
  store i32* %38, i32** %21, align 8
  %39 = load i32*, i32** %18, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %28
  %42 = load i32*, i32** %19, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i32*, i32** %20, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** %21, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44, %41, %28
  br label %65

51:                                               ; preds = %47
  %52 = load i32*, i32** %21, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = load i32*, i32** %19, align 8
  %55 = load i32*, i32** %20, align 8
  %56 = load i32*, i32** %23, align 8
  %57 = call i32 @BN_mod_exp_mont_consttime(i32* %52, i32* %53, i32* %54, i32* %55, i32* %56, i32* null)
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %65

60:                                               ; preds = %51
  %61 = load i32*, i32** %21, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = call i64 @BN_bn2bin(i32* %61, i32* %62)
  %64 = load i64*, i64** %17, align 8
  store i64 %63, i64* %64, align 8
  store i32 0, i32* %22, align 4
  br label %65

65:                                               ; preds = %60, %59, %50
  %66 = load i32*, i32** %18, align 8
  %67 = call i32 @BN_clear_free(i32* %66)
  %68 = load i32*, i32** %19, align 8
  %69 = call i32 @BN_clear_free(i32* %68)
  %70 = load i32*, i32** %20, align 8
  %71 = call i32 @BN_clear_free(i32* %70)
  %72 = load i32*, i32** %21, align 8
  %73 = call i32 @BN_clear_free(i32* %72)
  %74 = load i32*, i32** %23, align 8
  %75 = call i32 @BN_CTX_free(i32* %74)
  %76 = load i32, i32* %22, align 4
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %65, %27
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_bin2bn(i32*, i64, i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_mod_exp_mont_consttime(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_bn2bin(i32*, i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
