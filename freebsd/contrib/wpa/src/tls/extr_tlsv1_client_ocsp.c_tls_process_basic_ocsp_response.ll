; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_ocsp.c_tls_process_basic_ocsp_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_ocsp.c_tls_process_basic_ocsp_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.x509_certificate* }
%struct.x509_certificate = type { i32, i32, i32, i32, i32, %struct.x509_certificate* }
%struct.asn1_hdr = type { i32, i64*, i64, i32 }
%struct.x509_algorithm_identifier = type { i32 }
%struct.x509_name = type { i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"OCSP: BasicOCSPResponse\00", align 1
@ASN1_CLASS_UNIVERSAL = common dso_local global i32 0, align 4
@ASN1_TAG_SEQUENCE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"OCSP: Expected SEQUENCE (BasicOCSPResponse) - found class %d tag 0x%x\00", align 1
@TLS_OCSP_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"OCSP: Expected SEQUENCE (ResponseData) - found class %d tag 0x%x\00", align 1
@ASN1_TAG_BITSTRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"OCSP: Expected BITSTRING (signature) - found class %d tag 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"OCSP: BITSTRING - %d unused bits\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"OCSP: signature\00", align 1
@ASN1_CLASS_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [62 x i8] c"OCSP: Expected [0] EXPLICIT (certs) - found class %d tag 0x%x\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"OCSP: certs\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"OCSP: Expected SEQUENCE (Certificate) - found class %d tag 0x%x\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"OCSP: ResponseData\00", align 1
@ASN1_TAG_INTEGER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [89 x i8] c"OCSP: No INTEGER (len=1) tag found for version field - found class %d tag 0x%x length %d\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"OCSP: ResponseData version %u\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"OCSP: Unsupported ResponseData version %u\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"OCSP: Default ResponseData version (v1)\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"OCSP: Expected CHOICE (ResponderID) - found class %d tag 0x%x\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"OCSP: ResponderID byName Name: %s\00", align 1
@ASN1_TAG_OCTETSTRING = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [64 x i8] c"OCSP: Expected OCTET STRING (KeyHash) - found class %d tag 0x%x\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"OCSP: ResponderID byKey KeyHash\00", align 1
@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [65 x i8] c"OCSP: Unexpected byKey KeyHash length %u - expected %u for SHA-1\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"OCSP: Unexpected ResponderID CHOICE %u\00", align 1
@ASN1_TAG_GENERALIZEDTIME = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [33 x i8] c"OCSP: Failed to parse producedAt\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"OCSP: producedAt %lu\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"OCSP: Expected SEQUENCE (responses) - found class %d tag 0x%x\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"OCSP: responses\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"OCSP: responseExtensions\00", align 1
@.str.25 = private unnamed_addr constant [64 x i8] c"OCSP: Server certificate not known - cannot check OCSP response\00", align 1
@.str.26 = private unnamed_addr constant [71 x i8] c"OCSP: Server certificate issuer not known - cannot check OCSP response\00", align 1
@.str.27 = private unnamed_addr constant [64 x i8] c"OCSP: Server certificate issuer certificate matches ResponderID\00", align 1
@X509_EXT_KEY_USAGE_OCSP = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [98 x i8] c"OCSP: An extra certificate from the response matches ResponderID and is trusted as an OCSP signer\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"OCSP: Could not find OCSP signer certificate\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"OCSP: Invalid signature\00", align 1
@TLS_OCSP_REVOKED = common dso_local global i32 0, align 4
@TLS_OCSP_GOOD = common dso_local global i32 0, align 4
@TLS_OCSP_NO_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, %struct.x509_certificate*, i64*, i64)* @tls_process_basic_ocsp_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_basic_ocsp_response(%struct.tlsv1_client* %0, %struct.x509_certificate* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_client*, align 8
  %7 = alloca %struct.x509_certificate*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.asn1_hdr, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.x509_algorithm_identifier, align 4
  %23 = alloca %struct.x509_certificate*, align 8
  %24 = alloca %struct.x509_certificate*, align 8
  %25 = alloca %struct.x509_certificate*, align 8
  %26 = alloca %struct.x509_certificate*, align 8
  %27 = alloca %struct.x509_name, align 4
  %28 = alloca [100 x i8], align 16
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.x509_certificate*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %6, align 8
  store %struct.x509_certificate* %1, %struct.x509_certificate** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* null, i64** %15, align 8
  store %struct.x509_certificate* null, %struct.x509_certificate** %23, align 8
  store %struct.x509_certificate* null, %struct.x509_certificate** %24, align 8
  %32 = load i32, i32* @MSG_MSGDUMP, align 4
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @wpa_hexdump(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64* %33, i32 %35)
  %37 = call i32 @os_memset(%struct.x509_name* %27, i32 0, i32 4)
  %38 = load i64*, i64** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i64 @asn1_get_next(i64* %38, i32 %40, %struct.asn1_hdr* %10)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ASN1_TAG_SEQUENCE, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %48, %43, %4
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %54, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %58)
  %60 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %60, i32* %5, align 4
  br label %742

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  store i64* %63, i64** %11, align 8
  %64 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64* %68, i64** %12, align 8
  %69 = load i64*, i64** %11, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = load i64*, i64** %11, align 8
  %72 = ptrtoint i64* %70 to i64
  %73 = ptrtoint i64* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 8
  %76 = trunc i64 %75 to i32
  %77 = call i64 @asn1_get_next(i64* %69, i32 %76, %struct.asn1_hdr* %10)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %61
  %80 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ASN1_TAG_SEQUENCE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %84, %79, %61
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %94)
  %96 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %96, i32* %5, align 4
  br label %742

