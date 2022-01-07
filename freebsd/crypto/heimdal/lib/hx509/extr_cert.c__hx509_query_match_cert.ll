; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c__hx509_query_match_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c__hx509_query_match_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32 (i32, i32, i32)*, i64, i32, i32, i32, i32, i32, %struct.TYPE_19__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_27__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_21__, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32 }

@HX509_QUERY_FIND_ISSUER_CERT = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_CERTIFICATE = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_SERIALNUMBER = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_ISSUER_NAME = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_SUBJECT_NAME = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_SUBJECT_KEY_ID = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_ISSUER_ID = common dso_local global i32 0, align 4
@HX509_QUERY_PRIVATE_KEY = common dso_local global i32 0, align 4
@HX509_QUERY_KU_DIGITALSIGNATURE = common dso_local global i32 0, align 4
@HX509_QUERY_KU_NONREPUDIATION = common dso_local global i32 0, align 4
@HX509_QUERY_KU_ENCIPHERMENT = common dso_local global i32 0, align 4
@HX509_QUERY_KU_DATAENCIPHERMENT = common dso_local global i32 0, align 4
@HX509_QUERY_KU_KEYAGREEMENT = common dso_local global i32 0, align 4
@HX509_QUERY_KU_KEYCERTSIGN = common dso_local global i32 0, align 4
@HX509_QUERY_KU_CRLSIGN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HX509_QUERY_ANCHOR = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_LOCAL_KEY_ID = common dso_local global i32 0, align 4
@asn1_oid_id_pkcs_9_at_localKeyId = common dso_local global i32 0, align 4
@HX509_QUERY_NO_MATCH_PATH = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_FRIENDLY_NAME = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_FUNCTION = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_KEY_HASH_SHA1 = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_TIME = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_EKU = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_EXPR = common dso_local global i32 0, align 4
@HX509_QUERY_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_query_match_cert(i32 %0, %struct.TYPE_24__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_26__, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.TYPE_27__* @_hx509_get_cert(i32 %19)
  store %struct.TYPE_27__* %20, %struct.TYPE_27__** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = call i32 @_hx509_query_statistic(i32 %21, i32 1, %struct.TYPE_24__* %22)
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HX509_QUERY_FIND_ISSUER_CERT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 15
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %35 = call i64 @_hx509_cert_is_parent_cmp(i32 %33, %struct.TYPE_27__* %34, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %466

38:                                               ; preds = %30, %3
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @HX509_QUERY_MATCH_CERTIFICATE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %50 = call i64 @_hx509_Certificate_cmp(i32 %48, %struct.TYPE_27__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %466

53:                                               ; preds = %45, %38
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @HX509_QUERY_MATCH_SERIALNUMBER, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 13
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @der_heim_integer_cmp(i32* %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %466

70:                                               ; preds = %60, %53
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @HX509_QUERY_MATCH_ISSUER_NAME, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %70
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 12
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @_hx509_name_cmp(i32* %80, i32 %83, i32* %10)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %77
  store i32 0, i32* %4, align 4
  br label %466

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91, %70
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @HX509_QUERY_MATCH_SUBJECT_NAME, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %92
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @_hx509_name_cmp(i32* %102, i32 %105, i32* %10)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %99
  store i32 0, i32* %4, align 4
  br label %466

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113, %92
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @HX509_QUERY_MATCH_SUBJECT_KEY_ID, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %114
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %123 = call i32 @_hx509_find_extension_subject_key_id(%struct.TYPE_27__* %122, i32* %11)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @der_heim_octet_string_cmp(i32* %11, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store i32 1, i32* %9, align 4
  br label %133

133:                                              ; preds = %132, %126
  %134 = call i32 @free_SubjectKeyIdentifier(i32* %11)
  br label %135

135:                                              ; preds = %133, %121
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 0, i32* %4, align 4
  br label %466

139:                                              ; preds = %135
  br label %140

140:                                              ; preds = %139, %114
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @HX509_QUERY_MATCH_ISSUER_ID, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %466

148:                                              ; preds = %140
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @HX509_QUERY_PRIVATE_KEY, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load i32, i32* %7, align 4
  %157 = call i32* @_hx509_cert_private_key(i32 %156)
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32 0, i32* %4, align 4
  br label %466

160:                                              ; preds = %155, %148
  store i32 0, i32* %12, align 4
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @HX509_QUERY_KU_DIGITALSIGNATURE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load i32, i32* %12, align 4
  %169 = or i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %170

170:                                              ; preds = %167, %160
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @HX509_QUERY_KU_NONREPUDIATION, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load i32, i32* %12, align 4
  %179 = or i32 %178, 2
  store i32 %179, i32* %12, align 4
  br label %180

180:                                              ; preds = %177, %170
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @HX509_QUERY_KU_ENCIPHERMENT, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = load i32, i32* %12, align 4
  %189 = or i32 %188, 4
  store i32 %189, i32* %12, align 4
  br label %190

190:                                              ; preds = %187, %180
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @HX509_QUERY_KU_DATAENCIPHERMENT, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %190
  %198 = load i32, i32* %12, align 4
  %199 = or i32 %198, 8
  store i32 %199, i32* %12, align 4
  br label %200

200:                                              ; preds = %197, %190
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @HX509_QUERY_KU_KEYAGREEMENT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %200
  %208 = load i32, i32* %12, align 4
  %209 = or i32 %208, 16
  store i32 %209, i32* %12, align 4
  br label %210

210:                                              ; preds = %207, %200
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @HX509_QUERY_KU_KEYCERTSIGN, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %210
  %218 = load i32, i32* %12, align 4
  %219 = or i32 %218, 32
  store i32 %219, i32* %12, align 4
  br label %220

220:                                              ; preds = %217, %210
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @HX509_QUERY_KU_CRLSIGN, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %220
  %228 = load i32, i32* %12, align 4
  %229 = or i32 %228, 64
  store i32 %229, i32* %12, align 4
  br label %230

230:                                              ; preds = %227, %220
  %231 = load i32, i32* %12, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %230
  %234 = load i32, i32* %5, align 4
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* @TRUE, align 4
  %238 = call i64 @check_key_usage(i32 %234, %struct.TYPE_27__* %235, i32 %236, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %233
  store i32 0, i32* %4, align 4
  br label %466

241:                                              ; preds = %233, %230
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @HX509_QUERY_ANCHOR, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %241
  store i32 0, i32* %4, align 4
  br label %466

249:                                              ; preds = %241
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @HX509_QUERY_MATCH_LOCAL_KEY_ID, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %272

256:                                              ; preds = %249
  %257 = load i32, i32* %7, align 4
  %258 = call %struct.TYPE_25__* @hx509_cert_get_attribute(i32 %257, i32* @asn1_oid_id_pkcs_9_at_localKeyId)
  store %struct.TYPE_25__* %258, %struct.TYPE_25__** %13, align 8
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %260 = icmp eq %struct.TYPE_25__* %259, null
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  store i32 0, i32* %4, align 4
  br label %466

262:                                              ; preds = %256
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 9
  %267 = load i32, i32* %266, align 8
  %268 = call i64 @der_heim_octet_string_cmp(i32* %264, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %262
  store i32 0, i32* %4, align 4
  br label %466

271:                                              ; preds = %262
  br label %272

272:                                              ; preds = %271, %249
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @HX509_QUERY_NO_MATCH_PATH, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %306

279:                                              ; preds = %272
  store i64 0, i64* %14, align 8
  br label %280

280:                                              ; preds = %302, %279
  %281 = load i64, i64* %14, align 8
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 8
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp ult i64 %281, %286
  br i1 %287, label %288, label %305

288:                                              ; preds = %280
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 8
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = load i64, i64* %14, align 8
  %295 = getelementptr inbounds i32, i32* %293, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %7, align 4
  %298 = call i64 @hx509_cert_cmp(i32 %296, i32 %297)
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %288
  store i32 0, i32* %4, align 4
  br label %466

301:                                              ; preds = %288
  br label %302

302:                                              ; preds = %301
  %303 = load i64, i64* %14, align 8
  %304 = add i64 %303, 1
  store i64 %304, i64* %14, align 8
  br label %280

305:                                              ; preds = %280
  br label %306

306:                                              ; preds = %305, %272
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @HX509_QUERY_MATCH_FRIENDLY_NAME, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %328

313:                                              ; preds = %306
  %314 = load i32, i32* %7, align 4
  %315 = call i8* @hx509_cert_get_friendly_name(i32 %314)
  store i8* %315, i8** %15, align 8
  %316 = load i8*, i8** %15, align 8
  %317 = icmp eq i8* %316, null
  br i1 %317, label %318, label %319

318:                                              ; preds = %313
  store i32 0, i32* %4, align 4
  br label %466

319:                                              ; preds = %313
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 7
  %322 = load i32, i32* %321, align 8
  %323 = load i8*, i8** %15, align 8
  %324 = call i64 @strcasecmp(i32 %322, i8* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %319
  store i32 0, i32* %4, align 4
  br label %466

327:                                              ; preds = %319
  br label %328

328:                                              ; preds = %327, %306
  %329 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @HX509_QUERY_MATCH_FUNCTION, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %349

335:                                              ; preds = %328
  %336 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i32 0, i32 1
  %338 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %337, align 8
  %339 = load i32, i32* %5, align 4
  %340 = load i32, i32* %7, align 4
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 6
  %343 = load i32, i32* %342, align 4
  %344 = call i32 %338(i32 %339, i32 %340, i32 %343)
  store i32 %344, i32* %9, align 4
  %345 = load i32, i32* %9, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %335
  store i32 0, i32* %4, align 4
  br label %466

348:                                              ; preds = %335
  br label %349

349:                                              ; preds = %348, %328
  %350 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @HX509_QUERY_MATCH_KEY_HASH_SHA1, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %382

356:                                              ; preds = %349
  %357 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 1
  store i32 %362, i32* %363, align 4
  %364 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = sdiv i32 %369, 8
  %371 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  store i32 %370, i32* %371, align 4
  %372 = load i32, i32* %5, align 4
  %373 = call i32 (...) @hx509_signature_sha1()
  %374 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @_hx509_verify_signature(i32 %372, i32* null, i32 %373, %struct.TYPE_26__* %16, i32 %376)
  store i32 %377, i32* %9, align 4
  %378 = load i32, i32* %9, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %356
  store i32 0, i32* %4, align 4
  br label %466

381:                                              ; preds = %356
  br label %382

382:                                              ; preds = %381, %349
  %383 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @HX509_QUERY_MATCH_TIME, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %414

389:                                              ; preds = %382
  %390 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %392, i32 0, i32 1
  %394 = call i64 @_hx509_Time2time_t(i32* %393)
  store i64 %394, i64* %17, align 8
  %395 = load i64, i64* %17, align 8
  %396 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %396, i32 0, i32 2
  %398 = load i64, i64* %397, align 8
  %399 = icmp sgt i64 %395, %398
  br i1 %399, label %400, label %401

400:                                              ; preds = %389
  store i32 0, i32* %4, align 4
  br label %466

401:                                              ; preds = %389
  %402 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %403 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %404, i32 0, i32 0
  %406 = call i64 @_hx509_Time2time_t(i32* %405)
  store i64 %406, i64* %17, align 8
  %407 = load i64, i64* %17, align 8
  %408 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = icmp slt i64 %407, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %401
  store i32 0, i32* %4, align 4
  br label %466

413:                                              ; preds = %401
  br label %414

414:                                              ; preds = %413, %382
  %415 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* @HX509_QUERY_MATCH_EKU, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %430

421:                                              ; preds = %414
  %422 = load i32, i32* %5, align 4
  %423 = load i32, i32* %7, align 4
  %424 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %424, i32 0, i32 4
  %426 = load i32, i32* %425, align 4
  %427 = call i64 @hx509_cert_check_eku(i32 %422, i32 %423, i32 %426, i32 0)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %421
  store i32 0, i32* %4, align 4
  br label %466

430:                                              ; preds = %421, %414
  %431 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* @HX509_QUERY_MATCH_EXPR, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %456

437:                                              ; preds = %430
  store i32* null, i32** %18, align 8
  %438 = load i32, i32* %5, align 4
  %439 = load i32, i32* %7, align 4
  %440 = call i32 @_hx509_cert_to_env(i32 %438, i32 %439, i32** %18)
  store i32 %440, i32* %9, align 4
  %441 = load i32, i32* %9, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %437
  store i32 0, i32* %4, align 4
  br label %466

444:                                              ; preds = %437
  %445 = load i32, i32* %5, align 4
  %446 = load i32*, i32** %18, align 8
  %447 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %447, i32 0, i32 3
  %449 = load i32, i32* %448, align 8
  %450 = call i32 @_hx509_expr_eval(i32 %445, i32* %446, i32 %449)
  store i32 %450, i32* %9, align 4
  %451 = call i32 @hx509_env_free(i32** %18)
  %452 = load i32, i32* %9, align 4
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %444
  store i32 0, i32* %4, align 4
  br label %466

455:                                              ; preds = %444
  br label %456

456:                                              ; preds = %455, %430
  %457 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %458 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* @HX509_QUERY_MASK, align 4
  %461 = xor i32 %460, -1
  %462 = and i32 %459, %461
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %465

464:                                              ; preds = %456
  store i32 0, i32* %4, align 4
  br label %466

465:                                              ; preds = %456
  store i32 1, i32* %4, align 4
  br label %466

466:                                              ; preds = %465, %464, %454, %443, %429, %412, %400, %380, %347, %326, %318, %300, %270, %261, %248, %240, %159, %147, %138, %112, %90, %69, %52, %37
  %467 = load i32, i32* %4, align 4
  ret i32 %467
}

declare dso_local %struct.TYPE_27__* @_hx509_get_cert(i32) #1

declare dso_local i32 @_hx509_query_statistic(i32, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @_hx509_cert_is_parent_cmp(i32, %struct.TYPE_27__*, i32) #1

declare dso_local i64 @_hx509_Certificate_cmp(i32, %struct.TYPE_27__*) #1

declare dso_local i64 @der_heim_integer_cmp(i32*, i32) #1

declare dso_local i32 @_hx509_name_cmp(i32*, i32, i32*) #1

declare dso_local i32 @_hx509_find_extension_subject_key_id(%struct.TYPE_27__*, i32*) #1

declare dso_local i64 @der_heim_octet_string_cmp(i32*, i32) #1

declare dso_local i32 @free_SubjectKeyIdentifier(i32*) #1

declare dso_local i32* @_hx509_cert_private_key(i32) #1

declare dso_local i64 @check_key_usage(i32, %struct.TYPE_27__*, i32, i32) #1

declare dso_local %struct.TYPE_25__* @hx509_cert_get_attribute(i32, i32*) #1

declare dso_local i64 @hx509_cert_cmp(i32, i32) #1

declare dso_local i8* @hx509_cert_get_friendly_name(i32) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @_hx509_verify_signature(i32, i32*, i32, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @hx509_signature_sha1(...) #1

declare dso_local i64 @_hx509_Time2time_t(i32*) #1

declare dso_local i64 @hx509_cert_check_eku(i32, i32, i32, i32) #1

declare dso_local i32 @_hx509_cert_to_env(i32, i32, i32**) #1

declare dso_local i32 @_hx509_expr_eval(i32, i32*, i32) #1

declare dso_local i32 @hx509_env_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
