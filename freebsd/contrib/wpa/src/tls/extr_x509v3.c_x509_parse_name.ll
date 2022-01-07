; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_name = type { i8*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }
%struct.asn1_hdr = type { i64, i64, i32, i32* }
%struct.asn1_oid = type { i32, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"X509: Expected SEQUENCE (Name / RDNSequencer) - found class %d tag 0x%x\00", align 1
@ASN1_TAG_SET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"X509: Expected SET (RelativeDistinguishedName) - found class %d tag 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"X509: Expected SEQUENCE (AttributeTypeAndValue) - found class %d tag 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"X509: Failed to parse AttributeValue\00", align 1
@X509_NAME_ATTR_NOT_USED = common dso_local global i32 0, align 4
@X509_NAME_ATTR_CN = common dso_local global i32 0, align 4
@X509_NAME_ATTR_C = common dso_local global i32 0, align 4
@X509_NAME_ATTR_L = common dso_local global i32 0, align 4
@X509_NAME_ATTR_ST = common dso_local global i32 0, align 4
@X509_NAME_ATTR_O = common dso_local global i32 0, align 4
@X509_NAME_ATTR_OU = common dso_local global i32 0, align 4
@X509_NAME_ATTR_DC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"X509: Unrecognized OID\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"X509: Attribute Data\00", align 1
@X509_MAX_NAME_ATTRIBUTES = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"X509: Too many Name attributes\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"X509: Reject certificate with embedded NUL byte in a string (%s[NUL])\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_parse_name(i32* %0, i64 %1, %struct.x509_name* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.x509_name*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.asn1_hdr, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.asn1_oid, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.x509_name* %2, %struct.x509_name** %8, align 8
  store i32** %3, i32*** %9, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i64 @asn1_get_next(i32* %20, i32 %22, %struct.asn1_hdr* %10)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %30, %25, %4
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %40)
  store i32 -1, i32* %5, align 4
  br label %434

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %11, align 8
  %45 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32*, i32** %11, align 8
  %52 = ptrtoint i32* %50 to i64
  %53 = ptrtoint i32* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 4
  %56 = icmp sgt i64 %47, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i32 -1, i32* %5, align 4
  br label %434

58:                                               ; preds = %42
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32**, i32*** %9, align 8
  store i32* %63, i32** %64, align 8
  store i32* %63, i32** %12, align 8
  br label %65

65:                                               ; preds = %410, %355, %285, %58
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = icmp ult i32* %66, %67
  br i1 %68, label %69, label %433

69:                                               ; preds = %65
  %70 = load i32*, i32** %11, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = ptrtoint i32* %71 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i64 @asn1_get_next(i32* %70, i32 %77, %struct.asn1_hdr* %10)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ASN1_TAG_SET, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %85, %80, %69
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %93, i64 %95)
  %97 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %98 = call i32 @x509_free_name(%struct.x509_name* %97)
  store i32 -1, i32* %5, align 4
  br label %434

99:                                               ; preds = %85
  %100 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %13, align 8
  %102 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32* %107, i32** %14, align 8
  store i32* %107, i32** %11, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = ptrtoint i32* %109 to i64
  %112 = ptrtoint i32* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i64 @asn1_get_next(i32* %108, i32 %115, %struct.asn1_hdr* %10)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %99
  %119 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %123, %118, %99
  %129 = load i32, i32* @MSG_DEBUG, align 4
  %130 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 (i32, i8*, ...) @wpa_printf(i32 %129, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %131, i64 %133)
  %135 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %136 = call i32 @x509_free_name(%struct.x509_name* %135)
  store i32 -1, i32* %5, align 4
  br label %434

137:                                              ; preds = %123
  %138 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %15, align 8
  %140 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32* %145, i32** %16, align 8
  %146 = load i32*, i32** %15, align 8
  %147 = load i32*, i32** %16, align 8
  %148 = load i32*, i32** %15, align 8
  %149 = ptrtoint i32* %147 to i64
  %150 = ptrtoint i32* %148 to i64
  %151 = sub i64 %149, %150
  %152 = sdiv exact i64 %151, 4
  %153 = trunc i64 %152 to i32
  %154 = call i64 @asn1_get_oid(i32* %146, i32 %153, %struct.asn1_oid* %17, i32** %15)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %137
  %157 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %158 = call i32 @x509_free_name(%struct.x509_name* %157)
  store i32 -1, i32* %5, align 4
  br label %434

