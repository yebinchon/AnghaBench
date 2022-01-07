; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_global_set_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_global_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection_params = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SSL: global set params\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"SSL: Failed to load ca cert file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"SSL: Failed to load client cert file '%s'\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"SSL: Failed to load private key file '%s'\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"SSL: Failed to load DH file '%s'\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"wolfSSL: Failed to set cipher string '%s'\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"wolfSSL: openssl_ecdh_curves not supported\00", align 1
@TLS_CONN_DISABLE_SESSION_TICKET = common dso_local global i32 0, align 4
@ocsp_resp_free_cb = common dso_local global i32 0, align 4
@ocsp_status_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_global_set_params(i8* %0, %struct.tls_connection_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tls_connection_params*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.tls_connection_params* %1, %struct.tls_connection_params** %5, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 (i32, i8*, ...) @wpa_printf(i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %9 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %8, i32 0, i32 11
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %101

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %16 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @tls_global_ca_cert(i8* %14, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %23 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %3, align 4
  br label %101

26:                                               ; preds = %13
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %29 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @tls_global_client_cert(i8* %27, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* @MSG_INFO, align 4
  %35 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %36 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %3, align 4
  br label %101

39:                                               ; preds = %26
  %40 = load i8*, i8** %4, align 8
  %41 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %42 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %45 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @tls_global_private_key(i8* %40, i32 %43, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load i32, i32* @MSG_INFO, align 4
  %51 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %52 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  store i32 -1, i32* %3, align 4
  br label %101

55:                                               ; preds = %39
  %56 = load i8*, i8** %4, align 8
  %57 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %58 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %61 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %64 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @tls_global_dh(i8* %56, i32 %59, i32 %62, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %55
  %69 = load i32, i32* @MSG_INFO, align 4
  %70 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %71 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  store i32 -1, i32* %3, align 4
  br label %101

74:                                               ; preds = %55
  %75 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %76 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load i8*, i8** %4, align 8
  %81 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %82 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @wolfSSL_CTX_set_cipher_list(i8* %80, i64 %83)
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32, i32* @MSG_INFO, align 4
  %88 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %89 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %90)
  store i32 -1, i32* %3, align 4
  br label %101

92:                                               ; preds = %79, %74
  %93 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %94 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @MSG_INFO, align 4
  %99 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %101

100:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %97, %86, %68, %49, %33, %20, %12
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @tls_global_ca_cert(i8*, i32) #1

declare dso_local i64 @tls_global_client_cert(i8*, i32) #1

declare dso_local i64 @tls_global_private_key(i8*, i32, i32) #1

declare dso_local i64 @tls_global_dh(i8*, i32, i32, i32) #1

declare dso_local i32 @wolfSSL_CTX_set_cipher_list(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
