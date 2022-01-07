; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cms.c_hx509_cms_unenvelope.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cms.c_hx509_cms_unenvelope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i32, %struct.TYPE_26__, %struct.TYPE_24__ }
%struct.TYPE_26__ = type { %struct.TYPE_30__, i32, %struct.TYPE_28__* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i32 }

@HX509_CMS_UE_DONT_REQUIRE_KU_ENCIPHERMENT = common dso_local global i32 0, align 4
@HX509_QUERY_KU_ENCIPHERMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to decode EnvelopedData\00", align 1
@HX509_CMS_NO_RECIPIENT_CERTIFICATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No recipient info in enveloped data\00", align 1
@HX509_CMS_NO_DATA_AVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Content missing from encrypted data\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Both internal and external encrypted data\00", align 1
@HX509_QUERY_PRIVATE_KEY = common dso_local global i32 0, align 4
@HX509_ERROR_APPEND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to decrypt with %s\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"No private key matched any certificate\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"No private key decrypted the transfer key\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Failed to copy EnvelopedData content oid\00", align 1
@HX509_CMS_UE_ALLOW_WEAK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"Failed to set key for decryption of EnvelopedData\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed to decrypt EnvelopedData\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_cms_unenvelope(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4, %struct.TYPE_28__* %5, i32 %6, %struct.TYPE_28__* %7, %struct.TYPE_28__* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca %struct.TYPE_28__*, align 8
  %20 = alloca %struct.TYPE_28__, align 8
  %21 = alloca %struct.TYPE_28__, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_30__*, align 8
  %24 = alloca %struct.TYPE_28__*, align 8
  %25 = alloca %struct.TYPE_28__*, align 8
  %26 = alloca %struct.TYPE_28__, align 8
  %27 = alloca %struct.TYPE_28__, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca %struct.TYPE_29__*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store %struct.TYPE_28__* %5, %struct.TYPE_28__** %16, align 8
  store i32 %6, i32* %17, align 4
  store %struct.TYPE_28__* %7, %struct.TYPE_28__** %18, align 8
  store %struct.TYPE_28__* %8, %struct.TYPE_28__** %19, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %37 = call i32 @memset(%struct.TYPE_28__* %20, i32 0, i32 64)
  %38 = call i32 @memset(%struct.TYPE_28__* %21, i32 0, i32 64)
  %39 = call i32 @memset(%struct.TYPE_28__* %27, i32 0, i32 64)
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %41 = call i32 @memset(%struct.TYPE_28__* %40, i32 0, i32 64)
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %43 = call i32 @memset(%struct.TYPE_28__* %42, i32 0, i32 64)
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @HX509_CMS_UE_DONT_REQUIRE_KU_ENCIPHERMENT, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %9
  %49 = load i32, i32* @HX509_QUERY_KU_ENCIPHERMENT, align 4
  %50 = load i32, i32* %31, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %31, align 4
  br label %52

52:                                               ; preds = %48, %9
  %53 = load i8*, i8** %14, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i32 @decode_EnvelopedData(i8* %53, i64 %54, %struct.TYPE_28__* %21, i64* %28)
  store i32 %55, i32* %29, align 4
  %56 = load i32, i32* %29, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %29, align 4
  %61 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %59, i32 0, i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* %29, align 4
  store i32 %62, i32* %10, align 4
  br label %294

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* @HX509_CMS_NO_RECIPIENT_CERTIFICATE, align 4
  store i32 %69, i32* %29, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %29, align 4
  %72 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %70, i32 0, i32 %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %276

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %75, align 8
  store %struct.TYPE_28__* %76, %struct.TYPE_28__** %24, align 8
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %78 = icmp eq %struct.TYPE_28__* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %81 = icmp eq %struct.TYPE_28__* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* @HX509_CMS_NO_DATA_AVAILABLE, align 4
  store i32 %83, i32* %29, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %29, align 4
  %86 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %84, i32 0, i32 %85, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %276

87:                                               ; preds = %79
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  store %struct.TYPE_28__* %88, %struct.TYPE_28__** %24, align 8
  br label %98

