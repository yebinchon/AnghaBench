; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_ocsp.c_tls_process_ocsp_single_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_ocsp.c_tls_process_ocsp_single_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32 }
%struct.x509_certificate = type { i64*, i32, i64*, i32, i64, i64* }
%struct.asn1_hdr = type { i64, i32, i64*, i64 }
%struct.x509_algorithm_identifier = type { i32 }
%struct.os_time = type { i64 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"OCSP: SingleResponse\00", align 1
@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"OCSP: Expected SEQUENCE (CertID) - found class %d tag 0x%x\00", align 1
@ASN1_TAG_OCTETSTRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"OCSP: Expected OCTET STRING (issuerNameHash) - found class %d tag 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"OCSP: issuerNameHash\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"OCSP: Issuer subject DN\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"OCSP: issuerNameHash mismatch\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"OCSP: Calculated issuerNameHash\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"OCSP: Expected OCTET STRING (issuerKeyHash) - found class %d tag 0x%x\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"OCSP: issuerKeyHash\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"OCSP: issuerKeyHash mismatch\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"OCSP: Calculated issuerKeyHash\00", align 1
@ASN1_TAG_INTEGER = common dso_local global i32 0, align 4
@X509_MAX_SERIAL_NUM_LEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [73 x i8] c"OCSP: No INTEGER tag found for serialNumber; class=%d tag=0x%x length=%u\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"OCSP: serialNumber\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"OCSP: serialNumber mismatch\00", align 1
@ASN1_CLASS_CONTEXT_SPECIFIC = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [61 x i8] c"OCSP: Expected CHOICE (CertStatus) - found class %d tag 0x%x\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"OCSP: certStatus=%u\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"OCSP: CertStatus additional data\00", align 1
@ASN1_TAG_GENERALIZEDTIME = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [33 x i8] c"OCSP: Failed to parse thisUpdate\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"OCSP: thisUpdate %lu\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"OCSP: thisUpdate time in the future (response not yet valid)\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"OCSP: Failed to parse nextUpdate\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"OCSP: nextUpdate %lu\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"OCSP: nextUpdate time in the past (response has expired)\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"OCSP: singleExtensions\00", align 1
@TLS_OCSP_GOOD = common dso_local global i32 0, align 4
@TLS_OCSP_REVOKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, %struct.x509_certificate*, %struct.x509_certificate*, i64*, i64, i32*)* @tls_process_ocsp_single_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_ocsp_single_response(%struct.tlsv1_client* %0, %struct.x509_certificate* %1, %struct.x509_certificate* %2, i64* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tlsv1_client*, align 8
  %9 = alloca %struct.x509_certificate*, align 8
  %10 = alloca %struct.x509_certificate*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.asn1_hdr, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.x509_algorithm_identifier, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca [64 x i64], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca %struct.os_time, align 8
  %29 = alloca i64*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %8, align 8
  store %struct.x509_certificate* %1, %struct.x509_certificate** %9, align 8
  store %struct.x509_certificate* %2, %struct.x509_certificate** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %30 = load i32, i32* @MSG_MSGDUMP, align 4
  %31 = load i64*, i64** %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @wpa_hexdump(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64* %31, i32 %33)
  %35 = load i64*, i64** %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @asn1_get_next(i64* %35, i32 %37, %struct.asn1_hdr* %14)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %6
  %41 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ASN1_TAG_SEQUENCE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %45, %40, %6
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %53, i32 %55)
  store i32 -1, i32* %7, align 4
  br label %510

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  store i64* %59, i64** %15, align 8
  %60 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64* %64, i64** %16, align 8
  %65 = load i64*, i64** %15, align 8
  %66 = load i64*, i64** %16, align 8
  %67 = load i64*, i64** %15, align 8
  %68 = ptrtoint i64* %66 to i64
  %69 = ptrtoint i64* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 8
  %72 = trunc i64 %71 to i32
  %73 = call i64 @x509_parse_algorithm_identifier(i64* %65, i32 %72, %struct.x509_algorithm_identifier* %17, i64** %15)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %57
  store i32 -1, i32* %7, align 4
  br label %510

