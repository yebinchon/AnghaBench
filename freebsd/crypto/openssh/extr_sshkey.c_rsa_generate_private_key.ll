; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_rsa_generate_private_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_rsa_generate_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_RSA_MINIMUM_MODULUS_SIZE = common dso_local global i32 0, align 4
@SSHBUF_MAX_BIGNUM = common dso_local global i32 0, align 4
@SSH_ERR_KEY_LENGTH = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@RSA_F4 = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @rsa_generate_private_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_generate_private_key(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %9 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32**, i32*** %5, align 8
  %11 = icmp eq i32** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %13, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SSH_RSA_MINIMUM_MODULUS_SIZE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SSHBUF_MAX_BIGNUM, align 4
  %21 = mul nsw i32 %20, 8
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %14
  %24 = load i32, i32* @SSH_ERR_KEY_LENGTH, align 4
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %18
  %26 = load i32**, i32*** %5, align 8
  store i32* null, i32** %26, align 8
  %27 = call i32* (...) @RSA_new()
  store i32* %27, i32** %6, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = call i32* (...) @BN_new()
  store i32* %30, i32** %7, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %25
  %33 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %33, i32* %8, align 4
  br label %50

34:                                               ; preds = %29
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @RSA_F4, align 4
  %37 = call i32 @BN_set_word(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @RSA_generate_key_ex(i32* %40, i32 %41, i32* %42, i32* null)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39, %34
  %46 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %46, i32* %8, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load i32*, i32** %6, align 8
  %49 = load i32**, i32*** %5, align 8
  store i32* %48, i32** %49, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %45, %32
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @RSA_free(i32* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @BN_free(i32* %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %23, %12
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32* @RSA_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @RSA_generate_key_ex(i32*, i32, i32*, i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