97:                                               ; preds = %84
  %98 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  store i64* %99, i64** %13, align 8
  %100 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %18, align 8
  %102 = load i64*, i64** %11, align 8
  store i64* %102, i64** %17, align 8
  %103 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64* %107, i64** %11, align 8
  %108 = load i64*, i64** %11, align 8
  %109 = load i64*, i64** %17, align 8
  %110 = ptrtoint i64* %108 to i64
  %111 = ptrtoint i64* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 8
  store i64 %113, i64* %21, align 8
  %114 = load i64*, i64** %11, align 8
  %115 = load i64*, i64** %12, align 8
  %116 = load i64*, i64** %11, align 8
  %117 = ptrtoint i64* %115 to i64
  %118 = ptrtoint i64* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 8
  %121 = trunc i64 %120 to i32
  %122 = call i64 @x509_parse_algorithm_identifier(i64* %114, i32 %121, %struct.x509_algorithm_identifier* %22, i64** %11)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %97
  %125 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %125, i32* %5, align 4
  br label %742

126:                                              ; preds = %97
  %127 = load i64*, i64** %11, align 8
  %128 = load i64*, i64** %12, align 8
  %129 = load i64*, i64** %11, align 8
  %130 = ptrtoint i64* %128 to i64
  %131 = ptrtoint i64* %129 to i64
  %132 = sub i64 %130, %131
  %133 = sdiv exact i64 %132, 8
  %134 = trunc i64 %133 to i32
  %135 = call i64 @asn1_get_next(i64* %127, i32 %134, %struct.asn1_hdr* %10)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %126
  %138 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @ASN1_TAG_BITSTRING, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %142, %137, %126
  %148 = load i32, i32* @MSG_DEBUG, align 4
  %149 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i32, i8*, ...) @wpa_printf(i32 %148, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %150, i32 %152)
  %154 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %154, i32* %5, align 4
  br label %742

155:                                              ; preds = %142
  %156 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ult i64 %157, 1
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %160, i32* %5, align 4
  br label %742

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %163 = load i64*, i64** %162, align 8
  store i64* %163, i64** %11, align 8
  %164 = load i64*, i64** %11, align 8
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = load i32, i32* @MSG_DEBUG, align 4
  %169 = load i64*, i64** %11, align 8
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i32, i8*, ...) @wpa_printf(i32 %168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %170)
  %172 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %172, i32* %5, align 4
  br label %742

173:                                              ; preds = %161
  %174 = load i64*, i64** %11, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 1
  store i64* %175, i64** %14, align 8
  %176 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = sub i64 %177, 1
  store i64 %178, i64* %19, align 8
  %179 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64*, i64** %11, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 %180
  store i64* %182, i64** %11, align 8
  %183 = load i32, i32* @MSG_MSGDUMP, align 4
  %184 = load i64*, i64** %14, align 8
  %185 = load i64, i64* %19, align 8
  %186 = trunc i64 %185 to i32
  %187 = call i32 @wpa_hexdump(i32 %183, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64* %184, i32 %186)
  %188 = load i64*, i64** %11, align 8
  %189 = load i64*, i64** %12, align 8
  %190 = icmp ult i64* %188, %189
  br i1 %190, label %191, label %292

191:                                              ; preds = %173
  %192 = load i64*, i64** %11, align 8
  %193 = load i64*, i64** %12, align 8
  %194 = load i64*, i64** %11, align 8
  %195 = ptrtoint i64* %193 to i64
  %196 = ptrtoint i64* %194 to i64
  %197 = sub i64 %195, %196
  %198 = sdiv exact i64 %197, 8
  %199 = trunc i64 %198 to i32
  %200 = call i64 @asn1_get_next(i64* %192, i32 %199, %struct.asn1_hdr* %10)
  %201 = icmp slt i64 %200, 0
  br i1 %201, label %211, label %202

202:                                              ; preds = %191
  %203 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @ASN1_CLASS_CONTEXT_SPECIFIC, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %211, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %207, %202, %191
  %212 = load i32, i32* @MSG_DEBUG, align 4
  %213 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 (i32, i8*, ...) @wpa_printf(i32 %212, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32 %214, i32 %216)
  %218 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %218, i32* %5, align 4
  br label %742