76:                                               ; preds = %57
  %77 = load i64*, i64** %15, align 8
  %78 = load i64*, i64** %16, align 8
  %79 = load i64*, i64** %15, align 8
  %80 = ptrtoint i64* %78 to i64
  %81 = ptrtoint i64* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = call i64 @asn1_get_next(i64* %77, i32 %84, %struct.asn1_hdr* %14)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ASN1_TAG_OCTETSTRING, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %92, %87, %76
  %98 = load i32, i32* @MSG_DEBUG, align 4
  %99 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %100, i32 %102)
  store i32 -1, i32* %7, align 4
  br label %510

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  store i64* %106, i64** %18, align 8
  %107 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %20, align 8
  %109 = load i32, i32* @MSG_DEBUG, align 4
  %110 = load i64*, i64** %18, align 8
  %111 = load i64, i64* %20, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @wpa_hexdump(i32 %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64* %110, i32 %112)
  %114 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 2
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64* %118, i64** %15, align 8
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %121 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %124 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @wpa_hexdump(i32 %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64* %122, i32 %125)
  %127 = getelementptr inbounds %struct.x509_algorithm_identifier, %struct.x509_algorithm_identifier* %17, i32 0, i32 0
  %128 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %129 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %132 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds [64 x i64], [64 x i64]* %24, i64 0, i64 0
  %135 = call i32 @ocsp_hash_data(i32* %127, i64* %130, i32 %133, i64* %134)
  store i32 %135, i32* %25, align 4
  %136 = load i32, i32* %25, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %104
  %139 = load i64, i64* %20, align 8
  %140 = load i32, i32* %25, align 4
  %141 = zext i32 %140 to i64
  %142 = icmp ne i64 %139, %141
  br i1 %142, label %150, label %143

143:                                              ; preds = %138
  %144 = load i64*, i64** %18, align 8
  %145 = getelementptr inbounds [64 x i64], [64 x i64]* %24, i64 0, i64 0
  %146 = load i32, i32* %25, align 4
  %147 = zext i32 %146 to i64
  %148 = call i64 @os_memcmp(i64* %144, i64* %145, i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %143, %138, %104
  %151 = load i32, i32* @MSG_DEBUG, align 4
  %152 = call i32 (i32, i8*, ...) @wpa_printf(i32 %151, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %153 = load i32, i32* @MSG_DEBUG, align 4
  %154 = getelementptr inbounds [64 x i64], [64 x i64]* %24, i64 0, i64 0
  %155 = load i32, i32* %25, align 4
  %156 = call i32 @wpa_hexdump(i32 %153, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64* %154, i32 %155)
  store i32 -1, i32* %7, align 4
  br label %510

157:                                              ; preds = %143
  %158 = load i64*, i64** %15, align 8
  %159 = load i64*, i64** %16, align 8
  %160 = load i64*, i64** %15, align 8
  %161 = ptrtoint i64* %159 to i64
  %162 = ptrtoint i64* %160 to i64
  %163 = sub i64 %161, %162
  %164 = sdiv exact i64 %163, 8
  %165 = trunc i64 %164 to i32
  %166 = call i64 @asn1_get_next(i64* %158, i32 %165, %struct.asn1_hdr* %14)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %178, label %168

168:                                              ; preds = %157
  %169 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @ASN1_TAG_OCTETSTRING, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %173, %168, %157
  %179 = load i32, i32* @MSG_DEBUG, align 4
  %180 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i32, i8*, ...) @wpa_printf(i32 %179, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0), i64 %181, i32 %183)
  store i32 -1, i32* %7, align 4
  br label %510

