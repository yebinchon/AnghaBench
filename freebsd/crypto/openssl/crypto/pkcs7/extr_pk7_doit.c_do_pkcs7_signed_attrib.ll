; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_doit.c_do_pkcs7_signed_attrib.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_doit.c_do_pkcs7_signed_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@NID_pkcs9_signingTime = common dso_local global i32 0, align 4
@PKCS7_F_DO_PKCS7_SIGNED_ATTRIB = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @do_pkcs7_signed_attrib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pkcs7_signed_attrib(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @NID_pkcs9_signingTime, align 4
  %16 = call i32 @PKCS7_get_signed_attribute(i32* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @PKCS7_add0_attrib_signing_time(i32* %19, i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @PKCS7_F_DO_PKCS7_SIGNED_ATTRIB, align 4
  %24 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %25 = call i32 @PKCS7err(i32 %23, i32 %24)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %50

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @EVP_DigestFinal_ex(i32* %28, i8* %13, i32* %8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @PKCS7_F_DO_PKCS7_SIGNED_ATTRIB, align 4
  %33 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %34 = call i32 @PKCS7err(i32 %32, i32 %33)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %50

35:                                               ; preds = %27
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @PKCS7_add1_attrib_digest(i32* %36, i8* %13, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @PKCS7_F_DO_PKCS7_SIGNED_ATTRIB, align 4
  %42 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %43 = call i32 @PKCS7err(i32 %41, i32 %42)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %50

44:                                               ; preds = %35
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @PKCS7_SIGNER_INFO_sign(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %50

49:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %48, %40, %31, %22
  %51 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PKCS7_get_signed_attribute(i32*, i32) #2

declare dso_local i32 @PKCS7_add0_attrib_signing_time(i32*, i32*) #2

declare dso_local i32 @PKCS7err(i32, i32) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @PKCS7_add1_attrib_digest(i32*, i8*, i32) #2

declare dso_local i32 @PKCS7_SIGNER_INFO_sign(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
