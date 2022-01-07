; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_set_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i32 }
%struct.tls_connection_params = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"SSL: set params\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error setting subject match\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Error setting CA cert\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error setting client cert\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Error setting private key\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Error setting DH\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"wolfSSL: Failed to set cipher string '%s'\00", align 1
@TLS_CONN_REQUIRE_OCSP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [57 x i8] c"wolfSSL: No OCSP support included - reject configuration\00", align 1
@TLS_CONN_REQUEST_OCSP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [73 x i8] c"wolfSSL: No OCSP support included - allow optional OCSP case to continue\00", align 1
@SSL_SUCCESS = common dso_local global i64 0, align 8
@WOLFSSL_CSR2_OCSP_MULTI = common dso_local global i32 0, align 4
@WOLFSSL_CSR_OCSP = common dso_local global i32 0, align 4
@WOLFSSL_CSR_OCSP_USE_NONCE = common dso_local global i32 0, align 4
@ctx = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_connection_set_params(i8* %0, %struct.tls_connection* %1, %struct.tls_connection_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tls_connection*, align 8
  %7 = alloca %struct.tls_connection_params*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %6, align 8
  store %struct.tls_connection_params* %2, %struct.tls_connection_params** %7, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %11 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %12 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %11, i32 0, i32 19
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %15 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %14, i32 0, i32 18
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %18 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %17, i32 0, i32 17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %21 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %20, i32 0, i32 16
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @tls_connection_set_subject_match(%struct.tls_connection* %10, i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @MSG_INFO, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %153

28:                                               ; preds = %3
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %31 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %32 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %31, i32 0, i32 15
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %35 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %34, i32 0, i32 14
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %38 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %41 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @tls_connection_ca_cert(i8* %29, %struct.tls_connection* %30, i32 %33, i32 %36, i32 %39, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load i32, i32* @MSG_INFO, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %153

48:                                               ; preds = %28
  %49 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %50 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %51 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %54 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %57 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @tls_connection_client_cert(%struct.tls_connection* %49, i32 %52, i32 %55, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i32, i32* @MSG_INFO, align 4
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %153

64:                                               ; preds = %48
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %67 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %68 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %71 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %74 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %77 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @tls_connection_private_key(i8* %65, %struct.tls_connection* %66, i32 %69, i32 %72, i32 %75, i32 %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %64
  %82 = load i32, i32* @MSG_INFO, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %153

84:                                               ; preds = %64
  %85 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %86 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %87 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %90 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %93 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @tls_connection_dh(%struct.tls_connection* %85, i32 %88, i32 %91, i32 %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %84
  %98 = load i32, i32* @MSG_INFO, align 4
  %99 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %153

100:                                              ; preds = %84
  %101 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %102 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %100
  %106 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %107 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %110 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @wolfSSL_set_cipher_list(i32 %108, i64 %111)
  %113 = icmp ne i32 %112, 1
  br i1 %113, label %114, label %120

114:                                              ; preds = %105
  %115 = load i32, i32* @MSG_INFO, align 4
  %116 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %117 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %118)
  store i32 -1, i32* %4, align 4
  br label %153

120:                                              ; preds = %105, %100
  %121 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %122 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %125 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @tls_set_conn_flags(i32 %123, i32 %126)
  %128 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %129 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @TLS_CONN_REQUIRE_OCSP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %120
  %135 = load i32, i32* @MSG_INFO, align 4
  %136 = call i32 (i32, i8*, ...) @wpa_printf(i32 %135, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %153

137:                                              ; preds = %120
  %138 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %139 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @TLS_CONN_REQUEST_OCSP, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i32, i32* @MSG_DEBUG, align 4
  %146 = call i32 (i32, i8*, ...) @wpa_printf(i32 %145, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %137
  %148 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %149 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %152 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %147, %134, %114, %97, %81, %61, %45, %25
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @tls_connection_set_subject_match(%struct.tls_connection*, i32, i32, i32, i32) #1

declare dso_local i64 @tls_connection_ca_cert(i8*, %struct.tls_connection*, i32, i32, i32, i32) #1

declare dso_local i64 @tls_connection_client_cert(%struct.tls_connection*, i32, i32, i32) #1

declare dso_local i64 @tls_connection_private_key(i8*, %struct.tls_connection*, i32, i32, i32, i32) #1

declare dso_local i64 @tls_connection_dh(%struct.tls_connection*, i32, i32, i32) #1

declare dso_local i32 @wolfSSL_set_cipher_list(i32, i64) #1

declare dso_local i32 @tls_set_conn_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
