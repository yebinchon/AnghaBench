; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_openssl_connection_handshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_openssl_connection_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i64, i32, i64, i32 }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"TLS: Heartbeat attack detected - do not send response\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"OpenSSL: Handshake finished - resumed=%d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"OpenSSL: Shared ciphers: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.tls_connection*, %struct.wpabuf*, %struct.wpabuf**)* @openssl_connection_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @openssl_connection_handshake(%struct.tls_connection* %0, %struct.wpabuf* %1, %struct.wpabuf** %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.tls_connection*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wpabuf**, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.tls_connection* %0, %struct.tls_connection** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store %struct.wpabuf** %2, %struct.wpabuf*** %7, align 8
  %11 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  %12 = icmp ne %struct.wpabuf** %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %14, align 8
  br label %15

15:                                               ; preds = %13, %3
  %16 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %18 = call %struct.wpabuf* @openssl_handshake(%struct.tls_connection* %16, %struct.wpabuf* %17)
  store %struct.wpabuf* %18, %struct.wpabuf** %8, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %20 = icmp eq %struct.wpabuf* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %108

22:                                               ; preds = %15
  %23 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %24 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @MSG_INFO, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %31 = call i32 @wpabuf_free(%struct.wpabuf* %30)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %108

32:                                               ; preds = %22
  %33 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %34 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @SSL_is_init_finished(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %88

38:                                               ; preds = %32
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %41 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %44 = call i32 @tls_connection_resumed(i32 %42, %struct.tls_connection* %43)
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %47 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %38
  store i64 2000, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i8* @os_malloc(i64 %51)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %57 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @SSL_get_shared_ciphers(i32 %58, i8* %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = sub i64 %65, 1
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %63, %55
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @os_free(i8* %72)
  br label %74

74:                                               ; preds = %71, %50
  br label %75

75:                                               ; preds = %74, %38
  %76 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  %77 = icmp ne %struct.wpabuf** %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %80 = icmp ne %struct.wpabuf* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %83 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %84 = call i32 @wpabuf_len(%struct.wpabuf* %83)
  %85 = call %struct.wpabuf* @openssl_get_appl_data(%struct.tls_connection* %82, i32 %84)
  %86 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  store %struct.wpabuf* %85, %struct.wpabuf** %86, align 8
  br label %87

87:                                               ; preds = %81, %78, %75
  br label %88

88:                                               ; preds = %87, %32
  %89 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %90 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %88
  %94 = load i32, i32* @MSG_INFO, align 4
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %96 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  %97 = icmp ne %struct.wpabuf** %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  %100 = load %struct.wpabuf*, %struct.wpabuf** %99, align 8
  %101 = call i32 @wpabuf_free(%struct.wpabuf* %100)
  %102 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %102, align 8
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %105 = call i32 @wpabuf_free(%struct.wpabuf* %104)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %108

106:                                              ; preds = %88
  %107 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %107, %struct.wpabuf** %4, align 8
  br label %108

108:                                              ; preds = %106, %103, %27, %21
  %109 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %109
}

declare dso_local %struct.wpabuf* @openssl_handshake(%struct.tls_connection*, %struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @SSL_is_init_finished(i32) #1

declare dso_local i32 @tls_connection_resumed(i32, %struct.tls_connection*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i64 @SSL_get_shared_ciphers(i32, i8*, i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local %struct.wpabuf* @openssl_get_appl_data(%struct.tls_connection*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
