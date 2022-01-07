; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_smime.c_cms_copy_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_smime.c_cms_copy_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMS_F_CMS_COPY_CONTENT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@BIO_TYPE_CIPHER = common dso_local global i64 0, align 8
@CMS_TEXT = common dso_local global i32 0, align 4
@CMS_R_SMIME_TEXT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @cms_copy_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cms_copy_content(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32* @cms_get_text_bio(i32* %11, i32 %12)
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @CMS_F_CMS_COPY_CONTENT, align 4
  %18 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %19 = call i32 @CMSerr(i32 %17, i32 %18)
  br label %71

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %54, %20
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %24 = call i32 @BIO_read(i32* %22, i8* %23, i32 4096)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @BIO_method_type(i32* %28)
  %30 = load i64, i64* @BIO_TYPE_CIPHER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @BIO_get_cipher_status(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %71

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %71

42:                                               ; preds = %38
  br label %55

43:                                               ; preds = %21
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @BIO_write(i32* %47, i8* %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %71

54:                                               ; preds = %46, %43
  br label %21

55:                                               ; preds = %42
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @CMS_TEXT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @SMIME_text(i32* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @CMS_F_CMS_COPY_CONTENT, align 4
  %67 = load i32, i32* @CMS_R_SMIME_TEXT_ERROR, align 4
  %68 = call i32 @CMSerr(i32 %66, i32 %67)
  br label %71

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %55
  store i32 1, i32* %8, align 4
  br label %71

71:                                               ; preds = %70, %65, %53, %41, %36, %16
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = icmp ne i32* %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @BIO_free(i32* %76)
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32* @cms_get_text_bio(i32*, i32) #1

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i64 @BIO_method_type(i32*) #1

declare dso_local i32 @BIO_get_cipher_status(i32*) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @SMIME_text(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
