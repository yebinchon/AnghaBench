; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_hx509_verify_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_hx509_verify_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_69__ = type { i64 }
%struct.TYPE_67__ = type { i32, i64, i64, i32, i64 }
%struct.TYPE_70__ = type { %struct.TYPE_60__*, i32 }
%struct.TYPE_60__ = type { i32, %struct.TYPE_66__, i32 }
%struct.TYPE_66__ = type { %struct.TYPE_65__, i32, i32, i32 }
%struct.TYPE_65__ = type { i32, i32 }
%struct.TYPE_68__ = type { i64, %struct.TYPE_70__** }
%struct.TYPE_59__ = type { %struct.TYPE_64__ }
%struct.TYPE_64__ = type { %struct.TYPE_63__ }
%struct.TYPE_63__ = type { i64, %struct.TYPE_62__* }
%struct.TYPE_62__ = type { i32, %struct.TYPE_61__* }
%struct.TYPE_61__ = type { i32 }
%struct.TYPE_58__ = type { i64* }

@HX509_VERIFY_CTX_F_TIME_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"MEMORY:no-TA\00", align 1
@HX509_VERIFY_CTX_F_ALLOW_PROXY_CERTIFICATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HX509_ERROR_APPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Key usage missing from CA certificate\00", align 1
@HX509_PATH_TOO_LONG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Proxy certificate chain longer then allowed\00", align 1
@asn1_oid_id_x509_ce_subjectAltName = common dso_local global i32 0, align 4
@HX509_PROXY_CERT_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"Proxy certificate have explicity forbidden subjectAltName\00", align 1
@asn1_oid_id_x509_ce_issuerAltName = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"Proxy certificate have explicity forbidden issuerAltName\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@HX509_PROXY_CERT_NAME_WRONG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Base proxy name not right\00", align 1
@asn1_oid_id_at_commonName = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [61 x i8] c"Proxy name too short or does not have Common name at the top\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Proxy issuer name not as expected\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@HX509_CERT_USED_BEFORE_TIME = common dso_local global i32 0, align 4
@HX509_CERT_USED_AFTER_TIME = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"MEMORY:revoke-certs\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Failed to verify signature of certificate\00", align 1
@HX509_VERIFY_CTX_F_NO_BEST_BEFORE_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_verify_path(%struct.TYPE_69__* %0, %struct.TYPE_67__* %1, %struct.TYPE_70__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_69__*, align 8
  %7 = alloca %struct.TYPE_67__*, align 8
  %8 = alloca %struct.TYPE_70__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_68__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_59__, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_60__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_58__, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_60__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_70__*, align 8
  %31 = alloca %struct.TYPE_60__*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  store %struct.TYPE_69__* %0, %struct.TYPE_69__** %6, align 8
  store %struct.TYPE_67__* %1, %struct.TYPE_67__** %7, align 8
  store %struct.TYPE_70__* %2, %struct.TYPE_70__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %20, align 8
  %34 = call i32 @memset(%struct.TYPE_59__* %19, i32 0, i32 16)
  %35 = call i32 @init_name_constraints(i32* %10)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %669

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 1
  store %struct.TYPE_70__** null, %struct.TYPE_70__*** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @HX509_VERIFY_CTX_F_TIME_SET, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = call i64 @time(i32* null)
  %51 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %40
  %54 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = call i32* @hx509_certs_ref(i64 %61)
  store i32* %62, i32** %20, align 8
  br label %85

63:                                               ; preds = %53
  %64 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %70 = call i64 @ALLOW_DEF_TA(%struct.TYPE_67__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32* @hx509_certs_ref(i64 %75)
  store i32* %76, i32** %20, align 8
  br label %84

77:                                               ; preds = %68, %63
  %78 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %79 = call i32 @hx509_certs_init(%struct.TYPE_69__* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32** %20)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %663

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %72
  br label %85

85:                                               ; preds = %84, %58
  %86 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %87 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32*, i32** %20, align 8
  %91 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_70__*, %struct.TYPE_70__** %8, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @_hx509_calculate_path(%struct.TYPE_69__* %86, i32 0, i64 %89, i32* %90, i32 %93, %struct.TYPE_70__* %94, i32* %95, %struct.TYPE_68__* %11)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %663

100:                                              ; preds = %85
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %101 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @HX509_VERIFY_CTX_F_ALLOW_PROXY_CERTIFICATE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store i32 128, i32* %18, align 4
  br label %109

108:                                              ; preds = %100
  store i32 129, i32* %18, align 4
  br label %109

109:                                              ; preds = %108, %107
  store i64 0, i64* %16, align 8
  br label %110

110:                                              ; preds = %422, %109
  %111 = load i64, i64* %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %111, %113
  br i1 %114, label %115, label %425

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 1
  %117 = load %struct.TYPE_70__**, %struct.TYPE_70__*** %116, align 8
  %118 = load i64, i64* %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_70__*, %struct.TYPE_70__** %117, i64 %118
  %120 = load %struct.TYPE_70__*, %struct.TYPE_70__** %119, align 8
  %121 = call %struct.TYPE_60__* @_hx509_get_cert(%struct.TYPE_70__* %120)
  store %struct.TYPE_60__* %121, %struct.TYPE_60__** %21, align 8
  %122 = load i32, i32* %18, align 4
  switch i32 %122, label %354 [
    i32 130, label %123
    i32 128, label %164
    i32 129, label %313
  ]

123:                                              ; preds = %115
  %124 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %125 = load %struct.TYPE_60__*, %struct.TYPE_60__** %21, align 8
  %126 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %127 = call i32 @REQUIRE_RFC3280(%struct.TYPE_67__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* @TRUE, align 4
  br label %133

131:                                              ; preds = %123
  %132 = load i32, i32* @FALSE, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = call i32 @check_key_usage(%struct.TYPE_69__* %124, %struct.TYPE_60__* %125, i32 32, i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %140 = load i32, i32* @HX509_ERROR_APPEND, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @hx509_set_error_string(%struct.TYPE_69__* %139, i32 %140, i32 %141, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %663

143:                                              ; preds = %133
  %144 = load i64, i64* %16, align 8
  %145 = add i64 %144, 1
  %146 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %145, %147
  br i1 %148, label %149, label %163

149:                                              ; preds = %143
  %150 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %151 = load %struct.TYPE_60__*, %struct.TYPE_60__** %21, align 8
  %152 = call i32 @certificate_is_self_signed(%struct.TYPE_69__* %150, %struct.TYPE_60__* %151, i32* %23)
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  br label %663

156:                                              ; preds = %149
  %157 = load i32, i32* %23, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %159, %156
  br label %163

163:                                              ; preds = %162, %143
  br label %354

164:                                              ; preds = %115
  %165 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %166 = load %struct.TYPE_60__*, %struct.TYPE_60__** %21, align 8
  %167 = call i32 @is_proxy_cert(%struct.TYPE_69__* %165, %struct.TYPE_60__* %166, %struct.TYPE_58__* %24)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %311

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %24, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = icmp ne i64* %171, null
  br i1 %172, label %173, label %185

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %24, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %16, align 8
  %178 = icmp ult i64 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = call i32 @free_ProxyCertInfo(%struct.TYPE_58__* %24)
  %181 = load i32, i32* @HX509_PATH_TOO_LONG, align 4
  store i32 %181, i32* %12, align 4
  %182 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %183 = load i32, i32* %12, align 4
  %184 = call i32 @hx509_set_error_string(%struct.TYPE_69__* %182, i32 0, i32 %183, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %663

185:                                              ; preds = %173, %169
  %186 = call i32 @free_ProxyCertInfo(%struct.TYPE_58__* %24)
  store i64 0, i64* %25, align 8
  %187 = load %struct.TYPE_60__*, %struct.TYPE_60__** %21, align 8
  %188 = call i32 @find_extension(%struct.TYPE_60__* %187, i32* @asn1_oid_id_x509_ce_subjectAltName, i64* %25)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i32, i32* @HX509_PROXY_CERT_INVALID, align 4
  store i32 %191, i32* %12, align 4
  %192 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @hx509_set_error_string(%struct.TYPE_69__* %192, i32 0, i32 %193, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %663

195:                                              ; preds = %185
  store i64 0, i64* %25, align 8
  %196 = load %struct.TYPE_60__*, %struct.TYPE_60__** %21, align 8
  %197 = call i32 @find_extension(%struct.TYPE_60__* %196, i32* @asn1_oid_id_x509_ce_issuerAltName, i64* %25)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %195
  %200 = load i32, i32* @HX509_PROXY_CERT_INVALID, align 4
  store i32 %200, i32* %12, align 4
  %201 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @hx509_set_error_string(%struct.TYPE_69__* %201, i32 0, i32 %202, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  br label %663

204:                                              ; preds = %195
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %227

207:                                              ; preds = %204
  %208 = load %struct.TYPE_60__*, %struct.TYPE_60__** %21, align 8
  %209 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %209, i32 0, i32 2
  %211 = call i32 @_hx509_name_cmp(%struct.TYPE_59__* %19, i32* %210, i32* %15)
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %207
  %215 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %216 = load i32, i32* %12, align 4
  %217 = call i32 @hx509_set_error_string(%struct.TYPE_69__* %215, i32 0, i32 %216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %663

218:                                              ; preds = %207
  %219 = load i32, i32* %15, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %218
  %222 = load i32, i32* @HX509_PROXY_CERT_NAME_WRONG, align 4
  store i32 %222, i32* %12, align 4
  %223 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @hx509_set_error_string(%struct.TYPE_69__* %223, i32 0, i32 %224, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %663

226:                                              ; preds = %218
  br label %227

227:                                              ; preds = %226, %204
  %228 = call i32 @free_Name(%struct.TYPE_59__* %19)
  %229 = load %struct.TYPE_60__*, %struct.TYPE_60__** %21, align 8
  %230 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %230, i32 0, i32 2
  %232 = call i32 @copy_Name(i32* %231, %struct.TYPE_59__* %19)
  store i32 %232, i32* %12, align 4
  %233 = load i32, i32* %12, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %227
  %236 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %237 = call i32 @hx509_clear_error_string(%struct.TYPE_69__* %236)
  br label %663

238:                                              ; preds = %227
  %239 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %19, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %25, align 8
  %243 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %19, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp ult i64 %246, 2
  br i1 %247, label %273, label %248

248:                                              ; preds = %238
  %249 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %19, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_62__*, %struct.TYPE_62__** %251, align 8
  %253 = load i64, i64* %25, align 8
  %254 = sub i64 %253, 1
  %255 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp sgt i32 %257, 1
  br i1 %258, label %273, label %259

259:                                              ; preds = %248
  %260 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %19, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_62__*, %struct.TYPE_62__** %262, align 8
  %264 = load i64, i64* %25, align 8
  %265 = sub i64 %264, 1
  %266 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_61__*, %struct.TYPE_61__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %268, i64 0
  %270 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %269, i32 0, i32 0
  %271 = call i32 @der_heim_oid_cmp(i32* %270, i32* @asn1_oid_id_at_commonName)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %259, %248, %238
  %274 = load i32, i32* @HX509_PROXY_CERT_NAME_WRONG, align 4
  store i32 %274, i32* %12, align 4
  %275 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %276 = load i32, i32* %12, align 4
  %277 = call i32 @hx509_set_error_string(%struct.TYPE_69__* %275, i32 0, i32 %276, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  br label %663

278:                                              ; preds = %259
  %279 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %19, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_62__*, %struct.TYPE_62__** %281, align 8
  %283 = load i64, i64* %25, align 8
  %284 = sub i64 %283, 1
  %285 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %282, i64 %284
  %286 = call i32 @free_RelativeDistinguishedName(%struct.TYPE_62__* %285)
  %287 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %19, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = sub i64 %290, 1
  store i64 %291, i64* %289, align 8
  %292 = load %struct.TYPE_60__*, %struct.TYPE_60__** %21, align 8
  %293 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %293, i32 0, i32 3
  %295 = call i32 @_hx509_name_cmp(%struct.TYPE_59__* %19, i32* %294, i32* %15)
  store i32 %295, i32* %12, align 4
  %296 = load i32, i32* %12, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %278
  %299 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %300 = load i32, i32* %12, align 4
  %301 = call i32 @hx509_set_error_string(%struct.TYPE_69__* %299, i32 0, i32 %300, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %663

302:                                              ; preds = %278
  %303 = load i32, i32* %15, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %302
  %306 = load i32, i32* @HX509_PROXY_CERT_NAME_WRONG, align 4
  store i32 %306, i32* %12, align 4
  %307 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %308 = load i32, i32* %12, align 4
  %309 = call i32 @hx509_set_error_string(%struct.TYPE_69__* %307, i32 0, i32 %308, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %663

310:                                              ; preds = %302
  br label %354

311:                                              ; preds = %164
  store i32 129, i32* %18, align 4
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %115, %312
  %314 = load i32, i32* %13, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %353

316:                                              ; preds = %313
  %317 = load %struct.TYPE_60__*, %struct.TYPE_60__** %21, align 8
  %318 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %318, i32 0, i32 2
  %320 = call i32 @_hx509_name_cmp(%struct.TYPE_59__* %19, i32* %319, i32* %15)
  store i32 %320, i32* %12, align 4
  %321 = load i32, i32* %12, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %316
  %324 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %325 = load i32, i32* %12, align 4
  %326 = call i32 @hx509_set_error_string(%struct.TYPE_69__* %324, i32 0, i32 %325, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %663

327:                                              ; preds = %316
  %328 = load i32, i32* %15, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = load i32, i32* @HX509_PROXY_CERT_NAME_WRONG, align 4
  store i32 %331, i32* %12, align 4
  %332 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %333 = call i32 @hx509_clear_error_string(%struct.TYPE_69__* %332)
  br label %663

334:                                              ; preds = %327
  %335 = load %struct.TYPE_70__*, %struct.TYPE_70__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %334
  %340 = load %struct.TYPE_70__*, %struct.TYPE_70__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %340, i32 0, i32 1
  %342 = call i32 @hx509_name_free(i32* %341)
  br label %343

343:                                              ; preds = %339, %334
  %344 = load %struct.TYPE_70__*, %struct.TYPE_70__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %344, i32 0, i32 1
  %346 = call i32 @_hx509_name_from_Name(%struct.TYPE_59__* %19, i32* %345)
  store i32 %346, i32* %12, align 4
  %347 = load i32, i32* %12, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %343
  %350 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %351 = call i32 @hx509_clear_error_string(%struct.TYPE_69__* %350)
  br label %663

352:                                              ; preds = %343
  br label %353

353:                                              ; preds = %352, %313
  br label %354

354:                                              ; preds = %115, %353, %310, %163
  %355 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %356 = load %struct.TYPE_60__*, %struct.TYPE_60__** %21, align 8
  %357 = load i32, i32* %18, align 4
  %358 = load i64, i64* %16, align 8
  %359 = load i32, i32* %13, align 4
  %360 = sext i32 %359 to i64
  %361 = sub i64 %358, %360
  %362 = load i32, i32* %14, align 4
  %363 = sext i32 %362 to i64
  %364 = sub i64 %361, %363
  %365 = call i32 @check_basic_constraints(%struct.TYPE_69__* %355, %struct.TYPE_60__* %356, i32 %357, i64 %364)
  store i32 %365, i32* %12, align 4
  %366 = load i32, i32* %12, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %354
  br label %663

369:                                              ; preds = %354
  %370 = load i64, i64* %16, align 8
  %371 = add i64 %370, 1
  %372 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %371, %373
  br i1 %374, label %379, label %375

375:                                              ; preds = %369
  %376 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %377 = call i64 @CHECK_TA(%struct.TYPE_67__* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %410

379:                                              ; preds = %375, %369
  %380 = load %struct.TYPE_60__*, %struct.TYPE_60__** %21, align 8
  %381 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %382, i32 0, i32 0
  %384 = call i64 @_hx509_Time2time_t(i32* %383)
  store i64 %384, i64* %22, align 8
  %385 = load i64, i64* %22, align 8
  %386 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = icmp sgt i64 %385, %388
  br i1 %389, label %390, label %394

390:                                              ; preds = %379
  %391 = load i32, i32* @HX509_CERT_USED_BEFORE_TIME, align 4
  store i32 %391, i32* %12, align 4
  %392 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %393 = call i32 @hx509_clear_error_string(%struct.TYPE_69__* %392)
  br label %663

394:                                              ; preds = %379
  %395 = load %struct.TYPE_60__*, %struct.TYPE_60__** %21, align 8
  %396 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %397, i32 0, i32 1
  %399 = call i64 @_hx509_Time2time_t(i32* %398)
  store i64 %399, i64* %22, align 8
  %400 = load i64, i64* %22, align 8
  %401 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = icmp slt i64 %400, %403
  br i1 %404, label %405, label %409

405:                                              ; preds = %394
  %406 = load i32, i32* @HX509_CERT_USED_AFTER_TIME, align 4
  store i32 %406, i32* %12, align 4
  %407 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %408 = call i32 @hx509_clear_error_string(%struct.TYPE_69__* %407)
  br label %663

409:                                              ; preds = %394
  br label %410

410:                                              ; preds = %409, %375
  %411 = load i32, i32* %18, align 4
  %412 = icmp eq i32 %411, 129
  br i1 %412, label %413, label %414

413:                                              ; preds = %410
  store i32 130, i32* %18, align 4
  br label %421

414:                                              ; preds = %410
  %415 = load i32, i32* %18, align 4
  %416 = icmp eq i32 %415, 128
  br i1 %416, label %417, label %420

417:                                              ; preds = %414
  %418 = load i32, i32* %13, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %13, align 4
  br label %420

420:                                              ; preds = %417, %414
  br label %421

421:                                              ; preds = %420, %413
  br label %422

422:                                              ; preds = %421
  %423 = load i64, i64* %16, align 8
  %424 = add i64 %423, 1
  store i64 %424, i64* %16, align 8
  br label %110

425:                                              ; preds = %110
  store i32 0, i32* %12, align 4
  %426 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  store i64 %427, i64* %17, align 8
  br label %428

428:                                              ; preds = %474, %425
  %429 = load i64, i64* %17, align 8
  %430 = icmp ugt i64 %429, 0
  br i1 %430, label %431, label %477

431:                                              ; preds = %428
  %432 = load i64, i64* %17, align 8
  %433 = sub i64 %432, 1
  store i64 %433, i64* %16, align 8
  %434 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 1
  %435 = load %struct.TYPE_70__**, %struct.TYPE_70__*** %434, align 8
  %436 = load i64, i64* %16, align 8
  %437 = getelementptr inbounds %struct.TYPE_70__*, %struct.TYPE_70__** %435, i64 %436
  %438 = load %struct.TYPE_70__*, %struct.TYPE_70__** %437, align 8
  %439 = call %struct.TYPE_60__* @_hx509_get_cert(%struct.TYPE_70__* %438)
  store %struct.TYPE_60__* %439, %struct.TYPE_60__** %26, align 8
  %440 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %441 = load %struct.TYPE_60__*, %struct.TYPE_60__** %26, align 8
  %442 = call i32 @certificate_is_self_signed(%struct.TYPE_69__* %440, %struct.TYPE_60__* %441, i32* %27)
  store i32 %442, i32* %12, align 4
  %443 = load i32, i32* %12, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %431
  br label %663

446:                                              ; preds = %431
  %447 = load i32, i32* %27, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %455

449:                                              ; preds = %446
  %450 = load i64, i64* %16, align 8
  %451 = add i64 %450, 1
  %452 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = icmp ne i64 %451, %453
  br i1 %454, label %455, label %463

455:                                              ; preds = %449, %446
  %456 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %457 = load %struct.TYPE_60__*, %struct.TYPE_60__** %26, align 8
  %458 = call i32 @check_name_constraints(%struct.TYPE_69__* %456, i32* %10, %struct.TYPE_60__* %457)
  store i32 %458, i32* %12, align 4
  %459 = load i32, i32* %12, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %455
  br label %663

462:                                              ; preds = %455
  br label %463

463:                                              ; preds = %462, %449
  %464 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %465 = load %struct.TYPE_60__*, %struct.TYPE_60__** %26, align 8
  %466 = load i64, i64* %16, align 8
  %467 = icmp eq i64 %466, 0
  %468 = zext i1 %467 to i32
  %469 = call i32 @add_name_constraints(%struct.TYPE_69__* %464, %struct.TYPE_60__* %465, i32 %468, i32* %10)
  store i32 %469, i32* %12, align 4
  %470 = load i32, i32* %12, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %473

472:                                              ; preds = %463
  br label %663

473:                                              ; preds = %463
  br label %474

474:                                              ; preds = %473
  %475 = load i64, i64* %17, align 8
  %476 = add i64 %475, -1
  store i64 %476, i64* %17, align 8
  br label %428

477:                                              ; preds = %428
  %478 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %479 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %478, i32 0, i32 2
  %480 = load i64, i64* %479, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %569

482:                                              ; preds = %477
  %483 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %484 = call i32 @hx509_certs_init(%struct.TYPE_69__* %483, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 0, i32* null, i32** %28)
  store i32 %484, i32* %12, align 4
  %485 = load i32, i32* %12, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %482
  br label %663

488:                                              ; preds = %482
  store i64 0, i64* %16, align 8
  br label %489

489:                                              ; preds = %508, %488
  %490 = load i64, i64* %16, align 8
  %491 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = icmp ult i64 %490, %492
  br i1 %493, label %494, label %511

494:                                              ; preds = %489
  %495 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %496 = load i32*, i32** %28, align 8
  %497 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 1
  %498 = load %struct.TYPE_70__**, %struct.TYPE_70__*** %497, align 8
  %499 = load i64, i64* %16, align 8
  %500 = getelementptr inbounds %struct.TYPE_70__*, %struct.TYPE_70__** %498, i64 %499
  %501 = load %struct.TYPE_70__*, %struct.TYPE_70__** %500, align 8
  %502 = call i32 @hx509_certs_add(%struct.TYPE_69__* %495, i32* %496, %struct.TYPE_70__* %501)
  store i32 %502, i32* %12, align 4
  %503 = load i32, i32* %12, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %507

505:                                              ; preds = %494
  %506 = call i32 @hx509_certs_free(i32** %28)
  br label %663

507:                                              ; preds = %494
  br label %508

508:                                              ; preds = %507
  %509 = load i64, i64* %16, align 8
  %510 = add i64 %509, 1
  store i64 %510, i64* %16, align 8
  br label %489

511:                                              ; preds = %489
  %512 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %513 = load i32*, i32** %28, align 8
  %514 = load i32*, i32** %9, align 8
  %515 = call i32 @hx509_certs_merge(%struct.TYPE_69__* %512, i32* %513, i32* %514)
  store i32 %515, i32* %12, align 4
  %516 = load i32, i32* %12, align 4
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %520

518:                                              ; preds = %511
  %519 = call i32 @hx509_certs_free(i32** %28)
  br label %663

520:                                              ; preds = %511
  store i64 0, i64* %16, align 8
  br label %521

521:                                              ; preds = %564, %520
  %522 = load i64, i64* %16, align 8
  %523 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = sub i64 %524, 1
  %526 = icmp ult i64 %522, %525
  br i1 %526, label %527, label %567

527:                                              ; preds = %521
  %528 = load i64, i64* %16, align 8
  %529 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = sub i64 %530, 1
  %532 = icmp ult i64 %528, %531
  br i1 %532, label %533, label %536

533:                                              ; preds = %527
  %534 = load i64, i64* %16, align 8
  %535 = add i64 %534, 1
  br label %538

536:                                              ; preds = %527
  %537 = load i64, i64* %16, align 8
  br label %538

538:                                              ; preds = %536, %533
  %539 = phi i64 [ %535, %533 ], [ %537, %536 ]
  store i64 %539, i64* %29, align 8
  %540 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %541 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %542 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %541, i32 0, i32 2
  %543 = load i64, i64* %542, align 8
  %544 = load i32*, i32** %28, align 8
  %545 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %546 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %545, i32 0, i32 1
  %547 = load i64, i64* %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 1
  %549 = load %struct.TYPE_70__**, %struct.TYPE_70__*** %548, align 8
  %550 = load i64, i64* %16, align 8
  %551 = getelementptr inbounds %struct.TYPE_70__*, %struct.TYPE_70__** %549, i64 %550
  %552 = load %struct.TYPE_70__*, %struct.TYPE_70__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 1
  %554 = load %struct.TYPE_70__**, %struct.TYPE_70__*** %553, align 8
  %555 = load i64, i64* %29, align 8
  %556 = getelementptr inbounds %struct.TYPE_70__*, %struct.TYPE_70__** %554, i64 %555
  %557 = load %struct.TYPE_70__*, %struct.TYPE_70__** %556, align 8
  %558 = call i32 @hx509_revoke_verify(%struct.TYPE_69__* %540, i64 %543, i32* %544, i64 %547, %struct.TYPE_70__* %552, %struct.TYPE_70__* %557)
  store i32 %558, i32* %12, align 4
  %559 = load i32, i32* %12, align 4
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %563

561:                                              ; preds = %538
  %562 = call i32 @hx509_certs_free(i32** %28)
  br label %663

563:                                              ; preds = %538
  br label %564

564:                                              ; preds = %563
  %565 = load i64, i64* %16, align 8
  %566 = add i64 %565, 1
  store i64 %566, i64* %16, align 8
  br label %521

567:                                              ; preds = %521
  %568 = call i32 @hx509_certs_free(i32** %28)
  br label %569

569:                                              ; preds = %567, %477
  %570 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 0
  %571 = load i64, i64* %570, align 8
  store i64 %571, i64* %17, align 8
  br label %572

572:                                              ; preds = %659, %569
  %573 = load i64, i64* %17, align 8
  %574 = icmp ugt i64 %573, 0
  br i1 %574, label %575, label %662

575:                                              ; preds = %572
  %576 = load i64, i64* %17, align 8
  %577 = sub i64 %576, 1
  store i64 %577, i64* %16, align 8
  %578 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 1
  %579 = load %struct.TYPE_70__**, %struct.TYPE_70__*** %578, align 8
  %580 = load i64, i64* %16, align 8
  %581 = getelementptr inbounds %struct.TYPE_70__*, %struct.TYPE_70__** %579, i64 %580
  %582 = load %struct.TYPE_70__*, %struct.TYPE_70__** %581, align 8
  %583 = call %struct.TYPE_60__* @_hx509_get_cert(%struct.TYPE_70__* %582)
  store %struct.TYPE_60__* %583, %struct.TYPE_60__** %31, align 8
  %584 = load i64, i64* %16, align 8
  %585 = add i64 %584, 1
  %586 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 0
  %587 = load i64, i64* %586, align 8
  %588 = icmp eq i64 %585, %587
  br i1 %588, label %589, label %608

589:                                              ; preds = %575
  %590 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 1
  %591 = load %struct.TYPE_70__**, %struct.TYPE_70__*** %590, align 8
  %592 = load i64, i64* %16, align 8
  %593 = getelementptr inbounds %struct.TYPE_70__*, %struct.TYPE_70__** %591, i64 %592
  %594 = load %struct.TYPE_70__*, %struct.TYPE_70__** %593, align 8
  store %struct.TYPE_70__* %594, %struct.TYPE_70__** %30, align 8
  %595 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %596 = load %struct.TYPE_70__*, %struct.TYPE_70__** %30, align 8
  %597 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %596, i32 0, i32 0
  %598 = load %struct.TYPE_60__*, %struct.TYPE_60__** %597, align 8
  %599 = call i32 @certificate_is_self_signed(%struct.TYPE_69__* %595, %struct.TYPE_60__* %598, i32* %32)
  store i32 %599, i32* %12, align 4
  %600 = load i32, i32* %12, align 4
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %589
  br label %663

603:                                              ; preds = %589
  %604 = load i32, i32* %32, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %607, label %606

606:                                              ; preds = %603
  br label %659

607:                                              ; preds = %603
  br label %615

608:                                              ; preds = %575
  %609 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %11, i32 0, i32 1
  %610 = load %struct.TYPE_70__**, %struct.TYPE_70__*** %609, align 8
  %611 = load i64, i64* %16, align 8
  %612 = add i64 %611, 1
  %613 = getelementptr inbounds %struct.TYPE_70__*, %struct.TYPE_70__** %610, i64 %612
  %614 = load %struct.TYPE_70__*, %struct.TYPE_70__** %613, align 8
  store %struct.TYPE_70__* %614, %struct.TYPE_70__** %30, align 8
  br label %615

615:                                              ; preds = %608, %607
  %616 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %617 = load %struct.TYPE_70__*, %struct.TYPE_70__** %30, align 8
  %618 = load %struct.TYPE_60__*, %struct.TYPE_60__** %31, align 8
  %619 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %618, i32 0, i32 0
  %620 = load %struct.TYPE_60__*, %struct.TYPE_60__** %31, align 8
  %621 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %620, i32 0, i32 1
  %622 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %621, i32 0, i32 1
  %623 = load %struct.TYPE_60__*, %struct.TYPE_60__** %31, align 8
  %624 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %623, i32 0, i32 2
  %625 = call i32 @_hx509_verify_signature_bitstring(%struct.TYPE_69__* %616, %struct.TYPE_70__* %617, i32* %619, i32* %622, i32* %624)
  store i32 %625, i32* %12, align 4
  %626 = load i32, i32* %12, align 4
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %633

628:                                              ; preds = %615
  %629 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %630 = load i32, i32* @HX509_ERROR_APPEND, align 4
  %631 = load i32, i32* %12, align 4
  %632 = call i32 @hx509_set_error_string(%struct.TYPE_69__* %629, i32 %630, i32 %631, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  br label %663

633:                                              ; preds = %615
  %634 = load i64, i64* %16, align 8
  %635 = icmp ne i64 %634, 0
  br i1 %635, label %636, label %658

636:                                              ; preds = %633
  %637 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %638 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %637, i32 0, i32 0
  %639 = load i32, i32* %638, align 8
  %640 = load i32, i32* @HX509_VERIFY_CTX_F_NO_BEST_BEFORE_CHECK, align 4
  %641 = and i32 %639, %640
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %658

643:                                              ; preds = %636
  %644 = load %struct.TYPE_60__*, %struct.TYPE_60__** %31, align 8
  %645 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %644, i32 0, i32 1
  %646 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %645, i32 0, i32 0
  %647 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %646, i32 0, i32 0
  %648 = call i64 @_hx509_Time2time_t(i32* %647)
  store i64 %648, i64* %33, align 8
  %649 = load %struct.TYPE_69__*, %struct.TYPE_69__** %6, align 8
  %650 = load %struct.TYPE_60__*, %struct.TYPE_60__** %31, align 8
  %651 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %650, i32 0, i32 0
  %652 = load i64, i64* %33, align 8
  %653 = call i32 @_hx509_signature_best_before(%struct.TYPE_69__* %649, i32* %651, i64 %652)
  store i32 %653, i32* %12, align 4
  %654 = load i32, i32* %12, align 4
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %657

656:                                              ; preds = %643
  br label %663

657:                                              ; preds = %643
  br label %658

658:                                              ; preds = %657, %636, %633
  br label %659

659:                                              ; preds = %658, %606
  %660 = load i64, i64* %17, align 8
  %661 = add i64 %660, -1
  store i64 %661, i64* %17, align 8
  br label %572

662:                                              ; preds = %572
  br label %663

663:                                              ; preds = %662, %656, %628, %602, %561, %518, %505, %487, %472, %461, %445, %405, %390, %368, %349, %330, %323, %305, %298, %273, %235, %221, %214, %199, %190, %179, %155, %138, %99, %82
  %664 = call i32 @hx509_certs_free(i32** %20)
  %665 = call i32 @free_Name(%struct.TYPE_59__* %19)
  %666 = call i32 @free_name_constraints(i32* %10)
  %667 = call i32 @_hx509_path_free(%struct.TYPE_68__* %11)
  %668 = load i32, i32* %12, align 4
  store i32 %668, i32* %5, align 4
  br label %669

669:                                              ; preds = %663, %38
  %670 = load i32, i32* %5, align 4
  ret i32 %670
}

declare dso_local i32 @memset(%struct.TYPE_59__*, i32, i32) #1

declare dso_local i32 @init_name_constraints(i32*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32* @hx509_certs_ref(i64) #1

declare dso_local i64 @ALLOW_DEF_TA(%struct.TYPE_67__*) #1

declare dso_local i32 @hx509_certs_init(%struct.TYPE_69__*, i8*, i32, i32*, i32**) #1

declare dso_local i32 @_hx509_calculate_path(%struct.TYPE_69__*, i32, i64, i32*, i32, %struct.TYPE_70__*, i32*, %struct.TYPE_68__*) #1

declare dso_local %struct.TYPE_60__* @_hx509_get_cert(%struct.TYPE_70__*) #1

declare dso_local i32 @check_key_usage(%struct.TYPE_69__*, %struct.TYPE_60__*, i32, i32) #1

declare dso_local i32 @REQUIRE_RFC3280(%struct.TYPE_67__*) #1

declare dso_local i32 @hx509_set_error_string(%struct.TYPE_69__*, i32, i32, i8*) #1

declare dso_local i32 @certificate_is_self_signed(%struct.TYPE_69__*, %struct.TYPE_60__*, i32*) #1

declare dso_local i32 @is_proxy_cert(%struct.TYPE_69__*, %struct.TYPE_60__*, %struct.TYPE_58__*) #1

declare dso_local i32 @free_ProxyCertInfo(%struct.TYPE_58__*) #1

declare dso_local i32 @find_extension(%struct.TYPE_60__*, i32*, i64*) #1

declare dso_local i32 @_hx509_name_cmp(%struct.TYPE_59__*, i32*, i32*) #1

declare dso_local i32 @free_Name(%struct.TYPE_59__*) #1

declare dso_local i32 @copy_Name(i32*, %struct.TYPE_59__*) #1

declare dso_local i32 @hx509_clear_error_string(%struct.TYPE_69__*) #1

declare dso_local i32 @der_heim_oid_cmp(i32*, i32*) #1

declare dso_local i32 @free_RelativeDistinguishedName(%struct.TYPE_62__*) #1

declare dso_local i32 @hx509_name_free(i32*) #1

declare dso_local i32 @_hx509_name_from_Name(%struct.TYPE_59__*, i32*) #1

declare dso_local i32 @check_basic_constraints(%struct.TYPE_69__*, %struct.TYPE_60__*, i32, i64) #1

declare dso_local i64 @CHECK_TA(%struct.TYPE_67__*) #1

declare dso_local i64 @_hx509_Time2time_t(i32*) #1

declare dso_local i32 @check_name_constraints(%struct.TYPE_69__*, i32*, %struct.TYPE_60__*) #1

declare dso_local i32 @add_name_constraints(%struct.TYPE_69__*, %struct.TYPE_60__*, i32, i32*) #1

declare dso_local i32 @hx509_certs_add(%struct.TYPE_69__*, i32*, %struct.TYPE_70__*) #1

declare dso_local i32 @hx509_certs_free(i32**) #1

declare dso_local i32 @hx509_certs_merge(%struct.TYPE_69__*, i32*, i32*) #1

declare dso_local i32 @hx509_revoke_verify(%struct.TYPE_69__*, i64, i32*, i64, %struct.TYPE_70__*, %struct.TYPE_70__*) #1

declare dso_local i32 @_hx509_verify_signature_bitstring(%struct.TYPE_69__*, %struct.TYPE_70__*, i32*, i32*, i32*) #1

declare dso_local i32 @_hx509_signature_best_before(%struct.TYPE_69__*, i32*, i64) #1

declare dso_local i32 @free_name_constraints(i32*) #1

declare dso_local i32 @_hx509_path_free(%struct.TYPE_68__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