219:                                              ; preds = %207
  %220 = load i32, i32* @MSG_MSGDUMP, align 4
  %221 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = call i32 @wpa_hexdump(i32 %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64* %222, i32 %225)
  %227 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %228 = load i64*, i64** %227, align 8
  store i64* %228, i64** %11, align 8
  %229 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %230 = load i64*, i64** %229, align 8
  %231 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  store i64* %233, i64** %12, align 8
  br label %234

234:                                              ; preds = %285, %219
  %235 = load i64*, i64** %11, align 8
  %236 = load i64*, i64** %12, align 8
  %237 = icmp ult i64* %235, %236
  br i1 %237, label %238, label %291

238:                                              ; preds = %234
  %239 = load i64*, i64** %11, align 8
  %240 = load i64*, i64** %12, align 8
  %241 = load i64*, i64** %11, align 8
  %242 = ptrtoint i64* %240 to i64
  %243 = ptrtoint i64* %241 to i64
  %244 = sub i64 %242, %243
  %245 = sdiv exact i64 %244, 8
  %246 = trunc i64 %245 to i32
  %247 = call i64 @asn1_get_next(i64* %239, i32 %246, %struct.asn1_hdr* %10)
  %248 = icmp slt i64 %247, 0
  br i1 %248, label %259, label %249

249:                                              ; preds = %238
  %250 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %259, label %254

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @ASN1_TAG_SEQUENCE, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %266

259:                                              ; preds = %254, %249, %238
  %260 = load i32, i32* @MSG_DEBUG, align 4
  %261 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 (i32, i8*, ...) @wpa_printf(i32 %260, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 %262, i32 %264)
  br label %737

266:                                              ; preds = %254
  %267 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %268 = load i64*, i64** %267, align 8
  %269 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = call %struct.x509_certificate* @x509_certificate_parse(i64* %268, i64 %270)
  store %struct.x509_certificate* %271, %struct.x509_certificate** %31, align 8
  %272 = load %struct.x509_certificate*, %struct.x509_certificate** %31, align 8
  %273 = icmp ne %struct.x509_certificate* %272, null
  br i1 %273, label %275, label %274

274:                                              ; preds = %266
  br label %737

275:                                              ; preds = %266
  %276 = load %struct.x509_certificate*, %struct.x509_certificate** %24, align 8
  %277 = icmp ne %struct.x509_certificate* %276, null
  br i1 %277, label %278, label %283

278:                                              ; preds = %275
  %279 = load %struct.x509_certificate*, %struct.x509_certificate** %31, align 8
  %280 = load %struct.x509_certificate*, %struct.x509_certificate** %24, align 8
  %281 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %280, i32 0, i32 5
  store %struct.x509_certificate* %279, %struct.x509_certificate** %281, align 8
  %282 = load %struct.x509_certificate*, %struct.x509_certificate** %31, align 8
  store %struct.x509_certificate* %282, %struct.x509_certificate** %24, align 8
  br label %285

283:                                              ; preds = %275
  %284 = load %struct.x509_certificate*, %struct.x509_certificate** %31, align 8
  store %struct.x509_certificate* %284, %struct.x509_certificate** %23, align 8
  store %struct.x509_certificate* %284, %struct.x509_certificate** %24, align 8
  br label %285

285:                                              ; preds = %283, %278
  %286 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %287 = load i64*, i64** %286, align 8
  %288 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds i64, i64* %287, i64 %289
  store i64* %290, i64** %11, align 8
  br label %234

291:                                              ; preds = %234
  br label %292

292:                                              ; preds = %291, %173
  %293 = load i64*, i64** %13, align 8
  store i64* %293, i64** %11, align 8
  %294 = load i64*, i64** %13, align 8
  %295 = load i64, i64* %18, align 8
  %296 = getelementptr inbounds i64, i64* %294, i64 %295
  store i64* %296, i64** %12, align 8
  %297 = load i32, i32* @MSG_MSGDUMP, align 4
  %298 = load i64*, i64** %11, align 8
  %299 = load i64*, i64** %12, align 8
  %300 = load i64*, i64** %11, align 8
  %301 = ptrtoint i64* %299 to i64
  %302 = ptrtoint i64* %300 to i64
  %303 = sub i64 %301, %302
  %304 = sdiv exact i64 %303, 8
  %305 = trunc i64 %304 to i32
  %306 = call i32 @wpa_hexdump(i32 %297, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64* %298, i32 %305)
  %307 = load i64*, i64** %11, align 8
  %308 = load i64*, i64** %12, align 8
  %309 = load i64*, i64** %11, align 8
  %310 = ptrtoint i64* %308 to i64
  %311 = ptrtoint i64* %309 to i64
  %312 = sub i64 %310, %311
  %313 = sdiv exact i64 %312, 8
  %314 = trunc i64 %313 to i32
  %315 = call i64 @asn1_get_next(i64* %307, i32 %314, %struct.asn1_hdr* %10)
  %316 = icmp slt i64 %315, 0
  br i1 %316, label %317, label %385

317:                                              ; preds = %292
  %318 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @ASN1_CLASS_CONTEXT_SPECIFIC, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %385

