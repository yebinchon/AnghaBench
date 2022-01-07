; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/spnego/extr_init_sec_context.c_spnego_initial.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/spnego/extr_init_sec_context.c_spnego_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_15__, i32*, %struct.TYPE_16__*, i32* }
%struct.TYPE_15__ = type { i32*, i64 }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_19__ = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_17__, i32, i32, i32 }
%struct.TYPE_17__ = type { i32*, i64 }
%struct.TYPE_18__ = type { i32, i32 }

@GSS_C_NO_CONTEXT = common dso_local global i64 0, align 8
@GSS_C_NO_NAME = common dso_local global i64 0, align 8
@GSS_S_BAD_NAME = common dso_local global i64 0, align 8
@GSS_C_NO_BUFFER = common dso_local global i32 0, align 4
@initiator_approved = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@ASN1_C_CONTEXT = common dso_local global i32 0, align 4
@CONS = common dso_local global i32 0, align 4
@GSS_SPNEGO_MECHANISM = common dso_local global i32 0, align 4
@GSS_S_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i64*, i64, i32, i64, i64, i32, i32, i32*, i32, i64*, i64*)* @spnego_initial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spnego_initial(i64* %0, i32 %1, i64* %2, i64 %3, i32 %4, i64 %5, i64 %6, i32 %7, i32 %8, i32* %9, i32 %10, i64* %11, i64* %12) #0 {
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca %struct.TYPE_21__, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_20__, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca %struct.TYPE_20__, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca %struct.TYPE_19__*, align 8
  %40 = alloca %struct.TYPE_18__*, align 8
  %41 = alloca i64, align 8
  store i64* %0, i64** %15, align 8
  store i32 %1, i32* %16, align 4
  store i64* %2, i64** %17, align 8
  store i64 %3, i64* %18, align 8
  store i32 %4, i32* %19, align 4
  store i64 %5, i64* %20, align 8
  store i64 %6, i64* %21, align 8
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32* %9, i32** %24, align 8
  store i32 %10, i32* %25, align 4
  store i64* %11, i64** %26, align 8
  store i64* %12, i64** %27, align 8
  %42 = load i64, i64* %18, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %40, align 8
  %44 = load i64*, i64** %15, align 8
  store i64 0, i64* %44, align 8
  %45 = call i32 @memset(%struct.TYPE_21__* %28, i32 0, i32 40)
  %46 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  %47 = load i64*, i64** %17, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i64, i64* %18, align 8
  %49 = load i64, i64* @GSS_C_NO_NAME, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %13
  %52 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %52, i64* %14, align 8
  br label %354

