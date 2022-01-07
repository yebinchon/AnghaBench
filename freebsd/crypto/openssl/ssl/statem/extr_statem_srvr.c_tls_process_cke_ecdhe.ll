; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_ecdhe.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_ecdhe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CKE_ECDHE = common dso_local global i32 0, align 4
@SSL_R_MISSING_TMP_ECDH_KEY = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @tls_process_cke_ecdhe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_cke_ecdhe(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @PACKET_remaining(i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %22 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_ECDHE, align 4
  %23 = load i32, i32* @SSL_R_MISSING_TMP_ECDH_KEY, align 4
  %24 = call i32 @SSLfatal(%struct.TYPE_9__* %20, i32 %21, i32 %22, i32 %23)
  br label %101

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @PACKET_get_1(i32* %26, i32* %8)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @PACKET_get_bytes(i32* %30, i8** %9, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @PACKET_remaining(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34, %29, %25
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %41 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_ECDHE, align 4
  %42 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %43 = call i32 @SSLfatal(%struct.TYPE_9__* %39, i32 %40, i32 %41, i32 %42)
  br label %101

44:                                               ; preds = %34
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %50 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_ECDHE, align 4
  %51 = load i32, i32* @SSL_R_MISSING_TMP_ECDH_KEY, align 4
  %52 = call i32 @SSLfatal(%struct.TYPE_9__* %48, i32 %49, i32 %50, i32 %51)
  br label %101

53:                                               ; preds = %44
  %54 = call i32* (...) @EVP_PKEY_new()
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i64 @EVP_PKEY_copy_parameters(i32* %58, i32* %59)
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57, %53
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %65 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_ECDHE, align 4
  %66 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %67 = call i32 @SSLfatal(%struct.TYPE_9__* %63, i32 %64, i32 %65, i32 %66)
  br label %101

68:                                               ; preds = %57
  %69 = load i32*, i32** %6, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @EVP_PKEY_set1_tls_encodedpoint(i32* %69, i8* %70, i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %77 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_ECDHE, align 4
  %78 = load i32, i32* @ERR_R_EC_LIB, align 4
  %79 = call i32 @SSLfatal(%struct.TYPE_9__* %75, i32 %76, i32 %77, i32 %78)
  br label %101

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i64 @ssl_derive(%struct.TYPE_9__* %82, i32* %83, i32* %84, i32 1)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %101

88:                                               ; preds = %81
  store i32 1, i32* %7, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @EVP_PKEY_free(i32* %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %88, %87, %74, %62, %47, %38, %19
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @EVP_PKEY_free(i32* %102)
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @PACKET_get_bytes(i32*, i8**, i32) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i64 @EVP_PKEY_copy_parameters(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_set1_tls_encodedpoint(i32*, i8*, i32) #1

declare dso_local i64 @ssl_derive(%struct.TYPE_9__*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
