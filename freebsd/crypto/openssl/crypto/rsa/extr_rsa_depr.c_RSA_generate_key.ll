; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_depr.c_RSA_generate_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_depr.c_RSA_generate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @RSA_generate_key(i32 %0, i64 %1, void (i32, i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca void (i32, i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store void (i32, i32, i8*)* %2, void (i32, i32, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = call i32* (...) @BN_GENCB_new()
  store i32* %14, i32** %11, align 8
  %15 = call i32* (...) @RSA_new()
  store i32* %15, i32** %12, align 8
  %16 = call i32* (...) @BN_new()
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** %12, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32*, i32** %13, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %4
  br label %66

26:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 64
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = shl i64 1, %33
  %35 = and i64 %31, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @BN_set_bit(i32* %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %66

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %27

48:                                               ; preds = %27
  %49 = load i32*, i32** %11, align 8
  %50 = load void (i32, i32, i8*)*, void (i32, i32, i8*)** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @BN_GENCB_set_old(i32* %49, void (i32, i32, i8*)* %50, i8* %51)
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i64 @RSA_generate_key_ex(i32* %53, i32 %54, i32* %55, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @BN_free(i32* %60)
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @BN_GENCB_free(i32* %62)
  %64 = load i32*, i32** %12, align 8
  store i32* %64, i32** %5, align 8
  br label %73

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %42, %25
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @BN_free(i32* %67)
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @RSA_free(i32* %69)
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @BN_GENCB_free(i32* %71)
  store i32* null, i32** %5, align 8
  br label %73

73:                                               ; preds = %66, %59
  %74 = load i32*, i32** %5, align 8
  ret i32* %74
}

declare dso_local i32* @BN_GENCB_new(...) #1

declare dso_local i32* @RSA_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i64 @BN_set_bit(i32*, i32) #1

declare dso_local i32 @BN_GENCB_set_old(i32*, void (i32, i32, i8*)*, i8*) #1

declare dso_local i64 @RSA_generate_key_ex(i32*, i32, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_GENCB_free(i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
