; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tls_write_client_certificate_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tls_write_client_certificate_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32*, i32*, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"TLSv1: Send CertificateVerify\00", align 1
@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY = common dso_local global i32 0, align 4
@MD5_MAC_LEN = common dso_local global i64 0, align 8
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SHA1_MAC_LEN = common dso_local global i64 0, align 8
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"TLSv1: CertificateVerify hash\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"TLSv1: Failed to sign hash (PKCS #1)\00", align 1
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to generate a record\00", align 1
@SHA256_MAC_LEN = common dso_local global i64 0, align 8
@TLS_HASH_ALG_SHA256 = common dso_local global i32 0, align 4
@TLS_SIGN_ALG_RSA = common dso_local global i32 0, align 4
@TLS_VERSION_1_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i32**, i32*)* @tls_write_client_certificate_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_client_certificate_verify(%struct.tlsv1_client* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [100 x i32], align 16
  %17 = alloca i32*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32**, i32*** %6, align 8
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %8, align 8
  store i32* %22, i32** %9, align 8
  %23 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  store i32* %27, i32** %10, align 8
  %28 = load i32, i32* @TLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  store i32* %33, i32** %8, align 8
  %34 = getelementptr inbounds [100 x i32], [100 x i32]* %16, i64 0, i64 0
  store i32* %34, i32** %17, align 8
  %35 = load i64, i64* @MD5_MAC_LEN, align 8
  store i64 %35, i64* %14, align 8
  %36 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %37 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %3
  %42 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %43 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = call i64 @crypto_hash_finish(i32* %45, i32* %46, i64* %14)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %41, %3
  %50 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %51 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %52 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %53 = call i32 @tls_alert(%struct.tlsv1_client* %50, i32 %51, i32 %52)
  %54 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %55 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %58 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @crypto_hash_finish(i32* %60, i32* null, i64* null)
  %62 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %63 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  store i32 -1, i32* %4, align 4
  br label %198

65:                                               ; preds = %41
  %66 = load i64, i64* @MD5_MAC_LEN, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 %66
  store i32* %68, i32** %17, align 8
  %69 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %70 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load i64, i64* @SHA1_MAC_LEN, align 8
  store i64 %72, i64* %14, align 8
  %73 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %74 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %65
  %79 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %80 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32*, i32** %17, align 8
  %84 = call i64 @crypto_hash_finish(i32* %82, i32* %83, i64* %14)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %78, %65
  %87 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %88 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  %90 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %91 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %92 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %93 = call i32 @tls_alert(%struct.tlsv1_client* %90, i32 %91, i32 %92)
  store i32 -1, i32* %4, align 4
  br label %198

94:                                               ; preds = %78
  %95 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %96 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  %98 = load i64, i64* @MD5_MAC_LEN, align 8
  %99 = load i64, i64* %14, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %14, align 8
  %101 = load i32, i32* @MSG_MSGDUMP, align 4
  %102 = getelementptr inbounds [100 x i32], [100 x i32]* %16, i64 0, i64 0
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @wpa_hexdump(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %102, i64 %103)
  %105 = load i32*, i32** %8, align 8
  store i32* %105, i32** %12, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  store i32* %107, i32** %8, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = ptrtoint i32* %108 to i64
  %111 = ptrtoint i32* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  store i64 %113, i64* %15, align 8
  %114 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %115 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %114, i32 0, i32 2
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = icmp eq %struct.TYPE_4__* %116, null
  br i1 %117, label %129, label %118

118:                                              ; preds = %94
  %119 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %120 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds [100 x i32], [100 x i32]* %16, i64 0, i64 0
  %125 = load i64, i64* %14, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = call i64 @crypto_private_key_sign_pkcs1(i32 %123, i32* %124, i64 %125, i32* %126, i64* %15)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %118, %94
  %130 = load i32, i32* @MSG_DEBUG, align 4
  %131 = call i32 @wpa_printf(i32 %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %132 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %133 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %134 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %135 = call i32 @tls_alert(%struct.tlsv1_client* %132, i32 %133, i32 %134)
  store i32 -1, i32* %4, align 4
  br label %198

136:                                              ; preds = %118
  %137 = load i32*, i32** %12, align 8
  %138 = load i64, i64* %15, align 8
  %139 = call i32 @WPA_PUT_BE16(i32* %137, i64 %138)
  %140 = load i64, i64* %15, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 %140
  store i32* %142, i32** %8, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = load i32*, i32** %11, align 8
  %146 = ptrtoint i32* %144 to i64
  %147 = ptrtoint i32* %145 to i64
  %148 = sub i64 %146, %147
  %149 = sdiv exact i64 %148, 4
  %150 = sub nsw i64 %149, 3
  %151 = trunc i64 %150 to i32
  %152 = call i32 @WPA_PUT_BE24(i32* %143, i32 %151)
  %153 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %154 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %153, i32 0, i32 1
  %155 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = load i32*, i32** %7, align 8
  %158 = load i32*, i32** %9, align 8
  %159 = ptrtoint i32* %157 to i64
  %160 = ptrtoint i32* %158 to i64
  %161 = sub i64 %159, %160
  %162 = sdiv exact i64 %161, 4
  %163 = trunc i64 %162 to i32
  %164 = load i32*, i32** %10, align 8
  %165 = load i32*, i32** %8, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = ptrtoint i32* %165 to i64
  %168 = ptrtoint i32* %166 to i64
  %169 = sub i64 %167, %168
  %170 = sdiv exact i64 %169, 4
  %171 = trunc i64 %170 to i32
  %172 = call i64 @tlsv1_record_send(%struct.TYPE_5__* %154, i32 %155, i32* %156, i32 %163, i32* %164, i32 %171, i64* %13)
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %136
  %175 = load i32, i32* @MSG_DEBUG, align 4
  %176 = call i32 @wpa_printf(i32 %175, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %177 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %178 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %179 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %180 = call i32 @tls_alert(%struct.tlsv1_client* %177, i32 %178, i32 %179)
  store i32 -1, i32* %4, align 4
  br label %198

181:                                              ; preds = %136
  %182 = load i32*, i32** %9, align 8
  %183 = load i64, i64* %13, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %8, align 8
  %185 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %186 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %185, i32 0, i32 0
  %187 = load i32*, i32** %10, align 8
  %188 = load i32*, i32** %8, align 8
  %189 = load i32*, i32** %10, align 8
  %190 = ptrtoint i32* %188 to i64
  %191 = ptrtoint i32* %189 to i64
  %192 = sub i64 %190, %191
  %193 = sdiv exact i64 %192, 4
  %194 = trunc i64 %193 to i32
  %195 = call i32 @tls_verify_hash_add(%struct.TYPE_6__* %186, i32* %187, i32 %194)
  %196 = load i32*, i32** %8, align 8
  %197 = load i32**, i32*** %6, align 8
  store i32* %196, i32** %197, align 8
  store i32 0, i32* %4, align 4
  br label %198

198:                                              ; preds = %181, %174, %129, %86, %49
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @crypto_hash_finish(i32*, i32*, i64*) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i64 @crypto_private_key_sign_pkcs1(i32, i32*, i64, i32*, i64*) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i64) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i64 @tlsv1_record_send(%struct.TYPE_5__*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @tls_verify_hash_add(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
