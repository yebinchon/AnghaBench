; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_client_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_client_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32 }

@SSL_FILETYPE_ASN1 = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SSL: use client cert DER blob failed\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"SSL: use client cert blob OK\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"SSL: use client cert PEM file failed\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"SSL: use client cert DER file failed\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"SSL: use client cert file OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_connection*, i8*, i32*, i64)* @tls_connection_client_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_connection_client_cert(%struct.tls_connection* %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tls_connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.tls_connection* %0, %struct.tls_connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %62

16:                                               ; preds = %12, %4
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %21 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* @SSL_FILETYPE_ASN1, align 4
  %26 = call i64 @wolfSSL_use_certificate_chain_buffer_format(i32 %22, i32* %23, i64 %24, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @MSG_INFO, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %62

31:                                               ; preds = %19
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %62

34:                                               ; preds = %16
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %39 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @wolfSSL_use_certificate_chain_file(i32 %40, i8* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load i32, i32* @MSG_INFO, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %48 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* @SSL_FILETYPE_ASN1, align 4
  %52 = call i64 @wolfSSL_use_certificate_chain_file_format(i32 %49, i8* %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @MSG_INFO, align 4
  %56 = call i32 @wpa_printf(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %62

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = call i32 @wpa_printf(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %62

61:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %58, %54, %31, %28, %15
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @wolfSSL_use_certificate_chain_buffer_format(i32, i32*, i64, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wolfSSL_use_certificate_chain_file(i32, i8*) #1

declare dso_local i64 @wolfSSL_use_certificate_chain_file_format(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
