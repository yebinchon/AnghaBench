; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_tbs_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_tbs_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i64, i64*, i32, i64*, i32, i32, i32, i32 }
%struct.asn1_hdr = type { i32, i64*, i32, i32 }

@ASN1_CLASS_UNIVERSAL = common dso_local global i32 0, align 4
@ASN1_TAG_SEQUENCE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"X509: tbsCertificate did not start with a valid SEQUENCE - found class %d tag 0x%x\00", align 1
@ASN1_CLASS_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@ASN1_TAG_INTEGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"X509: No INTEGER tag found for version field - found class %d tag 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"X509: Unexpected version field length %u (expected 1)\00", align 1
@X509_CERT_V1 = common dso_local global i64 0, align 8
@X509_CERT_V2 = common dso_local global i64 0, align 8
@X509_CERT_V3 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"X509: Unsupported version %d\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"X509: Version X.509v%d\00", align 1
@X509_MAX_SERIAL_NUM_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [73 x i8] c"X509: No INTEGER tag found for serialNumber; class=%d tag=0x%x length=%u\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"X509: serialNumber\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"X509: issuer %s\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"X509: subject %s\00", align 1
@.str.9 = private unnamed_addr constant [104 x i8] c"X509: Expected Context-Specific tag to parse optional tbsCertificate field(s); parsed class %d tag 0x%x\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"X509: issuerUniqueID\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"X509: subjectUniqueID\00", align 1
@.str.12 = private unnamed_addr constant [83 x i8] c"X509: Ignored unexpected Context-Specific tag %d in optional tbsCertificate fields\00", align 1
@.str.13 = private unnamed_addr constant [83 x i8] c"X509: X.509%d certificate and Extensions data which are only allowed for version 3\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"X509: Ignored extra tbsCertificate data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, %struct.x509_certificate*, i64**)* @x509_parse_tbs_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_tbs_certificate(i64* %0, i64 %1, %struct.x509_certificate* %2, i64** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.x509_certificate*, align 8
  %9 = alloca i64**, align 8
  %10 = alloca %struct.asn1_hdr, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [128 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.x509_certificate* %2, %struct.x509_certificate** %8, align 8
  store i64** %3, i64*** %9, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @asn1_get_next(i64* %17, i32 %19, %struct.asn1_hdr* %10)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ASN1_TAG_SEQUENCE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27, %22, %4
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37)
  store i32 -1, i32* %5, align 4
  br label %534

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  store i64* %41, i64** %11, align 8
  %42 = load i64*, i64** %11, align 8
  %43 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64**, i64*** %9, align 8
  store i64* %46, i64** %47, align 8
  store i64* %46, i64** %12, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = ptrtoint i64* %49 to i64
  %52 = ptrtoint i64* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = call i64 @asn1_get_next(i64* %48, i32 %55, %struct.asn1_hdr* %10)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %534

59:                                               ; preds = %39
  %60 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  store i64* %61, i64** %11, align 8
  %62 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ASN1_CLASS_CONTEXT_SPECIFIC, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %164

66:                                               ; preds = %59
  %67 = load i64*, i64** %11, align 8
  %68 = load i64*, i64** %12, align 8
  %69 = load i64*, i64** %11, align 8
  %70 = ptrtoint i64* %68 to i64
  %71 = ptrtoint i64* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 8
  %74 = trunc i64 %73 to i32
  %75 = call i64 @asn1_get_next(i64* %67, i32 %74, %struct.asn1_hdr* %10)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  store i32 -1, i32* %5, align 4
  br label %534

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ASN1_TAG_INTEGER, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %83, %78
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %93)
  store i32 -1, i32* %5, align 4
  br label %534

95:                                               ; preds = %83
  %96 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 1
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %100, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  store i32 -1, i32* %5, align 4
  br label %534

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  store i64* %106, i64** %11, align 8
  %107 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %13, align 8
  store i64 0, i64* %15, align 8
  br label %110

110:                                              ; preds = %113, %104
  %111 = load i64, i64* %13, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i64, i64* %15, align 8
  %115 = shl i64 %114, 8
  store i64 %115, i64* %15, align 8
  %116 = load i64*, i64** %11, align 8
  %117 = getelementptr inbounds i64, i64* %116, i32 1
  store i64* %117, i64** %11, align 8
  %118 = load i64, i64* %116, align 8
  %119 = load i64, i64* %15, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %15, align 8
  %121 = load i64, i64* %13, align 8
  %122 = add i64 %121, -1
  store i64 %122, i64* %13, align 8
  br label %110

