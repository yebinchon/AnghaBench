; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_global_dh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_global_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_FILETYPE_ASN1 = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SSL: global use DH DER blob failed\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"SSL: global use DH blob OK\00", align 1
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"SSL: global use DH PEM file failed\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"SSL: global use DH DER file failed\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"SSL: global use DH file OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i64)* @tls_global_dh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_global_dh(i8* %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %60

19:                                               ; preds = %15, %4
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i32*, i32** %10, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* @SSL_FILETYPE_ASN1, align 4
  %27 = call i64 @wolfSSL_CTX_SetTmpDH_buffer(i32* %23, i32* %24, i64 %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %60

32:                                               ; preds = %22
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %60

35:                                               ; preds = %19
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = load i32*, i32** %10, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %42 = call i64 @wolfSSL_CTX_SetTmpDH_file(i32* %39, i8* %40, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i32, i32* @MSG_INFO, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32*, i32** %10, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @SSL_FILETYPE_ASN1, align 4
  %50 = call i64 @wolfSSL_CTX_SetTmpDH_file(i32* %47, i8* %48, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @MSG_INFO, align 4
  %54 = call i32 @wpa_printf(i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %60

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %60

59:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %56, %52, %32, %29, %18
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @wolfSSL_CTX_SetTmpDH_buffer(i32*, i32*, i64, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wolfSSL_CTX_SetTmpDH_file(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
