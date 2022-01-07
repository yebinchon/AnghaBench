; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.wpabuf* }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SSL: encrypt: %ld bytes\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Encryption failed - SSL_write: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @tls_connection_encrypt(i8* %0, %struct.tls_connection* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tls_connection*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [80 x i8], align 16
  store i8* %0, i8** %5, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %11 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %12 = icmp ne %struct.tls_connection* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %48

14:                                               ; preds = %3
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %17 = call i32 @wpabuf_len(%struct.wpabuf* %16)
  %18 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %20 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %19, i32 0, i32 0
  %21 = call i32 @wolfssl_reset_out_data(%struct.TYPE_2__* %20)
  %22 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %23 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %26 = call i32 @wpabuf_head(%struct.wpabuf* %25)
  %27 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %28 = call i32 @wpabuf_len(%struct.wpabuf* %27)
  %29 = call i32 @wolfSSL_write(i32 %24, i32 %26, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %14
  %33 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %34 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @wolfSSL_get_error(i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @MSG_INFO, align 4
  %39 = load i32, i32* %9, align 4
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %41 = call i32 @wolfSSL_ERR_error_string(i32 %39, i8* %40)
  %42 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %48

43:                                               ; preds = %14
  %44 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %45 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.wpabuf*, %struct.wpabuf** %46, align 8
  store %struct.wpabuf* %47, %struct.wpabuf** %4, align 8
  br label %48

48:                                               ; preds = %43, %32, %13
  %49 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %49
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wolfssl_reset_out_data(%struct.TYPE_2__*) #1

declare dso_local i32 @wolfSSL_write(i32, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wolfSSL_get_error(i32, i32) #1

declare dso_local i32 @wolfSSL_ERR_error_string(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