185:                                              ; preds = %173
  %186 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 2
  %187 = load i64*, i64** %186, align 8
  store i64* %187, i64** %19, align 8
  %188 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %21, align 8
  %190 = load i32, i32* @MSG_DEBUG, align 4
  %191 = load i64*, i64** %19, align 8
  %192 = load i64, i64* %21, align 8
  %193 = trunc i64 %192 to i32
  %194 = call i32 @wpa_hexdump(i32 %190, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64* %191, i32 %193)
  %195 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 2
  %196 = load i64*, i64** %195, align 8
  %197 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  store i64* %199, i64** %15, align 8
  %200 = getelementptr inbounds %struct.x509_algorithm_identifier, %struct.x509_algorithm_identifier* %17, i32 0, i32 0
  %201 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %202 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %201, i32 0, i32 2
  %203 = load i64*, i64** %202, align 8
  %204 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %205 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = getelementptr inbounds [64 x i64], [64 x i64]* %24, i64 0, i64 0
  %208 = call i32 @ocsp_hash_data(i32* %200, i64* %203, i32 %206, i64* %207)
  store i32 %208, i32* %25, align 4
  %209 = load i32, i32* %25, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %223, label %211

211:                                              ; preds = %185
  %212 = load i64, i64* %21, align 8
  %213 = load i32, i32* %25, align 4
  %214 = zext i32 %213 to i64
  %215 = icmp ne i64 %212, %214
  br i1 %215, label %223, label %216