123:                                              ; preds = %110
  %124 = load i64, i64* %15, align 8
  %125 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %126 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %128 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @X509_CERT_V1, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %123
  %133 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %134 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @X509_CERT_V2, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %132
  %139 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %140 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @X509_CERT_V3, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %138
  %145 = load i32, i32* @MSG_DEBUG, align 4
  %146 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %147 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, 1
  %150 = call i32 (i32, i8*, ...) @wpa_printf(i32 %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %149)
  store i32 -1, i32* %5, align 4
  br label %534

151:                                              ; preds = %138, %132, %123
  %152 = load i64*, i64** %11, align 8
  %153 = load i64*, i64** %12, align 8
  %154 = load i64*, i64** %11, align 8
  %155 = ptrtoint i64* %153 to i64
  %156 = ptrtoint i64* %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 8
  %159 = trunc i64 %158 to i32
  %160 = call i64 @asn1_get_next(i64* %152, i32 %159, %struct.asn1_hdr* %10)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  store i32 -1, i32* %5, align 4
  br label %534

163:                                              ; preds = %151
  br label %168

164:                                              ; preds = %59
  %165 = load i64, i64* @X509_CERT_V1, align 8
  %166 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %167 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %164, %163
  %169 = load i32, i32* @MSG_MSGDUMP, align 4
  %170 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %171 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, 1
  %174 = call i32 (i32, i8*, ...) @wpa_printf(i32 %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %173)
  %175 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %193, label %179

179:                                              ; preds = %168
  %180 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @ASN1_TAG_INTEGER, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %193, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %186, 1
  br i1 %187, label %193, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @X509_MAX_SERIAL_NUM_LEN, align 4
  %192 = icmp sgt i32 %190, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %188, %184, %179, %168
  %194 = load i32, i32* @MSG_DEBUG, align 4
  %195 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 (i32, i8*, ...) @wpa_printf(i32 %194, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i32 %196, i32 %198, i32 %200)
  store i32 -1, i32* %5, align 4
  br label %534

202:                                              ; preds = %188
  %203 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %204 = load i64*, i64** %203, align 8
  %205 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %204, i64 %207
  store i64* %208, i64** %11, align 8
  br label %209

209:                                              ; preds = %221, %202
  %210 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %215 = load i64*, i64** %214, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %217, 0
  br label %219

219:                                              ; preds = %213, %209
  %220 = phi i1 [ false, %209 ], [ %218, %213 ]
  br i1 %220, label %221, label %228

221:                                              ; preds = %219
  %222 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %223 = load i64*, i64** %222, align 8
  %224 = getelementptr inbounds i64, i64* %223, i32 1
  store i64* %224, i64** %222, align 8
  %225 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %225, align 8
  br label %209

228:                                              ; preds = %219
  %229 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %230 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %229, i32 0, i32 1
  %231 = load i64*, i64** %230, align 8
  %232 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %233 = load i64*, i64** %232, align 8
  %234 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @os_memcpy(i64* %231, i64* %233, i32 %235)
  %237 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %240 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %239, i32 0, i32 2
  store i32 %238, i32* %240, align 8
  %241 = load i32, i32* @MSG_MSGDUMP, align 4
  %242 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %243 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %242, i32 0, i32 1
  %244 = load i64*, i64** %243, align 8
  %245 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %246 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @wpa_hexdump(i32 %241, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64* %244, i32 %247)
  %249 = load i64*, i64** %11, align 8
  %250 = load i64*, i64** %12, align 8
  %251 = load i64*, i64** %11, align 8
  %252 = ptrtoint i64* %250 to i64
  %253 = ptrtoint i64* %251 to i64
  %254 = sub i64 %252, %253
  %255 = sdiv exact i64 %254, 8
  %256 = trunc i64 %255 to i32
  %257 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %258 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %257, i32 0, i32 7
  %259 = call i64 @x509_parse_algorithm_identifier(i64* %249, i32 %256, i32* %258, i64** %11)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %228
  store i32 -1, i32* %5, align 4
  br label %534

262:                                              ; preds = %228
  %263 = load i64*, i64** %11, align 8
  %264 = load i64*, i64** %12, align 8
  %265 = load i64*, i64** %11, align 8
  %266 = ptrtoint i64* %264 to i64
  %267 = ptrtoint i64* %265 to i64
  %268 = sub i64 %266, %267
  %269 = sdiv exact i64 %268, 8
  %270 = trunc i64 %269 to i32
  %271 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %272 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %271, i32 0, i32 6
  %273 = call i64 @x509_parse_name(i64* %263, i32 %270, i32* %272, i64** %11)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %262
  store i32 -1, i32* %5, align 4
  br label %534

