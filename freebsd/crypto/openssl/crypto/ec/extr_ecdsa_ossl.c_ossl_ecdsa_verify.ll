; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdsa_ossl.c_ossl_ecdsa_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdsa_ossl.c_ossl_ecdsa_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_ecdsa_verify(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load i8*, i8** %11, align 8
  store i8* %19, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %20 = call i32* (...) @ECDSA_SIG_new()
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* %18, align 4
  store i32 %24, i32* %7, align 4
  br label %56

25:                                               ; preds = %6
  %26 = load i32, i32* %12, align 4
  %27 = call i32* @d2i_ECDSA_SIG(i32** %14, i8** %15, i32 %26)
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %49

30:                                               ; preds = %25
  %31 = load i32*, i32** %14, align 8
  %32 = call i32 @i2d_ECDSA_SIG(i32* %31, i8** %16)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = load i32, i32* %17, align 4
  %40 = call i64 @memcmp(i8* %37, i8* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %30
  br label %49

43:                                               ; preds = %36
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** %14, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @ECDSA_do_verify(i8* %44, i32 %45, i32* %46, i32* %47)
  store i32 %48, i32* %18, align 4
  br label %49

49:                                               ; preds = %43, %42, %29
  %50 = load i8*, i8** %16, align 8
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @OPENSSL_clear_free(i8* %50, i32 %51)
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @ECDSA_SIG_free(i32* %53)
  %55 = load i32, i32* %18, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %49, %23
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32* @ECDSA_SIG_new(...) #1

declare dso_local i32* @d2i_ECDSA_SIG(i32**, i8**, i32) #1

declare dso_local i32 @i2d_ECDSA_SIG(i32*, i8**) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @ECDSA_do_verify(i8*, i32, i32*, i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

declare dso_local i32 @ECDSA_SIG_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