159:                                              ; preds = %137
  %160 = load i32*, i32** %15, align 8
  %161 = load i32*, i32** %16, align 8
  %162 = load i32*, i32** %15, align 8
  %163 = ptrtoint i32* %161 to i64
  %164 = ptrtoint i32* %162 to i64
  %165 = sub i64 %163, %164
  %166 = sdiv exact i64 %165, 4
  %167 = trunc i64 %166 to i32
  %168 = call i64 @asn1_get_next(i32* %160, i32 %167, %struct.asn1_hdr* %10)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %159
  %171 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %170, %159
  %176 = load i32, i32* @MSG_DEBUG, align 4
  %177 = call i32 (i32, i8*, ...) @wpa_printf(i32 %176, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %178 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %179 = call i32 @x509_free_name(%struct.x509_name* %178)
  store i32 -1, i32* %5, align 4
  br label %434

180:                                              ; preds = %170
  %181 = load i32, i32* @X509_NAME_ATTR_NOT_USED, align 4
  store i32 %181, i32* %19, align 4
  %182 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 4
  br i1 %184, label %185, label %221

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %221

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 5
  br i1 %196, label %197, label %221

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 4
  br i1 %202, label %203, label %221

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 3
  %207 = load i32, i32* %206, align 4
  switch i32 %207, label %220 [
    i32 3, label %208
    i32 6, label %210
    i32 7, label %212
    i32 8, label %214
    i32 10, label %216
    i32 11, label %218
  ]

208:                                              ; preds = %203
  %209 = load i32, i32* @X509_NAME_ATTR_CN, align 4
  store i32 %209, i32* %19, align 4
  br label %220

210:                                              ; preds = %203
  %211 = load i32, i32* @X509_NAME_ATTR_C, align 4
  store i32 %211, i32* %19, align 4
  br label %220

212:                                              ; preds = %203
  %213 = load i32, i32* @X509_NAME_ATTR_L, align 4
  store i32 %213, i32* %19, align 4
  br label %220

214:                                              ; preds = %203
  %215 = load i32, i32* @X509_NAME_ATTR_ST, align 4
  store i32 %215, i32* %19, align 4
  br label %220

216:                                              ; preds = %203
  %217 = load i32, i32* @X509_NAME_ATTR_O, align 4
  store i32 %217, i32* %19, align 4
  br label %220

218:                                              ; preds = %203
  %219 = load i32, i32* @X509_NAME_ATTR_OU, align 4
  store i32 %219, i32* %19, align 4
  br label %220

220:                                              ; preds = %203, %218, %216, %214, %212, %210, %208
  br label %351

221:                                              ; preds = %197, %191, %185, %180
  %222 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %223, 7
  br i1 %224, label %225, label %301

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %231, label %301

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 2
  br i1 %236, label %237, label %301

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 2
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 840
  br i1 %242, label %243, label %301

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 3
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 113549
  br i1 %248, label %249, label %301

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 4
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %301

255:                                              ; preds = %249
  %256 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 5
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 9
  br i1 %260, label %261, label %301

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 6
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %267, label %301

267:                                              ; preds = %261
  %268 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %269 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %268, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @os_free(i8* %270)
  %272 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = add nsw i32 %273, 1
  %275 = call i8* @os_malloc(i32 %274)
  %276 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %277 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %276, i32 0, i32 0
  store i8* %275, i8** %277, align 8
  %278 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %279 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = icmp eq i8* %280, null
  br i1 %281, label %282, label %285

282:                                              ; preds = %267
  %283 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %284 = call i32 @x509_free_name(%struct.x509_name* %283)
  store i32 -1, i32* %5, align 4
  br label %434

285:                                              ; preds = %267
  %286 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %287 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @os_memcpy(i8* %288, i32* %290, i32 %292)
  %294 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %295 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %296, i64 %299
  store i8 0, i8* %300, align 1
  br label %65

301:                                              ; preds = %261, %255, %249, %243, %237, %231, %225, %221
  %302 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = icmp eq i32 %303, 7
  br i1 %304, label %305, label %349

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %349

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  %315 = load i32, i32* %314, align 4
  %316 = icmp eq i32 %315, 9
  br i1 %316, label %317, label %349

317:                                              ; preds = %311
  %318 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 2
  %321 = load i32, i32* %320, align 4
  %322 = icmp eq i32 %321, 2342
  br i1 %322, label %323, label %349

323:                                              ; preds = %317
  %324 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 3
  %327 = load i32, i32* %326, align 4
  %328 = icmp eq i32 %327, 19200300
  br i1 %328, label %329, label %349

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 4
  %333 = load i32, i32* %332, align 4
  %334 = icmp eq i32 %333, 100
  br i1 %334, label %335, label %349

335:                                              ; preds = %329
  %336 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 5
  %339 = load i32, i32* %338, align 4
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %341, label %349

341:                                              ; preds = %335
  %342 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 6
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %345, 25
  br i1 %346, label %347, label %349

347:                                              ; preds = %341
  %348 = load i32, i32* @X509_NAME_ATTR_DC, align 4
  store i32 %348, i32* %19, align 4
  br label %349

349:                                              ; preds = %347, %341, %335, %329, %323, %317, %311, %305, %301
  br label %350

350:                                              ; preds = %349
  br label %351

351:                                              ; preds = %350, %220
  %352 = load i32, i32* %19, align 4
  %353 = load i32, i32* @X509_NAME_ATTR_NOT_USED, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %372

355:                                              ; preds = %351
  %356 = load i32, i32* @MSG_DEBUG, align 4
  %357 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = sext i32 %360 to i64
  %362 = mul i64 %361, 4
  %363 = trunc i64 %362 to i32
  %364 = call i32 @wpa_hexdump(i32 %356, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %358, i32 %363)
  %365 = load i32, i32* @MSG_MSGDUMP, align 4
  %366 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = sext i32 %369 to i64
  %371 = call i32 @wpa_hexdump_ascii(i32 %365, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %367, i64 %370)
  br label %65

372:                                              ; preds = %351
  %373 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %374 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @X509_MAX_NAME_ATTRIBUTES, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %383

378:                                              ; preds = %372
  %379 = load i32, i32* @MSG_INFO, align 4
  %380 = call i32 (i32, i8*, ...) @wpa_printf(i32 %379, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %381 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %382 = call i32 @x509_free_name(%struct.x509_name* %381)
  store i32 -1, i32* %5, align 4
  br label %434

383:                                              ; preds = %372
  %384 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %387 = load i32, i32* %386, align 8
  %388 = sext i32 %387 to i64
  %389 = call i8* @dup_binstr(i32* %385, i64 %388)
  store i8* %389, i8** %18, align 8
  %390 = load i8*, i8** %18, align 8
  %391 = icmp eq i8* %390, null
  br i1 %391, label %392, label %395

392:                                              ; preds = %383
  %393 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %394 = call i32 @x509_free_name(%struct.x509_name* %393)
  store i32 -1, i32* %5, align 4
  br label %434

395:                                              ; preds = %383
  %396 = load i8*, i8** %18, align 8
  %397 = call i64 @os_strlen(i8* %396)
  %398 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = sext i32 %399 to i64
  %401 = icmp ne i64 %397, %400
  br i1 %401, label %402, label %410

402:                                              ; preds = %395
  %403 = load i32, i32* @MSG_INFO, align 4
  %404 = load i8*, i8** %18, align 8
  %405 = call i32 (i32, i8*, ...) @wpa_printf(i32 %403, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0), i8* %404)
  %406 = load i8*, i8** %18, align 8
  %407 = call i32 @os_free(i8* %406)
  %408 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %409 = call i32 @x509_free_name(%struct.x509_name* %408)
  store i32 -1, i32* %5, align 4
  br label %434

410:                                              ; preds = %395
  %411 = load i32, i32* %19, align 4
  %412 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %413 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %412, i32 0, i32 2
  %414 = load %struct.TYPE_2__*, %struct.TYPE_2__** %413, align 8
  %415 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %416 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %418, i32 0, i32 0
  store i32 %411, i32* %419, align 8
  %420 = load i8*, i8** %18, align 8
  %421 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %422 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %421, i32 0, i32 2
  %423 = load %struct.TYPE_2__*, %struct.TYPE_2__** %422, align 8
  %424 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %425 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %424, i32 0, i32 1
  %426 = load i64, i64* %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %423, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %427, i32 0, i32 1
  store i8* %420, i8** %428, align 8
  %429 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %430 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %429, i32 0, i32 1
  %431 = load i64, i64* %430, align 8
  %432 = add i64 %431, 1
  store i64 %432, i64* %430, align 8
  br label %65

433:                                              ; preds = %65
  store i32 0, i32* %5, align 4
  br label %434

434:                                              ; preds = %433, %402, %392, %378, %282, %175, %156, %128, %90, %57, %35
  %435 = load i32, i32* %5, align 4
  ret i32 %435
}

declare dso_local i64 @asn1_get_next(i32*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @x509_free_name(%struct.x509_name*) #1

declare dso_local i64 @asn1_get_oid(i32*, i32, %struct.asn1_oid*, i32**) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i8* @dup_binstr(i32*, i64) #1

declare dso_local i64 @os_strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