89:                                               ; preds = %73
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %91 = icmp ne %struct.TYPE_28__* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* @HX509_CMS_NO_DATA_AVAILABLE, align 4
  store i32 %93, i32* %29, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %29, align 4
  %96 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %94, i32 0, i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %276

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %87
  store i32* null, i32** %22, align 8
  store i64 0, i64* %32, align 8
  br label %99

99:                                               ; preds = %153, %98
  %100 = load i64, i64* %32, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ult i64 %100, %103
  br i1 %104, label %105, label %156

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %107, align 8
  %109 = load i64, i64* %32, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i64 %109
  store %struct.TYPE_29__* %110, %struct.TYPE_29__** %33, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 0
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* @HX509_QUERY_PRIVATE_KEY, align 4
  %117 = load i32, i32* %31, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @find_CMSIdentifier(i32 %111, i32* %113, i32 %114, i32 %115, i32** %22, i32 %118)
  store i32 %119, i32* %29, align 4
  %120 = load i32, i32* %29, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %105
  br label %153

123:                                              ; preds = %105
  store i32 1, i32* %30, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load i32*, i32** %22, align 8
  %131 = call i32 @_hx509_cert_private_decrypt(i32 %124, i32* %126, i32* %129, i32* %130, %struct.TYPE_28__* %20)
  store i32 %131, i32* %29, align 4
  %132 = load i32*, i32** %22, align 8
  %133 = call i32 @hx509_cert_free(i32* %132)
  %134 = load i32, i32* %29, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %123
  br label %156

137:                                              ; preds = %123
  store i32* null, i32** %22, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 0
  %141 = call i32 @unparse_CMSIdentifier(i32 %138, i32* %140, i8** %34)
  store i32 %141, i32* %35, align 4
  %142 = load i32, i32* %35, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %137
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @HX509_ERROR_APPEND, align 4
  %147 = load i32, i32* %29, align 4
  %148 = load i8*, i8** %34, align 8
  %149 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %145, i32 %146, i32 %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %148)
  %150 = load i8*, i8** %34, align 8
  %151 = call i32 @free(i8* %150)
  br label %152

152:                                              ; preds = %144, %137
  br label %153

153:                                              ; preds = %152, %122
  %154 = load i64, i64* %32, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %32, align 8
  br label %99

156:                                              ; preds = %136, %99
  %157 = load i32, i32* %30, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* @HX509_CMS_NO_RECIPIENT_CERTIFICATE, align 4
  store i32 %160, i32* %29, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %29, align 4
  %163 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %161, i32 0, i32 %162, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %276

164:                                              ; preds = %156
  %165 = load i32*, i32** %22, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load i32, i32* @HX509_CMS_NO_RECIPIENT_CERTIFICATE, align 4
  store i32 %168, i32* %29, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @HX509_ERROR_APPEND, align 4
  %171 = load i32, i32* %29, align 4
  %172 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %169, i32 %170, i32 %171, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %276

173:                                              ; preds = %164
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %177 = call i32 @der_copy_oid(i32* %175, %struct.TYPE_28__* %176)
  store i32 %177, i32* %29, align 4
  %178 = load i32, i32* %29, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %29, align 4
  %183 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %181, i32 0, i32 %182, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %276

184:                                              ; preds = %173
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 0
  store %struct.TYPE_30__* %186, %struct.TYPE_30__** %23, align 8
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %188, align 8
  %190 = icmp ne %struct.TYPE_27__* %189, null
  br i1 %190, label %191, label %204

191:                                              ; preds = %184
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 1
  store i32 %196, i32* %197, align 8
  %198 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  store i64 %202, i64* %203, align 8
  store %struct.TYPE_28__* %26, %struct.TYPE_28__** %25, align 8
  br label %205

204:                                              ; preds = %184
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %25, align 8
  br label %205

205:                                              ; preds = %204, %191
  %206 = load i32, i32* %11, align 4
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i32 0, i32 0
  %209 = call i32 @hx509_crypto_init(i32 %206, i32* null, i32* %208, i32* %36)
  store i32 %209, i32* %29, align 4
  %210 = load i32, i32* %29, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  br label %276

