; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher.c_cipher_crypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher.c_cipher_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshcipher_ctx = type { i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CFLAG_CHACHAPOLY = common dso_local global i32 0, align 4
@CFLAG_NONE = common dso_local global i32 0, align 4
@CFLAG_AESCTR = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@EVP_CTRL_GCM_GET_TAG = common dso_local global i32 0, align 4
@EVP_CTRL_GCM_IV_GEN = common dso_local global i32 0, align 4
@EVP_CTRL_GCM_SET_TAG = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_MAC_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipher_crypt(%struct.sshcipher_ctx* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sshcipher_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sshcipher_ctx* %0, %struct.sshcipher_ctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %9, align 8
  %17 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CFLAG_CHACHAPOLY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %7
  %25 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %9, align 8
  %26 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %25, i32 0, i32 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %9, align 8
  %34 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @chachapoly_crypt(i32* %26, i32 %27, i32* %28, i32* %29, i32 %30, i32 %31, i32 %32, i64 %35)
  store i32 %36, i32* %8, align 4
  br label %85

37:                                               ; preds = %7
  %38 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %9, align 8
  %39 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CFLAG_NONE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i32*, i32** %11, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i32 @memcpy(i32* %47, i32* %48, i32 %51)
  store i32 0, i32* %8, align 4
  br label %85

53:                                               ; preds = %37
  %54 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %9, align 8
  %55 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CFLAG_AESCTR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %53
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @memcpy(i32* %66, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %9, align 8
  %72 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %71, i32 0, i32 3
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @aesctr_encrypt_bytes(i32* %72, i32* %76, i32* %80, i32 %81)
  store i32 0, i32* %8, align 4
  br label %85

83:                                               ; preds = %53
  %84 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %83, %70, %46, %24
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i32 @chachapoly_crypt(i32*, i32, i32*, i32*, i32, i32, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @aesctr_encrypt_bytes(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