322:                                              ; preds = %317
  %323 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %385

326:                                              ; preds = %322
  %327 = load i64*, i64** %11, align 8
  %328 = load i64*, i64** %12, align 8
  %329 = load i64*, i64** %11, align 8
  %330 = ptrtoint i64* %328 to i64
  %331 = ptrtoint i64* %329 to i64
  %332 = sub i64 %330, %331
  %333 = sdiv exact i64 %332, 8
  %334 = trunc i64 %333 to i32
  %335 = call i64 @asn1_get_next(i64* %327, i32 %334, %struct.asn1_hdr* %10)
  %336 = icmp slt i64 %335, 0
  br i1 %336, label %351, label %337

337:                                              ; preds = %326
  %338 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %351, label %342

342:                                              ; preds = %337
  %343 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @ASN1_TAG_INTEGER, align 4
  %346 = icmp ne i32 %344, %345
  br i1 %346, label %351, label %347

347:                                              ; preds = %342
  %348 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 1
  br i1 %350, label %351, label %360

351:                                              ; preds = %347, %342, %337, %326
  %352 = load i32, i32* @MSG_DEBUG, align 4
  %353 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = call i32 (i32, i8*, ...) @wpa_printf(i32 %352, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.10, i64 0, i64 0), i32 %354, i32 %356, i64 %358)
  br label %737

360:                                              ; preds = %347
  %361 = load i32, i32* @MSG_DEBUG, align 4
  %362 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %363 = load i64*, i64** %362, align 8
  %364 = getelementptr inbounds i64, i64* %363, i64 0
  %365 = load i64, i64* %364, align 8
  %366 = call i32 (i32, i8*, ...) @wpa_printf(i32 %361, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i64 %365)
  %367 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %368 = load i64*, i64** %367, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 0
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %379

372:                                              ; preds = %360
  %373 = load i32, i32* @MSG_DEBUG, align 4
  %374 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %375 = load i64*, i64** %374, align 8
  %376 = getelementptr inbounds i64, i64* %375, i64 0
  %377 = load i64, i64* %376, align 8
  %378 = call i32 (i32, i8*, ...) @wpa_printf(i32 %373, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i64 %377)
  br label %732

379:                                              ; preds = %360
  %380 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %381 = load i64*, i64** %380, align 8
  %382 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %383 = load i64, i64* %382, align 8
  %384 = getelementptr inbounds i64, i64* %381, i64 %383
  store i64* %384, i64** %11, align 8
  br label %388

385:                                              ; preds = %322, %317, %292
  %386 = load i32, i32* @MSG_DEBUG, align 4
  %387 = call i32 (i32, i8*, ...) @wpa_printf(i32 %386, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %388

388:                                              ; preds = %385, %379
  %389 = load i64*, i64** %11, align 8
  %390 = load i64*, i64** %12, align 8
  %391 = load i64*, i64** %11, align 8
  %392 = ptrtoint i64* %390 to i64
  %393 = ptrtoint i64* %391 to i64
  %394 = sub i64 %392, %393
  %395 = sdiv exact i64 %394, 8
  %396 = trunc i64 %395 to i32
  %397 = call i64 @asn1_get_next(i64* %389, i32 %396, %struct.asn1_hdr* %10)
  %398 = icmp slt i64 %397, 0
  br i1 %398, label %404, label %399

399:                                              ; preds = %388
  %400 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* @ASN1_CLASS_CONTEXT_SPECIFIC, align 4
  %403 = icmp ne i32 %401, %402
  br i1 %403, label %404, label %411

404:                                              ; preds = %399, %388
  %405 = load i32, i32* @MSG_DEBUG, align 4
  %406 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %407 = load i32, i32* %406, align 8
  %408 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = call i32 (i32, i8*, ...) @wpa_printf(i32 %405, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0), i32 %407, i32 %409)
  br label %737

411:                                              ; preds = %399
  %412 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = icmp eq i32 %413, 1
  br i1 %414, label %415, label %429

415:                                              ; preds = %411
  %416 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %417 = load i64*, i64** %416, align 8
  %418 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = call i64 @x509_parse_name(i64* %417, i64 %419, %struct.x509_name* %27, i64** %11)
  %421 = icmp slt i64 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %415
  br label %737

423:                                              ; preds = %415
  %424 = getelementptr inbounds [100 x i8], [100 x i8]* %28, i64 0, i64 0
  %425 = call i32 @x509_name_string(%struct.x509_name* %27, i8* %424, i32 100)
  %426 = load i32, i32* @MSG_DEBUG, align 4
  %427 = getelementptr inbounds [100 x i8], [100 x i8]* %28, i64 0, i64 0
  %428 = call i32 (i32, i8*, ...) @wpa_printf(i32 %426, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8* %427)
  br label %490

429:                                              ; preds = %411
  %430 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = icmp eq i32 %431, 2
  br i1 %432, label %433, label %484

