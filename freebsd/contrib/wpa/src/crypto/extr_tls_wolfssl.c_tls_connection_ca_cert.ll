; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_ca_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_ca_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i32, i32, i32, i32 }

@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@tls_verify_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"probe://\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"wolfSSL: Probe for server certificate chain\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"hash://\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"No SHA256 included in the build - cannot validate server certificate hash\00", align 1
@SSL_FILETYPE_ASN1 = common dso_local global i32 0, align 4
@SSL_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"SSL: failed to load CA blob\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"SSL: use CA cert blob OK\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"SSL: failed to create certificate store\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"SSL: failed to load ca_cert as PEM\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"SSL: failed to load ca_cert as DER\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tls_connection*, i8*, i32*, i64, i8*)* @tls_connection_ca_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_connection_ca_cert(i8* %0, %struct.tls_connection* %1, i8* %2, i32* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tls_connection*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %14, align 8
  %18 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %19 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %22 = load i32, i32* @tls_verify_cb, align 4
  %23 = call i32 @wolfSSL_set_verify(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %25 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %6
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @os_strncmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %36 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %38 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  store i32 0, i32* %7, align 4
  br label %110

39:                                               ; preds = %28, %6
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @os_strncmp(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @MSG_INFO, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %110

49:                                               ; preds = %42, %39
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32*, i32** %14, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i32, i32* @SSL_FILETYPE_ASN1, align 4
  %57 = call i64 @wolfSSL_CTX_load_verify_buffer(i32* %53, i32* %54, i64 %55, i32 %56)
  %58 = load i64, i64* @SSL_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @MSG_INFO, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %110

63:                                               ; preds = %52
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %110

66:                                               ; preds = %49
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %13, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %107

72:                                               ; preds = %69, %66
  %73 = call i32* (...) @wolfSSL_X509_STORE_new()
  store i32* %73, i32** %15, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @MSG_INFO, align 4
  %78 = call i32 (i32, i8*, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %110

79:                                               ; preds = %72
  %80 = load i32*, i32** %14, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @wolfSSL_CTX_set_cert_store(i32* %80, i32* %81)
  %83 = load i32*, i32** %14, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = call i64 @wolfSSL_CTX_load_verify_locations(i32* %83, i8* %84, i8* %85)
  %87 = load i64, i64* @SSL_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %79
  %90 = load i32, i32* @MSG_INFO, align 4
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %92 = load i8*, i8** %10, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  store i32 -1, i32* %7, align 4
  br label %110

95:                                               ; preds = %89
  %96 = load i32*, i32** %14, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* @SSL_FILETYPE_ASN1, align 4
  %99 = call i64 @wolfSSL_CTX_der_load_verify_locations(i32* %96, i8* %97, i32 %98)
  %100 = load i64, i64* @SSL_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i32, i32* @MSG_INFO, align 4
  %104 = call i32 (i32, i8*, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %110

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105, %79
  store i32 0, i32* %7, align 4
  br label %110

107:                                              ; preds = %69
  %108 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %109 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %108, i32 0, i32 0
  store i32 0, i32* %109, align 4
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %107, %106, %102, %94, %76, %63, %60, %46, %32
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @wolfSSL_set_verify(i32, i32, i32) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wolfSSL_CTX_load_verify_buffer(i32*, i32*, i64, i32) #1

declare dso_local i32* @wolfSSL_X509_STORE_new(...) #1

declare dso_local i32 @wolfSSL_CTX_set_cert_store(i32*, i32*) #1

declare dso_local i64 @wolfSSL_CTX_load_verify_locations(i32*, i8*, i8*) #1

declare dso_local i64 @wolfSSL_CTX_der_load_verify_locations(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
