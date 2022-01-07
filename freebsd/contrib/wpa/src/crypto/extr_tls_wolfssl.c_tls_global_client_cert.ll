; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_global_client_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_global_client_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_FILETYPE_ASN1 = common dso_local global i32 0, align 4
@SSL_SUCCESS = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to load client certificate\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"SSL: Loaded global client certificate: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @tls_global_client_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_global_client_cert(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

12:                                               ; preds = %2
  %13 = load i32*, i32** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @SSL_FILETYPE_ASN1, align 4
  %16 = call i64 @wolfSSL_CTX_use_certificate_chain_file_format(i32* %13, i8* %14, i32 %15)
  %17 = load i64, i64* @SSL_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load i32*, i32** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @wolfSSL_CTX_use_certificate_chain_file(i32* %20, i8* %21)
  %23 = load i64, i64* @SSL_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @MSG_INFO, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %32

28:                                               ; preds = %19, %12
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %25, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @wolfSSL_CTX_use_certificate_chain_file_format(i32*, i8*, i32) #1

declare dso_local i64 @wolfSSL_CTX_use_certificate_chain_file(i32*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