276:                                              ; preds = %262
  %277 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %278 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %277, i32 0, i32 6
  %279 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %280 = call i32 @x509_name_string(i32* %278, i8* %279, i32 128)
  %281 = load i32, i32* @MSG_MSGDUMP, align 4
  %282 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %283 = call i32 (i32, i8*, ...) @wpa_printf(i32 %281, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %282)
  %284 = load i64*, i64** %11, align 8
  %285 = load i64*, i64** %12, align 8
  %286 = load i64*, i64** %11, align 8
  %287 = ptrtoint i64* %285 to i64
  %288 = ptrtoint i64* %286 to i64
  %289 = sub i64 %287, %288
  %290 = sdiv exact i64 %289, 8
  %291 = trunc i64 %290 to i32
  %292 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %293 = call i64 @x509_parse_validity(i64* %284, i32 %291, %struct.x509_certificate* %292, i64** %11)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %276
  store i32 -1, i32* %5, align 4
  br label %534

296:                                              ; preds = %276
  %297 = load i64*, i64** %11, align 8
  store i64* %297, i64** %16, align 8
  %298 = load i64*, i64** %11, align 8
  %299 = load i64*, i64** %12, align 8
  %300 = load i64*, i64** %11, align 8
  %301 = ptrtoint i64* %299 to i64
  %302 = ptrtoint i64* %300 to i64
  %303 = sub i64 %301, %302
  %304 = sdiv exact i64 %303, 8
  %305 = trunc i64 %304 to i32
  %306 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %307 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %306, i32 0, i32 5
  %308 = call i64 @x509_parse_name(i64* %298, i32 %305, i32* %307, i64** %11)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %296
  store i32 -1, i32* %5, align 4
  br label %534

311:                                              ; preds = %296
  %312 = load i64*, i64** %11, align 8
  %313 = load i64*, i64** %16, align 8
  %314 = ptrtoint i64* %312 to i64
  %315 = ptrtoint i64* %313 to i64
  %316 = sub i64 %314, %315
  %317 = sdiv exact i64 %316, 8
  %318 = trunc i64 %317 to i32
  %319 = call i64* @os_malloc(i32 %318)
  %320 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %321 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %320, i32 0, i32 3
  store i64* %319, i64** %321, align 8
  %322 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %323 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %322, i32 0, i32 3
  %324 = load i64*, i64** %323, align 8
  %325 = icmp ne i64* %324, null
  br i1 %325, label %327, label %326

326:                                              ; preds = %311
  store i32 -1, i32* %5, align 4
  br label %534

327:                                              ; preds = %311
  %328 = load i64*, i64** %11, align 8
  %329 = load i64*, i64** %16, align 8
  %330 = ptrtoint i64* %328 to i64
  %331 = ptrtoint i64* %329 to i64
  %332 = sub i64 %330, %331
  %333 = sdiv exact i64 %332, 8
  %334 = trunc i64 %333 to i32
  %335 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %336 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %335, i32 0, i32 4
  store i32 %334, i32* %336, align 8
  %337 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %338 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %337, i32 0, i32 3
  %339 = load i64*, i64** %338, align 8
  %340 = load i64*, i64** %16, align 8
  %341 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %342 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @os_memcpy(i64* %339, i64* %340, i32 %343)
  %345 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %346 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %345, i32 0, i32 5
  %347 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %348 = call i32 @x509_name_string(i32* %346, i8* %347, i32 128)
  %349 = load i32, i32* @MSG_MSGDUMP, align 4
  %350 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %351 = call i32 (i32, i8*, ...) @wpa_printf(i32 %349, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %350)
  %352 = load i64*, i64** %11, align 8
  %353 = load i64*, i64** %12, align 8
  %354 = load i64*, i64** %11, align 8
  %355 = ptrtoint i64* %353 to i64
  %356 = ptrtoint i64* %354 to i64
  %357 = sub i64 %355, %356
  %358 = sdiv exact i64 %357, 8
  %359 = trunc i64 %358 to i32
  %360 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %361 = call i64 @x509_parse_public_key(i64* %352, i32 %359, %struct.x509_certificate* %360, i64** %11)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %327
  store i32 -1, i32* %5, align 4
  br label %534

364:                                              ; preds = %327
  %365 = load i64*, i64** %11, align 8
  %366 = load i64*, i64** %12, align 8
  %367 = icmp eq i64* %365, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %364
  store i32 0, i32* %5, align 4
  br label %534

