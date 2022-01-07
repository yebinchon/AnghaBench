; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_load_cert_crl_http.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_load_cert_crl_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"https not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error loading %s from %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"certificate\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"CRL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**, i32**)* @load_cert_crl_http to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_cert_crl_http(i8* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @OCSP_parse_url(i8* %14, i8** %7, i8** %8, i8** %9, i32* %12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %75

18:                                               ; preds = %3
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @bio_err, align 4
  %23 = call i32 @BIO_puts(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %75

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = call i32* @BIO_new_connect(i8* %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32*, i32** %10, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @BIO_set_conn_port(i32* %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %24
  br label %75

35:                                               ; preds = %29
  %36 = load i32*, i32** %10, align 8
  %37 = call i32* @OCSP_REQ_CTX_new(i32* %36, i32 1024)
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %75

41:                                               ; preds = %35
  %42 = load i32*, i32** %11, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @OCSP_REQ_CTX_http(i32* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %75

47:                                               ; preds = %41
  %48 = load i32*, i32** %11, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @OCSP_REQ_CTX_add1_header(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %75

53:                                               ; preds = %47
  %54 = load i32**, i32*** %5, align 8
  %55 = icmp ne i32** %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %61, %56
  %58 = load i32*, i32** %11, align 8
  %59 = load i32**, i32*** %5, align 8
  %60 = call i32 @X509_http_nbio(i32* %58, i32** %59)
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %57, label %64

64:                                               ; preds = %61
  br label %74

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %70, %65
  %67 = load i32*, i32** %11, align 8
  %68 = load i32**, i32*** %6, align 8
  %69 = call i32 @X509_CRL_http_nbio(i32* %67, i32** %68)
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %66, label %73

73:                                               ; preds = %70
  br label %74

74:                                               ; preds = %73, %64
  br label %75

75:                                               ; preds = %74, %52, %46, %40, %34, %21, %17
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @OPENSSL_free(i8* %76)
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @OPENSSL_free(i8* %78)
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @OPENSSL_free(i8* %80)
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @BIO_free_all(i32* %82)
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @OCSP_REQ_CTX_free(i32* %84)
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %98

88:                                               ; preds = %75
  %89 = load i32, i32* @bio_err, align 4
  %90 = load i32**, i32*** %5, align 8
  %91 = icmp ne i32** %90, null
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @BIO_printf(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %93, i8* %94)
  %96 = load i32, i32* @bio_err, align 4
  %97 = call i32 @ERR_print_errors(i32 %96)
  br label %98

98:                                               ; preds = %88, %75
  %99 = load i32, i32* %13, align 4
  ret i32 %99
}

declare dso_local i32 @OCSP_parse_url(i8*, i8**, i8**, i8**, i32*) #1

declare dso_local i32 @BIO_puts(i32, i8*) #1

declare dso_local i32* @BIO_new_connect(i8*) #1

declare dso_local i32 @BIO_set_conn_port(i32*, i8*) #1

declare dso_local i32* @OCSP_REQ_CTX_new(i32*, i32) #1

declare dso_local i32 @OCSP_REQ_CTX_http(i32*, i8*, i8*) #1

declare dso_local i32 @OCSP_REQ_CTX_add1_header(i32*, i8*, i8*) #1

declare dso_local i32 @X509_http_nbio(i32*, i32**) #1

declare dso_local i32 @X509_CRL_http_nbio(i32*, i32**) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @OCSP_REQ_CTX_free(i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
