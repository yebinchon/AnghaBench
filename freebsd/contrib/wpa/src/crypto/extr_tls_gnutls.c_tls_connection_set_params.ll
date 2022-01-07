; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_connection_set_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_connection_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.tls_connection_params = type { i32, i8*, i8*, i32, i32, i64, i32, i64, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i8*, i32 }

@TLS_CONN_REQUIRE_OCSP_ALL = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"GnuTLS: ocsp=3 not supported\00", align 1
@TLS_CONN_EXT_CERT_CHECK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"GnuTLS: tls_ext_cert_check=1 not supported\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GnuTLS: subject_match not supported\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"GnuTLS: altsubject_match not supported\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"GnuTLS: domain_match not supported\00", align 1
@TLS_CONN_DISABLE_TLSv1_0 = common dso_local global i32 0, align 4
@TLS_CONN_DISABLE_TLSv1_1 = common dso_local global i32 0, align 4
@TLS_CONN_DISABLE_TLSv1_2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"NORMAL:-VERS-SSL3.0%s%s%s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c":-VERS-TLS1.0\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [14 x i8] c":-VERS-TLS1.1\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c":-VERS-TLS1.2\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"SUITEB128\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"SUITEB192\00", align 1
@TLS_CONN_SUITEB = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"ECDHE-RSA-AES256-GCM-SHA384\00", align 1
@.str.13 = private unnamed_addr constant [93 x i8] c"NONE:+VERS-TLS1.2:+AEAD:+ECDHE-RSA:+AES-256-GCM:+SIGN-RSA-SHA384:+CURVE-SECP384R1:+COMP-NULL\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"DHE-RSA-AES256-GCM-SHA384\00", align 1
@.str.15 = private unnamed_addr constant [105 x i8] c"NONE:+VERS-TLS1.2:+AEAD:+DHE-RSA:+AES-256-GCM:+SIGN-RSA-SHA384:+CURVE-SECP384R1:+COMP-NULL:%PROFILE_HIGH\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"ECDHE-ECDSA-AES256-GCM-SHA384\00", align 1
@.str.17 = private unnamed_addr constant [95 x i8] c"NONE:+VERS-TLS1.2:+AEAD:+ECDHE-ECDSA:+AES-256-GCM:+SIGN-RSA-SHA384:+CURVE-SECP384R1:+COMP-NULL\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"GnuTLS: openssl_ciphers not supported\00", align 1
@.str.19 = private unnamed_addr constant [129 x i8] c"NONE:+VERS-TLS1.2:+AEAD:+ECDHE-ECDSA:+ECDHE-RSA:+DHE-RSA:+AES-256-GCM:+SIGN-RSA-SHA384:+CURVE-SECP384R1:+COMP-NULL:%PROFILE_HIGH\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [32 x i8] c"GnuTLS: Set priority string: %s\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [40 x i8] c"GnuTLS: Priority string failure at '%s'\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"GnuTLS: openssl_ecdh_curves not supported\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"GnuTLS: Try to parse %s in DER format\00", align 1
@GNUTLS_X509_FMT_DER = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [75 x i8] c"GnuTLS: Failed to read CA cert '%s' in DER format (%s) - try in PEM format\00", align 1
@GNUTLS_X509_FMT_PEM = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [46 x i8] c"Failed to read CA cert '%s' in PEM format: %s\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"GnuTLS: Successfully read CA cert '%s' in PEM format\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"GnuTLS: Successfully read CA cert '%s' in DER format\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"Failed to parse CA cert in DER format: %s\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"Failed to parse CA cert in PEM format: %s\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"GnuTLS: ca_path not supported\00", align 1
@tls_connection_verify_peer = common dso_local global i32 0, align 4
@TLS_CONN_ALLOW_SIGN_RSA_MD5 = common dso_local global i32 0, align 4
@GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD5 = common dso_local global i32 0, align 4
@TLS_CONN_DISABLE_TIME_CHECKS = common dso_local global i32 0, align 4
@GNUTLS_VERIFY_DISABLE_TIME_CHECKS = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [65 x i8] c"GnuTLS: Try to parse client cert '%s' and key '%s' in DER format\00", align 1
@.str.32 = private unnamed_addr constant [78 x i8] c"GnuTLS: Failed to read client cert/key in DER format (%s) - try in PEM format\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"Failed to read client cert/key in PEM format: %s\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"GnuTLS: Successfully read client cert/key in PEM format\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"GnuTLS: Successfully read client cert/key in DER format\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"GnuTLS: PKCS#12 support not included\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"Failed to read client cert/key in DER format: %s\00", align 1
@TLS_CONN_REQUIRE_OCSP = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [53 x i8] c"GnuTLS: OCSP not supported by this version of GnuTLS\00", align 1
@GNUTLS_CRD_CERTIFICATE = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [36 x i8] c"Failed to configure credentials: %s\00", align 1
@GNUTLS_E_SUCCESS = common dso_local global i32 0, align 4
@TLS_CONN_REQUEST_OCSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_connection_set_params(i8* %0, %struct.tls_connection* %1, %struct.tls_connection_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tls_connection*, align 8
  %7 = alloca %struct.tls_connection_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [100 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca %struct.TYPE_8__, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %6, align 8
  store %struct.tls_connection_params* %2, %struct.tls_connection_params** %7, align 8
  store i8* null, i8** %11, align 8
  %16 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %17 = icmp eq %struct.tls_connection* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %20 = icmp eq %struct.tls_connection_params* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  store i32 -1, i32* %4, align 4
  br label %565

22:                                               ; preds = %18
  %23 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %24 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TLS_CONN_REQUIRE_OCSP_ALL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %565

32:                                               ; preds = %22
  %33 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %34 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TLS_CONN_EXT_CERT_CHECK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %565

42:                                               ; preds = %32
  %43 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %44 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %43, i32 0, i32 17
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @MSG_INFO, align 4
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %565

50:                                               ; preds = %42
  %51 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %52 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %51, i32 0, i32 16
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @MSG_INFO, align 4
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %565

58:                                               ; preds = %50
  %59 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %60 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %59, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @os_free(i32* %61)
  %63 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %64 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %63, i32 0, i32 7
  store i32* null, i32** %64, align 8
  %65 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %66 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %65, i32 0, i32 15
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %58
  %70 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %71 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %70, i32 0, i32 15
  %72 = load i64, i64* %71, align 8
  %73 = call i8* @os_strdup(i64 %72)
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %76 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %75, i32 0, i32 7
  store i32* %74, i32** %76, align 8
  %77 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %78 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %77, i32 0, i32 7
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  store i32 -1, i32* %4, align 4
  br label %565

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %58
  %84 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %85 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %84, i32 0, i32 14
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @MSG_INFO, align 4
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %565

91:                                               ; preds = %83
  %92 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %93 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %96 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %98 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_0, align 4
  %101 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_1, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_2, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %99, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %91
  %108 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %109 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %110 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_0, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %117 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %118 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_1, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %125 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %126 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_2, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %133 = call i32 @os_snprintf(i8* %108, i32 100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %116, i8* %124, i8* %132)
  %134 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  store i8* %134, i8** %11, align 8
  br label %135

135:                                              ; preds = %107, %91
  %136 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %137 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %136, i32 0, i32 13
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %198

140:                                              ; preds = %135
  %141 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %142 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %141, i32 0, i32 13
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @os_strcmp(i64 %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %11, align 8
  br label %197

147:                                              ; preds = %140
  %148 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %149 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %148, i32 0, i32 13
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @os_strcmp(i64 %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %11, align 8
  br label %196

154:                                              ; preds = %147
  %155 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %156 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @TLS_CONN_SUITEB, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %163 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %162, i32 0, i32 13
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @os_strcmp(i64 %164, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.13, i64 0, i64 0), i8** %11, align 8
  br label %195

168:                                              ; preds = %161, %154
  %169 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %170 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %169, i32 0, i32 13
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @os_strcmp(i64 %171, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.13, i64 0, i64 0), i8** %11, align 8
  br label %194

175:                                              ; preds = %168
  %176 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %177 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %176, i32 0, i32 13
  %178 = load i64, i64* %177, align 8
  %179 = call i64 @os_strcmp(i64 %178, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  store i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.15, i64 0, i64 0), i8** %11, align 8
  br label %193

182:                                              ; preds = %175
  %183 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %184 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %183, i32 0, i32 13
  %185 = load i64, i64* %184, align 8
  %186 = call i64 @os_strcmp(i64 %185, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.17, i64 0, i64 0), i8** %11, align 8
  br label %192

189:                                              ; preds = %182
  %190 = load i32, i32* @MSG_INFO, align 4
  %191 = call i32 (i32, i8*, ...) @wpa_printf(i32 %190, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %565

192:                                              ; preds = %188
  br label %193

193:                                              ; preds = %192, %181
  br label %194

194:                                              ; preds = %193, %174
  br label %195

195:                                              ; preds = %194, %167
  br label %196

196:                                              ; preds = %195, %153
  br label %197

197:                                              ; preds = %196, %146
  br label %207

198:                                              ; preds = %135
  %199 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %200 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @TLS_CONN_SUITEB, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %198
  store i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.19, i64 0, i64 0), i8** %11, align 8
  br label %206

206:                                              ; preds = %205, %198
  br label %207

207:                                              ; preds = %206, %197
  %208 = load i8*, i8** %11, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %226

210:                                              ; preds = %207
  %211 = load i32, i32* @MSG_DEBUG, align 4
  %212 = load i8*, i8** %11, align 8
  %213 = call i32 (i32, i8*, ...) @wpa_printf(i32 %211, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i8* %212)
  %214 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %215 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %11, align 8
  %218 = call i32 @gnutls_priority_set_direct(i32 %216, i8* %217, i8** %9)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %210
  %222 = load i32, i32* @MSG_ERROR, align 4
  %223 = load i8*, i8** %9, align 8
  %224 = call i32 (i32, i8*, ...) @wpa_printf(i32 %222, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i8* %223)
  store i32 -1, i32* %4, align 4
  br label %565

225:                                              ; preds = %210
  br label %226

226:                                              ; preds = %225, %207
  %227 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %228 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %227, i32 0, i32 12
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load i32, i32* @MSG_INFO, align 4
  %233 = call i32 (i32, i8*, ...) @wpa_printf(i32 %232, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %565

234:                                              ; preds = %226
  %235 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %236 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %235, i32 0, i32 1
  %237 = load i8*, i8** %236, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %294

239:                                              ; preds = %234
  %240 = load i32, i32* @MSG_DEBUG, align 4
  %241 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %242 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i32, i8*, ...) @wpa_printf(i32 %240, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0), i8* %243)
  %245 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %246 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %249 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = load i32, i32* @GNUTLS_X509_FMT_DER, align 4
  %252 = call i32 @gnutls_certificate_set_x509_trust_file(i32 %247, i8* %250, i32 %251)
  store i32 %252, i32* %8, align 4
  %253 = load i32, i32* %8, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %287

255:                                              ; preds = %239
  %256 = load i32, i32* @MSG_DEBUG, align 4
  %257 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %258 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %257, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = call i8* @gnutls_strerror(i32 %260)
  %262 = call i32 (i32, i8*, ...) @wpa_printf(i32 %256, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %259, i8* %261)
  %263 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %264 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %267 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %266, i32 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = load i32, i32* @GNUTLS_X509_FMT_PEM, align 4
  %270 = call i32 @gnutls_certificate_set_x509_trust_file(i32 %265, i8* %268, i32 %269)
  store i32 %270, i32* %8, align 4
  %271 = load i32, i32* %8, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %281

273:                                              ; preds = %255
  %274 = load i32, i32* @MSG_DEBUG, align 4
  %275 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %276 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %275, i32 0, i32 1
  %277 = load i8*, i8** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = call i8* @gnutls_strerror(i32 %278)
  %280 = call i32 (i32, i8*, ...) @wpa_printf(i32 %274, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i8* %277, i8* %279)
  store i32 -1, i32* %4, align 4
  br label %565

281:                                              ; preds = %255
  %282 = load i32, i32* @MSG_DEBUG, align 4
  %283 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %284 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %283, i32 0, i32 1
  %285 = load i8*, i8** %284, align 8
  %286 = call i32 (i32, i8*, ...) @wpa_printf(i32 %282, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i64 0, i64 0), i8* %285)
  br label %293

287:                                              ; preds = %239
  %288 = load i32, i32* @MSG_DEBUG, align 4
  %289 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %290 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %289, i32 0, i32 1
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 (i32, i8*, ...) @wpa_printf(i32 %288, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i64 0, i64 0), i8* %291)
  br label %293

293:                                              ; preds = %287, %281
  br label %345

294:                                              ; preds = %234
  %295 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %296 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %295, i32 0, i32 9
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %335

299:                                              ; preds = %294
  %300 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %301 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %300, i32 0, i32 9
  %302 = load i64, i64* %301, align 8
  %303 = inttoptr i64 %302 to i8*
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i8* %303, i8** %304, align 8
  %305 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %306 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %305, i32 0, i32 11
  %307 = load i32, i32* %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i32 %307, i32* %308, align 8
  %309 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %310 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @GNUTLS_X509_FMT_DER, align 4
  %313 = call i32 @gnutls_certificate_set_x509_trust_mem(i32 %311, %struct.TYPE_8__* %12, i32 %312)
  store i32 %313, i32* %8, align 4
  %314 = load i32, i32* %8, align 4
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %316, label %334

316:                                              ; preds = %299
  %317 = load i32, i32* @MSG_DEBUG, align 4
  %318 = load i32, i32* %8, align 4
  %319 = call i8* @gnutls_strerror(i32 %318)
  %320 = call i32 (i32, i8*, ...) @wpa_printf(i32 %317, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0), i8* %319)
  %321 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %322 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @GNUTLS_X509_FMT_PEM, align 4
  %325 = call i32 @gnutls_certificate_set_x509_trust_mem(i32 %323, %struct.TYPE_8__* %12, i32 %324)
  store i32 %325, i32* %8, align 4
  %326 = load i32, i32* %8, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %316
  %329 = load i32, i32* @MSG_DEBUG, align 4
  %330 = load i32, i32* %8, align 4
  %331 = call i8* @gnutls_strerror(i32 %330)
  %332 = call i32 (i32, i8*, ...) @wpa_printf(i32 %329, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0), i8* %331)
  store i32 -1, i32* %4, align 4
  br label %565

