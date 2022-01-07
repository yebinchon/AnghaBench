; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_smime.c_CMS_final.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_smime.c_CMS_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMS_F_CMS_FINAL = common dso_local global i32 0, align 4
@CMS_R_CMS_LIB = common dso_local global i32 0, align 4
@CMS_R_CMS_DATAFINAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_final(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
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
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32* @CMS_dataInit(i32* %12, i32* %13)
  store i32* %14, i32** %10, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @CMS_F_CMS_FINAL, align 4
  %18 = load i32, i32* @CMS_R_CMS_LIB, align 4
  %19 = call i32 @CMSerr(i32 %17, i32 %18)
  store i32 0, i32* %5, align 4
  br label %41

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @SMIME_crlf_copy(i32* %21, i32* %22, i32 %23)
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @BIO_flush(i32* %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @CMS_dataFinal(i32* %27, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @CMS_F_CMS_FINAL, align 4
  %33 = load i32, i32* @CMS_R_CMS_DATAFINAL_ERROR, align 4
  %34 = call i32 @CMSerr(i32 %32, i32 %33)
  br label %36

35:                                               ; preds = %20
  store i32 1, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32*, i32** %10, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @do_free_upto(i32* %37, i32* %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %16
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32* @CMS_dataInit(i32*, i32*) #1

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32 @SMIME_crlf_copy(i32*, i32*, i32) #1

declare dso_local i32 @BIO_flush(i32*) #1

declare dso_local i32 @CMS_dataFinal(i32*, i32*) #1

declare dso_local i32 @do_free_upto(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
