; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-rsa.c_openssh_RSA_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-rsa.c_openssh_RSA_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSHBUF_MAX_BIGNUM = common dso_local global i64 0, align 8
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@SSH_ERR_SIGNATURE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, i32*, i64, i32*)* @openssh_RSA_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openssh_RSA_verify(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @rsa_hash_alg_oid(i32 %23, i32** %21, i64* %15)
  store i32 %24, i32* %17, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %17, align 4
  store i32 %27, i32* %7, align 4
  br label %111

28:                                               ; preds = %6
  %29 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @ssh_digest_bytes(i32 %30)
  store i64 %31, i64* %16, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %16, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %36, i32* %17, align 4
  br label %106

37:                                               ; preds = %28
  %38 = load i32*, i32** %13, align 8
  %39 = call i64 @RSA_size(i32* %38)
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = icmp ule i64 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* @SSHBUF_MAX_BIGNUM, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %12, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %46, %42, %37
  %54 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %54, i32* %17, align 4
  br label %106

55:                                               ; preds = %49
  %56 = load i64, i64* %14, align 8
  %57 = call i32* @malloc(i64 %56)
  store i32* %57, i32** %22, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %60, i32* %17, align 4
  br label %106

61:                                               ; preds = %55
  %62 = load i64, i64* %12, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %22, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %67 = call i32 @RSA_public_decrypt(i64 %62, i32* %63, i32* %64, i32* %65, i32 %66)
  store i32 %67, i32* %18, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %70, i32* %17, align 4
  br label %106

71:                                               ; preds = %61
  %72 = load i32, i32* %18, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %18, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* %15, align 8
  %79 = add i64 %77, %78
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74, %71
  %82 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %82, i32* %17, align 4
  br label %106

83:                                               ; preds = %74
  %84 = load i32*, i32** %22, align 8
  %85 = load i32*, i32** %21, align 8
  %86 = load i64, i64* %15, align 8
  %87 = call i64 @timingsafe_bcmp(i32* %84, i32* %85, i64 %86)
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %19, align 4
  %90 = load i32*, i32** %22, align 8
  %91 = load i64, i64* %15, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32*, i32** %9, align 8
  %94 = load i64, i64* %16, align 8
  %95 = call i64 @timingsafe_bcmp(i32* %92, i32* %93, i64 %94)
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %19, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %83
  %101 = load i32, i32* %20, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100, %83
  %104 = load i32, i32* @SSH_ERR_SIGNATURE_INVALID, align 4
  store i32 %104, i32* %17, align 4
  br label %106

105:                                              ; preds = %100
  store i32 0, i32* %17, align 4
  br label %106

106:                                              ; preds = %105, %103, %81, %69, %59, %53, %35
  %107 = load i32*, i32** %22, align 8
  %108 = load i64, i64* %14, align 8
  %109 = call i32 @freezero(i32* %107, i64 %108)
  %110 = load i32, i32* %17, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %106, %26
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @rsa_hash_alg_oid(i32, i32**, i64*) #1

declare dso_local i64 @ssh_digest_bytes(i32) #1

declare dso_local i64 @RSA_size(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @RSA_public_decrypt(i64, i32*, i32*, i32*, i32) #1

declare dso_local i64 @timingsafe_bcmp(i32*, i32*, i64) #1

declare dso_local i32 @freezero(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