333:                                              ; preds = %316
  br label %334

334:                                              ; preds = %333, %299
  br label %344

335:                                              ; preds = %294
  %336 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %337 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %336, i32 0, i32 10
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %335
  %341 = load i32, i32* @MSG_INFO, align 4
  %342 = call i32 (i32, i8*, ...) @wpa_printf(i32 %341, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %565

343:                                              ; preds = %335
  br label %344

344:                                              ; preds = %343, %334
  br label %345

345:                                              ; preds = %344, %293
  %346 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %347 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %346, i32 0, i32 1
  store i32 0, i32* %347, align 4
  %348 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %349 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %348, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = icmp ne i8* %350, null
  br i1 %351, label %357, label %352

352:                                              ; preds = %345
  %353 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %354 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %353, i32 0, i32 9
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %393

357:                                              ; preds = %352, %345
  %358 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %359 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %358, i32 0, i32 2
  store i32 1, i32* %359, align 8
  %360 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %361 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @tls_connection_verify_peer, align 4
  %364 = call i32 @gnutls_certificate_set_verify_function(i32 %362, i32 %363)
  %365 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %366 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @TLS_CONN_ALLOW_SIGN_RSA_MD5, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %377

371:                                              ; preds = %357
  %372 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %373 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD5, align 4
  %376 = call i32 @gnutls_certificate_set_verify_flags(i32 %374, i32 %375)
  br label %377

377:                                              ; preds = %371, %357
  %378 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %379 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @TLS_CONN_DISABLE_TIME_CHECKS, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %392

384:                                              ; preds = %377
  %385 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %386 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %385, i32 0, i32 1
  store i32 1, i32* %386, align 4
  %387 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %388 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @GNUTLS_VERIFY_DISABLE_TIME_CHECKS, align 4
  %391 = call i32 @gnutls_certificate_set_verify_flags(i32 %389, i32 %390)
  br label %392

392:                                              ; preds = %384, %377
  br label %393

393:                                              ; preds = %392, %352
  %394 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %395 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %394, i32 0, i32 8
  %396 = load i32, i32* %395, align 8
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %456

398:                                              ; preds = %393
  %399 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %400 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %399, i32 0, i32 2
  %401 = load i8*, i8** %400, align 8
  %402 = icmp ne i8* %401, null
  br i1 %402, label %403, label %456

403:                                              ; preds = %398
  %404 = load i32, i32* @MSG_DEBUG, align 4
  %405 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %406 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %405, i32 0, i32 8
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %409 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %408, i32 0, i32 2
  %410 = load i8*, i8** %409, align 8
  %411 = call i32 (i32, i8*, ...) @wpa_printf(i32 %404, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.31, i64 0, i64 0), i32 %407, i8* %410)
  %412 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %413 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %416 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %415, i32 0, i32 8
  %417 = load i32, i32* %416, align 8
  %418 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %419 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %418, i32 0, i32 2
  %420 = load i8*, i8** %419, align 8
  %421 = load i32, i32* @GNUTLS_X509_FMT_DER, align 4
  %422 = call i32 @gnutls_certificate_set_x509_key_file(i32 %414, i32 %417, i8* %420, i32 %421)
  store i32 %422, i32* %8, align 4
  %423 = load i32, i32* %8, align 4
  %424 = icmp slt i32 %423, 0
  br i1 %424, label %425, label %452

