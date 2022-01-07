; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_dh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32 }

@SSL_FILETYPE_ASN1 = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SSL: use DH DER blob failed\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"SSL: use DH blob OK\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"SSL: use DH PEM file: %s\00", align 1
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"SSL: use DH PEM file failed\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"SSL: use DH DER file failed\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"SSL: use DH file OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_connection*, i8*, i32*, i64)* @tls_connection_dh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_connection_dh(%struct.tls_connection* %0, i8* %1, i32* %2, i64 %3) #0 {
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
  br label %70

16:                                               ; preds = %12, %4
  %17 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %18 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wolfSSL_set_accept_state(i32 %19)
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %25 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* @SSL_FILETYPE_ASN1, align 4
  %30 = call i64 @wolfSSL_SetTmpDH_buffer(i32 %26, i32* %27, i64 %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %70

35:                                               ; preds = %23
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %70

38:                                               ; preds = %16
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %38
  %42 = load i32, i32* @MSG_INFO, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %46 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %50 = call i64 @wolfSSL_SetTmpDH_file(i32 %47, i8* %48, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %41
  %53 = load i32, i32* @MSG_INFO, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %56 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* @SSL_FILETYPE_ASN1, align 4
  %60 = call i64 @wolfSSL_SetTmpDH_file(i32 %57, i8* %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @MSG_INFO, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %70

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %70

69:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %66, %62, %35, %32, %15
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @wolfSSL_set_accept_state(i32) #1

declare dso_local i64 @wolfSSL_SetTmpDH_buffer(i32, i32*, i64, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wolfSSL_SetTmpDH_file(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
