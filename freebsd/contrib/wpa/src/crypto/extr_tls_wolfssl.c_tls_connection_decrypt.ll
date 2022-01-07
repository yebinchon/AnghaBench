; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i32 }
%struct.wpabuf = type opaque

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SSL: decrypt\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Decryption failed - SSL_read\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"SSL: decrypt: %ld bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @tls_connection_decrypt(i8* %0, %struct.tls_connection* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tls_connection*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpabuf*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %10 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %11 = icmp ne %struct.tls_connection* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %53

13:                                               ; preds = %3
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %17 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %16, i32 0, i32 1
  %18 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %19 = call i32 @wolfssl_reset_in_data(i32* %17, %struct.wpabuf* %18)
  %20 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %21 = call i32 @wpabuf_len(%struct.wpabuf* %20)
  %22 = add nsw i32 %21, 500
  %23 = mul nsw i32 %22, 3
  %24 = call %struct.wpabuf* @wpabuf_alloc(i32 %23)
  store %struct.wpabuf* %24, %struct.wpabuf** %9, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %26 = icmp ne %struct.wpabuf* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %53

28:                                               ; preds = %13
  %29 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %30 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %33 = call i32 @wpabuf_mhead(%struct.wpabuf* %32)
  %34 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %35 = call i32 @wpabuf_size(%struct.wpabuf* %34)
  %36 = call i32 @wolfSSL_read(i32 %31, i32 %33, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %43 = call i32 @wpabuf_free(%struct.wpabuf* %42)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %53

44:                                               ; preds = %28
  %45 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @wpabuf_put(%struct.wpabuf* %45, i32 %46)
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %50 = call i32 @wpabuf_len(%struct.wpabuf* %49)
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %52, %struct.wpabuf** %4, align 8
  br label %53

53:                                               ; preds = %44, %39, %27, %12
  %54 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %54
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wolfssl_reset_in_data(i32*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wolfSSL_read(i32, i32, i32) #1

declare dso_local i32 @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_size(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