425:                                              ; preds = %403
  %426 = load i32, i32* @MSG_DEBUG, align 4
  %427 = load i32, i32* %8, align 4
  %428 = call i8* @gnutls_strerror(i32 %427)
  %429 = call i32 (i32, i8*, ...) @wpa_printf(i32 %426, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.32, i64 0, i64 0), i8* %428)
  %430 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %431 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %430, i32 0, i32 4
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %434 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %433, i32 0, i32 8
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %437 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %436, i32 0, i32 2
  %438 = load i8*, i8** %437, align 8
  %439 = load i32, i32* @GNUTLS_X509_FMT_PEM, align 4
  %440 = call i32 @gnutls_certificate_set_x509_key_file(i32 %432, i32 %435, i8* %438, i32 %439)
  store i32 %440, i32* %8, align 4
  %441 = load i32, i32* %8, align 4
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %443, label %449

443:                                              ; preds = %425
  %444 = load i32, i32* @MSG_DEBUG, align 4
  %445 = load i32, i32* %8, align 4
  %446 = call i8* @gnutls_strerror(i32 %445)
  %447 = call i32 (i32, i8*, ...) @wpa_printf(i32 %444, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i64 0, i64 0), i8* %446)
  %448 = load i32, i32* %8, align 4
  store i32 %448, i32* %4, align 4
  br label %565