216:                                              ; preds = %211
  %217 = load i64*, i64** %19, align 8
  %218 = getelementptr inbounds [64 x i64], [64 x i64]* %24, i64 0, i64 0
  %219 = load i32, i32* %25, align 4
  %220 = zext i32 %219 to i64
  %221 = call i64 @os_memcmp(i64* %217, i64* %218, i64 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %216, %211, %185
  %224 = load i32, i32* @MSG_DEBUG, align 4
  %225 = call i32 (i32, i8*, ...) @wpa_printf(i32 %224, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %226 = load i32, i32* @MSG_DEBUG, align 4
  %227 = getelementptr inbounds [64 x i64], [64 x i64]* %24, i64 0, i64 0
  %228 = load i32, i32* %25, align 4
  %229 = call i32 @wpa_hexdump(i32 %226, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i64* %227, i32 %228)
  store i32 -1, i32* %7, align 4
  br label %510

230:                                              ; preds = %216
  %231 = load i64*, i64** %15, align 8
  %232 = load i64*, i64** %16, align 8
  %233 = load i64*, i64** %15, align 8
  %234 = ptrtoint i64* %232 to i64
  %235 = ptrtoint i64* %233 to i64
  %236 = sub i64 %234, %235
  %237 = sdiv exact i64 %236, 8
  %238 = trunc i64 %237 to i32
  %239 = call i64 @asn1_get_next(i64* %231, i32 %238, %struct.asn1_hdr* %14)
  %240 = icmp slt i64 %239, 0
  br i1 %240, label %261, label %241

241:                                              ; preds = %230
  %242 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %261, label %246

246:                                              ; preds = %241
  %247 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @ASN1_TAG_INTEGER, align 4
  %250 = icmp ne i32 %248, %249
  br i1 %250, label %261, label %251

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = icmp ult i64 %253, 1
  br i1 %254, label %261, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = load i32, i32* @X509_MAX_SERIAL_NUM_LEN, align 4
  %259 = sext i32 %258 to i64
  %260 = icmp ugt i64 %257, %259
  br i1 %260, label %261, label %270

261:                                              ; preds = %255, %251, %246, %241, %230
  %262 = load i32, i32* @MSG_DEBUG, align 4
  %263 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = call i32 (i32, i8*, ...) @wpa_printf(i32 %262, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i64 0, i64 0), i64 %264, i32 %266, i64 %268)
  store i32 -1, i32* %7, align 4
  br label %510

270:                                              ; preds = %255
  %271 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 2
  %272 = load i64*, i64** %271, align 8
  store i64* %272, i64** %22, align 8
  %273 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %23, align 8
  br label %275

275:                                              ; preds = %285, %270
  %276 = load i64, i64* %23, align 8
  %277 = icmp ugt i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %275
  %279 = load i64*, i64** %22, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp eq i64 %281, 0
  br label %283

283:                                              ; preds = %278, %275
  %284 = phi i1 [ false, %275 ], [ %282, %278 ]
  br i1 %284, label %285, label %290

285:                                              ; preds = %283
  %286 = load i64*, i64** %22, align 8
  %287 = getelementptr inbounds i64, i64* %286, i32 1
  store i64* %287, i64** %22, align 8
  %288 = load i64, i64* %23, align 8
  %289 = add i64 %288, -1
  store i64 %289, i64* %23, align 8
  br label %275

290:                                              ; preds = %283
  %291 = load i32, i32* @MSG_MSGDUMP, align 4
  %292 = load i64*, i64** %22, align 8
  %293 = load i64, i64* %23, align 8
  %294 = trunc i64 %293 to i32
  %295 = call i32 @wpa_hexdump(i32 %291, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64* %292, i32 %294)
  %296 = load i64, i64* %23, align 8
  %297 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %298 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %297, i32 0, i32 4
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %296, %299
  br i1 %300, label %309, label %301

301:                                              ; preds = %290
  %302 = load i64*, i64** %22, align 8
  %303 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %304 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %303, i32 0, i32 5
  %305 = load i64*, i64** %304, align 8
  %306 = load i64, i64* %23, align 8
  %307 = call i64 @os_memcmp(i64* %302, i64* %305, i64 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %301, %290
  %310 = load i32, i32* @MSG_DEBUG, align 4
  %311 = call i32 (i32, i8*, ...) @wpa_printf(i32 %310, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %510

312:                                              ; preds = %301
  %313 = load i64*, i64** %16, align 8
  store i64* %313, i64** %15, align 8
  %314 = load i64*, i64** %11, align 8
  %315 = load i64, i64* %12, align 8
  %316 = getelementptr inbounds i64, i64* %314, i64 %315
  store i64* %316, i64** %16, align 8
  %317 = load i64*, i64** %15, align 8
  %318 = load i64*, i64** %16, align 8
  %319 = load i64*, i64** %15, align 8
  %320 = ptrtoint i64* %318 to i64
  %321 = ptrtoint i64* %319 to i64
  %322 = sub i64 %320, %321
  %323 = sdiv exact i64 %322, 8
  %324 = trunc i64 %323 to i32
  %325 = call i64 @asn1_get_next(i64* %317, i32 %324, %struct.asn1_hdr* %14)
  %326 = icmp slt i64 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %312
  %328 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @ASN1_CLASS_CONTEXT_SPECIFIC, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %339

332:                                              ; preds = %327, %312
  %333 = load i32, i32* @MSG_DEBUG, align 4
  %334 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = call i32 (i32, i8*, ...) @wpa_printf(i32 %333, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0), i64 %335, i32 %337)
  store i32 -1, i32* %7, align 4
  br label %510

339:                                              ; preds = %327
  %340 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  store i32 %341, i32* %26, align 4
  %342 = load i32, i32* @MSG_DEBUG, align 4
  %343 = load i32, i32* %26, align 4
  %344 = call i32 (i32, i8*, ...) @wpa_printf(i32 %342, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %343)
  %345 = load i32, i32* @MSG_DEBUG, align 4
  %346 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 2
  %347 = load i64*, i64** %346, align 8
  %348 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %349 = load i64, i64* %348, align 8
  %350 = trunc i64 %349 to i32
  %351 = call i32 @wpa_hexdump(i32 %345, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i64* %347, i32 %350)
  %352 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 2
  %353 = load i64*, i64** %352, align 8
  %354 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %355 = load i64, i64* %354, align 8
  %356 = getelementptr inbounds i64, i64* %353, i64 %355
  store i64* %356, i64** %15, align 8
  %357 = call i32 @os_get_time(%struct.os_time* %28)
  %358 = load i64*, i64** %15, align 8
  %359 = load i64*, i64** %16, align 8
  %360 = load i64*, i64** %15, align 8
  %361 = ptrtoint i64* %359 to i64
  %362 = ptrtoint i64* %360 to i64
  %363 = sub i64 %361, %362
  %364 = sdiv exact i64 %363, 8
  %365 = trunc i64 %364 to i32
  %366 = call i64 @asn1_get_next(i64* %358, i32 %365, %struct.asn1_hdr* %14)
  %367 = icmp slt i64 %366, 0
  br i1 %367, label %387, label %368

368:                                              ; preds = %339
  %369 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %372 = icmp ne i64 %370, %371
  br i1 %372, label %387, label %373

373:                                              ; preds = %368
  %374 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @ASN1_TAG_GENERALIZEDTIME, align 4
  %377 = icmp ne i32 %375, %376
  br i1 %377, label %387, label %378

378:                                              ; preds = %373
  %379 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 2
  %380 = load i64*, i64** %379, align 8
  %381 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %382 = load i64, i64* %381, align 8
  %383 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %384 = load i32, i32* %383, align 8
  %385 = call i64 @x509_parse_time(i64* %380, i64 %382, i32 %384, i64* %27)
  %386 = icmp slt i64 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %378, %373, %368, %339
  %388 = load i32, i32* @MSG_DEBUG, align 4
  %389 = call i32 (i32, i8*, ...) @wpa_printf(i32 %388, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %510

390:                                              ; preds = %378
  %391 = load i32, i32* @MSG_DEBUG, align 4
  %392 = load i64, i64* %27, align 8
  %393 = call i32 (i32, i8*, ...) @wpa_printf(i32 %391, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i64 %392)
  %394 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 2
  %395 = load i64*, i64** %394, align 8
  %396 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %397 = load i64, i64* %396, align 8
  %398 = getelementptr inbounds i64, i64* %395, i64 %397
  store i64* %398, i64** %15, align 8
  %399 = getelementptr inbounds %struct.os_time, %struct.os_time* %28, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* %27, align 8
  %402 = icmp ult i64 %400, %401
  br i1 %402, label %403, label %406

403:                                              ; preds = %390
  %404 = load i32, i32* @MSG_DEBUG, align 4
  %405 = call i32 (i32, i8*, ...) @wpa_printf(i32 %404, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %510

406:                                              ; preds = %390
  %407 = load i64*, i64** %15, align 8
  %408 = load i64*, i64** %16, align 8
  %409 = icmp ult i64* %407, %408
  br i1 %409, label %410, label %480

410:                                              ; preds = %406
  %411 = load i64*, i64** %15, align 8
  %412 = load i64*, i64** %16, align 8
  %413 = load i64*, i64** %15, align 8
  %414 = ptrtoint i64* %412 to i64
  %415 = ptrtoint i64* %413 to i64
  %416 = sub i64 %414, %415
  %417 = sdiv exact i64 %416, 8
  %418 = trunc i64 %417 to i32
  %419 = call i64 @asn1_get_next(i64* %411, i32 %418, %struct.asn1_hdr* %14)
  %420 = icmp slt i64 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %410
  store i32 -1, i32* %7, align 4
  br label %510

422:                                              ; preds = %410
  %423 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @ASN1_CLASS_CONTEXT_SPECIFIC, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %427, label %479

427:                                              ; preds = %422
  %428 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %479

431:                                              ; preds = %427
  %432 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 2
  %433 = load i64*, i64** %432, align 8
  %434 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %435 = load i64, i64* %434, align 8
  %436 = getelementptr inbounds i64, i64* %433, i64 %435
  store i64* %436, i64** %29, align 8
  %437 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 2
  %438 = load i64*, i64** %437, align 8
  %439 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %440 = load i64, i64* %439, align 8
  %441 = trunc i64 %440 to i32
  %442 = call i64 @asn1_get_next(i64* %438, i32 %441, %struct.asn1_hdr* %14)
  %443 = icmp slt i64 %442, 0
  br i1 %443, label %463, label %444

444:                                              ; preds = %431
  %445 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %448 = icmp ne i64 %446, %447
  br i1 %448, label %463, label %449

449:                                              ; preds = %444
  %450 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* @ASN1_TAG_GENERALIZEDTIME, align 4
  %453 = icmp ne i32 %451, %452
  br i1 %453, label %463, label %454

454:                                              ; preds = %449
  %455 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 2
  %456 = load i64*, i64** %455, align 8
  %457 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 3
  %458 = load i64, i64* %457, align 8
  %459 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %14, i32 0, i32 1
  %460 = load i32, i32* %459, align 8
  %461 = call i64 @x509_parse_time(i64* %456, i64 %458, i32 %460, i64* %27)
  %462 = icmp slt i64 %461, 0
  br i1 %462, label %463, label %466

463:                                              ; preds = %454, %449, %444, %431
  %464 = load i32, i32* @MSG_DEBUG, align 4
  %465 = call i32 (i32, i8*, ...) @wpa_printf(i32 %464, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %510

466:                                              ; preds = %454
  %467 = load i32, i32* @MSG_DEBUG, align 4
  %468 = load i64, i64* %27, align 8
  %469 = call i32 (i32, i8*, ...) @wpa_printf(i32 %467, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i64 %468)
  %470 = load i64*, i64** %29, align 8
  store i64* %470, i64** %15, align 8
  %471 = getelementptr inbounds %struct.os_time, %struct.os_time* %28, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = load i64, i64* %27, align 8
  %474 = icmp ugt i64 %472, %473
  br i1 %474, label %475, label %478

475:                                              ; preds = %466
  %476 = load i32, i32* @MSG_DEBUG, align 4
  %477 = call i32 (i32, i8*, ...) @wpa_printf(i32 %476, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %510

478:                                              ; preds = %466
  br label %479

479:                                              ; preds = %478, %427, %422
  br label %480

480:                                              ; preds = %479, %406
  %481 = load i64*, i64** %15, align 8
  %482 = load i64*, i64** %16, align 8
  %483 = icmp ult i64* %481, %482
  br i1 %483, label %484, label %495

484:                                              ; preds = %480
  %485 = load i32, i32* @MSG_MSGDUMP, align 4
  %486 = load i64*, i64** %15, align 8
  %487 = load i64*, i64** %16, align 8
  %488 = load i64*, i64** %15, align 8
  %489 = ptrtoint i64* %487 to i64
  %490 = ptrtoint i64* %488 to i64
  %491 = sub i64 %489, %490
  %492 = sdiv exact i64 %491, 8
  %493 = trunc i64 %492 to i32
  %494 = call i32 @wpa_hexdump(i32 %485, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i64* %486, i32 %493)
  br label %495

495:                                              ; preds = %484, %480
  %496 = load i32, i32* %26, align 4
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %501

498:                                              ; preds = %495
  %499 = load i32, i32* @TLS_OCSP_GOOD, align 4
  %500 = load i32*, i32** %13, align 8
  store i32 %499, i32* %500, align 4
  br label %509

501:                                              ; preds = %495
  %502 = load i32, i32* %26, align 4
  %503 = icmp eq i32 %502, 1
  br i1 %503, label %504, label %507

504:                                              ; preds = %501
  %505 = load i32, i32* @TLS_OCSP_REVOKED, align 4
  %506 = load i32*, i32** %13, align 8
  store i32 %505, i32* %506, align 4
  br label %508

507:                                              ; preds = %501
  store i32 -1, i32* %7, align 4
  br label %510

508:                                              ; preds = %504
  br label %509

509:                                              ; preds = %508, %498
  store i32 0, i32* %7, align 4
  br label %510

510:                                              ; preds = %509, %507, %475, %463, %421, %403, %387, %332, %309, %261, %223, %178, %150, %97, %75, %50
  %511 = load i32, i32* %7, align 4
  ret i32 %511
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #1

declare dso_local i64 @asn1_get_next(i64*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @x509_parse_algorithm_identifier(i64*, i32, %struct.x509_algorithm_identifier*, i64**) #1

declare dso_local i32 @ocsp_hash_data(i32*, i64*, i32, i64*) #1

declare dso_local i64 @os_memcmp(i64*, i64*, i64) #1

declare dso_local i32 @os_get_time(%struct.os_time*) #1

declare dso_local i64 @x509_parse_time(i64*, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