369:                                              ; preds = %364
  %370 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %371 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @X509_CERT_V1, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %376

375:                                              ; preds = %369
  store i32 0, i32* %5, align 4
  br label %534

376:                                              ; preds = %369
  %377 = load i64*, i64** %11, align 8
  %378 = load i64*, i64** %12, align 8
  %379 = load i64*, i64** %11, align 8
  %380 = ptrtoint i64* %378 to i64
  %381 = ptrtoint i64* %379 to i64
  %382 = sub i64 %380, %381
  %383 = sdiv exact i64 %382, 8
  %384 = trunc i64 %383 to i32
  %385 = call i64 @asn1_get_next(i64* %377, i32 %384, %struct.asn1_hdr* %10)
  %386 = icmp slt i64 %385, 0
  br i1 %386, label %392, label %387

387:                                              ; preds = %376
  %388 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @ASN1_CLASS_CONTEXT_SPECIFIC, align 4
  %391 = icmp ne i32 %389, %390
  br i1 %391, label %392, label %399

392:                                              ; preds = %387, %376
  %393 = load i32, i32* @MSG_DEBUG, align 4
  %394 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %395 = load i32, i32* %394, align 4
  %396 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = call i32 (i32, i8*, ...) @wpa_printf(i32 %393, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.9, i64 0, i64 0), i32 %395, i32 %397)
  store i32 -1, i32* %5, align 4
  br label %534

399:                                              ; preds = %387
  %400 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = icmp eq i32 %401, 1
  br i1 %402, label %403, label %440

403:                                              ; preds = %399
  %404 = load i32, i32* @MSG_DEBUG, align 4
  %405 = call i32 (i32, i8*, ...) @wpa_printf(i32 %404, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %406 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %407 = load i64*, i64** %406, align 8
  %408 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i64, i64* %407, i64 %410
  store i64* %411, i64** %11, align 8
  %412 = load i64*, i64** %11, align 8
  %413 = load i64*, i64** %12, align 8
  %414 = icmp eq i64* %412, %413
  br i1 %414, label %415, label %416

415:                                              ; preds = %403
  store i32 0, i32* %5, align 4
  br label %534

416:                                              ; preds = %403
  %417 = load i64*, i64** %11, align 8
  %418 = load i64*, i64** %12, align 8
  %419 = load i64*, i64** %11, align 8
  %420 = ptrtoint i64* %418 to i64
  %421 = ptrtoint i64* %419 to i64
  %422 = sub i64 %420, %421
  %423 = sdiv exact i64 %422, 8
  %424 = trunc i64 %423 to i32
  %425 = call i64 @asn1_get_next(i64* %417, i32 %424, %struct.asn1_hdr* %10)
  %426 = icmp slt i64 %425, 0
  br i1 %426, label %432, label %427

427:                                              ; preds = %416
  %428 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* @ASN1_CLASS_CONTEXT_SPECIFIC, align 4
  %431 = icmp ne i32 %429, %430
  br i1 %431, label %432, label %439

432:                                              ; preds = %427, %416
  %433 = load i32, i32* @MSG_DEBUG, align 4
  %434 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %435 = load i32, i32* %434, align 4
  %436 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = call i32 (i32, i8*, ...) @wpa_printf(i32 %433, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.9, i64 0, i64 0), i32 %435, i32 %437)
  store i32 -1, i32* %5, align 4
  br label %534

439:                                              ; preds = %427
  br label %440

440:                                              ; preds = %439, %399
  %441 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = icmp eq i32 %442, 2
  br i1 %443, label %444, label %481

444:                                              ; preds = %440
  %445 = load i32, i32* @MSG_DEBUG, align 4
  %446 = call i32 (i32, i8*, ...) @wpa_printf(i32 %445, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %447 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %448 = load i64*, i64** %447, align 8
  %449 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %450 = load i32, i32* %449, align 8
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i64, i64* %448, i64 %451
  store i64* %452, i64** %11, align 8
  %453 = load i64*, i64** %11, align 8
  %454 = load i64*, i64** %12, align 8
  %455 = icmp eq i64* %453, %454
  br i1 %455, label %456, label %457

456:                                              ; preds = %444
  store i32 0, i32* %5, align 4
  br label %534

457:                                              ; preds = %444
  %458 = load i64*, i64** %11, align 8
  %459 = load i64*, i64** %12, align 8
  %460 = load i64*, i64** %11, align 8
  %461 = ptrtoint i64* %459 to i64
  %462 = ptrtoint i64* %460 to i64
  %463 = sub i64 %461, %462
  %464 = sdiv exact i64 %463, 8
  %465 = trunc i64 %464 to i32
  %466 = call i64 @asn1_get_next(i64* %458, i32 %465, %struct.asn1_hdr* %10)
  %467 = icmp slt i64 %466, 0
  br i1 %467, label %473, label %468

468:                                              ; preds = %457
  %469 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* @ASN1_CLASS_CONTEXT_SPECIFIC, align 4
  %472 = icmp ne i32 %470, %471
  br i1 %472, label %473, label %480

473:                                              ; preds = %468, %457
  %474 = load i32, i32* @MSG_DEBUG, align 4
  %475 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %476 = load i32, i32* %475, align 4
  %477 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = call i32 (i32, i8*, ...) @wpa_printf(i32 %474, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.9, i64 0, i64 0), i32 %476, i32 %478)
  store i32 -1, i32* %5, align 4
  br label %534

