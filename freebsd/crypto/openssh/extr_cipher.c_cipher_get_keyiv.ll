; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher.c_cipher_get_keyiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher.c_cipher_get_keyiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshcipher_ctx = type { i32, %struct.sshcipher*, %struct.TYPE_2__ }
%struct.sshcipher = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@CFLAG_CHACHAPOLY = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@CFLAG_AESCTR = common dso_local global i32 0, align 4
@CFLAG_NONE = common dso_local global i32 0, align 4
@EVP_CTRL_GCM_IV_GEN = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@evp_aes_128_ctr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipher_get_keyiv(%struct.sshcipher_ctx* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshcipher_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.sshcipher_ctx* %0, %struct.sshcipher_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %5, align 8
  %9 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %8, i32 0, i32 1
  %10 = load %struct.sshcipher*, %struct.sshcipher** %9, align 8
  %11 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CFLAG_CHACHAPOLY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %20, i32* %4, align 4
  br label %55

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %55

22:                                               ; preds = %3
  %23 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %23, i32 0, i32 1
  %25 = load %struct.sshcipher*, %struct.sshcipher** %24, align 8
  %26 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CFLAG_AESCTR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %22
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 4
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %35, i32* %4, align 4
  br label %55

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @memcpy(i32* %37, i32 %41, i64 %42)
  store i32 0, i32* %4, align 4
  br label %55

44:                                               ; preds = %22
  %45 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %45, i32 0, i32 1
  %47 = load %struct.sshcipher*, %struct.sshcipher** %46, align 8
  %48 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CFLAG_NONE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %55

54:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %53, %36, %34, %21, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
