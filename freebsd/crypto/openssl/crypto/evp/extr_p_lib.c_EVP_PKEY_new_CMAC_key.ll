; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_p_lib.c_EVP_PKEY_new_CMAC_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_p_lib.c_EVP_PKEY_new_CMAC_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@EVP_PKEY_CMAC = common dso_local global i32 0, align 4
@EVP_F_EVP_PKEY_NEW_CMAC_KEY = common dso_local global i32 0, align 4
@EVP_R_KEY_SETUP_FAILED = common dso_local global i32 0, align 4
@EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @EVP_PKEY_new_CMAC_key(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call %struct.TYPE_8__* (...) @EVP_PKEY_new()
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %10, align 8
  %13 = call i32* (...) @CMAC_CTX_new()
  store i32* %13, i32** %11, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %11, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @EVP_PKEY_CMAC, align 4
  %23 = call i32 @pkey_set_type(%struct.TYPE_8__* %20, i32* %21, i32 %22, i32* null, i32 -1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19, %16, %4
  br label %44

26:                                               ; preds = %19
  %27 = load i32*, i32** %11, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @CMAC_Init(i32* %27, i8* %28, i64 %29, i32* %30, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @EVP_F_EVP_PKEY_NEW_CMAC_KEY, align 4
  %36 = load i32, i32* @EVP_R_KEY_SETUP_FAILED, align 4
  %37 = call i32 @EVPerr(i32 %35, i32 %36)
  br label %44

38:                                               ; preds = %26
  %39 = load i32*, i32** %11, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32* %39, i32** %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %5, align 8
  br label %49

44:                                               ; preds = %34, %25
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %46 = call i32 @EVP_PKEY_free(%struct.TYPE_8__* %45)
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @CMAC_CTX_free(i32* %47)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %50
}

declare dso_local %struct.TYPE_8__* @EVP_PKEY_new(...) #1

declare dso_local i32* @CMAC_CTX_new(...) #1

declare dso_local i32 @pkey_set_type(%struct.TYPE_8__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @CMAC_Init(i32*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_8__*) #1

declare dso_local i32 @CMAC_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
