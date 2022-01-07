; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_read.c_tls_process_certificate_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_read.c_tls_process_certificate_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32*, i32*, i32* }

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Client did not include CertificateVerify\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i64 0, align 8
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Expected Handshake; received content type 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Too short CertificateVerify message (len=%lu)\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [66 x i8] c"Unexpected CertificateVerify message length (len=%lu != left=%lu)\00", align 1
@TLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [70 x i8] c"Received unexpected handshake message %d (expected CertificateVerify)\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Received CertificateVerify\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i64 0, align 8
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"TLSv1: CertificateVerify hash\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Invalid Signature in CertificateVerify\00", align 1
@CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@SHA256_MAC_LEN = common dso_local global i64 0, align 8
@TLS_HASH_ALG_SHA256 = common dso_local global i64 0, align 8
@TLS_SIGN_ALG_RSA = common dso_local global i64 0, align 8
@TLS_VERSION_1_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i64, i64*, i64*)* @tls_process_certificate_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_certificate_verify(%struct.tlsv1_server* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_server*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %21 = load i32, i32* @MD5_MAC_LEN, align 4
  %22 = load i32, i32* @SHA1_MAC_LEN, align 4
  %23 = add nsw i32 %21, %22
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %4
  %31 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %32 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %37 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %39 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %40 = load i64, i64* @TLS_ALERT_UNEXPECTED_MESSAGE, align 8
  %41 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %38, i32 %39, i64 %40)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

42:                                               ; preds = %30
  %43 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64*, i64** %8, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = call i32 @tls_process_change_cipher_spec(%struct.tlsv1_server* %43, i64 %44, i64* %45, i64* %46)
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

48:                                               ; preds = %4
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %57 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %58 = load i64, i64* @TLS_ALERT_UNEXPECTED_MESSAGE, align 8
  %59 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %56, i32 %57, i64 %58)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

60:                                               ; preds = %48
  %61 = load i64*, i64** %8, align 8
  store i64* %61, i64** %10, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp ult i64 %64, 4
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %68)
  %70 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %71 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %72 = load i64, i64* @TLS_ALERT_DECODE_ERROR, align 8
  %73 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %70, i32 %71, i64 %72)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

74:                                               ; preds = %60
  %75 = load i64*, i64** %10, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %10, align 8
  %77 = load i64, i64* %75, align 8
  store i64 %77, i64* %14, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = call i64 @WPA_GET_BE24(i64* %78)
  store i64 %79, i64* %13, align 8
  %80 = load i64*, i64** %10, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 3
  store i64* %81, i64** %10, align 8
  %82 = load i64, i64* %12, align 8
  %83 = sub i64 %82, 4
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %12, align 8
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %74
  %88 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %12, align 8
  %91 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %88, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i64 %89, i64 %90)
  %92 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %93 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %94 = load i64, i64* @TLS_ALERT_DECODE_ERROR, align 8
  %95 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %92, i32 %93, i64 %94)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

96:                                               ; preds = %74
  %97 = load i64*, i64** %10, align 8
  %98 = load i64, i64* %13, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64* %99, i64** %11, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* @TLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %105 = load i64, i64* %14, align 8
  %106 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %104, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i64 %105)
  %107 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %108 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %109 = load i64, i64* @TLS_ALERT_UNEXPECTED_MESSAGE, align 8
  %110 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %107, i32 %108, i64 %109)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

111:                                              ; preds = %96
  %112 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %113 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i64* %26, i64** %18, align 8
  %114 = load i32, i32* @MD5_MAC_LEN, align 4
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %15, align 8
  %116 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %117 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %129, label %121

121:                                              ; preds = %111
  %122 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %123 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i64*, i64** %18, align 8
  %127 = call i64 @crypto_hash_finish(i32* %125, i64* %126, i64* %15)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %121, %111
  %130 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %131 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %132 = load i64, i64* @TLS_ALERT_INTERNAL_ERROR, align 8
  %133 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %130, i32 %131, i64 %132)
  %134 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %135 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  store i32* null, i32** %136, align 8
  %137 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %138 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = call i64 @crypto_hash_finish(i32* %140, i64* null, i64* null)
  %142 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %143 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store i32* null, i32** %144, align 8
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

145:                                              ; preds = %121
  %146 = load i32, i32* @MD5_MAC_LEN, align 4
  %147 = load i64*, i64** %18, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  store i64* %149, i64** %18, align 8
  %150 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %151 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  store i32* null, i32** %152, align 8
  %153 = load i32, i32* @SHA1_MAC_LEN, align 4
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %15, align 8
  %155 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %156 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %168, label %160

160:                                              ; preds = %145
  %161 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %162 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i64*, i64** %18, align 8
  %166 = call i64 @crypto_hash_finish(i32* %164, i64* %165, i64* %15)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %160, %145
  %169 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %170 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  store i32* null, i32** %171, align 8
  %172 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %173 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %174 = load i64, i64* @TLS_ALERT_INTERNAL_ERROR, align 8
  %175 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %172, i32 %173, i64 %174)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

176:                                              ; preds = %160
  %177 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %178 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  store i32* null, i32** %179, align 8
  %180 = load i32, i32* @MD5_MAC_LEN, align 4
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %15, align 8
  %183 = add i64 %182, %181
  store i64 %183, i64* %15, align 8
  %184 = load i32, i32* @MSG_MSGDUMP, align 4
  %185 = load i64, i64* %15, align 8
  %186 = call i32 @wpa_hexdump(i32 %184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64* %26, i64 %185)
  %187 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %188 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %192 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i64, i64* %15, align 8
  %195 = load i64*, i64** %10, align 8
  %196 = load i64*, i64** %11, align 8
  %197 = load i64*, i64** %10, align 8
  %198 = ptrtoint i64* %196 to i64
  %199 = ptrtoint i64* %197 to i64
  %200 = sub i64 %198, %199
  %201 = sdiv exact i64 %200, 8
  %202 = trunc i64 %201 to i32
  %203 = call i64 @tls_verify_signature(i64 %190, i32 %193, i64* %26, i64 %194, i64* %195, i32 %202, i64* %19)
  %204 = icmp slt i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %176
  %206 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %207 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %206, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %208 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %209 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %210 = load i64, i64* %19, align 8
  %211 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %208, i32 %209, i64 %210)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

212:                                              ; preds = %176
  %213 = load i64*, i64** %11, align 8
  %214 = load i64*, i64** %8, align 8
  %215 = ptrtoint i64* %213 to i64
  %216 = ptrtoint i64* %214 to i64
  %217 = sub i64 %215, %216
  %218 = sdiv exact i64 %217, 8
  %219 = load i64*, i64** %9, align 8
  store i64 %218, i64* %219, align 8
  %220 = load i32, i32* @CHANGE_CIPHER_SPEC, align 4
  %221 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %222 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

223:                                              ; preds = %212, %205, %168, %129, %103, %87, %66, %52, %42, %35
  %224 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*, ...) #2

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i64) #2

declare dso_local i32 @tls_process_change_cipher_spec(%struct.tlsv1_server*, i64, i64*, i64*) #2

declare dso_local i64 @WPA_GET_BE24(i64*) #2

declare dso_local i64 @crypto_hash_finish(i32*, i64*, i64*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #2

declare dso_local i64 @tls_verify_signature(i64, i32, i64*, i64, i64*, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
