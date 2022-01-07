; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pvkfmt.c_do_b2i_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pvkfmt.c_do_b2i_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PEM_F_DO_B2I_BIO = common dso_local global i32 0, align 4
@PEM_R_KEYBLOB_TOO_SHORT = common dso_local global i32 0, align 4
@BLOB_MAX_LENGTH = common dso_local global i32 0, align 4
@PEM_R_HEADER_TOO_LONG = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @do_b2i_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_b2i_bio(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %8, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %16 = call i32 @BIO_read(i32* %14, i8* %15, i32 16)
  %17 = icmp ne i32 %16, 16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @PEM_F_DO_B2I_BIO, align 4
  %20 = load i32, i32* @PEM_R_KEYBLOB_TOO_SHORT, align 4
  %21 = call i32 @PEMerr(i32 %19, i32 %20)
  store i32* null, i32** %3, align 8
  br label %76

22:                                               ; preds = %2
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  store i8* %23, i8** %6, align 8
  %24 = call i64 @do_blob_header(i8** %6, i32 16, i32* %10, i32* %9, i32* %12, i32* %5)
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32* null, i32** %3, align 8
  br label %76

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @blob_length(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @BLOB_MAX_LENGTH, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @PEM_F_DO_B2I_BIO, align 4
  %37 = load i32, i32* @PEM_R_HEADER_TOO_LONG, align 4
  %38 = call i32 @PEMerr(i32 %36, i32 %37)
  store i32* null, i32** %3, align 8
  br label %76

39:                                               ; preds = %27
  %40 = load i32, i32* %11, align 4
  %41 = call i8* @OPENSSL_malloc(i32 %40)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @PEM_F_DO_B2I_BIO, align 4
  %46 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %47 = call i32 @PEMerr(i32 %45, i32 %46)
  br label %72

48:                                               ; preds = %39
  %49 = load i8*, i8** %8, align 8
  store i8* %49, i8** %6, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @BIO_read(i32* %50, i8* %51, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @PEM_F_DO_B2I_BIO, align 4
  %58 = load i32, i32* @PEM_R_KEYBLOB_TOO_SHORT, align 4
  %59 = call i32 @PEMerr(i32 %57, i32 %58)
  br label %72

60:                                               ; preds = %48
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32* @b2i_dss(i8** %6, i32 %64, i32 %65)
  store i32* %66, i32** %13, align 8
  br label %71

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32* @b2i_rsa(i8** %6, i32 %68, i32 %69)
  store i32* %70, i32** %13, align 8
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %56, %44
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @OPENSSL_free(i8* %73)
  %75 = load i32*, i32** %13, align 8
  store i32* %75, i32** %3, align 8
  br label %76

76:                                               ; preds = %72, %35, %26, %18
  %77 = load i32*, i32** %3, align 8
  ret i32* %77
}

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i64 @do_blob_header(i8**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @blob_length(i32, i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32* @b2i_dss(i8**, i32, i32) #1

declare dso_local i32* @b2i_rsa(i8**, i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