480:                                              ; preds = %468
  br label %481

481:                                              ; preds = %480, %440
  %482 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = icmp ne i32 %483, 3
  br i1 %484, label %485, label %490

485:                                              ; preds = %481
  %486 = load i32, i32* @MSG_DEBUG, align 4
  %487 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = call i32 (i32, i8*, ...) @wpa_printf(i32 %486, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.12, i64 0, i64 0), i32 %488)
  store i32 0, i32* %5, align 4
  br label %534

490:                                              ; preds = %481
  %491 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %492 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = load i64, i64* @X509_CERT_V3, align 8
  %495 = icmp ne i64 %493, %494
  br i1 %495, label %496, label %503

496:                                              ; preds = %490
  %497 = load i32, i32* @MSG_DEBUG, align 4
  %498 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %499 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = add i64 %500, 1
  %502 = call i32 (i32, i8*, ...) @wpa_printf(i32 %497, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.13, i64 0, i64 0), i64 %501)
  store i32 -1, i32* %5, align 4
  br label %534

503:                                              ; preds = %490
  %504 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %505 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %506 = load i64*, i64** %505, align 8
  %507 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %508 = load i32, i32* %507, align 8
  %509 = call i64 @x509_parse_extensions(%struct.x509_certificate* %504, i64* %506, i32 %508)
  %510 = icmp slt i64 %509, 0
  br i1 %510, label %511, label %512

511:                                              ; preds = %503
  store i32 -1, i32* %5, align 4
  br label %534

512:                                              ; preds = %503
  %513 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %514 = load i64*, i64** %513, align 8
  %515 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %516 = load i32, i32* %515, align 8
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i64, i64* %514, i64 %517
  store i64* %518, i64** %11, align 8
  %519 = load i64*, i64** %11, align 8
  %520 = load i64*, i64** %12, align 8
  %521 = icmp ult i64* %519, %520
  br i1 %521, label %522, label %533

522:                                              ; preds = %512
  %523 = load i32, i32* @MSG_DEBUG, align 4
  %524 = load i64*, i64** %11, align 8
  %525 = load i64*, i64** %12, align 8
  %526 = load i64*, i64** %11, align 8
  %527 = ptrtoint i64* %525 to i64
  %528 = ptrtoint i64* %526 to i64
  %529 = sub i64 %527, %528
  %530 = sdiv exact i64 %529, 8
  %531 = trunc i64 %530 to i32
  %532 = call i32 @wpa_hexdump(i32 %523, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i64* %524, i32 %531)
  br label %533

533:                                              ; preds = %522, %512
  store i32 0, i32* %5, align 4
  br label %534

534:                                              ; preds = %533, %511, %496, %485, %473, %456, %432, %415, %392, %375, %368, %363, %326, %310, %295, %275, %261, %193, %162, %144, %99, %88, %77, %58, %32
  %535 = load i32, i32* %5, align 4
  ret i32 %535
}

declare dso_local i64 @asn1_get_next(i64*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memcpy(i64*, i64*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #1

declare dso_local i64 @x509_parse_algorithm_identifier(i64*, i32, i32*, i64**) #1

declare dso_local i64 @x509_parse_name(i64*, i32, i32*, i64**) #1

declare dso_local i32 @x509_name_string(i32*, i8*, i32) #1

declare dso_local i64 @x509_parse_validity(i64*, i32, %struct.x509_certificate*, i64**) #1

declare dso_local i64* @os_malloc(i32) #1

declare dso_local i64 @x509_parse_public_key(i64*, i32, %struct.x509_certificate*, i64**) #1

declare dso_local i64 @x509_parse_extensions(%struct.x509_certificate*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
