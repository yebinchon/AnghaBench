; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sm2/extr_sm2_sign.c_sm2_compute_msg_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sm2/extr_sm2_sign.c_sm2_compute_msg_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM2_F_SM2_COMPUTE_MSG_HASH = common dso_local global i32 0, align 4
@SM2_R_INVALID_DIGEST = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i64, i32*, i64)* @sm2_compute_msg_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sm2_compute_msg_hash(i32* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %17, i32** %13, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @EVP_MD_size(i32* %18)
  store i32 %19, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %20 = load i32, i32* %14, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load i32, i32* @SM2_F_SM2_COMPUTE_MSG_HASH, align 4
  %24 = load i32, i32* @SM2_R_INVALID_DIGEST, align 4
  %25 = call i32 @SM2err(i32 %23, i32 %24)
  br label %85

26:                                               ; preds = %6
  %27 = load i32, i32* %14, align 4
  %28 = call i32* @OPENSSL_zalloc(i32 %27)
  store i32* %28, i32** %15, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %15, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %26
  %35 = load i32, i32* @SM2_F_SM2_COMPUTE_MSG_HASH, align 4
  %36 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %37 = call i32 @SM2err(i32 %35, i32 %36)
  br label %85

38:                                               ; preds = %31
  %39 = load i32*, i32** %15, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @sm2_compute_z_digest(i32* %39, i32* %40, i32* %41, i64 %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %85

47:                                               ; preds = %38
  %48 = load i32*, i32** %13, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @EVP_DigestInit(i32* %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load i32*, i32** %13, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @EVP_DigestUpdate(i32* %53, i32* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i32*, i32** %13, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @EVP_DigestUpdate(i32* %59, i32* %60, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i32*, i32** %13, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @EVP_DigestFinal(i32* %66, i32* %67, i32* null)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65, %58, %52, %47
  %71 = load i32, i32* @SM2_F_SM2_COMPUTE_MSG_HASH, align 4
  %72 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %73 = call i32 @SM2err(i32 %71, i32 %72)
  br label %85

74:                                               ; preds = %65
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32* @BN_bin2bn(i32* %75, i32 %76, i32* null)
  store i32* %77, i32** %16, align 8
  %78 = load i32*, i32** %16, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @SM2_F_SM2_COMPUTE_MSG_HASH, align 4
  %82 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %83 = call i32 @SM2err(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %74
  br label %85

85:                                               ; preds = %84, %70, %46, %34, %22
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @OPENSSL_free(i32* %86)
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @EVP_MD_CTX_free(i32* %88)
  %90 = load i32*, i32** %16, align 8
  ret i32* %90
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @SM2err(i32, i32) #1

declare dso_local i32* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @sm2_compute_z_digest(i32*, i32*, i32*, i64, i32*) #1

declare dso_local i32 @EVP_DigestInit(i32*, i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i32*, i32) #1

declare dso_local i32 @EVP_DigestFinal(i32*, i32*, i32*) #1

declare dso_local i32* @BN_bin2bn(i32*, i32, i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
