; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_lib.c_cms_DigestAlgorithm_init_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_lib.c_cms_DigestAlgorithm_init_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMS_F_CMS_DIGESTALGORITHM_INIT_BIO = common dso_local global i32 0, align 4
@CMS_R_UNKNOWN_DIGEST_ALGORITHM = common dso_local global i32 0, align 4
@CMS_R_MD_BIO_INIT_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cms_DigestAlgorithm_init_bio(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @X509_ALGOR_get0(i32** %5, i32* null, i32* null, i32* %7)
  %9 = load i32*, i32** %5, align 8
  %10 = call i32* @EVP_get_digestbyobj(i32* %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @CMS_F_CMS_DIGESTALGORITHM_INIT_BIO, align 4
  %15 = load i32, i32* @CMS_R_UNKNOWN_DIGEST_ALGORITHM, align 4
  %16 = call i32 @CMSerr(i32 %14, i32 %15)
  br label %33

17:                                               ; preds = %1
  %18 = call i32 (...) @BIO_f_md()
  %19 = call i32* @BIO_new(i32 %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @BIO_set_md(i32* %23, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* @CMS_F_CMS_DIGESTALGORITHM_INIT_BIO, align 4
  %29 = load i32, i32* @CMS_R_MD_BIO_INIT_ERROR, align 4
  %30 = call i32 @CMSerr(i32 %28, i32 %29)
  br label %33

31:                                               ; preds = %22
  %32 = load i32*, i32** %4, align 8
  store i32* %32, i32** %2, align 8
  br label %36

33:                                               ; preds = %27, %13
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @BIO_free(i32* %34)
  store i32* null, i32** %2, align 8
  br label %36

36:                                               ; preds = %33, %31
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

declare dso_local i32 @X509_ALGOR_get0(i32**, i32*, i32*, i32*) #1

declare dso_local i32* @EVP_get_digestbyobj(i32*) #1

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_f_md(...) #1

declare dso_local i32 @BIO_set_md(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
