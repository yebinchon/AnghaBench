; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_b64.c_CTLOG_new_from_base64.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_b64.c_CTLOG_new_from_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CT_F_CTLOG_NEW_FROM_BASE64 = common dso_local global i32 0, align 4
@ERR_R_PASSED_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@CT_R_LOG_CONF_INVALID_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CTLOG_new_from_base64(i32** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32**, i32*** %5, align 8
  %13 = icmp eq i32** %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @CT_F_CTLOG_NEW_FROM_BASE64, align 4
  %16 = load i32, i32* @ERR_R_PASSED_INVALID_ARGUMENT, align 4
  %17 = call i32 @CTerr(i32 %15, i32 %16)
  store i32 0, i32* %4, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @ct_base64_decode(i8* %19, i8** %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @CT_F_CTLOG_NEW_FROM_BASE64, align 4
  %25 = load i32, i32* @CT_R_LOG_CONF_INVALID_KEY, align 4
  %26 = call i32 @CTerr(i32 %24, i32 %25)
  store i32 0, i32* %4, align 4
  br label %51

27:                                               ; preds = %18
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32* @d2i_PUBKEY(i32* null, i8** %10, i32 %29)
  store i32* %30, i32** %11, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @OPENSSL_free(i8* %31)
  %33 = load i32*, i32** %11, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @CT_F_CTLOG_NEW_FROM_BASE64, align 4
  %37 = load i32, i32* @CT_R_LOG_CONF_INVALID_KEY, align 4
  %38 = call i32 @CTerr(i32 %36, i32 %37)
  store i32 0, i32* %4, align 4
  br label %51

39:                                               ; preds = %27
  %40 = load i32*, i32** %11, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32* @CTLOG_new(i32* %40, i8* %41)
  %43 = load i32**, i32*** %5, align 8
  store i32* %42, i32** %43, align 8
  %44 = load i32**, i32*** %5, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @EVP_PKEY_free(i32* %48)
  store i32 0, i32* %4, align 4
  br label %51

50:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %47, %35, %23, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @CTerr(i32, i32) #1

declare dso_local i32 @ct_base64_decode(i8*, i8**) #1

declare dso_local i32* @d2i_PUBKEY(i32*, i8**, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32* @CTLOG_new(i32*, i8*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
