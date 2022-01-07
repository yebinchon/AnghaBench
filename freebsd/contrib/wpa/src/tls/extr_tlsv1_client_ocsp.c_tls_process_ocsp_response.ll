; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_ocsp.c_tls_process_ocsp_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_ocsp.c_tls_process_ocsp_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { %struct.x509_certificate* }
%struct.x509_certificate = type { %struct.x509_certificate*, i64, i32, i32, i32 }
%struct.asn1_hdr = type { i64, i64*, i32, i32 }
%struct.asn1_oid = type { i32 }

@TLS_OCSP_NO_RESPONSE = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"TLSv1: OCSPResponse\00", align 1
@ASN1_CLASS_UNIVERSAL = common dso_local global i32 0, align 4
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"OCSP: Expected SEQUENCE (OCSPResponse) - found class %d tag 0x%x\00", align 1
@TLS_OCSP_INVALID = common dso_local global i32 0, align 4
@ASN1_TAG_ENUMERATED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [79 x i8] c"OCSP: Expected ENUMERATED (responseStatus) - found class %d tag 0x%x length %u\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"OCSP: responseStatus %u\00", align 1
@OCSP_RESP_STATUS_SUCCESSFUL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"OCSP: No stapling result\00", align 1
@ASN1_CLASS_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"OCSP: Expected [0] EXPLICIT (responseBytes) - found class %d tag 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"OCSP: Expected SEQUENCE (ResponseBytes) - found class %d tag 0x%x\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"OCSP: Failed to parse OID (responseType)\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"OCSP: responseType %s\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"OCSP: Ignore unsupported response type\00", align 1
@ASN1_TAG_OCTETSTRING = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [65 x i8] c"OCSP: Expected OCTET STRING (response) - found class %d tag 0x%x\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"OCSP: Trying to find certificate status for %s\00", align 1
@TLS_OCSP_REVOKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_ocsp_response(%struct.tlsv1_client* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.asn1_hdr, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.asn1_oid, align 4
  %13 = alloca [80 x i8], align 16
  %14 = alloca %struct.x509_certificate*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [128 x i8], align 16
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load i32, i32* @TLS_OCSP_NO_RESPONSE, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* @MSG_MSGDUMP, align 4
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @wpa_hexdump(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64* %21, i64 %22)
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i64 @asn1_get_next(i64* %24, i32 %26, %struct.asn1_hdr* %8)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %34, %29, %3
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %42, i64 %44)
  %46 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %46, i32* %4, align 4
  br label %298

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  store i64* %49, i64** %9, align 8
  %50 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  store i64* %55, i64** %10, align 8
  %56 = load i64*, i64** %9, align 8
  %57 = load i64*, i64** %10, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = ptrtoint i64* %57 to i64
  %60 = ptrtoint i64* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 8
  %63 = trunc i64 %62 to i32
  %64 = call i64 @asn1_get_next(i64* %56, i32 %63, %struct.asn1_hdr* %8)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %47
  %67 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ASN1_TAG_ENUMERATED, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %90

80:                                               ; preds = %76, %71, %66, %47
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %83, i64 %85, i32 %87)
  %89 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %89, i32* %4, align 4
  br label %298

90:                                               ; preds = %76
  %91 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %11, align 8
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = load i64, i64* %11, align 8
  %97 = call i32 (i32, i8*, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %96)
  %98 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  store i64* %103, i64** %9, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* @OCSP_RESP_STATUS_SUCCESSFUL, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %90
  %108 = load i32, i32* @MSG_DEBUG, align 4
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32, i32* @TLS_OCSP_NO_RESPONSE, align 4
  store i32 %110, i32* %4, align 4
  br label %298

111:                                              ; preds = %90
  %112 = load i64*, i64** %9, align 8
  %113 = load i64*, i64** %10, align 8
  %114 = icmp eq i64* %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @TLS_OCSP_NO_RESPONSE, align 4
  store i32 %116, i32* %4, align 4
  br label %298

117:                                              ; preds = %111
  %118 = load i64*, i64** %9, align 8
  %119 = load i64*, i64** %10, align 8
  %120 = load i64*, i64** %9, align 8
  %121 = ptrtoint i64* %119 to i64
  %122 = ptrtoint i64* %120 to i64
  %123 = sub i64 %121, %122
  %124 = sdiv exact i64 %123, 8
  %125 = trunc i64 %124 to i32
  %126 = call i64 @asn1_get_next(i64* %118, i32 %125, %struct.asn1_hdr* %8)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ASN1_CLASS_CONTEXT_SPECIFIC, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %133, %128, %117
  %138 = load i32, i32* @MSG_DEBUG, align 4
  %139 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (i32, i8*, ...) @wpa_printf(i32 %138, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 %140, i64 %142)
  %144 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %144, i32* %4, align 4
  br label %298

145:                                              ; preds = %133
  %146 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @asn1_get_next(i64* %147, i32 %149, %struct.asn1_hdr* %8)
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %162, label %152

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %157, %152, %145
  %163 = load i32, i32* @MSG_DEBUG, align 4
  %164 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (i32, i8*, ...) @wpa_printf(i32 %163, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %165, i64 %167)
  %169 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %169, i32* %4, align 4
  br label %298

