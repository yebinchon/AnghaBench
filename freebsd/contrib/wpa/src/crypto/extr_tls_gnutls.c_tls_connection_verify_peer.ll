; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_connection_verify_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_connection_verify_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, %struct.TYPE_9__*, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32 (i32, i32, %union.tls_event_data*)*, i32, i64 }
%union.tls_event_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i8*, i32*, %struct.wpabuf* }
%struct.wpabuf = type { i32 }
%struct.os_time = type { i64 }
%struct.TYPE_10__ = type { i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"GnuTLS: No peer certificate verification enabled\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"GnuTSL: Verifying peer certificate\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"TLS: Failed to verify peer certificate chain\00", align 1
@GNUTLS_A_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"TLS: No peer certificate chain received\00", align 1
@GNUTLS_A_UNKNOWN_CA = common dso_local global i32 0, align 4
@GNUTLS_CERT_INVALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"TLS: Peer certificate not trusted\00", align 1
@GNUTLS_CERT_INSECURE_ALGORITHM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"TLS: Certificate uses insecure algorithm\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"certificate uses insecure algorithm\00", align 1
@TLS_FAIL_BAD_CERTIFICATE = common dso_local global i32 0, align 4
@GNUTLS_A_INSUFFICIENT_SECURITY = common dso_local global i32 0, align 4
@GNUTLS_CERT_NOT_ACTIVATED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"TLS: Certificate not yet activated\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"certificate not yet valid\00", align 1
@TLS_FAIL_NOT_YET_VALID = common dso_local global i32 0, align 4
@GNUTLS_A_CERTIFICATE_EXPIRED = common dso_local global i32 0, align 4
@GNUTLS_CERT_EXPIRED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"TLS: Certificate expired\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"certificate has expired\00", align 1
@TLS_FAIL_EXPIRED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"untrusted certificate\00", align 1
@TLS_FAIL_UNTRUSTED = common dso_local global i32 0, align 4
@GNUTLS_CERT_SIGNER_NOT_FOUND = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [51 x i8] c"TLS: Peer certificate does not have a known issuer\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"signed not found\00", align 1
@GNUTLS_CERT_REVOKED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"TLS: Peer certificate has been revoked\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"certificate revoked\00", align 1
@TLS_FAIL_REVOKED = common dso_local global i32 0, align 4
@GNUTLS_A_CERTIFICATE_REVOKED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [37 x i8] c"TLS: Unknown verification status: %d\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"TLS: Certificate initialization failed\00", align 1
@GNUTLS_A_BAD_CERTIFICATE = common dso_local global i32 0, align 4
@GNUTLS_X509_FMT_DER = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [44 x i8] c"TLS: Could not parse peer certificate %d/%d\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"TLS: Peer cert chain %d/%d: %s\00", align 1
@TLS_PEER_CERTIFICATE = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [40 x i8] c"TLS: Domain suffix match '%s' not found\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Domain suffix mismatch\00", align 1
@TLS_FAIL_DOMAIN_SUFFIX_MISMATCH = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [22 x i8] c"GnuTLS: No server EKU\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"No server EKU\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"TLS: Peer certificate %d/%d is not valid at this time\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"Certificate is not valid at this time\00", align 1
@TLS_CERT_CHAIN_SUCCESS = common dso_local global i32 0, align 4
@GNUTLS_AL_FATAL = common dso_local global i32 0, align 4
@GNUTLS_E_CERTIFICATE_ERROR = common dso_local global i32 0, align 4
@GNUTLS_DT_KEY_PURPOSE_OID = common dso_local global i32 0, align 4
@GNUTLS_KP_TLS_WWW_SERVER = common dso_local global i64 0, align 8
@TLS_FAIL_DOMAIN_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tls_connection_verify_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_connection_verify_peer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tls_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.os_time, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.wpabuf*, align 8
  %16 = alloca %union.tls_event_data, align 8
  store i32 %0, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.tls_connection* @gnutls_session_get_ptr(i32 %17)
  store %struct.tls_connection* %18, %struct.tls_connection** %4, align 8
  %19 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %20 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %389

26:                                               ; preds = %1
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @gnutls_certificate_verify_peers2(i32 %29, i32* %5)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @MSG_INFO, align 4
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @GNUTLS_A_INTERNAL_ERROR, align 4
  store i32 %36, i32* %11, align 4
  br label %379

37:                                               ; preds = %26
  %38 = load i32, i32* %3, align 4
  %39 = call %struct.TYPE_10__* @gnutls_certificate_get_peers(i32 %38, i32* %6)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %9, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = icmp eq %struct.TYPE_10__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42, %37
  %46 = load i32, i32* @MSG_INFO, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @GNUTLS_A_UNKNOWN_CA, align 4
  store i32 %48, i32* %11, align 4
  br label %379

49:                                               ; preds = %42
  %50 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %51 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @GNUTLS_CERT_INVALID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %102

59:                                               ; preds = %54
  %60 = load i32, i32* @MSG_INFO, align 4
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @GNUTLS_CERT_INSECURE_ALGORITHM, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i32, i32* @MSG_INFO, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %69 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %70 = load i32, i32* @TLS_FAIL_BAD_CERTIFICATE, align 4
  %71 = call i32 @gnutls_tls_fail_event(%struct.tls_connection* %69, %struct.TYPE_10__* null, i32 0, i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @GNUTLS_A_INSUFFICIENT_SECURITY, align 4
  store i32 %72, i32* %11, align 4
  br label %379

73:                                               ; preds = %59
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @GNUTLS_CERT_NOT_ACTIVATED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32, i32* @MSG_INFO, align 4
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %81 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %82 = load i32, i32* @TLS_FAIL_NOT_YET_VALID, align 4
  %83 = call i32 @gnutls_tls_fail_event(%struct.tls_connection* %81, %struct.TYPE_10__* null, i32 0, i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @GNUTLS_A_CERTIFICATE_EXPIRED, align 4
  store i32 %84, i32* %11, align 4
  br label %379

85:                                               ; preds = %73
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @GNUTLS_CERT_EXPIRED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load i32, i32* @MSG_INFO, align 4
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %93 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %94 = load i32, i32* @TLS_FAIL_EXPIRED, align 4
  %95 = call i32 @gnutls_tls_fail_event(%struct.tls_connection* %93, %struct.TYPE_10__* null, i32 0, i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @GNUTLS_A_CERTIFICATE_EXPIRED, align 4
  store i32 %96, i32* %11, align 4
  br label %379

97:                                               ; preds = %85
  %98 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %99 = load i32, i32* @TLS_FAIL_UNTRUSTED, align 4
  %100 = call i32 @gnutls_tls_fail_event(%struct.tls_connection* %98, %struct.TYPE_10__* null, i32 0, i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @GNUTLS_A_INTERNAL_ERROR, align 4
  store i32 %101, i32* %11, align 4
  br label %379

102:                                              ; preds = %54, %49
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @GNUTLS_CERT_SIGNER_NOT_FOUND, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i32, i32* @MSG_INFO, align 4
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %108, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0))
  %110 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %111 = load i32, i32* @TLS_FAIL_UNTRUSTED, align 4
  %112 = call i32 @gnutls_tls_fail_event(%struct.tls_connection* %110, %struct.TYPE_10__* null, i32 0, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @GNUTLS_A_UNKNOWN_CA, align 4
  store i32 %113, i32* %11, align 4
  br label %379

114:                                              ; preds = %102
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @GNUTLS_CERT_REVOKED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i32, i32* @MSG_INFO, align 4
  %121 = call i32 (i32, i8*, ...) @wpa_printf(i32 %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %122 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %123 = load i32, i32* @TLS_FAIL_REVOKED, align 4
  %124 = call i32 @gnutls_tls_fail_event(%struct.tls_connection* %122, %struct.TYPE_10__* null, i32 0, i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @GNUTLS_A_CERTIFICATE_REVOKED, align 4
  store i32 %125, i32* %11, align 4
  br label %379

126:                                              ; preds = %114
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32, i32* @MSG_INFO, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 (i32, i8*, ...) @wpa_printf(i32 %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @GNUTLS_A_INTERNAL_ERROR, align 4
  store i32 %133, i32* %11, align 4
  br label %379

134:                                              ; preds = %126
  %135 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %136 = load i32, i32* %3, align 4
  %137 = call i64 @check_ocsp(%struct.tls_connection* %135, i32 %136, i32* %11)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %379

140:                                              ; preds = %134
  %141 = call i32 @os_get_time(%struct.os_time* %8)
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %355, %140
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %358

146:                                              ; preds = %142
  %147 = call i64 @gnutls_x509_crt_init(i32* %10)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* @MSG_INFO, align 4
  %151 = call i32 (i32, i8*, ...) @wpa_printf(i32 %150, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %152 = load i32, i32* @GNUTLS_A_BAD_CERTIFICATE, align 4
  store i32 %152, i32* %11, align 4
  br label %379

153:                                              ; preds = %146
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %156 = load i32, i32* %7, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i64 %157
  %159 = load i32, i32* @GNUTLS_X509_FMT_DER, align 4
  %160 = call i64 @gnutls_x509_crt_import(i32 %154, %struct.TYPE_10__* %158, i32 %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %153
  %163 = load i32, i32* @MSG_INFO, align 4
  %164 = load i32, i32* %7, align 4
  %165 = add i32 %164, 1
  %166 = load i32, i32* %6, align 4
  %167 = call i32 (i32, i8*, ...) @wpa_printf(i32 %163, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 %165, i32 %166)
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @gnutls_x509_crt_deinit(i32 %168)
  %170 = load i32, i32* @GNUTLS_A_BAD_CERTIFICATE, align 4
  store i32 %170, i32* %11, align 4
  br label %379

171:                                              ; preds = %153
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @gnutls_x509_crt_get_dn(i32 %172, i8* null, i64* %14)
  %174 = load i64, i64* %14, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %14, align 8
  %176 = load i64, i64* %14, align 8
  %177 = add i64 %176, 1
  %178 = call i8* @os_malloc(i64 %177)
  store i8* %178, i8** %13, align 8
  %179 = load i8*, i8** %13, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %190

181:                                              ; preds = %171
  %182 = load i8*, i8** %13, align 8
  %183 = load i64, i64* %14, align 8
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8 0, i8* %184, align 1
  %185 = load i8*, i8** %13, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  store i8 0, i8* %186, align 1
  %187 = load i32, i32* %10, align 4
  %188 = load i8*, i8** %13, align 8
  %189 = call i32 @gnutls_x509_crt_get_dn(i32 %187, i8* %188, i64* %14)
  br label %190

190:                                              ; preds = %181, %171
  %191 = load i32, i32* @MSG_DEBUG, align 4
  %192 = load i32, i32* %7, align 4
  %193 = add i32 %192, 1
  %194 = load i32, i32* %6, align 4
  %195 = load i8*, i8** %13, align 8
  %196 = call i32 (i32, i8*, ...) @wpa_printf(i32 %191, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 %193, i32 %194, i8* %195)
  %197 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %198 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %197, i32 0, i32 1
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %200, align 8
  %202 = icmp ne i32 (i32, i32, %union.tls_event_data*)* %201, null
  br i1 %202, label %203, label %249

203:                                              ; preds = %190
  store %struct.wpabuf* null, %struct.wpabuf** %15, align 8
  %204 = call i32 @os_memset(%union.tls_event_data* %16, i32 0, i32 32)
  %205 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %206 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %205, i32 0, i32 1
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %228

211:                                              ; preds = %203
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %213 = load i32, i32* %7, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %219 = load i32, i32* %7, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call %struct.wpabuf* @wpabuf_alloc_copy(i32* %217, i64 %223)
  store %struct.wpabuf* %224, %struct.wpabuf** %15, align 8
  %225 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %226 = bitcast %union.tls_event_data* %16 to %struct.TYPE_8__*
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 4
  store %struct.wpabuf* %225, %struct.wpabuf** %227, align 8
  br label %228

228:                                              ; preds = %211, %203
  %229 = load i32, i32* %7, align 4
  %230 = bitcast %union.tls_event_data* %16 to %struct.TYPE_8__*
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load i8*, i8** %13, align 8
  %233 = bitcast %union.tls_event_data* %16 to %struct.TYPE_8__*
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 2
  store i8* %232, i8** %234, align 8
  %235 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %236 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %235, i32 0, i32 1
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  %239 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %238, align 8
  %240 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %241 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %240, i32 0, i32 1
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @TLS_PEER_CERTIFICATE, align 4
  %246 = call i32 %239(i32 %244, i32 %245, %union.tls_event_data* %16)
  %247 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %248 = call i32 @wpabuf_free(%struct.wpabuf* %247)
  br label %249

249:                                              ; preds = %228, %190
  %250 = load i32, i32* %7, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %313

252:                                              ; preds = %249
  %253 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %254 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %284

257:                                              ; preds = %252
  %258 = load i32, i32* %10, align 4
  %259 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %260 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @tls_match_suffix(i32 %258, i32 %261, i32 0)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %284, label %264

264:                                              ; preds = %257
  %265 = load i32, i32* @MSG_WARNING, align 4
  %266 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %267 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = call i32 (i32, i8*, ...) @wpa_printf(i32 %265, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), i32 %268)
  %270 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %272 = load i32, i32* %7, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i64 %273
  %275 = load i32, i32* %7, align 4
  %276 = load i8*, i8** %13, align 8
  %277 = load i32, i32* @TLS_FAIL_DOMAIN_SUFFIX_MISMATCH, align 4
  %278 = call i32 @gnutls_tls_fail_event(%struct.tls_connection* %270, %struct.TYPE_10__* %274, i32 %275, i8* %276, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 %277)
  %279 = load i32, i32* @GNUTLS_A_BAD_CERTIFICATE, align 4
  store i32 %279, i32* %11, align 4
  %280 = load i32, i32* %10, align 4
  %281 = call i32 @gnutls_x509_crt_deinit(i32 %280)
  %282 = load i8*, i8** %13, align 8
  %283 = call i32 @os_free(i8* %282)
  br label %379

284:                                              ; preds = %257, %252
  %285 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %286 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %285, i32 0, i32 1
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %312, label %291

291:                                              ; preds = %284
  %292 = load i32, i32* %10, align 4
  %293 = call i32 @server_eku_purpose(i32 %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %312, label %295

295:                                              ; preds = %291
  %296 = load i32, i32* @MSG_WARNING, align 4
  %297 = call i32 (i32, i8*, ...) @wpa_printf(i32 %296, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0))
  %298 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %300 = load i32, i32* %7, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i64 %301
  %303 = load i32, i32* %7, align 4
  %304 = load i8*, i8** %13, align 8
  %305 = load i32, i32* @TLS_FAIL_BAD_CERTIFICATE, align 4
  %306 = call i32 @gnutls_tls_fail_event(%struct.tls_connection* %298, %struct.TYPE_10__* %302, i32 %303, i8* %304, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i32 %305)
  %307 = load i32, i32* @GNUTLS_A_BAD_CERTIFICATE, align 4
  store i32 %307, i32* %11, align 4
  %308 = load i32, i32* %10, align 4
  %309 = call i32 @gnutls_x509_crt_deinit(i32 %308)
  %310 = load i8*, i8** %13, align 8
  %311 = call i32 @os_free(i8* %310)
  br label %379

312:                                              ; preds = %291, %284
  br label %313

313:                                              ; preds = %312, %249
  %314 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %315 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %350, label %318

318:                                              ; preds = %313
  %319 = load i32, i32* %10, align 4
  %320 = call i64 @gnutls_x509_crt_get_expiration_time(i32 %319)
  %321 = getelementptr inbounds %struct.os_time, %struct.os_time* %8, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = icmp slt i64 %320, %322
  br i1 %323, label %330, label %324

324:                                              ; preds = %318
  %325 = load i32, i32* %10, align 4
  %326 = call i64 @gnutls_x509_crt_get_activation_time(i32 %325)
  %327 = getelementptr inbounds %struct.os_time, %struct.os_time* %8, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = icmp sgt i64 %326, %328
  br i1 %329, label %330, label %350

330:                                              ; preds = %324, %318
  %331 = load i32, i32* @MSG_INFO, align 4
  %332 = load i32, i32* %7, align 4
  %333 = add i32 %332, 1
  %334 = load i32, i32* %6, align 4
  %335 = call i32 (i32, i8*, ...) @wpa_printf(i32 %331, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i64 0, i64 0), i32 %333, i32 %334)
  %336 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %338 = load i32, i32* %7, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i64 %339
  %341 = load i32, i32* %7, align 4
  %342 = load i8*, i8** %13, align 8
  %343 = load i32, i32* @TLS_FAIL_EXPIRED, align 4
  %344 = call i32 @gnutls_tls_fail_event(%struct.tls_connection* %336, %struct.TYPE_10__* %340, i32 %341, i8* %342, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0), i32 %343)
  %345 = load i32, i32* %10, align 4
  %346 = call i32 @gnutls_x509_crt_deinit(i32 %345)
  %347 = load i8*, i8** %13, align 8
  %348 = call i32 @os_free(i8* %347)
  %349 = load i32, i32* @GNUTLS_A_CERTIFICATE_EXPIRED, align 4
  store i32 %349, i32* %11, align 4
  br label %379

350:                                              ; preds = %324, %313
  %351 = load i8*, i8** %13, align 8
  %352 = call i32 @os_free(i8* %351)
  %353 = load i32, i32* %10, align 4
  %354 = call i32 @gnutls_x509_crt_deinit(i32 %353)
  br label %355

355:                                              ; preds = %350
  %356 = load i32, i32* %7, align 4
  %357 = add i32 %356, 1
  store i32 %357, i32* %7, align 4
  br label %142

358:                                              ; preds = %142
  %359 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %360 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %359, i32 0, i32 1
  %361 = load %struct.TYPE_9__*, %struct.TYPE_9__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 1
  %363 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %362, align 8
  %364 = icmp ne i32 (i32, i32, %union.tls_event_data*)* %363, null
  br i1 %364, label %365, label %378

365:                                              ; preds = %358
  %366 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %367 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %366, i32 0, i32 1
  %368 = load %struct.TYPE_9__*, %struct.TYPE_9__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 1
  %370 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %369, align 8
  %371 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %372 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %371, i32 0, i32 1
  %373 = load %struct.TYPE_9__*, %struct.TYPE_9__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @TLS_CERT_CHAIN_SUCCESS, align 4
  %377 = call i32 %370(i32 %375, i32 %376, %union.tls_event_data* null)
  br label %378

378:                                              ; preds = %365, %358
  store i32 0, i32* %2, align 4
  br label %389

379:                                              ; preds = %330, %295, %264, %162, %149, %139, %129, %119, %107, %97, %90, %78, %66, %45, %33
  %380 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %381 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %381, align 8
  %384 = load i32, i32* %3, align 4
  %385 = load i32, i32* @GNUTLS_AL_FATAL, align 4
  %386 = load i32, i32* %11, align 4
  %387 = call i32 @gnutls_alert_send(i32 %384, i32 %385, i32 %386)
  %388 = load i32, i32* @GNUTLS_E_CERTIFICATE_ERROR, align 4
  store i32 %388, i32* %2, align 4
  br label %389

389:                                              ; preds = %379, %378, %23
  %390 = load i32, i32* %2, align 4
  ret i32 %390
}

declare dso_local %struct.tls_connection* @gnutls_session_get_ptr(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @gnutls_certificate_verify_peers2(i32, i32*) #1

declare dso_local %struct.TYPE_10__* @gnutls_certificate_get_peers(i32, i32*) #1

declare dso_local i32 @gnutls_tls_fail_event(%struct.tls_connection*, %struct.TYPE_10__*, i32, i8*, i8*, i32) #1

declare dso_local i64 @check_ocsp(%struct.tls_connection*, i32, i32*) #1

declare dso_local i32 @os_get_time(%struct.os_time*) #1

declare dso_local i64 @gnutls_x509_crt_init(i32*) #1

declare dso_local i64 @gnutls_x509_crt_import(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @gnutls_x509_crt_deinit(i32) #1

declare dso_local i32 @gnutls_x509_crt_get_dn(i32, i8*, i64*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_memset(%union.tls_event_data*, i32, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i32*, i64) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @tls_match_suffix(i32, i32, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @server_eku_purpose(i32) #1

declare dso_local i64 @gnutls_x509_crt_get_expiration_time(i32) #1

declare dso_local i64 @gnutls_x509_crt_get_activation_time(i32) #1

declare dso_local i32 @gnutls_alert_send(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