449:                                              ; preds = %425
  %450 = load i32, i32* @MSG_DEBUG, align 4
  %451 = call i32 (i32, i8*, ...) @wpa_printf(i32 %450, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0))
  br label %455

452:                                              ; preds = %403
  %453 = load i32, i32* @MSG_DEBUG, align 4
  %454 = call i32 (i32, i8*, ...) @wpa_printf(i32 %453, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0))
  br label %455

455:                                              ; preds = %452, %449
  br label %535

456:                                              ; preds = %398, %393
  %457 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %458 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %457, i32 0, i32 2
  %459 = load i8*, i8** %458, align 8
  %460 = icmp ne i8* %459, null
  br i1 %460, label %461, label %468

461:                                              ; preds = %456
  store i32 0, i32* %13, align 4
  %462 = load i32, i32* %13, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %467, label %464

464:                                              ; preds = %461
  %465 = load i32, i32* @MSG_DEBUG, align 4
  %466 = call i32 (i32, i8*, ...) @wpa_printf(i32 %465, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %565

467:                                              ; preds = %461
  br label %534

468:                                              ; preds = %456
  %469 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %470 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %469, i32 0, i32 7
  %471 = load i64, i64* %470, align 8
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %524

473:                                              ; preds = %468
  %474 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %475 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %474, i32 0, i32 5
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %524

478:                                              ; preds = %473
  %479 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %480 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %479, i32 0, i32 7
  %481 = load i64, i64* %480, align 8
  %482 = inttoptr i64 %481 to i8*
  %483 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i8* %482, i8** %483, align 8
  %484 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %485 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %484, i32 0, i32 6
  %486 = load i32, i32* %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 %486, i32* %487, align 8
  %488 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %489 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %488, i32 0, i32 5
  %490 = load i64, i64* %489, align 8
  %491 = inttoptr i64 %490 to i8*
  %492 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i8* %491, i8** %492, align 8
  %493 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %494 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %493, i32 0, i32 4
  %495 = load i32, i32* %494, align 4
  %496 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i32 %495, i32* %496, align 8
  %497 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %498 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %497, i32 0, i32 4
  %499 = load i32, i32* %498, align 8
  %500 = load i32, i32* @GNUTLS_X509_FMT_DER, align 4
  %501 = call i32 @gnutls_certificate_set_x509_key_mem(i32 %499, %struct.TYPE_8__* %14, %struct.TYPE_8__* %15, i32 %500)
  store i32 %501, i32* %8, align 4
  %502 = load i32, i32* %8, align 4
  %503 = icmp slt i32 %502, 0
  br i1 %503, label %504, label %523

504:                                              ; preds = %478
  %505 = load i32, i32* @MSG_DEBUG, align 4
  %506 = load i32, i32* %8, align 4
  %507 = call i8* @gnutls_strerror(i32 %506)
  %508 = call i32 (i32, i8*, ...) @wpa_printf(i32 %505, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.37, i64 0, i64 0), i8* %507)
  %509 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %510 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %509, i32 0, i32 4
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* @GNUTLS_X509_FMT_PEM, align 4
  %513 = call i32 @gnutls_certificate_set_x509_key_mem(i32 %511, %struct.TYPE_8__* %14, %struct.TYPE_8__* %15, i32 %512)
  store i32 %513, i32* %8, align 4
  %514 = load i32, i32* %8, align 4
  %515 = icmp slt i32 %514, 0
  br i1 %515, label %516, label %522

