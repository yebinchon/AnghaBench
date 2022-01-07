; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cms.c_hx509_cms_create_signed.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cms.c_hx509_cms_create_signed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }
%struct.sigctx = type { i32, i8*, %struct.TYPE_17__, i8*, i8*, i32, i32, i32*, %struct.TYPE_12__, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_11__*, %struct.TYPE_18__, %struct.TYPE_15__, %struct.TYPE_13__, i32 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i64, i32 }

@asn1_oid_id_pkcs7_data = common dso_local global i32 0, align 4
@HX509_CMS_SIGNATURE_ID_NAME = common dso_local global i32 0, align 4
@CMS_ID_NAME = common dso_local global i32 0, align 4
@CMS_ID_SKI = common dso_local global i32 0, align 4
@HX509_CMS_SIGNATURE_LEAF_ONLY = common dso_local global i32 0, align 4
@HX509_CMS_SIGNATURE_NO_CERTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"MEMORY:certs\00", align 1
@CMSVersion_v3 = common dso_local global i32 0, align 4
@HX509_CMS_SIGNATURE_DETACHED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HX509_CMS_SIGNATURE_NO_SIGNER = common dso_local global i32 0, align 4
@sig_process = common dso_local global i32 0, align 4
@cert_process = common dso_local global i32 0, align 4
@SignedData = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"internal ASN.1 encoder error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_cms_create_signed(i32 %0, i32 %1, i32* %2, i8* %3, i64 %4, i32* %5, i8* %6, i32 %7, i8* %8, i8* %9, %struct.TYPE_16__* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_16__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.sigctx, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.sigctx, align 8
  %30 = alloca i32*, align 8
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i8* %3, i8** %16, align 8
  store i64 %4, i64* %17, align 8
  store i32* %5, i32** %18, align 8
  store i8* %6, i8** %19, align 8
  store i32 %7, i32* %20, align 4
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %23, align 8
  %31 = call i32 @memset(%struct.sigctx* %29, i32 0, i32 136)
  %32 = call i32 @memset(%struct.sigctx* %26, i32 0, i32 136)
  %33 = load i32*, i32** %15, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %11
  store i32* @asn1_oid_id_pkcs7_data, i32** %15, align 8
  br label %36

36:                                               ; preds = %35, %11
  %37 = load i32*, i32** %18, align 8
  %38 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 9
  store i32* %37, i32** %38, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = call i32 @rk_UNCONST(i8* %39)
  %41 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* %17, align 8
  %44 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 7
  store i32* %46, i32** %47, align 8
  %48 = load i32, i32* %20, align 4
  %49 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 6
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @HX509_CMS_SIGNATURE_ID_NAME, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %36
  %55 = load i32, i32* @CMS_ID_NAME, align 4
  %56 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 5
  store i32 %55, i32* %56, align 8
  br label %60

57:                                               ; preds = %36
  %58 = load i32, i32* @CMS_ID_SKI, align 4
  %59 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 5
  store i32 %58, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @HX509_CMS_SIGNATURE_LEAF_ONLY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @HX509_CMS_SIGNATURE_NO_CERTS, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %60
  %73 = load i32, i32* %13, align 4
  %74 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 1
  %75 = call i32 @hx509_certs_init(i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i8** %74)
  store i32 %75, i32* %27, align 4
  %76 = load i32, i32* %27, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %27, align 4
  store i32 %79, i32* %12, align 4
  br label %289

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %60
  %82 = load i8*, i8** %21, align 8
  %83 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 4
  store i8* %82, i8** %83, align 8
  %84 = load i8*, i8** %22, align 8
  %85 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 3
  store i8* %84, i8** %85, align 8
  %86 = load i32, i32* @CMSVersion_v3, align 4
  %87 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = call i32 @der_copy_oid(i32* %89, i32* %92)
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @HX509_CMS_SIGNATURE_DETACHED, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %148

98:                                               ; preds = %81
  %99 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = call i32 @ALLOC(%struct.TYPE_11__* %102, i32 1)
  %104 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = icmp eq %struct.TYPE_11__* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %98
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @hx509_clear_error_string(i32 %110)
  %112 = load i32, i32* @ENOMEM, align 4
  store i32 %112, i32* %27, align 4
  br label %283

113:                                              ; preds = %98
  %114 = load i64, i64* %17, align 8
  %115 = call i32* @malloc(i64 %114)
  %116 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  store i32* %115, i32** %120, align 8
  %121 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %113
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @hx509_clear_error_string(i32 %129)
  %131 = load i32, i32* @ENOMEM, align 4
  store i32 %131, i32* %27, align 4
  br label %283

132:                                              ; preds = %113
  %133 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i8*, i8** %16, align 8
  %140 = load i64, i64* %17, align 8
  %141 = call i32 @memcpy(i32* %138, i8* %139, i64 %140)
  %142 = load i64, i64* %17, align 8
  %143 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  store i64 %142, i64* %147, align 8
  br label %148