53:                                               ; preds = %13
  %54 = call i64 @_gss_spnego_alloc_sec_context(i64* %31, i64* %38)
  store i64 %54, i64* %30, align 8
  %55 = load i64, i64* %30, align 8
  %56 = call i64 @GSS_ERROR(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i64, i64* %31, align 8
  %60 = load i64*, i64** %15, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64, i64* %30, align 8
  store i64 %61, i64* %14, align 8
  br label %354

62:                                               ; preds = %53
  %63 = load i64, i64* %38, align 8
  %64 = inttoptr i64 %63 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %64, %struct.TYPE_19__** %39, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 4
  %67 = call i32 @HEIMDAL_MUTEX_lock(i32* %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 8
  %76 = call i64 @gss_import_name(i64* %31, i32* %71, i32* %73, i32* %75)
  store i64 %76, i64* %30, align 8
  %77 = load i64, i64* %30, align 8
  %78 = call i64 @GSS_ERROR(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %62
  %81 = load i64, i64* %31, align 8
  %82 = load i64*, i64** %15, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %84 = call i32 @_gss_spnego_internal_delete_sec_context(i64* %31, i64* %38, i32 %83)
  %85 = load i64, i64* %30, align 8
  store i64 %85, i64* %14, align 8
  br label %354

86:                                               ; preds = %62
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @initiator_approved, align 4
  %91 = load i32, i32* %16, align 4
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 7
  %95 = call i64 @_gss_spnego_indicate_mechtypelist(i64* %31, i32 %89, i32 %90, i32 0, i32 %91, %struct.TYPE_15__* %92, i32* %94)
  store i64 %95, i64* %30, align 8
  %96 = load i64, i64* %30, align 8
  %97 = call i64 @GSS_ERROR(i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %86
  %100 = load i64, i64* %31, align 8
  %101 = load i64*, i64** %15, align 8
  store i64 %100, i64* %101, align 8
  %102 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %103 = call i32 @_gss_spnego_internal_delete_sec_context(i64* %31, i64* %38, i32 %102)
  %104 = load i64, i64* %30, align 8
  store i64 %104, i64* %14, align 8
  br label %354

105:                                              ; preds = %86
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 3
  store i32* null, i32** %106, align 8
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 9
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* %21, align 8
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* %23, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 5
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 2
  %126 = call i64 @gss_init_sec_context(i64* %31, i32 %107, i32* %109, i32 %112, i32 %115, i64 %116, i64 %117, i32 %118, i32 %119, i32* %121, %struct.TYPE_20__* %32, i64* %123, i64* %125)
  store i64 %126, i64* %30, align 8
  %127 = load i64, i64* %30, align 8
  %128 = call i64 @GSS_ERROR(i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %105
  %131 = call i32 @free_NegTokenInit(%struct.TYPE_21__* %28)
  %132 = load i64, i64* %31, align 8
  %133 = load i64*, i64** %15, align 8
  store i64 %132, i64* %133, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = load i64, i64* %30, align 8
  %138 = load i64, i64* %31, align 8
  %139 = call i32 @gss_mg_collect_error(i32 %136, i64 %137, i64 %138)
  %140 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %141 = call i32 @_gss_spnego_internal_delete_sec_context(i64* %31, i64* %38, i32 %140)
  %142 = load i64, i64* %30, align 8
  store i64 %142, i64* %14, align 8
  br label %354

143:                                              ; preds = %105
  %144 = load i64, i64* %30, align 8
  %145 = load i64, i64* @GSS_S_COMPLETE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 3
  store i32 1, i32* %149, align 8
  br label %150

150:                                              ; preds = %147, %143
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %210

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = call i32 @ALLOC(%struct.TYPE_16__* %156, i32 1)
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = icmp eq %struct.TYPE_16__* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %154
  %162 = call i32 @free_NegTokenInit(%struct.TYPE_21__* %28)
  %163 = call i32 @gss_release_buffer(i64* %31, %struct.TYPE_20__* %32)
  %164 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %165 = call i32 @_gss_spnego_internal_delete_sec_context(i64* %31, i64* %38, i32 %164)
  %166 = load i64, i64* @ENOMEM, align 8
  %167 = load i64*, i64** %15, align 8
  store i64 %166, i64* %167, align 8
  %168 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %168, i64* %14, align 8
  br label %354

169:                                              ; preds = %154
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  store i64 %171, i64* %174, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i8* @malloc(i64 %176)
  %178 = bitcast i8* %177 to i32*
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  store i32* %178, i32** %181, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = icmp eq i32* %185, null
  br i1 %186, label %187, label %199

187:                                              ; preds = %169
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %187
  %192 = call i32 @free_NegTokenInit(%struct.TYPE_21__* %28)
  %193 = call i32 @gss_release_buffer(i64* %31, %struct.TYPE_20__* %32)
  %194 = load i64, i64* @ENOMEM, align 8
  %195 = load i64*, i64** %15, align 8
  store i64 %194, i64* %195, align 8
  %196 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %197 = call i32 @_gss_spnego_internal_delete_sec_context(i64* %31, i64* %38, i32 %196)
  %198 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %198, i64* %14, align 8
  br label %354

199:                                              ; preds = %187, %169
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @memcpy(i32* %203, i32* %205, i64 %207)
  %209 = call i32 @gss_release_buffer(i64* %31, %struct.TYPE_20__* %32)
  br label %212

210:                                              ; preds = %150
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %211, align 8
  br label %212

212:                                              ; preds = %210, %199
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  store i32* null, i32** %213, align 8
  %214 = call i64 @length_NegTokenInit(%struct.TYPE_21__* %28)
  store i64 %214, i64* %37, align 8
  %215 = load i64, i64* %37, align 8
  %216 = call i32 @der_length_len(i64 %215)
  %217 = add nsw i32 1, %216
  %218 = sext i32 %217 to i64
  %219 = load i64, i64* %37, align 8
  %220 = add i64 %218, %219
  store i64 %220, i64* %34, align 8
  %221 = load i64, i64* %34, align 8
  %222 = call i8* @malloc(i64 %221)
  %223 = bitcast i8* %222 to i32*
  store i32* %223, i32** %33, align 8
  %224 = load i32*, i32** %33, align 8
  %225 = icmp eq i32* %224, null
  br i1 %225, label %226, label %233

226:                                              ; preds = %212
  %227 = call i32 @free_NegTokenInit(%struct.TYPE_21__* %28)
  %228 = load i64, i64* @ENOMEM, align 8
  %229 = load i64*, i64** %15, align 8
  store i64 %228, i64* %229, align 8
  %230 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %231 = call i32 @_gss_spnego_internal_delete_sec_context(i64* %31, i64* %38, i32 %230)
  %232 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %232, i64* %14, align 8
  br label %354

233:                                              ; preds = %212
  %234 = load i32*, i32** %33, align 8
  %235 = load i64, i64* %34, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = getelementptr inbounds i32, i32* %236, i64 -1
  %238 = load i64, i64* %37, align 8
  %239 = call i32 @encode_NegTokenInit(i32* %237, i64 %238, %struct.TYPE_21__* %28, i64* %35)
  store i32 %239, i32* %29, align 4
  %240 = load i32, i32* %29, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %233
  %243 = load i64, i64* %37, align 8
  %244 = load i64, i64* %35, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = call i32 (...) @abort() #3
  unreachable

248:                                              ; preds = %242, %233
  %249 = load i32, i32* %29, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %277

251:                                              ; preds = %248
  %252 = load i32*, i32** %33, align 8
  %253 = load i64, i64* %34, align 8
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  %255 = load i64, i64* %35, align 8
  %256 = sub i64 0, %255
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = getelementptr inbounds i32, i32* %257, i64 -1
  %259 = load i64, i64* %34, align 8
  %260 = load i64, i64* %35, align 8
  %261 = sub i64 %259, %260
  %262 = load i64, i64* %35, align 8
  %263 = load i32, i32* @ASN1_C_CONTEXT, align 4
  %264 = load i32, i32* @CONS, align 4
  %265 = call i32 @der_put_length_and_tag(i32* %258, i64 %261, i64 %262, i32 %263, i32 %264, i32 0, i64* %41)
  store i32 %265, i32* %29, align 4
  %266 = load i32, i32* %29, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %251
  %269 = load i64, i64* %41, align 8
  %270 = load i64, i64* %35, align 8
  %271 = add i64 %269, %270
  %272 = load i64, i64* %34, align 8
  %273 = icmp ne i64 %271, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  %275 = call i32 (...) @abort() #3
  unreachable

276:                                              ; preds = %268, %251
  br label %277

277:                                              ; preds = %276, %248
  %278 = load i32, i32* %29, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %277
  %281 = load i32, i32* %29, align 4
  %282 = sext i32 %281 to i64
  %283 = load i64*, i64** %15, align 8
  store i64 %282, i64* %283, align 8
  %284 = load i32*, i32** %33, align 8
  %285 = call i32 @free(i32* %284)
  %286 = call i32 @free_NegTokenInit(%struct.TYPE_21__* %28)
  %287 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %288 = call i32 @_gss_spnego_internal_delete_sec_context(i64* %31, i64* %38, i32 %287)
  %289 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %289, i64* %14, align 8
  br label %354

290:                                              ; preds = %277
  %291 = load i32*, i32** %33, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  store i32* %291, i32** %292, align 8
  %293 = load i64, i64* %34, align 8
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  store i64 %293, i64* %294, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %298, i32 0, i32 6
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 1
  store i64 %297, i64* %300, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 6
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 0
  store i32* %303, i32** %306, align 8
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 1
  store i64 0, i64* %308, align 8
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 0
  store i32* null, i32** %310, align 8
  %311 = call i32 @free_NegTokenInit(%struct.TYPE_21__* %28)
  %312 = load i32, i32* @GSS_SPNEGO_MECHANISM, align 4
  %313 = load i32, i32* %25, align 4
  %314 = call i64 @gss_encapsulate_token(%struct.TYPE_20__* %36, i32 %312, i32 %313)
  store i64 %314, i64* %30, align 8
  %315 = load i32*, i32** %33, align 8
  %316 = call i32 @free(i32* %315)
  %317 = load i64, i64* %30, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %290
  %320 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %321 = call i32 @_gss_spnego_internal_delete_sec_context(i64* %31, i64* %38, i32 %320)
  %322 = load i64, i64* %30, align 8
  store i64 %322, i64* %14, align 8
  br label %354

323:                                              ; preds = %290
  %324 = load i32*, i32** %24, align 8
  %325 = icmp ne i32* %324, null
  br i1 %325, label %326, label %331

326:                                              ; preds = %323
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 8
  %330 = load i32*, i32** %24, align 8
  store i32 %329, i32* %330, align 4
  br label %331

331:                                              ; preds = %326, %323
  %332 = load i64*, i64** %26, align 8
  %333 = icmp ne i64* %332, null
  br i1 %333, label %334, label %339

334:                                              ; preds = %331
  %335 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = load i64*, i64** %26, align 8
  store i64 %337, i64* %338, align 8
  br label %339

339:                                              ; preds = %334, %331
  %340 = load i64*, i64** %27, align 8
  %341 = icmp ne i64* %340, null
  br i1 %341, label %342, label %347

342:                                              ; preds = %339
  %343 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 2
  %345 = load i64, i64* %344, align 8
  %346 = load i64*, i64** %27, align 8
  store i64 %345, i64* %346, align 8
  br label %347

347:                                              ; preds = %342, %339
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 4
  %350 = call i32 @HEIMDAL_MUTEX_unlock(i32* %349)
  %351 = load i64, i64* %38, align 8
  %352 = load i64*, i64** %17, align 8
  store i64 %351, i64* %352, align 8
  %353 = load i64, i64* @GSS_S_CONTINUE_NEEDED, align 8
  store i64 %353, i64* %14, align 8
  br label %354

354:                                              ; preds = %347, %319, %280, %226, %191, %161, %130, %99, %80, %58, %51
  %355 = load i64, i64* %14, align 8
  ret i64 %355
}

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @_gss_spnego_alloc_sec_context(i64*, i64*) #1

declare dso_local i64 @GSS_ERROR(i64) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i64 @gss_import_name(i64*, i32*, i32*, i32*) #1

declare dso_local i32 @_gss_spnego_internal_delete_sec_context(i64*, i64*, i32) #1

declare dso_local i64 @_gss_spnego_indicate_mechtypelist(i64*, i32, i32, i32, i32, %struct.TYPE_15__*, i32*) #1

declare dso_local i64 @gss_init_sec_context(i64*, i32, i32*, i32, i32, i64, i64, i32, i32, i32*, %struct.TYPE_20__*, i64*, i64*) #1

declare dso_local i32 @free_NegTokenInit(%struct.TYPE_21__*) #1

declare dso_local i32 @gss_mg_collect_error(i32, i64, i64) #1

declare dso_local i32 @ALLOC(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_20__*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @length_NegTokenInit(%struct.TYPE_21__*) #1

declare dso_local i32 @der_length_len(i64) #1

declare dso_local i32 @encode_NegTokenInit(i32*, i64, %struct.TYPE_21__*, i64*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @der_put_length_and_tag(i32*, i64, i64, i32, i32, i32, i64*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @gss_encapsulate_token(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