213:                                              ; preds = %205
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* @HX509_CMS_UE_ALLOW_WEAK, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %213
  %219 = load i32, i32* %36, align 4
  %220 = call i32 @hx509_crypto_allow_weak(i32 %219)
  br label %221

221:                                              ; preds = %218, %213
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %223 = icmp ne %struct.TYPE_28__* %222, null
  br i1 %223, label %224, label %235

224:                                              ; preds = %221
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %36, align 4
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %228 = call i32 @hx509_crypto_set_params(i32 %225, i32 %226, %struct.TYPE_28__* %227, %struct.TYPE_28__* %27)
  store i32 %228, i32* %29, align 4
  %229 = load i32, i32* %29, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %224
  %232 = load i32, i32* %36, align 4
  %233 = call i32 @hx509_crypto_destroy(i32 %232)
  br label %276

234:                                              ; preds = %224
  br label %235

235:                                              ; preds = %234, %221
  %236 = load i32, i32* %36, align 4
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @hx509_crypto_set_key_data(i32 %236, i32 %238, i64 %240)
  store i32 %241, i32* %29, align 4
  %242 = load i32, i32* %29, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %235
  %245 = load i32, i32* %36, align 4
  %246 = call i32 @hx509_crypto_destroy(i32 %245)
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* %29, align 4
  %249 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %247, i32 0, i32 %248, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  br label %276

250:                                              ; preds = %235
  %251 = load i32, i32* %36, align 4
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %250
  br label %263

262:                                              ; preds = %250
  br label %263

263:                                              ; preds = %262, %261
  %264 = phi %struct.TYPE_28__* [ %27, %261 ], [ null, %262 ]
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %266 = call i32 @hx509_crypto_decrypt(i32 %251, i32 %254, i64 %257, %struct.TYPE_28__* %264, %struct.TYPE_28__* %265)
  store i32 %266, i32* %29, align 4
  %267 = load i32, i32* %36, align 4
  %268 = call i32 @hx509_crypto_destroy(i32 %267)
  %269 = load i32, i32* %29, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %263
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %29, align 4
  %274 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %272, i32 0, i32 %273, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %276

275:                                              ; preds = %263
  br label %276

276:                                              ; preds = %275, %271, %244, %231, %212, %180, %167, %159, %92, %82, %68
  %277 = call i32 @free_EnvelopedData(%struct.TYPE_28__* %21)
  %278 = call i32 @der_free_octet_string(%struct.TYPE_28__* %20)
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = call i32 @der_free_octet_string(%struct.TYPE_28__* %27)
  br label %284

284:                                              ; preds = %282, %276
  %285 = load i32, i32* %29, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %284
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %289 = call i32 @der_free_oid(%struct.TYPE_28__* %288)
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %291 = call i32 @der_free_octet_string(%struct.TYPE_28__* %290)
  br label %292

292:                                              ; preds = %287, %284
  %293 = load i32, i32* %29, align 4
  store i32 %293, i32* %10, align 4
  br label %294

294:                                              ; preds = %292, %58
  %295 = load i32, i32* %10, align 4
  ret i32 %295
}

declare dso_local i32 @memset(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @decode_EnvelopedData(i8*, i64, %struct.TYPE_28__*, i64*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @find_CMSIdentifier(i32, i32*, i32, i32, i32**, i32) #1

declare dso_local i32 @_hx509_cert_private_decrypt(i32, i32*, i32*, i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @hx509_cert_free(i32*) #1

declare dso_local i32 @unparse_CMSIdentifier(i32, i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @der_copy_oid(i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @hx509_crypto_init(i32, i32*, i32*, i32*) #1

declare dso_local i32 @hx509_crypto_allow_weak(i32) #1

declare dso_local i32 @hx509_crypto_set_params(i32, i32, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @hx509_crypto_destroy(i32) #1

declare dso_local i32 @hx509_crypto_set_key_data(i32, i32, i64) #1

declare dso_local i32 @hx509_crypto_decrypt(i32, i32, i64, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @free_EnvelopedData(%struct.TYPE_28__*) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_28__*) #1

declare dso_local i32 @der_free_oid(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
