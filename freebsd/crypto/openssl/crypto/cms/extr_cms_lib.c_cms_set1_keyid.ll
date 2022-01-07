; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_lib.c_cms_set1_keyid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_lib.c_cms_set1_keyid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMS_F_CMS_SET1_KEYID = common dso_local global i32 0, align 4
@CMS_R_CERTIFICATE_HAS_NO_KEYID = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cms_set1_keyid(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32* @X509_get0_subject_key_id(i32* %8)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @CMS_F_CMS_SET1_KEYID, align 4
  %14 = load i32, i32* @CMS_R_CERTIFICATE_HAS_NO_KEYID, align 4
  %15 = call i32 @CMSerr(i32 %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @ASN1_STRING_dup(i32* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @CMS_F_CMS_SET1_KEYID, align 4
  %23 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %24 = call i32 @CMSerr(i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %31

25:                                               ; preds = %16
  %26 = load i32**, i32*** %4, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @ASN1_OCTET_STRING_free(i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32**, i32*** %4, align 8
  store i32* %29, i32** %30, align 8
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %25, %21, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32* @X509_get0_subject_key_id(i32*) #1

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32* @ASN1_STRING_dup(i32*) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