433:                                              ; preds = %429
  %434 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %435 = load i64*, i64** %434, align 8
  %436 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %437 = load i64, i64* %436, align 8
  %438 = trunc i64 %437 to i32
  %439 = call i64 @asn1_get_next(i64* %435, i32 %438, %struct.asn1_hdr* %10)
  %440 = icmp slt i64 %439, 0
  br i1 %440, label %451, label %441

441:                                              ; preds = %433
  %442 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %445 = icmp ne i32 %443, %444
  br i1 %445, label %451, label %446

446:                                              ; preds = %441
  %447 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @ASN1_TAG_OCTETSTRING, align 4
  %450 = icmp ne i32 %448, %449
  br i1 %450, label %451, label %458

451:                                              ; preds = %446, %441, %433
  %452 = load i32, i32* @MSG_DEBUG, align 4
  %453 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %454 = load i32, i32* %453, align 8
  %455 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = call i32 (i32, i8*, ...) @wpa_printf(i32 %452, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i64 0, i64 0), i32 %454, i32 %456)
  br label %737

458:                                              ; preds = %446
  %459 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %460 = load i64*, i64** %459, align 8
  store i64* %460, i64** %15, align 8
  %461 = load i32, i32* @MSG_DEBUG, align 4
  %462 = load i64*, i64** %15, align 8
  %463 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %464 = load i64, i64* %463, align 8
  %465 = trunc i64 %464 to i32
  %466 = call i32 @wpa_hexdump(i32 %461, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i64* %462, i32 %465)
  %467 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %468 = load i64, i64* %467, align 8
  %469 = load i32, i32* @SHA1_MAC_LEN, align 4
  %470 = sext i32 %469 to i64
  %471 = icmp ne i64 %468, %470
  br i1 %471, label %472, label %478

472:                                              ; preds = %458
  %473 = load i32, i32* @MSG_DEBUG, align 4
  %474 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %475 = load i64, i64* %474, align 8
  %476 = load i32, i32* @SHA1_MAC_LEN, align 4
  %477 = call i32 (i32, i8*, ...) @wpa_printf(i32 %473, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i64 0, i64 0), i64 %475, i32 %476)
  br label %737

478:                                              ; preds = %458
  %479 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %480 = load i64*, i64** %479, align 8
  %481 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %482 = load i64, i64* %481, align 8
  %483 = getelementptr inbounds i64, i64* %480, i64 %482
  store i64* %483, i64** %11, align 8
  br label %489

484:                                              ; preds = %429
  %485 = load i32, i32* @MSG_DEBUG, align 4
  %486 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = call i32 (i32, i8*, ...) @wpa_printf(i32 %485, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0), i32 %487)
  br label %737

489:                                              ; preds = %478
  br label %490

490:                                              ; preds = %489, %423
  %491 = load i64*, i64** %11, align 8
  %492 = load i64*, i64** %12, align 8
  %493 = load i64*, i64** %11, align 8
  %494 = ptrtoint i64* %492 to i64
  %495 = ptrtoint i64* %493 to i64
  %496 = sub i64 %494, %495
  %497 = sdiv exact i64 %496, 8
  %498 = trunc i64 %497 to i32
  %499 = call i64 @asn1_get_next(i64* %491, i32 %498, %struct.asn1_hdr* %10)
  %500 = icmp slt i64 %499, 0
  br i1 %500, label %520, label %501

501:                                              ; preds = %490
  %502 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %503 = load i32, i32* %502, align 8
  %504 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %505 = icmp ne i32 %503, %504
  br i1 %505, label %520, label %506

506:                                              ; preds = %501
  %507 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = load i32, i32* @ASN1_TAG_GENERALIZEDTIME, align 4
  %510 = icmp ne i32 %508, %509
  br i1 %510, label %520, label %511

511:                                              ; preds = %506
  %512 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %513 = load i64*, i64** %512, align 8
  %514 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %515 = load i64, i64* %514, align 8
  %516 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = call i64 @x509_parse_time(i64* %513, i64 %515, i32 %517, i64* %29)
  %519 = icmp slt i64 %518, 0
  br i1 %519, label %520, label %523

520:                                              ; preds = %511, %506, %501, %490
  %521 = load i32, i32* @MSG_DEBUG, align 4
  %522 = call i32 (i32, i8*, ...) @wpa_printf(i32 %521, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0))
  br label %737

523:                                              ; preds = %511
  %524 = load i32, i32* @MSG_DEBUG, align 4
  %525 = load i64, i64* %29, align 8
  %526 = call i32 (i32, i8*, ...) @wpa_printf(i32 %524, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i64 %525)
  %527 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %528 = load i64*, i64** %527, align 8
  %529 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %530 = load i64, i64* %529, align 8
  %531 = getelementptr inbounds i64, i64* %528, i64 %530
  store i64* %531, i64** %11, align 8
  %532 = load i64*, i64** %11, align 8
  %533 = load i64*, i64** %12, align 8
  %534 = load i64*, i64** %11, align 8
  %535 = ptrtoint i64* %533 to i64
  %536 = ptrtoint i64* %534 to i64
  %537 = sub i64 %535, %536
  %538 = sdiv exact i64 %537, 8
  %539 = trunc i64 %538 to i32
  %540 = call i64 @asn1_get_next(i64* %532, i32 %539, %struct.asn1_hdr* %10)
  %541 = icmp slt i64 %540, 0
  br i1 %541, label %552, label %542

