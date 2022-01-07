; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_cert_status_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_cert_status_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@SSL_TLSEXT_ERR_ALERT_FATAL = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cert_status: callback called\0A\00", align 1
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"cert_status: Cannot open OCSP response file\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"cert_status: Error reading OCSP response\0A\00", align 1
@SSL_TLSEXT_ERR_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"cert_status: ocsp response sent:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @cert_status_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cert_status_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %5, align 8
  store i32* null, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %13 = load i32, i32* @SSL_TLSEXT_ERR_ALERT_FATAL, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @bio_err, align 4
  %20 = call i32 @BIO_puts(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @FORMAT_ASN1, align 4
  %31 = call i32* @bio_open_default(i32* %29, i8 signext 114, i32 %30)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @bio_err, align 4
  %36 = call i32 @BIO_puts(i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %80

37:                                               ; preds = %26
  %38 = load i32*, i32** %10, align 8
  %39 = call i32* @d2i_OCSP_RESPONSE_bio(i32* %38, i32* null)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @BIO_free(i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @bio_err, align 4
  %46 = call i32 @BIO_puts(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %80

47:                                               ; preds = %37
  br label %57

48:                                               ; preds = %21
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = call i32 @get_ocsp_resp_from_responder(i32* %49, %struct.TYPE_3__* %50, i32** %6)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %80

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @i2d_OCSP_RESPONSE(i32* %58, i8** %7)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %80

63:                                               ; preds = %57
  %64 = load i32*, i32** %3, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @SSL_set_tlsext_status_ocsp_resp(i32* %64, i8* %65, i32 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load i32, i32* @bio_err, align 4
  %74 = call i32 @BIO_puts(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @bio_err, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @OCSP_RESPONSE_print(i32 %75, i32* %76, i32 2)
  br label %78

78:                                               ; preds = %72, %63
  %79 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %78, %62, %55, %44, %34
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @bio_err, align 4
  %86 = call i32 @ERR_print_errors(i32 %85)
  br label %87

87:                                               ; preds = %84, %80
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @OCSP_RESPONSE_free(i32* %88)
  %90 = load i32, i32* %9, align 4
  ret i32 %90
}

declare dso_local i32 @BIO_puts(i32, i8*) #1

declare dso_local i32* @bio_open_default(i32*, i8 signext, i32) #1

declare dso_local i32* @d2i_OCSP_RESPONSE_bio(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @get_ocsp_resp_from_responder(i32*, %struct.TYPE_3__*, i32**) #1

declare dso_local i32 @i2d_OCSP_RESPONSE(i32*, i8**) #1

declare dso_local i32 @SSL_set_tlsext_status_ocsp_resp(i32*, i8*, i32) #1

declare dso_local i32 @OCSP_RESPONSE_print(i32, i32*, i32) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @OCSP_RESPONSE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
