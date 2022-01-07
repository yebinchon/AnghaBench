; ModuleID = '/home/carl/AnghaBench/freebsd/kerberos5/lib/libgssapi_krb5/extr_gss_krb5.c_gss_krb5_export_lucid_sec_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/kerberos5/lib/libgssapi_krb5/extr_gss_krb5.c_gss_krb5_export_lucid_sec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@GSS_C_NO_BUFFER_SET = common dso_local global %struct.TYPE_15__* null, align 8
@GSS_C_NO_CONTEXT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i8* null, align 8
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@GSS_KRB5_EXPORT_LUCID_CONTEXT_V1_X = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_krb5_export_lucid_sec_context(i32* %0, i64* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32* null, i32** %10, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** @GSS_C_NO_BUFFER_SET, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  store i32* null, i32** %15, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %4
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %27, %22, %4
  %31 = load i8*, i8** @EINVAL, align 8
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %33, i32* %5, align 4
  br label %301

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @GSS_KRB5_EXPORT_LUCID_CONTEXT_V1_X, align 4
  %39 = call i32 @gss_inquire_sec_context_by_oid(i32* %35, i64 %37, i32 %38, %struct.TYPE_15__** %12)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %5, align 4
  br label %301

44:                                               ; preds = %34
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** @GSS_C_NO_BUFFER_SET, align 8
  %47 = icmp eq %struct.TYPE_15__* %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %60

53:                                               ; preds = %48, %44
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @gss_release_buffer_set(i32* %54, %struct.TYPE_15__** %12)
  %56 = load i8*, i8** @EINVAL, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %59, i32* %5, align 4
  br label %301

60:                                               ; preds = %48
  %61 = call i32 @krb5_init_context(i32** %10)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %271

65:                                               ; preds = %60
  %66 = call %struct.TYPE_14__* @calloc(i32 1, i32 48)
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %14, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %68 = icmp eq %struct.TYPE_14__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @ENOMEM, align 4
  store i32 %70, i32* %11, align 4
  br label %271

71:                                               ; preds = %65
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32* @krb5_storage_from_mem(i32 %77, i32 %83)
  store i32* %84, i32** %15, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %71
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* %11, align 4
  br label %271

89:                                               ; preds = %71
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @krb5_ret_uint32(i32* %90, i32* %16)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %271

95:                                               ; preds = %89
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i8*, i8** @EINVAL, align 8
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %11, align 4
  br label %271

101:                                              ; preds = %95
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 4
  %104 = load i32*, i32** %15, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = call i32 @krb5_ret_uint32(i32* %104, i32* %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %271

111:                                              ; preds = %101
  %112 = load i32*, i32** %15, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = call i32 @krb5_ret_uint32(i32* %112, i32* %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %271

119:                                              ; preds = %111
  %120 = load i32*, i32** %15, align 8
  %121 = call i32 @krb5_ret_uint32(i32* %120, i32* %16)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %271

125:                                              ; preds = %119
  %126 = load i32, i32* %16, align 4
  %127 = shl i32 %126, 32
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @krb5_ret_uint32(i32* %130, i32* %16)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %271

135:                                              ; preds = %125
  %136 = load i32, i32* %16, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load i32*, i32** %15, align 8
  %142 = call i32 @krb5_ret_uint32(i32* %141, i32* %16)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %271

146:                                              ; preds = %135
  %147 = load i32, i32* %16, align 4
  %148 = shl i32 %147, 32
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load i32*, i32** %15, align 8
  %152 = call i32 @krb5_ret_uint32(i32* %151, i32* %16)
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  br label %271

156:                                              ; preds = %146
  %157 = load i32, i32* %16, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load i32*, i32** %15, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 5
  %165 = call i32 @krb5_ret_uint32(i32* %162, i32* %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %156
  br label %271

169:                                              ; preds = %156
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %209

174:                                              ; preds = %169
  %175 = load i32*, i32** %15, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 7
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = call i32 @krb5_ret_uint32(i32* %175, i32* %178)
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %271

183:                                              ; preds = %174
  %184 = load i32*, i32** %15, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = call i32 @krb5_ret_uint32(i32* %184, i32* %187)
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  br label %271

192:                                              ; preds = %183
  %193 = load i32*, i32** %15, align 8
  %194 = call i32 @krb5_ret_keyblock(i32* %193, i32* %17)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %271

198:                                              ; preds = %192
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 7
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 2
  %202 = call i32 @set_key(i32* %17, i32* %201)
  store i32 %202, i32* %11, align 4
  %203 = load i32*, i32** %10, align 8
  %204 = call i32 @krb5_free_keyblock_contents(i32* %203, i32* %17)
  %205 = load i32, i32* %11, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %198
  br label %271

208:                                              ; preds = %198
  br label %267

209:                                              ; preds = %169
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %263

214:                                              ; preds = %209
  %215 = load i32*, i32** %15, align 8
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 6
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = call i32 @krb5_ret_uint32(i32* %215, i32* %218)
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  br label %271

223:                                              ; preds = %214
  %224 = load i32*, i32** %15, align 8
  %225 = call i32 @krb5_ret_keyblock(i32* %224, i32* %18)
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  br label %271

229:                                              ; preds = %223
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 6
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 2
  %233 = call i32 @set_key(i32* %18, i32* %232)
  store i32 %233, i32* %11, align 4
  %234 = load i32*, i32** %10, align 8
  %235 = call i32 @krb5_free_keyblock_contents(i32* %234, i32* %18)
  %236 = load i32, i32* %11, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %229
  br label %271

239:                                              ; preds = %229
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 6
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %262

245:                                              ; preds = %239
  %246 = load i32*, i32** %15, align 8
  %247 = call i32 @krb5_ret_keyblock(i32* %246, i32* %18)
  store i32 %247, i32* %11, align 4
  %248 = load i32, i32* %11, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  br label %271

251:                                              ; preds = %245
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 6
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = call i32 @set_key(i32* %18, i32* %254)
  store i32 %255, i32* %11, align 4
  %256 = load i32*, i32** %10, align 8
  %257 = call i32 @krb5_free_keyblock_contents(i32* %256, i32* %18)
  %258 = load i32, i32* %11, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %251
  br label %271

261:                                              ; preds = %251
  br label %262

262:                                              ; preds = %261, %239
  br label %266

263:                                              ; preds = %209
  %264 = load i8*, i8** @EINVAL, align 8
  %265 = ptrtoint i8* %264 to i32
  store i32 %265, i32* %11, align 4
  br label %271

266:                                              ; preds = %262
  br label %267

267:                                              ; preds = %266, %208
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %269 = bitcast %struct.TYPE_14__* %268 to i8*
  %270 = load i8**, i8*** %9, align 8
  store i8* %269, i8** %270, align 8
  br label %271

271:                                              ; preds = %267, %263, %260, %250, %238, %228, %222, %207, %197, %191, %182, %168, %155, %145, %134, %124, %118, %110, %98, %94, %87, %69, %64
  %272 = load i32*, i32** %6, align 8
  %273 = call i32 @gss_release_buffer_set(i32* %272, %struct.TYPE_15__** %12)
  %274 = load i32*, i32** %15, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %279

276:                                              ; preds = %271
  %277 = load i32*, i32** %15, align 8
  %278 = call i32 @krb5_storage_free(i32* %277)
  br label %279

279:                                              ; preds = %276, %271
  %280 = load i32*, i32** %10, align 8
  %281 = icmp ne i32* %280, null
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i32*, i32** %10, align 8
  %284 = call i32 @krb5_free_context(i32* %283)
  br label %285

285:                                              ; preds = %282, %279
  %286 = load i32, i32* %11, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %298

288:                                              ; preds = %285
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %290 = icmp ne %struct.TYPE_14__* %289, null
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %293 = call i32 @gss_krb5_free_lucid_sec_context(i32* null, %struct.TYPE_14__* %292)
  br label %294

294:                                              ; preds = %291, %288
  %295 = load i32, i32* %11, align 4
  %296 = load i32*, i32** %6, align 8
  store i32 %295, i32* %296, align 4
  %297 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %297, i32* %5, align 4
  br label %301

298:                                              ; preds = %285
  %299 = load i32*, i32** %6, align 8
  store i32 0, i32* %299, align 4
  %300 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %300, i32* %5, align 4
  br label %301

301:                                              ; preds = %298, %294, %53, %42, %30
  %302 = load i32, i32* %5, align 4
  ret i32 %302
}

declare dso_local i32 @gss_inquire_sec_context_by_oid(i32*, i64, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @gss_release_buffer_set(i32*, %struct.TYPE_15__**) #1

declare dso_local i32 @krb5_init_context(i32**) #1

declare dso_local %struct.TYPE_14__* @calloc(i32, i32) #1

declare dso_local i32* @krb5_storage_from_mem(i32, i32) #1

declare dso_local i32 @krb5_ret_uint32(i32*, i32*) #1

declare dso_local i32 @krb5_ret_keyblock(i32*, i32*) #1

declare dso_local i32 @set_key(i32*, i32*) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32*, i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @krb5_free_context(i32*) #1

declare dso_local i32 @gss_krb5_free_lucid_sec_context(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
