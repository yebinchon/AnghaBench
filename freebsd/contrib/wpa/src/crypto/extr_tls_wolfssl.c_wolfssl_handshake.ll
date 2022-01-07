; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_wolfssl_handshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_wolfssl_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.wpabuf* }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SSL: wolfSSL_accept: %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"SSL: wolfSSL_connect: %d\00", align 1
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"SSL: wolfSSL_connect - want more data\00", align 1
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"SSL: wolfSSL_connect - want to write\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"SSL: wolfSSL_connect - failed %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.tls_connection*, %struct.wpabuf*, i32)* @wolfssl_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wolfssl_handshake(%struct.tls_connection* %0, %struct.wpabuf* %1, i32 %2) #0 {
  %4 = alloca %struct.tls_connection*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [80 x i8], align 16
  store %struct.tls_connection* %0, %struct.tls_connection** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %11 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %10, i32 0, i32 0
  %12 = call i32 @wolfssl_reset_out_data(%struct.TYPE_2__* %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %17 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wolfSSL_set_accept_state(i32 %18)
  %20 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %21 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wolfSSL_accept(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %39

27:                                               ; preds = %3
  %28 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %29 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wolfSSL_set_connect_state(i32 %30)
  %32 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %33 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wolfSSL_connect(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %27, %15
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %73

42:                                               ; preds = %39
  %43 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %44 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @wolfSSL_get_error(i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %72

54:                                               ; preds = %42
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %71

61:                                               ; preds = %54
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load i32, i32* %8, align 4
  %64 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %65 = call i32 @wolfSSL_ERR_error_string(i32 %63, i8* %64)
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %68 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %61, %58
  br label %72

72:                                               ; preds = %71, %51
  br label %73

73:                                               ; preds = %72, %39
  %74 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %75 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.wpabuf*, %struct.wpabuf** %76, align 8
  ret %struct.wpabuf* %77
}

declare dso_local i32 @wolfssl_reset_out_data(%struct.TYPE_2__*) #1

declare dso_local i32 @wolfSSL_set_accept_state(i32) #1

declare dso_local i32 @wolfSSL_accept(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wolfSSL_set_connect_state(i32) #1

declare dso_local i32 @wolfSSL_connect(i32) #1

declare dso_local i32 @wolfSSL_get_error(i32, i32) #1

declare dso_local i32 @wolfSSL_ERR_error_string(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
