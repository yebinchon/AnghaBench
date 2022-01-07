; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_wolfssl_get_appl_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_wolfssl_get_appl_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.tls_connection = type { i32 }

@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SSL: No Application Data included\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to read possible Application Data %s\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"SSL: Application Data in Finished message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.tls_connection*, i64)* @wolfssl_get_appl_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wolfssl_get_appl_data(%struct.tls_connection* %0, i64 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.tls_connection*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [80 x i8], align 16
  store %struct.tls_connection* %0, %struct.tls_connection** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add i64 %10, 100
  %12 = call %struct.wpabuf* @wpabuf_alloc(i64 %11)
  store %struct.wpabuf* %12, %struct.wpabuf** %7, align 8
  %13 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %14 = icmp ne %struct.wpabuf* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %60

16:                                               ; preds = %2
  %17 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %18 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %21 = call i32 @wpabuf_mhead(%struct.wpabuf* %20)
  %22 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %23 = call i32 @wpabuf_size(%struct.wpabuf* %22)
  %24 = call i32 @wolfSSL_read(i32 %19, i32 %21, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %16
  %28 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %29 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @wolfSSL_get_error(i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %27
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %49

43:                                               ; preds = %36
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load i32, i32* %8, align 4
  %46 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %47 = call i32 @wolfSSL_ERR_error_string(i32 %45, i8* %46)
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %40
  %50 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %51 = call i32 @wpabuf_free(%struct.wpabuf* %50)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %60

52:                                               ; preds = %16
  %53 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @wpabuf_put(%struct.wpabuf* %53, i32 %54)
  %56 = load i32, i32* @MSG_MSGDUMP, align 4
  %57 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %58 = call i32 @wpa_hexdump_buf_key(i32 %56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %57)
  %59 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  store %struct.wpabuf* %59, %struct.wpabuf** %3, align 8
  br label %60

60:                                               ; preds = %52, %49, %15
  %61 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %61
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wolfSSL_read(i32, i32, i32) #1

declare dso_local i32 @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_size(%struct.wpabuf*) #1

declare dso_local i32 @wolfSSL_get_error(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wolfSSL_ERR_error_string(i32, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