542:                                              ; preds = %523
  %543 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %544 = load i32, i32* %543, align 8
  %545 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %546 = icmp ne i32 %544, %545
  br i1 %546, label %552, label %547

547:                                              ; preds = %542
  %548 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = load i32, i32* @ASN1_TAG_SEQUENCE, align 4
  %551 = icmp ne i32 %549, %550
  br i1 %551, label %552, label %559

552:                                              ; preds = %547, %542, %523
  %553 = load i32, i32* @MSG_DEBUG, align 4
  %554 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %555 = load i32, i32* %554, align 8
  %556 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = call i32 (i32, i8*, ...) @wpa_printf(i32 %553, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.22, i64 0, i64 0), i32 %555, i32 %557)
  br label %737

559:                                              ; preds = %547
  %560 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %561 = load i64*, i64** %560, align 8
  store i64* %561, i64** %16, align 8
  %562 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %563 = load i64, i64* %562, align 8
  store i64 %563, i64* %20, align 8
  %564 = load i32, i32* @MSG_MSGDUMP, align 4
  %565 = load i64*, i64** %16, align 8
  %566 = load i64, i64* %20, align 8
  %567 = trunc i64 %566 to i32
  %568 = call i32 @wpa_hexdump(i32 %564, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i64* %565, i32 %567)
  %569 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %570 = load i64*, i64** %569, align 8
  %571 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %572 = load i64, i64* %571, align 8
  %573 = getelementptr inbounds i64, i64* %570, i64 %572
  store i64* %573, i64** %11, align 8
  %574 = load i64*, i64** %11, align 8
  %575 = load i64*, i64** %12, align 8
  %576 = icmp ult i64* %574, %575
  br i1 %576, label %577, label %588

577:                                              ; preds = %559
  %578 = load i32, i32* @MSG_MSGDUMP, align 4
  %579 = load i64*, i64** %11, align 8
  %580 = load i64*, i64** %12, align 8
  %581 = load i64*, i64** %11, align 8
  %582 = ptrtoint i64* %580 to i64
  %583 = ptrtoint i64* %581 to i64
  %584 = sub i64 %582, %583
  %585 = sdiv exact i64 %584, 8
  %586 = trunc i64 %585 to i32
  %587 = call i32 @wpa_hexdump(i32 %578, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i64* %579, i32 %586)
  br label %588

588:                                              ; preds = %577, %559
  %589 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %590 = icmp ne %struct.x509_certificate* %589, null
  br i1 %590, label %594, label %591

591:                                              ; preds = %588
  %592 = load i32, i32* @MSG_DEBUG, align 4
  %593 = call i32 (i32, i8*, ...) @wpa_printf(i32 %592, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.25, i64 0, i64 0))
  br label %732

594:                                              ; preds = %588
  %595 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %596 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %595, i32 0, i32 5
  %597 = load %struct.x509_certificate*, %struct.x509_certificate** %596, align 8
  %598 = icmp ne %struct.x509_certificate* %597, null
  br i1 %598, label %599, label %603

599:                                              ; preds = %594
  %600 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %601 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %600, i32 0, i32 5
  %602 = load %struct.x509_certificate*, %struct.x509_certificate** %601, align 8
  store %struct.x509_certificate* %602, %struct.x509_certificate** %25, align 8
  br label %634

603:                                              ; preds = %594
  %604 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %605 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %604, i32 0, i32 0
  %606 = load %struct.TYPE_2__*, %struct.TYPE_2__** %605, align 8
  %607 = icmp ne %struct.TYPE_2__* %606, null
  br i1 %607, label %608, label %614

608:                                              ; preds = %603
  %609 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %610 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %609, i32 0, i32 0
  %611 = load %struct.TYPE_2__*, %struct.TYPE_2__** %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %611, i32 0, i32 0
  %613 = load %struct.x509_certificate*, %struct.x509_certificate** %612, align 8
  br label %615

614:                                              ; preds = %603
  br label %615

615:                                              ; preds = %614, %608
  %616 = phi %struct.x509_certificate* [ %613, %608 ], [ null, %614 ]
  store %struct.x509_certificate* %616, %struct.x509_certificate** %25, align 8
  br label %617

617:                                              ; preds = %629, %615
  %618 = load %struct.x509_certificate*, %struct.x509_certificate** %25, align 8
  %619 = icmp ne %struct.x509_certificate* %618, null
  br i1 %619, label %620, label %633

620:                                              ; preds = %617
  %621 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %622 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %621, i32 0, i32 4
  %623 = load %struct.x509_certificate*, %struct.x509_certificate** %25, align 8
  %624 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %623, i32 0, i32 3
  %625 = call i64 @x509_name_compare(i32* %622, i32* %624)
  %626 = icmp eq i64 %625, 0
  br i1 %626, label %627, label %628

