; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ssl3_check_cert_and_algorithm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ssl3_check_cert_and_algorithm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@SSL_aCERT = common dso_local global i64 0, align 8
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_F_SSL3_CHECK_CERT_AND_ALGORITHM = common dso_local global i32 0, align 4
@SSL_R_MISSING_SIGNING_CERT = common dso_local global i32 0, align 4
@SSL_aECDSA = common dso_local global i32 0, align 4
@SSL_R_BAD_ECC_CERT = common dso_local global i32 0, align 4
@SSL_kRSA = common dso_local global i64 0, align 8
@SSL_kRSAPSK = common dso_local global i64 0, align 8
@SSL_PKEY_RSA = common dso_local global i64 0, align 8
@SSL_R_MISSING_RSA_ENCRYPTING_CERT = common dso_local global i32 0, align 4
@SSL_kDHE = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_check_cert_and_algorithm(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @SSL_aCERT, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %112

29:                                               ; preds = %1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @X509_get0_pubkey(i32 %34)
  %36 = call %struct.TYPE_15__* @ssl_cert_lookup_by_pkey(i32 %35, i64* %5)
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %4, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = icmp eq %struct.TYPE_15__* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %29
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %40, %43
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39, %29
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %49 = load i32, i32* @SSL_F_SSL3_CHECK_CERT_AND_ALGORITHM, align 4
  %50 = load i32, i32* @SSL_R_MISSING_SIGNING_CERT, align 4
  %51 = call i32 @SSLfatal(%struct.TYPE_16__* %47, i32 %48, i32 %49, i32 %50)
  store i32 0, i32* %2, align 4
  br label %112

52:                                               ; preds = %39
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @SSL_aECDSA, align 4
  %57 = sext i32 %56 to i64
  %58 = and i64 %55, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %52
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = call i64 @ssl_check_srvr_ecc_cert_and_alg(i32 %65, %struct.TYPE_16__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %112

70:                                               ; preds = %60
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %73 = load i32, i32* @SSL_F_SSL3_CHECK_CERT_AND_ALGORITHM, align 4
  %74 = load i32, i32* @SSL_R_BAD_ECC_CERT, align 4
  %75 = call i32 @SSLfatal(%struct.TYPE_16__* %71, i32 %72, i32 %73, i32 %74)
  store i32 0, i32* %2, align 4
  br label %112

76:                                               ; preds = %52
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @SSL_kRSA, align 8
  %79 = load i64, i64* @SSL_kRSAPSK, align 8
  %80 = or i64 %78, %79
  %81 = and i64 %77, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %76
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @SSL_PKEY_RSA, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %90 = load i32, i32* @SSL_F_SSL3_CHECK_CERT_AND_ALGORITHM, align 4
  %91 = load i32, i32* @SSL_R_MISSING_RSA_ENCRYPTING_CERT, align 4
  %92 = call i32 @SSLfatal(%struct.TYPE_16__* %88, i32 %89, i32 %90, i32 %91)
  store i32 0, i32* %2, align 4
  br label %112

93:                                               ; preds = %83, %76
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @SSL_kDHE, align 8
  %96 = and i64 %94, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %108 = load i32, i32* @SSL_F_SSL3_CHECK_CERT_AND_ALGORITHM, align 4
  %109 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %110 = call i32 @SSLfatal(%struct.TYPE_16__* %106, i32 %107, i32 %108, i32 %109)
  store i32 0, i32* %2, align 4
  br label %112

111:                                              ; preds = %98, %93
  store i32 1, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %105, %87, %70, %69, %46, %28
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_15__* @ssl_cert_lookup_by_pkey(i32, i64*) #1

declare dso_local i32 @X509_get0_pubkey(i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i64 @ssl_check_srvr_ecc_cert_and_alg(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