170:                                              ; preds = %157
  %171 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %172 = load i64*, i64** %171, align 8
  store i64* %172, i64** %9, align 8
  %173 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %174, i64 %177
  store i64* %178, i64** %10, align 8
  %179 = load i64*, i64** %9, align 8
  %180 = load i64*, i64** %10, align 8
  %181 = load i64*, i64** %9, align 8
  %182 = ptrtoint i64* %180 to i64
  %183 = ptrtoint i64* %181 to i64
  %184 = sub i64 %182, %183
  %185 = sdiv exact i64 %184, 8
  %186 = trunc i64 %185 to i32
  %187 = call i64 @asn1_get_oid(i64* %179, i32 %186, %struct.asn1_oid* %12, i64** %9)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %170
  %190 = load i32, i32* @MSG_DEBUG, align 4
  %191 = call i32 (i32, i8*, ...) @wpa_printf(i32 %190, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %192 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %192, i32* %4, align 4
  br label %298

193:                                              ; preds = %170
  %194 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %195 = call i32 @asn1_oid_to_str(%struct.asn1_oid* %12, i8* %194, i32 80)
  %196 = load i32, i32* @MSG_DEBUG, align 4
  %197 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %198 = call i32 (i32, i8*, ...) @wpa_printf(i32 %196, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %197)
  %199 = call i32 @is_oid_basic_ocsp_resp(%struct.asn1_oid* %12)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %193
  %202 = load i32, i32* @MSG_DEBUG, align 4
  %203 = call i32 (i32, i8*, ...) @wpa_printf(i32 %202, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %204 = load i32, i32* @TLS_OCSP_NO_RESPONSE, align 4
  store i32 %204, i32* %4, align 4
  br label %298

205:                                              ; preds = %193
  %206 = load i64*, i64** %9, align 8
  %207 = load i64*, i64** %10, align 8
  %208 = load i64*, i64** %9, align 8
  %209 = ptrtoint i64* %207 to i64
  %210 = ptrtoint i64* %208 to i64
  %211 = sub i64 %209, %210
  %212 = sdiv exact i64 %211, 8
  %213 = trunc i64 %212 to i32
  %214 = call i64 @asn1_get_next(i64* %206, i32 %213, %struct.asn1_hdr* %8)
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %226, label %216

216:                                              ; preds = %205
  %217 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %226, label %221

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @ASN1_TAG_OCTETSTRING, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %234

226:                                              ; preds = %221, %216, %205
  %227 = load i32, i32* @MSG_DEBUG, align 4
  %228 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call i32 (i32, i8*, ...) @wpa_printf(i32 %227, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0), i32 %229, i64 %231)
  %233 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %233, i32* %4, align 4
  br label %298

234:                                              ; preds = %221
  %235 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %236 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %235, i32 0, i32 0
  %237 = load %struct.x509_certificate*, %struct.x509_certificate** %236, align 8
  store %struct.x509_certificate* %237, %struct.x509_certificate** %14, align 8
  br label %238

238:                                              ; preds = %284, %234
  %239 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %240 = icmp ne %struct.x509_certificate* %239, null
  br i1 %240, label %241, label %288

241:                                              ; preds = %238
  %242 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %243 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %274, label %246

246:                                              ; preds = %241
  %247 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %248 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %274, label %251

251:                                              ; preds = %246
  %252 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %253 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %252, i32 0, i32 2
  %254 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %255 = call i32 @x509_name_string(i32* %253, i8* %254, i32 128)
  %256 = load i32, i32* @MSG_DEBUG, align 4
  %257 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %258 = call i32 (i32, i8*, ...) @wpa_printf(i32 %256, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8* %257)
  %259 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %260 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %261 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %262 = load i64*, i64** %261, align 8
  %263 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @tls_process_basic_ocsp_response(%struct.tlsv1_client* %259, %struct.x509_certificate* %260, i64* %262, i32 %264)
  store i32 %265, i32* %15, align 4
  %266 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %267 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %268 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %267, i32 0, i32 0
  %269 = load %struct.x509_certificate*, %struct.x509_certificate** %268, align 8
  %270 = icmp eq %struct.x509_certificate* %266, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %251
  %272 = load i32, i32* %15, align 4
  store i32 %272, i32* %16, align 4
  br label %273

273:                                              ; preds = %271, %251
  br label %274

274:                                              ; preds = %273, %246, %241
  %275 = load i32, i32* %15, align 4
  %276 = load i32, i32* @TLS_OCSP_REVOKED, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %283, label %278

278:                                              ; preds = %274
  %279 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %280 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %278, %274
  br label %288

284:                                              ; preds = %278
  %285 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %286 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %285, i32 0, i32 0
  %287 = load %struct.x509_certificate*, %struct.x509_certificate** %286, align 8
  store %struct.x509_certificate* %287, %struct.x509_certificate** %14, align 8
  br label %238

288:                                              ; preds = %283, %238
  %289 = load i32, i32* %15, align 4
  %290 = load i32, i32* @TLS_OCSP_REVOKED, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = load i32, i32* %15, align 4
  br label %296

294:                                              ; preds = %288
  %295 = load i32, i32* %16, align 4
  br label %296

296:                                              ; preds = %294, %292
  %297 = phi i32 [ %293, %292 ], [ %295, %294 ]
  store i32 %297, i32* %4, align 4
  br label %298

298:                                              ; preds = %296, %226, %201, %189, %162, %137, %115, %107, %80, %39
  %299 = load i32, i32* %4, align 4
  ret i32 %299
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local i64 @asn1_get_next(i64*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @asn1_get_oid(i64*, i32, %struct.asn1_oid*, i64**) #1

declare dso_local i32 @asn1_oid_to_str(%struct.asn1_oid*, i8*, i32) #1

declare dso_local i32 @is_oid_basic_ocsp_resp(%struct.asn1_oid*) #1

declare dso_local i32 @x509_name_string(i32*, i8*, i32) #1

declare dso_local i32 @tls_process_basic_ocsp_response(%struct.tlsv1_client*, %struct.x509_certificate*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