627:                                              ; preds = %620
  br label %633

628:                                              ; preds = %620
  br label %629

629:                                              ; preds = %628
  %630 = load %struct.x509_certificate*, %struct.x509_certificate** %25, align 8
  %631 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %630, i32 0, i32 5
  %632 = load %struct.x509_certificate*, %struct.x509_certificate** %631, align 8
  store %struct.x509_certificate* %632, %struct.x509_certificate** %25, align 8
  br label %617

633:                                              ; preds = %627, %617
  br label %634

634:                                              ; preds = %633, %599
  %635 = load %struct.x509_certificate*, %struct.x509_certificate** %25, align 8
  %636 = icmp ne %struct.x509_certificate* %635, null
  br i1 %636, label %640, label %637

637:                                              ; preds = %634
  %638 = load i32, i32* @MSG_DEBUG, align 4
  %639 = call i32 (i32, i8*, ...) @wpa_printf(i32 %638, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0))
  br label %732

640:                                              ; preds = %634
  %641 = load %struct.x509_certificate*, %struct.x509_certificate** %25, align 8
  %642 = load i64*, i64** %15, align 8
  %643 = call i64 @ocsp_responder_id_match(%struct.x509_certificate* %641, %struct.x509_name* %27, i64* %642)
  %644 = icmp ne i64 %643, 0
  br i1 %644, label %645, label %649

645:                                              ; preds = %640
  %646 = load i32, i32* @MSG_DEBUG, align 4
  %647 = call i32 (i32, i8*, ...) @wpa_printf(i32 %646, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.27, i64 0, i64 0))
  %648 = load %struct.x509_certificate*, %struct.x509_certificate** %25, align 8
  store %struct.x509_certificate* %648, %struct.x509_certificate** %26, align 8
  br label %693

649:                                              ; preds = %640
  %650 = load %struct.x509_certificate*, %struct.x509_certificate** %23, align 8
  store %struct.x509_certificate* %650, %struct.x509_certificate** %26, align 8
  br label %651

651:                                              ; preds = %682, %649
  %652 = load %struct.x509_certificate*, %struct.x509_certificate** %26, align 8
  %653 = icmp ne %struct.x509_certificate* %652, null
  br i1 %653, label %654, label %686

654:                                              ; preds = %651
  %655 = load %struct.x509_certificate*, %struct.x509_certificate** %26, align 8
  %656 = load i64*, i64** %15, align 8
  %657 = call i64 @ocsp_responder_id_match(%struct.x509_certificate* %655, %struct.x509_name* %27, i64* %656)
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %659, label %678

659:                                              ; preds = %654
  %660 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %661 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %660, i32 0, i32 4
  %662 = load %struct.x509_certificate*, %struct.x509_certificate** %25, align 8
  %663 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %662, i32 0, i32 3
  %664 = call i64 @x509_name_compare(i32* %661, i32* %663)
  %665 = icmp ne i64 %664, 0
  br i1 %665, label %678, label %666

666:                                              ; preds = %659
  %667 = load %struct.x509_certificate*, %struct.x509_certificate** %26, align 8
  %668 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %667, i32 0, i32 0
  %669 = load i32, i32* %668, align 8
  %670 = load i32, i32* @X509_EXT_KEY_USAGE_OCSP, align 4
  %671 = and i32 %669, %670
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %673, label %678

673:                                              ; preds = %666
  %674 = load %struct.x509_certificate*, %struct.x509_certificate** %25, align 8
  %675 = load %struct.x509_certificate*, %struct.x509_certificate** %26, align 8
  %676 = call i64 @x509_certificate_check_signature(%struct.x509_certificate* %674, %struct.x509_certificate* %675)
  %677 = icmp slt i64 %676, 0
  br i1 %677, label %678, label %679

678:                                              ; preds = %673, %666, %659, %654
  br label %682

679:                                              ; preds = %673
  %680 = load i32, i32* @MSG_DEBUG, align 4
  %681 = call i32 (i32, i8*, ...) @wpa_printf(i32 %680, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.28, i64 0, i64 0))
  br label %686

682:                                              ; preds = %678
  %683 = load %struct.x509_certificate*, %struct.x509_certificate** %26, align 8
  %684 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %683, i32 0, i32 5
  %685 = load %struct.x509_certificate*, %struct.x509_certificate** %684, align 8
  store %struct.x509_certificate* %685, %struct.x509_certificate** %26, align 8
  br label %651

686:                                              ; preds = %679, %651
  %687 = load %struct.x509_certificate*, %struct.x509_certificate** %26, align 8
  %688 = icmp ne %struct.x509_certificate* %687, null
  br i1 %688, label %692, label %689

689:                                              ; preds = %686
  %690 = load i32, i32* @MSG_DEBUG, align 4
  %691 = call i32 (i32, i8*, ...) @wpa_printf(i32 %690, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0))
  br label %732

692:                                              ; preds = %686
  br label %693

