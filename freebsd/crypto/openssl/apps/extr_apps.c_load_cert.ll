; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_load_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_load_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_HTTP = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@FORMAT_PEM = common dso_local global i32 0, align 4
@password_callback = common dso_local global i64 0, align 8
@FORMAT_PKCS12 = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"bad input format specified for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to load certificate\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @load_cert(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @FORMAT_HTTP, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @load_cert_crl_http(i8* %14, i32** %8, i32* null)
  %16 = load i32*, i32** %8, align 8
  store i32* %16, i32** %4, align 8
  br label %79

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* @stdin, align 4
  %22 = call i32 @unbuffer(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32* @dup_bio_in(i32 %23)
  store i32* %24, i32** %9, align 8
  br label %29

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32* @bio_open_default(i8* %26, i8 signext 114, i32 %27)
  store i32* %28, i32** %9, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32*, i32** %9, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %67

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @FORMAT_ASN1, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32*, i32** %9, align 8
  %39 = call i32* @d2i_X509_bio(i32* %38, i32* null)
  store i32* %39, i32** %8, align 8
  br label %66

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @FORMAT_PEM, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32*, i32** %9, align 8
  %46 = load i64, i64* @password_callback, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = call i32* @PEM_read_bio_X509_AUX(i32* %45, i32* null, i32* %47, i32* null)
  store i32* %48, i32** %8, align 8
  br label %65

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @FORMAT_PKCS12, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @load_pkcs12(i32* %54, i8* %55, i32* null, i32* null, i32* null, i32** %8, i32* null)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %67

59:                                               ; preds = %53
  br label %64

60:                                               ; preds = %49
  %61 = load i32, i32* @bio_err, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 (i32, i8*, ...) @BIO_printf(i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %67

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65, %37
  br label %67

67:                                               ; preds = %66, %60, %58, %32
  %68 = load i32*, i32** %8, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @bio_err, align 4
  %72 = call i32 (i32, i8*, ...) @BIO_printf(i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @bio_err, align 4
  %74 = call i32 @ERR_print_errors(i32 %73)
  br label %75

75:                                               ; preds = %70, %67
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @BIO_free(i32* %76)
  %78 = load i32*, i32** %8, align 8
  store i32* %78, i32** %4, align 8
  br label %79

79:                                               ; preds = %75, %13
  %80 = load i32*, i32** %4, align 8
  ret i32* %80
}

declare dso_local i32 @load_cert_crl_http(i8*, i32**, i32*) #1

declare dso_local i32 @unbuffer(i32) #1

declare dso_local i32* @dup_bio_in(i32) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @d2i_X509_bio(i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_X509_AUX(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @load_pkcs12(i32*, i8*, i32*, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