516:                                              ; preds = %504
  %517 = load i32, i32* @MSG_DEBUG, align 4
  %518 = load i32, i32* %8, align 4
  %519 = call i8* @gnutls_strerror(i32 %518)
  %520 = call i32 (i32, i8*, ...) @wpa_printf(i32 %517, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i64 0, i64 0), i8* %519)
  %521 = load i32, i32* %8, align 4
  store i32 %521, i32* %4, align 4
  br label %565

522:                                              ; preds = %504
  br label %523

523:                                              ; preds = %522, %478
  br label %533

524:                                              ; preds = %473, %468
  %525 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %526 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %525, i32 0, i32 5
  %527 = load i64, i64* %526, align 8
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %524
  %530 = load i32, i32* @MSG_DEBUG, align 4
  %531 = call i32 (i32, i8*, ...) @wpa_printf(i32 %530, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %565

532:                                              ; preds = %524
  br label %533

533:                                              ; preds = %532, %523
  br label %534

534:                                              ; preds = %533, %467
  br label %535

535:                                              ; preds = %534, %455
  %536 = load %struct.tls_connection_params*, %struct.tls_connection_params** %7, align 8
  %537 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = load i32, i32* @TLS_CONN_REQUIRE_OCSP, align 4
  %540 = and i32 %538, %539
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %545

542:                                              ; preds = %535
  %543 = load i32, i32* @MSG_INFO, align 4
  %544 = call i32 (i32, i8*, ...) @wpa_printf(i32 %543, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.38, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %565

545:                                              ; preds = %535
  %546 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %547 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %546, i32 0, i32 3
  store i32 1, i32* %547, align 4
  %548 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %549 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %548, i32 0, i32 5
  %550 = load i32, i32* %549, align 4
  %551 = load i32, i32* @GNUTLS_CRD_CERTIFICATE, align 4
  %552 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %553 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %552, i32 0, i32 4
  %554 = load i32, i32* %553, align 8
  %555 = call i32 @gnutls_credentials_set(i32 %550, i32 %551, i32 %554)
  store i32 %555, i32* %8, align 4
  %556 = load i32, i32* %8, align 4
  %557 = icmp slt i32 %556, 0
  br i1 %557, label %558, label %563

558:                                              ; preds = %545
  %559 = load i32, i32* @MSG_INFO, align 4
  %560 = load i32, i32* %8, align 4
  %561 = call i8* @gnutls_strerror(i32 %560)
  %562 = call i32 (i32, i8*, ...) @wpa_printf(i32 %559, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i64 0, i64 0), i8* %561)
  br label %563

563:                                              ; preds = %558, %545
  %564 = load i32, i32* %8, align 4
  store i32 %564, i32* %4, align 4
  br label %565

565:                                              ; preds = %563, %542, %529, %516, %464, %443, %340, %328, %273, %231, %221, %189, %88, %81, %55, %47, %39, %29, %21
  %566 = load i32, i32* %4, align 4
  ret i32 %566
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i8* @os_strdup(i64) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @os_strcmp(i64, i8*) #1

declare dso_local i32 @gnutls_priority_set_direct(i32, i8*, i8**) #1

declare dso_local i32 @gnutls_certificate_set_x509_trust_file(i32, i8*, i32) #1

declare dso_local i8* @gnutls_strerror(i32) #1

declare dso_local i32 @gnutls_certificate_set_x509_trust_mem(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @gnutls_certificate_set_verify_function(i32, i32) #1

declare dso_local i32 @gnutls_certificate_set_verify_flags(i32, i32) #1

declare dso_local i32 @gnutls_certificate_set_x509_key_file(i32, i32, i8*, i32) #1

declare dso_local i32 @gnutls_certificate_set_x509_key_mem(i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @gnutls_credentials_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
