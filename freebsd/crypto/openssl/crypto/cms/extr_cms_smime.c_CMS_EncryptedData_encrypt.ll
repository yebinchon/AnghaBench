; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_smime.c_CMS_EncryptedData_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_smime.c_CMS_EncryptedData_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMS_F_CMS_ENCRYPTEDDATA_ENCRYPT = common dso_local global i32 0, align 4
@CMS_R_NO_CIPHER = common dso_local global i32 0, align 4
@CMS_DETACHED = common dso_local global i32 0, align 4
@CMS_STREAM = common dso_local global i32 0, align 4
@CMS_PARTIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CMS_EncryptedData_encrypt(i32* %0, i32* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* @CMS_F_CMS_ENCRYPTEDDATA_ENCRYPT, align 4
  %17 = load i32, i32* @CMS_R_NO_CIPHER, align 4
  %18 = call i32 @CMSerr(i32 %16, i32 %17)
  store i32* null, i32** %6, align 8
  br label %58

19:                                               ; preds = %5
  %20 = call i32* (...) @CMS_ContentInfo_new()
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32* null, i32** %6, align 8
  br label %58

24:                                               ; preds = %19
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @CMS_EncryptedData_set1_key(i32* %25, i32* %26, i8* %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i32* null, i32** %6, align 8
  br label %58

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @CMS_DETACHED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @CMS_set_detached(i32* %38, i32 0)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @CMS_STREAM, align 4
  %43 = load i32, i32* @CMS_PARTIAL, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @CMS_final(i32* %48, i32* %49, i32* null, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %40
  %54 = load i32*, i32** %12, align 8
  store i32* %54, i32** %6, align 8
  br label %58

55:                                               ; preds = %47
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @CMS_ContentInfo_free(i32* %56)
  store i32* null, i32** %6, align 8
  br label %58

58:                                               ; preds = %55, %53, %31, %23, %15
  %59 = load i32*, i32** %6, align 8
  ret i32* %59
}

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32* @CMS_ContentInfo_new(...) #1

declare dso_local i32 @CMS_EncryptedData_set1_key(i32*, i32*, i8*, i64) #1

declare dso_local i32 @CMS_set_detached(i32*, i32) #1

declare dso_local i64 @CMS_final(i32*, i32*, i32*, i32) #1

declare dso_local i32 @CMS_ContentInfo_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
