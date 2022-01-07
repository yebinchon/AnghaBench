; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_ocsp_status_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_ocsp_status_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@tls_global = common dso_local global %struct.TYPE_2__* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"OpenSSL: OCSP status callback - no response configured\00", align 1
@SSL_TLSEXT_ERR_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"OpenSSL: OCSP status callback - could not read response file\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"OpenSSL: OCSP status callback - send cached response\00", align 1
@SSL_TLSEXT_ERR_ALERT_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @ocsp_status_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocsp_status_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tls_global, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tls_global, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i8* @os_readfile(i32* %20, i64* %8)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %17
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i64, i64* %8, align 8
  %32 = call i8* @OPENSSL_malloc(i64 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @os_free(i8* %36)
  %38 = load i32, i32* @SSL_TLSEXT_ERR_ALERT_FATAL, align 4
  store i32 %38, i32* %3, align 4
  br label %51

39:                                               ; preds = %28
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @os_memcpy(i8* %40, i8* %41, i64 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @os_free(i8* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @SSL_set_tlsext_status_ocsp_resp(i32* %46, i8* %47, i64 %48)
  %50 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %39, %35, %24, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i8* @os_readfile(i32*, i64*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local i32 @SSL_set_tlsext_status_ocsp_resp(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
