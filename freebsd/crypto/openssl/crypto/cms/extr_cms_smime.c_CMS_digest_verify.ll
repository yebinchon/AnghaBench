; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_smime.c_CMS_digest_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_smime.c_CMS_digest_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_pkcs7_digest = common dso_local global i64 0, align 8
@CMS_F_CMS_DIGEST_VERIFY = common dso_local global i32 0, align 4
@CMS_R_TYPE_NOT_DIGESTED_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_digest_verify(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @CMS_get0_type(i32* %12)
  %14 = call i64 @OBJ_obj2nid(i32 %13)
  %15 = load i64, i64* @NID_pkcs7_digest, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @CMS_F_CMS_DIGEST_VERIFY, align 4
  %19 = load i32, i32* @CMS_R_TYPE_NOT_DIGESTED_DATA, align 4
  %20 = call i32 @CMSerr(i32 %18, i32 %19)
  store i32 0, i32* %5, align 4
  br label %52

21:                                               ; preds = %4
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @check_content(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %52

29:                                               ; preds = %24, %21
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32* @CMS_dataInit(i32* %30, i32* %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %52

36:                                               ; preds = %29
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @cms_copy_content(i32* %37, i32* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @cms_DigestedData_do_final(i32* %44, i32* %45, i32 1)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @do_free_upto(i32* %48, i32* %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %47, %35, %28, %17
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @OBJ_obj2nid(i32) #1

declare dso_local i32 @CMS_get0_type(i32*) #1

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32 @check_content(i32*) #1

declare dso_local i32* @CMS_dataInit(i32*, i32*) #1

declare dso_local i32 @cms_copy_content(i32*, i32*, i32) #1

declare dso_local i32 @cms_DigestedData_do_final(i32*, i32*, i32) #1

declare dso_local i32 @do_free_upto(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
