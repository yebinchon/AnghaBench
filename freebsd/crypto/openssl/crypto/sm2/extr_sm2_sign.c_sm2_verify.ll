; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sm2/extr_sm2_sign.c_sm2_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sm2/extr_sm2_sign.c_sm2_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM2_F_SM2_VERIFY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SM2_R_INVALID_ENCODING = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm2_verify(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %18 = call i32* (...) @ECDSA_SIG_new()
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* @SM2_F_SM2_VERIFY, align 4
  %23 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %24 = call i32 @SM2err(i32 %22, i32 %23)
  br label %64

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = call i32* @d2i_ECDSA_SIG(i32** %11, i8** %13, i32 %26)
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @SM2_F_SM2_VERIFY, align 4
  %31 = load i32, i32* @SM2_R_INVALID_ENCODING, align 4
  %32 = call i32 @SM2err(i32 %30, i32 %31)
  br label %64

33:                                               ; preds = %25
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @i2d_ECDSA_SIG(i32* %34, i8** %14)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call i64 @memcmp(i8* %40, i8* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39, %33
  %46 = load i32, i32* @SM2_F_SM2_VERIFY, align 4
  %47 = load i32, i32* @SM2_R_INVALID_ENCODING, align 4
  %48 = call i32 @SM2err(i32 %46, i32 %47)
  br label %64

49:                                               ; preds = %39
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32* @BN_bin2bn(i8* %50, i32 %51, i32* null)
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @SM2_F_SM2_VERIFY, align 4
  %57 = load i32, i32* @ERR_R_BN_LIB, align 4
  %58 = call i32 @SM2err(i32 %56, i32 %57)
  br label %64

59:                                               ; preds = %49
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @sm2_sig_verify(i32* %60, i32* %61, i32* %62)
  store i32 %63, i32* %16, align 4
  br label %64

64:                                               ; preds = %59, %55, %45, %29, %21
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @OPENSSL_free(i8* %65)
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @BN_free(i32* %67)
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @ECDSA_SIG_free(i32* %69)
  %71 = load i32, i32* %16, align 4
  ret i32 %71
}

declare dso_local i32* @ECDSA_SIG_new(...) #1

declare dso_local i32 @SM2err(i32, i32) #1

declare dso_local i32* @d2i_ECDSA_SIG(i32**, i8**, i32) #1

declare dso_local i32 @i2d_ECDSA_SIG(i32*, i8**) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @sm2_sig_verify(i32*, i32*, i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @ECDSA_SIG_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