148:                                              ; preds = %132, %81
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* @HX509_CMS_SIGNATURE_NO_SIGNER, align 4
  %151 = and i32 %149, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = load i32, i32* %13, align 4
  %155 = load i8*, i8** %19, align 8
  %156 = load i32, i32* @sig_process, align 4
  %157 = call i32 @hx509_certs_iter_f(i32 %154, i8* %155, i32 %156, %struct.sigctx* %29)
  store i32 %157, i32* %27, align 4
  %158 = load i32, i32* %27, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %283

161:                                              ; preds = %153
  br label %162

162:                                              ; preds = %161, %148
  %163 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %231

168:                                              ; preds = %162
  store i32 0, i32* %24, align 4
  br label %169

169:                                              ; preds = %227, %168
  %170 = load i32, i32* %24, align 4
  %171 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ult i32 %170, %174
  br i1 %175, label %176, label %230

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = load i32, i32* %24, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  store i32* %184, i32** %30, align 8
  store i32 0, i32* %25, align 4
  br label %185

185:                                              ; preds = %205, %176
  %186 = load i32, i32* %25, align 4
  %187 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp ult i32 %186, %190
  br i1 %191, label %192, label %208

192:                                              ; preds = %185
  %193 = load i32*, i32** %30, align 8
  %194 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %25, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = call i64 @cmp_AlgorithmIdentifier(i32* %193, i32* %200)
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %192
  br label %208

204:                                              ; preds = %192
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %25, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %25, align 4
  br label %185

208:                                              ; preds = %203, %185
  %209 = load i32, i32* %25, align 4
  %210 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %209, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 1
  %218 = load i32*, i32** %30, align 8
  %219 = call i32 @add_DigestAlgorithmIdentifiers(%struct.TYPE_18__* %217, i32* %218)
  store i32 %219, i32* %27, align 4
  %220 = load i32, i32* %27, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %215
  %223 = load i32, i32* %13, align 4
  %224 = call i32 @hx509_clear_error_string(i32 %223)
  br label %283

225:                                              ; preds = %215
  br label %226

226:                                              ; preds = %225, %208
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %24, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %24, align 4
  br label %169

230:                                              ; preds = %169
  br label %231

231:                                              ; preds = %230, %162
  %232 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %258

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = call i32 @ALLOC(%struct.TYPE_11__* %238, i32 1)
  %240 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %241, align 8
  %243 = icmp eq %struct.TYPE_11__* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %235
  %245 = load i32, i32* %13, align 4
  %246 = call i32 @hx509_clear_error_string(i32 %245)
  %247 = load i32, i32* @ENOMEM, align 4
  store i32 %247, i32* %27, align 4
  br label %283

248:                                              ; preds = %235
  %249 = load i32, i32* %13, align 4
  %250 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 1
  %251 = load i8*, i8** %250, align 8
  %252 = load i32, i32* @cert_process, align 4
  %253 = call i32 @hx509_certs_iter_f(i32 %249, i8* %251, i32 %252, %struct.sigctx* %29)
  store i32 %253, i32* %27, align 4
  %254 = load i32, i32* %27, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %248
  br label %283

257:                                              ; preds = %248
  br label %258

258:                                              ; preds = %257, %231
  %259 = load i32, i32* @SignedData, align 4
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %267 = load i32, i32* %27, align 4
  %268 = call i32 @ASN1_MALLOC_ENCODE(i32 %259, i32 %262, i64 %265, %struct.TYPE_17__* %266, i64* %28, i32 %267)
  %269 = load i32, i32* %27, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %258
  %272 = load i32, i32* %13, align 4
  %273 = call i32 @hx509_clear_error_string(i32 %272)
  br label %283

274:                                              ; preds = %258
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* %28, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %280, label %282

280:                                              ; preds = %274
  %281 = call i32 @_hx509_abort(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %282

282:                                              ; preds = %280, %274
  br label %283

283:                                              ; preds = %282, %271, %256, %244, %222, %160, %128, %109
  %284 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 1
  %285 = call i32 @hx509_certs_free(i8** %284)
  %286 = getelementptr inbounds %struct.sigctx, %struct.sigctx* %29, i32 0, i32 2
  %287 = call i32 @free_SignedData(%struct.TYPE_17__* %286)
  %288 = load i32, i32* %27, align 4
  store i32 %288, i32* %12, align 4
  br label %289

289:                                              ; preds = %283, %78
  %290 = load i32, i32* %12, align 4
  ret i32 %290
}

declare dso_local i32 @memset(%struct.sigctx*, i32, i32) #1

declare dso_local i32 @rk_UNCONST(i8*) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i8**) #1

declare dso_local i32 @der_copy_oid(i32*, i32*) #1

declare dso_local i32 @ALLOC(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @hx509_certs_iter_f(i32, i8*, i32, %struct.sigctx*) #1

declare dso_local i64 @cmp_AlgorithmIdentifier(i32*, i32*) #1

declare dso_local i32 @add_DigestAlgorithmIdentifiers(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ASN1_MALLOC_ENCODE(i32, i32, i64, %struct.TYPE_17__*, i64*, i32) #1

declare dso_local i32 @_hx509_abort(i8*) #1

declare dso_local i32 @hx509_certs_free(i8**) #1

declare dso_local i32 @free_SignedData(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