693:                                              ; preds = %692, %645
  %694 = call i32 @x509_free_name(%struct.x509_name* %27)
  %695 = call i32 @os_memset(%struct.x509_name* %27, i32 0, i32 4)
  %696 = load %struct.x509_certificate*, %struct.x509_certificate** %23, align 8
  %697 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %696)
  store %struct.x509_certificate* null, %struct.x509_certificate** %23, align 8
  %698 = load %struct.x509_certificate*, %struct.x509_certificate** %26, align 8
  %699 = load i64*, i64** %14, align 8
  %700 = load i64, i64* %19, align 8
  %701 = load i64*, i64** %17, align 8
  %702 = load i64, i64* %21, align 8
  %703 = call i64 @x509_check_signature(%struct.x509_certificate* %698, %struct.x509_algorithm_identifier* %22, i64* %699, i64 %700, i64* %701, i64 %702)
  %704 = icmp slt i64 %703, 0
  br i1 %704, label %705, label %709

705:                                              ; preds = %693
  %706 = load i32, i32* @MSG_DEBUG, align 4
  %707 = call i32 (i32, i8*, ...) @wpa_printf(i32 %706, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0))
  %708 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %708, i32* %5, align 4
  br label %742

709:                                              ; preds = %693
  %710 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %711 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %712 = load %struct.x509_certificate*, %struct.x509_certificate** %25, align 8
  %713 = load i64*, i64** %16, align 8
  %714 = load i64, i64* %20, align 8
  %715 = call i32 @tls_process_ocsp_responses(%struct.tlsv1_client* %710, %struct.x509_certificate* %711, %struct.x509_certificate* %712, i64* %713, i64 %714)
  store i32 %715, i32* %30, align 4
  %716 = load i32, i32* %30, align 4
  %717 = load i32, i32* @TLS_OCSP_REVOKED, align 4
  %718 = icmp eq i32 %716, %717
  br i1 %718, label %719, label %722

719:                                              ; preds = %709
  %720 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %721 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %720, i32 0, i32 1
  store i32 1, i32* %721, align 4
  br label %730

722:                                              ; preds = %709
  %723 = load i32, i32* %30, align 4
  %724 = load i32, i32* @TLS_OCSP_GOOD, align 4
  %725 = icmp eq i32 %723, %724
  br i1 %725, label %726, label %729

726:                                              ; preds = %722
  %727 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %728 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %727, i32 0, i32 2
  store i32 1, i32* %728, align 8
  br label %729

729:                                              ; preds = %726, %722
  br label %730

730:                                              ; preds = %729, %719
  %731 = load i32, i32* %30, align 4
  store i32 %731, i32* %5, align 4
  br label %742

732:                                              ; preds = %689, %637, %591, %372
  %733 = call i32 @x509_free_name(%struct.x509_name* %27)
  %734 = load %struct.x509_certificate*, %struct.x509_certificate** %23, align 8
  %735 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %734)
  %736 = load i32, i32* @TLS_OCSP_NO_RESPONSE, align 4
  store i32 %736, i32* %5, align 4
  br label %742

737:                                              ; preds = %552, %520, %484, %472, %451, %422, %404, %351, %274, %259
  %738 = call i32 @x509_free_name(%struct.x509_name* %27)
  %739 = load %struct.x509_certificate*, %struct.x509_certificate** %23, align 8
  %740 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %739)
  %741 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %741, i32* %5, align 4
  br label %742

742:                                              ; preds = %737, %732, %730, %705, %211, %167, %159, %147, %124, %89, %53
  %743 = load i32, i32* %5, align 4
  ret i32 %743
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #1

declare dso_local i32 @os_memset(%struct.x509_name*, i32, i32) #1

declare dso_local i64 @asn1_get_next(i64*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @x509_parse_algorithm_identifier(i64*, i32, %struct.x509_algorithm_identifier*, i64**) #1

declare dso_local %struct.x509_certificate* @x509_certificate_parse(i64*, i64) #1

declare dso_local i64 @x509_parse_name(i64*, i64, %struct.x509_name*, i64**) #1

declare dso_local i32 @x509_name_string(%struct.x509_name*, i8*, i32) #1

declare dso_local i64 @x509_parse_time(i64*, i64, i32, i64*) #1

declare dso_local i64 @x509_name_compare(i32*, i32*) #1

declare dso_local i64 @ocsp_responder_id_match(%struct.x509_certificate*, %struct.x509_name*, i64*) #1

declare dso_local i64 @x509_certificate_check_signature(%struct.x509_certificate*, %struct.x509_certificate*) #1

declare dso_local i32 @x509_free_name(%struct.x509_name*) #1

declare dso_local i32 @x509_certificate_chain_free(%struct.x509_certificate*) #1

declare dso_local i64 @x509_check_signature(%struct.x509_certificate*, %struct.x509_algorithm_identifier*, i64*, i64, i64*, i64) #1

declare dso_local i32 @tls_process_ocsp_responses(%struct.tlsv1_client*, %struct.x509_certificate*, %struct.x509_certificate*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
