; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp224.c_ec_GFp_nistp224_precompute_mult.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp224.c_ec_GFp_nistp224_precompute_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32*** }

@nistp224_curve_params = common dso_local global i32* null, align 8
@gmul = common dso_local global i32 0, align 4
@nistp224 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_nistp224_precompute_mult(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [32 x i32], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %13, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = call i32 @EC_pre_comp_free(%struct.TYPE_15__* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = call i32* (...) @BN_CTX_new()
  store i32* %20, i32** %10, align 8
  store i32* %20, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %1012

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @BN_CTX_start(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @BN_CTX_get(i32* %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @BN_CTX_get(i32* %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %1002

34:                                               ; preds = %24
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = icmp eq %struct.TYPE_13__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %1002

40:                                               ; preds = %34
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = call i32* @EC_POINT_new(%struct.TYPE_15__* %41)
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %1002

46:                                               ; preds = %40
  %47 = load i32*, i32** @nistp224_curve_params, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @BN_bin2bn(i32 %49, i32 4, i32* %50)
  %52 = load i32*, i32** @nistp224_curve_params, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @BN_bin2bn(i32 %54, i32 4, i32* %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_15__* %57, i32* %58, i32* %59, i32* %60, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %46
  br label %1002

65:                                               ; preds = %46
  %66 = call %struct.TYPE_14__* (...) @nistp224_pre_comp_new()
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %7, align 8
  %67 = icmp eq %struct.TYPE_14__* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %1002

69:                                               ; preds = %65
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i64 @EC_POINT_cmp(%struct.TYPE_15__* %70, i32* %71, %struct.TYPE_13__* %74, i32* %75)
  %77 = icmp eq i64 0, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32***, i32**** %80, align 8
  %82 = load i32, i32* @gmul, align 4
  %83 = call i32 @memcpy(i32*** %81, i32 %82, i32 8)
  br label %997

84:                                               ; preds = %69
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32***, i32**** %86, align 8
  %88 = getelementptr inbounds i32**, i32*** %87, i64 0
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @BN_to_felem(i32 %93, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %135

101:                                              ; preds = %84
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32***, i32**** %103, align 8
  %105 = getelementptr inbounds i32**, i32*** %104, i64 0
  %106 = load i32**, i32*** %105, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @BN_to_felem(i32 %110, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %101
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i32***, i32**** %120, align 8
  %122 = getelementptr inbounds i32**, i32*** %121, i64 0
  %123 = load i32**, i32*** %122, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @BN_to_felem(i32 %127, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %118, %101, %84
  br label %1002

136:                                              ; preds = %118
  store i32 1, i32* %8, align 4
  br label %137

137:                                              ; preds = %438, %136
  %138 = load i32, i32* %8, align 4
  %139 = icmp sle i32 %138, 8
  br i1 %139, label %140, label %441

140:                                              ; preds = %137
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32***, i32**** %142, align 8
  %144 = getelementptr inbounds i32**, i32*** %143, i64 1
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32***, i32**** %153, align 8
  %155 = getelementptr inbounds i32**, i32*** %154, i64 1
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i32***, i32**** %164, align 8
  %166 = getelementptr inbounds i32**, i32*** %165, i64 1
  %167 = load i32**, i32*** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i32***, i32**** %175, align 8
  %177 = getelementptr inbounds i32**, i32*** %176, i64 0
  %178 = load i32**, i32*** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load i32***, i32**** %186, align 8
  %188 = getelementptr inbounds i32**, i32*** %187, i64 0
  %189 = load i32**, i32*** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i32***, i32**** %197, align 8
  %199 = getelementptr inbounds i32**, i32*** %198, i64 0
  %200 = load i32**, i32*** %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %200, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 2
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @point_double(i32 %151, i32 %162, i32 %173, i32 %184, i32 %195, i32 %206)
  store i32 0, i32* %9, align 4
  br label %208

208:                                              ; preds = %279, %140
  %209 = load i32, i32* %9, align 4
  %210 = icmp slt i32 %209, 27
  br i1 %210, label %211, label %282

211:                                              ; preds = %208
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load i32***, i32**** %213, align 8
  %215 = getelementptr inbounds i32**, i32*** %214, i64 1
  %216 = load i32**, i32*** %215, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %216, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load i32***, i32**** %224, align 8
  %226 = getelementptr inbounds i32**, i32*** %225, i64 1
  %227 = load i32**, i32*** %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %227, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  %236 = load i32***, i32**** %235, align 8
  %237 = getelementptr inbounds i32**, i32*** %236, i64 1
  %238 = load i32**, i32*** %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32*, i32** %238, i64 %240
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 2
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = load i32***, i32**** %246, align 8
  %248 = getelementptr inbounds i32**, i32*** %247, i64 1
  %249 = load i32**, i32*** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load i32***, i32**** %257, align 8
  %259 = getelementptr inbounds i32**, i32*** %258, i64 1
  %260 = load i32**, i32*** %259, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32*, i32** %260, i64 %262
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 0
  %269 = load i32***, i32**** %268, align 8
  %270 = getelementptr inbounds i32**, i32*** %269, i64 1
  %271 = load i32**, i32*** %270, align 8
  %272 = load i32, i32* %8, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32*, i32** %271, i64 %273
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 2
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @point_double(i32 %222, i32 %233, i32 %244, i32 %255, i32 %266, i32 %277)
  br label %279

279:                                              ; preds = %211
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %208

282:                                              ; preds = %208
  %283 = load i32, i32* %8, align 4
  %284 = icmp eq i32 %283, 8
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  br label %441

286:                                              ; preds = %282
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 0
  %289 = load i32***, i32**** %288, align 8
  %290 = getelementptr inbounds i32**, i32*** %289, i64 0
  %291 = load i32**, i32*** %290, align 8
  %292 = load i32, i32* %8, align 4
  %293 = mul nsw i32 2, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32*, i32** %291, i64 %294
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 0
  %301 = load i32***, i32**** %300, align 8
  %302 = getelementptr inbounds i32**, i32*** %301, i64 0
  %303 = load i32**, i32*** %302, align 8
  %304 = load i32, i32* %8, align 4
  %305 = mul nsw i32 2, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32*, i32** %303, i64 %306
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  %313 = load i32***, i32**** %312, align 8
  %314 = getelementptr inbounds i32**, i32*** %313, i64 0
  %315 = load i32**, i32*** %314, align 8
  %316 = load i32, i32* %8, align 4
  %317 = mul nsw i32 2, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32*, i32** %315, i64 %318
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 2
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 0
  %325 = load i32***, i32**** %324, align 8
  %326 = getelementptr inbounds i32**, i32*** %325, i64 1
  %327 = load i32**, i32*** %326, align 8
  %328 = load i32, i32* %8, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32*, i32** %327, i64 %329
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 0
  %336 = load i32***, i32**** %335, align 8
  %337 = getelementptr inbounds i32**, i32*** %336, i64 1
  %338 = load i32**, i32*** %337, align 8
  %339 = load i32, i32* %8, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32*, i32** %338, i64 %340
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 1
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 0
  %347 = load i32***, i32**** %346, align 8
  %348 = getelementptr inbounds i32**, i32*** %347, i64 1
  %349 = load i32**, i32*** %348, align 8
  %350 = load i32, i32* %8, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32*, i32** %349, i64 %351
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 2
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @point_double(i32 %298, i32 %310, i32 %322, i32 %333, i32 %344, i32 %355)
  store i32 0, i32* %9, align 4
  br label %357

357:                                              ; preds = %434, %286
  %358 = load i32, i32* %9, align 4
  %359 = icmp slt i32 %358, 27
  br i1 %359, label %360, label %437

360:                                              ; preds = %357
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 0
  %363 = load i32***, i32**** %362, align 8
  %364 = getelementptr inbounds i32**, i32*** %363, i64 0
  %365 = load i32**, i32*** %364, align 8
  %366 = load i32, i32* %8, align 4
  %367 = mul nsw i32 2, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32*, i32** %365, i64 %368
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 0
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 0
  %375 = load i32***, i32**** %374, align 8
  %376 = getelementptr inbounds i32**, i32*** %375, i64 0
  %377 = load i32**, i32*** %376, align 8
  %378 = load i32, i32* %8, align 4
  %379 = mul nsw i32 2, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32*, i32** %377, i64 %380
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 1
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 0
  %387 = load i32***, i32**** %386, align 8
  %388 = getelementptr inbounds i32**, i32*** %387, i64 0
  %389 = load i32**, i32*** %388, align 8
  %390 = load i32, i32* %8, align 4
  %391 = mul nsw i32 2, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32*, i32** %389, i64 %392
  %394 = load i32*, i32** %393, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 2
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %397, i32 0, i32 0
  %399 = load i32***, i32**** %398, align 8
  %400 = getelementptr inbounds i32**, i32*** %399, i64 0
  %401 = load i32**, i32*** %400, align 8
  %402 = load i32, i32* %8, align 4
  %403 = mul nsw i32 2, %402
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32*, i32** %401, i64 %404
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 0
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i32 0, i32 0
  %411 = load i32***, i32**** %410, align 8
  %412 = getelementptr inbounds i32**, i32*** %411, i64 0
  %413 = load i32**, i32*** %412, align 8
  %414 = load i32, i32* %8, align 4
  %415 = mul nsw i32 2, %414
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32*, i32** %413, i64 %416
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 1
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %421, i32 0, i32 0
  %423 = load i32***, i32**** %422, align 8
  %424 = getelementptr inbounds i32**, i32*** %423, i64 0
  %425 = load i32**, i32*** %424, align 8
  %426 = load i32, i32* %8, align 4
  %427 = mul nsw i32 2, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32*, i32** %425, i64 %428
  %430 = load i32*, i32** %429, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 2
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @point_double(i32 %372, i32 %384, i32 %396, i32 %408, i32 %420, i32 %432)
  br label %434

434:                                              ; preds = %360
  %435 = load i32, i32* %9, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %9, align 4
  br label %357

437:                                              ; preds = %357
  br label %438

438:                                              ; preds = %437
  %439 = load i32, i32* %8, align 4
  %440 = shl i32 %439, 1
  store i32 %440, i32* %8, align 4
  br label %137

441:                                              ; preds = %285, %137
  store i32 0, i32* %8, align 4
  br label %442

442:                                              ; preds = %985, %441
  %443 = load i32, i32* %8, align 4
  %444 = icmp slt i32 %443, 2
  br i1 %444, label %445, label %988

445:                                              ; preds = %442
  %446 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %447 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %446, i32 0, i32 0
  %448 = load i32***, i32**** %447, align 8
  %449 = load i32, i32* %8, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32**, i32*** %448, i64 %450
  %452 = load i32**, i32*** %451, align 8
  %453 = getelementptr inbounds i32*, i32** %452, i64 0
  %454 = load i32*, i32** %453, align 8
  %455 = call i32 @memset(i32* %454, i32 0, i32 8)
  %456 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 0
  %458 = load i32***, i32**** %457, align 8
  %459 = load i32, i32* %8, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32**, i32*** %458, i64 %460
  %462 = load i32**, i32*** %461, align 8
  %463 = getelementptr inbounds i32*, i32** %462, i64 6
  %464 = load i32*, i32** %463, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 0
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %468 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %467, i32 0, i32 0
  %469 = load i32***, i32**** %468, align 8
  %470 = load i32, i32* %8, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32**, i32*** %469, i64 %471
  %473 = load i32**, i32*** %472, align 8
  %474 = getelementptr inbounds i32*, i32** %473, i64 6
  %475 = load i32*, i32** %474, align 8
  %476 = getelementptr inbounds i32, i32* %475, i64 1
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %479 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %478, i32 0, i32 0
  %480 = load i32***, i32**** %479, align 8
  %481 = load i32, i32* %8, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32**, i32*** %480, i64 %482
  %484 = load i32**, i32*** %483, align 8
  %485 = getelementptr inbounds i32*, i32** %484, i64 6
  %486 = load i32*, i32** %485, align 8
  %487 = getelementptr inbounds i32, i32* %486, i64 2
  %488 = load i32, i32* %487, align 4
  %489 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %490 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %489, i32 0, i32 0
  %491 = load i32***, i32**** %490, align 8
  %492 = load i32, i32* %8, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32**, i32*** %491, i64 %493
  %495 = load i32**, i32*** %494, align 8
  %496 = getelementptr inbounds i32*, i32** %495, i64 4
  %497 = load i32*, i32** %496, align 8
  %498 = getelementptr inbounds i32, i32* %497, i64 0
  %499 = load i32, i32* %498, align 4
  %500 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %501 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %500, i32 0, i32 0
  %502 = load i32***, i32**** %501, align 8
  %503 = load i32, i32* %8, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32**, i32*** %502, i64 %504
  %506 = load i32**, i32*** %505, align 8
  %507 = getelementptr inbounds i32*, i32** %506, i64 4
  %508 = load i32*, i32** %507, align 8
  %509 = getelementptr inbounds i32, i32* %508, i64 1
  %510 = load i32, i32* %509, align 4
  %511 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %512 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %511, i32 0, i32 0
  %513 = load i32***, i32**** %512, align 8
  %514 = load i32, i32* %8, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32**, i32*** %513, i64 %515
  %517 = load i32**, i32*** %516, align 8
  %518 = getelementptr inbounds i32*, i32** %517, i64 4
  %519 = load i32*, i32** %518, align 8
  %520 = getelementptr inbounds i32, i32* %519, i64 2
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %523 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %522, i32 0, i32 0
  %524 = load i32***, i32**** %523, align 8
  %525 = load i32, i32* %8, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32**, i32*** %524, i64 %526
  %528 = load i32**, i32*** %527, align 8
  %529 = getelementptr inbounds i32*, i32** %528, i64 2
  %530 = load i32*, i32** %529, align 8
  %531 = getelementptr inbounds i32, i32* %530, i64 0
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %534 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %533, i32 0, i32 0
  %535 = load i32***, i32**** %534, align 8
  %536 = load i32, i32* %8, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32**, i32*** %535, i64 %537
  %539 = load i32**, i32*** %538, align 8
  %540 = getelementptr inbounds i32*, i32** %539, i64 2
  %541 = load i32*, i32** %540, align 8
  %542 = getelementptr inbounds i32, i32* %541, i64 1
  %543 = load i32, i32* %542, align 4
  %544 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %545 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %544, i32 0, i32 0
  %546 = load i32***, i32**** %545, align 8
  %547 = load i32, i32* %8, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i32**, i32*** %546, i64 %548
  %550 = load i32**, i32*** %549, align 8
  %551 = getelementptr inbounds i32*, i32** %550, i64 2
  %552 = load i32*, i32** %551, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 2
  %554 = load i32, i32* %553, align 4
  %555 = call i32 @point_add(i32 %466, i32 %477, i32 %488, i32 %499, i32 %510, i32 %521, i32 0, i32 %532, i32 %543, i32 %554)
  %556 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %557 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %556, i32 0, i32 0
  %558 = load i32***, i32**** %557, align 8
  %559 = load i32, i32* %8, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32**, i32*** %558, i64 %560
  %562 = load i32**, i32*** %561, align 8
  %563 = getelementptr inbounds i32*, i32** %562, i64 10
  %564 = load i32*, i32** %563, align 8
  %565 = getelementptr inbounds i32, i32* %564, i64 0
  %566 = load i32, i32* %565, align 4
  %567 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %568 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %567, i32 0, i32 0
  %569 = load i32***, i32**** %568, align 8
  %570 = load i32, i32* %8, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i32**, i32*** %569, i64 %571
  %573 = load i32**, i32*** %572, align 8
  %574 = getelementptr inbounds i32*, i32** %573, i64 10
  %575 = load i32*, i32** %574, align 8
  %576 = getelementptr inbounds i32, i32* %575, i64 1
  %577 = load i32, i32* %576, align 4
  %578 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %579 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %578, i32 0, i32 0
  %580 = load i32***, i32**** %579, align 8
  %581 = load i32, i32* %8, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i32**, i32*** %580, i64 %582
  %584 = load i32**, i32*** %583, align 8
  %585 = getelementptr inbounds i32*, i32** %584, i64 10
  %586 = load i32*, i32** %585, align 8
  %587 = getelementptr inbounds i32, i32* %586, i64 2
  %588 = load i32, i32* %587, align 4
  %589 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %590 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %589, i32 0, i32 0
  %591 = load i32***, i32**** %590, align 8
  %592 = load i32, i32* %8, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i32**, i32*** %591, i64 %593
  %595 = load i32**, i32*** %594, align 8
  %596 = getelementptr inbounds i32*, i32** %595, i64 8
  %597 = load i32*, i32** %596, align 8
  %598 = getelementptr inbounds i32, i32* %597, i64 0
  %599 = load i32, i32* %598, align 4
  %600 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %601 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %600, i32 0, i32 0
  %602 = load i32***, i32**** %601, align 8
  %603 = load i32, i32* %8, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32**, i32*** %602, i64 %604
  %606 = load i32**, i32*** %605, align 8
  %607 = getelementptr inbounds i32*, i32** %606, i64 8
  %608 = load i32*, i32** %607, align 8
  %609 = getelementptr inbounds i32, i32* %608, i64 1
  %610 = load i32, i32* %609, align 4
  %611 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %612 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %611, i32 0, i32 0
  %613 = load i32***, i32**** %612, align 8
  %614 = load i32, i32* %8, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i32**, i32*** %613, i64 %615
  %617 = load i32**, i32*** %616, align 8
  %618 = getelementptr inbounds i32*, i32** %617, i64 8
  %619 = load i32*, i32** %618, align 8
  %620 = getelementptr inbounds i32, i32* %619, i64 2
  %621 = load i32, i32* %620, align 4
  %622 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %623 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %622, i32 0, i32 0
  %624 = load i32***, i32**** %623, align 8
  %625 = load i32, i32* %8, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i32**, i32*** %624, i64 %626
  %628 = load i32**, i32*** %627, align 8
  %629 = getelementptr inbounds i32*, i32** %628, i64 2
  %630 = load i32*, i32** %629, align 8
  %631 = getelementptr inbounds i32, i32* %630, i64 0
  %632 = load i32, i32* %631, align 4
  %633 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %634 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %633, i32 0, i32 0
  %635 = load i32***, i32**** %634, align 8
  %636 = load i32, i32* %8, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds i32**, i32*** %635, i64 %637
  %639 = load i32**, i32*** %638, align 8
  %640 = getelementptr inbounds i32*, i32** %639, i64 2
  %641 = load i32*, i32** %640, align 8
  %642 = getelementptr inbounds i32, i32* %641, i64 1
  %643 = load i32, i32* %642, align 4
  %644 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %645 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %644, i32 0, i32 0
  %646 = load i32***, i32**** %645, align 8
  %647 = load i32, i32* %8, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i32**, i32*** %646, i64 %648
  %650 = load i32**, i32*** %649, align 8
  %651 = getelementptr inbounds i32*, i32** %650, i64 2
  %652 = load i32*, i32** %651, align 8
  %653 = getelementptr inbounds i32, i32* %652, i64 2
  %654 = load i32, i32* %653, align 4
  %655 = call i32 @point_add(i32 %566, i32 %577, i32 %588, i32 %599, i32 %610, i32 %621, i32 0, i32 %632, i32 %643, i32 %654)
  %656 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %657 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %656, i32 0, i32 0
  %658 = load i32***, i32**** %657, align 8
  %659 = load i32, i32* %8, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds i32**, i32*** %658, i64 %660
  %662 = load i32**, i32*** %661, align 8
  %663 = getelementptr inbounds i32*, i32** %662, i64 12
  %664 = load i32*, i32** %663, align 8
  %665 = getelementptr inbounds i32, i32* %664, i64 0
  %666 = load i32, i32* %665, align 4
  %667 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %668 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %667, i32 0, i32 0
  %669 = load i32***, i32**** %668, align 8
  %670 = load i32, i32* %8, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i32**, i32*** %669, i64 %671
  %673 = load i32**, i32*** %672, align 8
  %674 = getelementptr inbounds i32*, i32** %673, i64 12
  %675 = load i32*, i32** %674, align 8
  %676 = getelementptr inbounds i32, i32* %675, i64 1
  %677 = load i32, i32* %676, align 4
  %678 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %679 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %678, i32 0, i32 0
  %680 = load i32***, i32**** %679, align 8
  %681 = load i32, i32* %8, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds i32**, i32*** %680, i64 %682
  %684 = load i32**, i32*** %683, align 8
  %685 = getelementptr inbounds i32*, i32** %684, i64 12
  %686 = load i32*, i32** %685, align 8
  %687 = getelementptr inbounds i32, i32* %686, i64 2
  %688 = load i32, i32* %687, align 4
  %689 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %690 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %689, i32 0, i32 0
  %691 = load i32***, i32**** %690, align 8
  %692 = load i32, i32* %8, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds i32**, i32*** %691, i64 %693
  %695 = load i32**, i32*** %694, align 8
  %696 = getelementptr inbounds i32*, i32** %695, i64 8
  %697 = load i32*, i32** %696, align 8
  %698 = getelementptr inbounds i32, i32* %697, i64 0
  %699 = load i32, i32* %698, align 4
  %700 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %701 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %700, i32 0, i32 0
  %702 = load i32***, i32**** %701, align 8
  %703 = load i32, i32* %8, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds i32**, i32*** %702, i64 %704
  %706 = load i32**, i32*** %705, align 8
  %707 = getelementptr inbounds i32*, i32** %706, i64 8
  %708 = load i32*, i32** %707, align 8
  %709 = getelementptr inbounds i32, i32* %708, i64 1
  %710 = load i32, i32* %709, align 4
  %711 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %712 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %711, i32 0, i32 0
  %713 = load i32***, i32**** %712, align 8
  %714 = load i32, i32* %8, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i32**, i32*** %713, i64 %715
  %717 = load i32**, i32*** %716, align 8
  %718 = getelementptr inbounds i32*, i32** %717, i64 8
  %719 = load i32*, i32** %718, align 8
  %720 = getelementptr inbounds i32, i32* %719, i64 2
  %721 = load i32, i32* %720, align 4
  %722 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %723 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %722, i32 0, i32 0
  %724 = load i32***, i32**** %723, align 8
  %725 = load i32, i32* %8, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds i32**, i32*** %724, i64 %726
  %728 = load i32**, i32*** %727, align 8
  %729 = getelementptr inbounds i32*, i32** %728, i64 4
  %730 = load i32*, i32** %729, align 8
  %731 = getelementptr inbounds i32, i32* %730, i64 0
  %732 = load i32, i32* %731, align 4
  %733 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %734 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %733, i32 0, i32 0
  %735 = load i32***, i32**** %734, align 8
  %736 = load i32, i32* %8, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds i32**, i32*** %735, i64 %737
  %739 = load i32**, i32*** %738, align 8
  %740 = getelementptr inbounds i32*, i32** %739, i64 4
  %741 = load i32*, i32** %740, align 8
  %742 = getelementptr inbounds i32, i32* %741, i64 1
  %743 = load i32, i32* %742, align 4
  %744 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %745 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %744, i32 0, i32 0
  %746 = load i32***, i32**** %745, align 8
  %747 = load i32, i32* %8, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds i32**, i32*** %746, i64 %748
  %750 = load i32**, i32*** %749, align 8
  %751 = getelementptr inbounds i32*, i32** %750, i64 4
  %752 = load i32*, i32** %751, align 8
  %753 = getelementptr inbounds i32, i32* %752, i64 2
  %754 = load i32, i32* %753, align 4
  %755 = call i32 @point_add(i32 %666, i32 %677, i32 %688, i32 %699, i32 %710, i32 %721, i32 0, i32 %732, i32 %743, i32 %754)
  %756 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %757 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %756, i32 0, i32 0
  %758 = load i32***, i32**** %757, align 8
  %759 = load i32, i32* %8, align 4
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds i32**, i32*** %758, i64 %760
  %762 = load i32**, i32*** %761, align 8
  %763 = getelementptr inbounds i32*, i32** %762, i64 14
  %764 = load i32*, i32** %763, align 8
  %765 = getelementptr inbounds i32, i32* %764, i64 0
  %766 = load i32, i32* %765, align 4
  %767 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %768 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %767, i32 0, i32 0
  %769 = load i32***, i32**** %768, align 8
  %770 = load i32, i32* %8, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds i32**, i32*** %769, i64 %771
  %773 = load i32**, i32*** %772, align 8
  %774 = getelementptr inbounds i32*, i32** %773, i64 14
  %775 = load i32*, i32** %774, align 8
  %776 = getelementptr inbounds i32, i32* %775, i64 1
  %777 = load i32, i32* %776, align 4
  %778 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %779 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %778, i32 0, i32 0
  %780 = load i32***, i32**** %779, align 8
  %781 = load i32, i32* %8, align 4
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds i32**, i32*** %780, i64 %782
  %784 = load i32**, i32*** %783, align 8
  %785 = getelementptr inbounds i32*, i32** %784, i64 14
  %786 = load i32*, i32** %785, align 8
  %787 = getelementptr inbounds i32, i32* %786, i64 2
  %788 = load i32, i32* %787, align 4
  %789 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %790 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %789, i32 0, i32 0
  %791 = load i32***, i32**** %790, align 8
  %792 = load i32, i32* %8, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds i32**, i32*** %791, i64 %793
  %795 = load i32**, i32*** %794, align 8
  %796 = getelementptr inbounds i32*, i32** %795, i64 12
  %797 = load i32*, i32** %796, align 8
  %798 = getelementptr inbounds i32, i32* %797, i64 0
  %799 = load i32, i32* %798, align 4
  %800 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %801 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %800, i32 0, i32 0
  %802 = load i32***, i32**** %801, align 8
  %803 = load i32, i32* %8, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds i32**, i32*** %802, i64 %804
  %806 = load i32**, i32*** %805, align 8
  %807 = getelementptr inbounds i32*, i32** %806, i64 12
  %808 = load i32*, i32** %807, align 8
  %809 = getelementptr inbounds i32, i32* %808, i64 1
  %810 = load i32, i32* %809, align 4
  %811 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %812 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %811, i32 0, i32 0
  %813 = load i32***, i32**** %812, align 8
  %814 = load i32, i32* %8, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds i32**, i32*** %813, i64 %815
  %817 = load i32**, i32*** %816, align 8
  %818 = getelementptr inbounds i32*, i32** %817, i64 12
  %819 = load i32*, i32** %818, align 8
  %820 = getelementptr inbounds i32, i32* %819, i64 2
  %821 = load i32, i32* %820, align 4
  %822 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %823 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %822, i32 0, i32 0
  %824 = load i32***, i32**** %823, align 8
  %825 = load i32, i32* %8, align 4
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds i32**, i32*** %824, i64 %826
  %828 = load i32**, i32*** %827, align 8
  %829 = getelementptr inbounds i32*, i32** %828, i64 2
  %830 = load i32*, i32** %829, align 8
  %831 = getelementptr inbounds i32, i32* %830, i64 0
  %832 = load i32, i32* %831, align 4
  %833 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %834 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %833, i32 0, i32 0
  %835 = load i32***, i32**** %834, align 8
  %836 = load i32, i32* %8, align 4
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds i32**, i32*** %835, i64 %837
  %839 = load i32**, i32*** %838, align 8
  %840 = getelementptr inbounds i32*, i32** %839, i64 2
  %841 = load i32*, i32** %840, align 8
  %842 = getelementptr inbounds i32, i32* %841, i64 1
  %843 = load i32, i32* %842, align 4
  %844 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %845 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %844, i32 0, i32 0
  %846 = load i32***, i32**** %845, align 8
  %847 = load i32, i32* %8, align 4
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds i32**, i32*** %846, i64 %848
  %850 = load i32**, i32*** %849, align 8
  %851 = getelementptr inbounds i32*, i32** %850, i64 2
  %852 = load i32*, i32** %851, align 8
  %853 = getelementptr inbounds i32, i32* %852, i64 2
  %854 = load i32, i32* %853, align 4
  %855 = call i32 @point_add(i32 %766, i32 %777, i32 %788, i32 %799, i32 %810, i32 %821, i32 0, i32 %832, i32 %843, i32 %854)
  store i32 1, i32* %9, align 4
  br label %856

856:                                              ; preds = %981, %445
  %857 = load i32, i32* %9, align 4
  %858 = icmp slt i32 %857, 8
  br i1 %858, label %859, label %984

859:                                              ; preds = %856
  %860 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %861 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %860, i32 0, i32 0
  %862 = load i32***, i32**** %861, align 8
  %863 = load i32, i32* %8, align 4
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds i32**, i32*** %862, i64 %864
  %866 = load i32**, i32*** %865, align 8
  %867 = load i32, i32* %9, align 4
  %868 = mul nsw i32 2, %867
  %869 = add nsw i32 %868, 1
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds i32*, i32** %866, i64 %870
  %872 = load i32*, i32** %871, align 8
  %873 = getelementptr inbounds i32, i32* %872, i64 0
  %874 = load i32, i32* %873, align 4
  %875 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %876 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %875, i32 0, i32 0
  %877 = load i32***, i32**** %876, align 8
  %878 = load i32, i32* %8, align 4
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds i32**, i32*** %877, i64 %879
  %881 = load i32**, i32*** %880, align 8
  %882 = load i32, i32* %9, align 4
  %883 = mul nsw i32 2, %882
  %884 = add nsw i32 %883, 1
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds i32*, i32** %881, i64 %885
  %887 = load i32*, i32** %886, align 8
  %888 = getelementptr inbounds i32, i32* %887, i64 1
  %889 = load i32, i32* %888, align 4
  %890 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %891 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %890, i32 0, i32 0
  %892 = load i32***, i32**** %891, align 8
  %893 = load i32, i32* %8, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds i32**, i32*** %892, i64 %894
  %896 = load i32**, i32*** %895, align 8
  %897 = load i32, i32* %9, align 4
  %898 = mul nsw i32 2, %897
  %899 = add nsw i32 %898, 1
  %900 = sext i32 %899 to i64
  %901 = getelementptr inbounds i32*, i32** %896, i64 %900
  %902 = load i32*, i32** %901, align 8
  %903 = getelementptr inbounds i32, i32* %902, i64 2
  %904 = load i32, i32* %903, align 4
  %905 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %906 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %905, i32 0, i32 0
  %907 = load i32***, i32**** %906, align 8
  %908 = load i32, i32* %8, align 4
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds i32**, i32*** %907, i64 %909
  %911 = load i32**, i32*** %910, align 8
  %912 = load i32, i32* %9, align 4
  %913 = mul nsw i32 2, %912
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds i32*, i32** %911, i64 %914
  %916 = load i32*, i32** %915, align 8
  %917 = getelementptr inbounds i32, i32* %916, i64 0
  %918 = load i32, i32* %917, align 4
  %919 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %920 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %919, i32 0, i32 0
  %921 = load i32***, i32**** %920, align 8
  %922 = load i32, i32* %8, align 4
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds i32**, i32*** %921, i64 %923
  %925 = load i32**, i32*** %924, align 8
  %926 = load i32, i32* %9, align 4
  %927 = mul nsw i32 2, %926
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds i32*, i32** %925, i64 %928
  %930 = load i32*, i32** %929, align 8
  %931 = getelementptr inbounds i32, i32* %930, i64 1
  %932 = load i32, i32* %931, align 4
  %933 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %934 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %933, i32 0, i32 0
  %935 = load i32***, i32**** %934, align 8
  %936 = load i32, i32* %8, align 4
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds i32**, i32*** %935, i64 %937
  %939 = load i32**, i32*** %938, align 8
  %940 = load i32, i32* %9, align 4
  %941 = mul nsw i32 2, %940
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds i32*, i32** %939, i64 %942
  %944 = load i32*, i32** %943, align 8
  %945 = getelementptr inbounds i32, i32* %944, i64 2
  %946 = load i32, i32* %945, align 4
  %947 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %948 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %947, i32 0, i32 0
  %949 = load i32***, i32**** %948, align 8
  %950 = load i32, i32* %8, align 4
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds i32**, i32*** %949, i64 %951
  %953 = load i32**, i32*** %952, align 8
  %954 = getelementptr inbounds i32*, i32** %953, i64 1
  %955 = load i32*, i32** %954, align 8
  %956 = getelementptr inbounds i32, i32* %955, i64 0
  %957 = load i32, i32* %956, align 4
  %958 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %959 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %958, i32 0, i32 0
  %960 = load i32***, i32**** %959, align 8
  %961 = load i32, i32* %8, align 4
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds i32**, i32*** %960, i64 %962
  %964 = load i32**, i32*** %963, align 8
  %965 = getelementptr inbounds i32*, i32** %964, i64 1
  %966 = load i32*, i32** %965, align 8
  %967 = getelementptr inbounds i32, i32* %966, i64 1
  %968 = load i32, i32* %967, align 4
  %969 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %970 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %969, i32 0, i32 0
  %971 = load i32***, i32**** %970, align 8
  %972 = load i32, i32* %8, align 4
  %973 = sext i32 %972 to i64
  %974 = getelementptr inbounds i32**, i32*** %971, i64 %973
  %975 = load i32**, i32*** %974, align 8
  %976 = getelementptr inbounds i32*, i32** %975, i64 1
  %977 = load i32*, i32** %976, align 8
  %978 = getelementptr inbounds i32, i32* %977, i64 2
  %979 = load i32, i32* %978, align 4
  %980 = call i32 @point_add(i32 %874, i32 %889, i32 %904, i32 %918, i32 %932, i32 %946, i32 0, i32 %957, i32 %968, i32 %979)
  br label %981

981:                                              ; preds = %859
  %982 = load i32, i32* %9, align 4
  %983 = add nsw i32 %982, 1
  store i32 %983, i32* %9, align 4
  br label %856

984:                                              ; preds = %856
  br label %985

985:                                              ; preds = %984
  %986 = load i32, i32* %8, align 4
  %987 = add nsw i32 %986, 1
  store i32 %987, i32* %8, align 4
  br label %442

988:                                              ; preds = %442
  %989 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %990 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %989, i32 0, i32 0
  %991 = load i32***, i32**** %990, align 8
  %992 = getelementptr inbounds i32**, i32*** %991, i64 0
  %993 = load i32**, i32*** %992, align 8
  %994 = getelementptr inbounds i32*, i32** %993, i64 1
  %995 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %996 = call i32 @make_points_affine(i32 31, i32** %994, i32* %995)
  br label %997

997:                                              ; preds = %988, %78
  %998 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %999 = load i32, i32* @nistp224, align 4
  %1000 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %1001 = call i32 @SETPRECOMP(%struct.TYPE_15__* %998, i32 %999, %struct.TYPE_14__* %1000)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store i32 1, i32* %6, align 4
  br label %1002

1002:                                             ; preds = %997, %135, %68, %64, %45, %39, %33
  %1003 = load i32*, i32** %5, align 8
  %1004 = call i32 @BN_CTX_end(i32* %1003)
  %1005 = load i32*, i32** %13, align 8
  %1006 = call i32 @EC_POINT_free(i32* %1005)
  %1007 = load i32*, i32** %10, align 8
  %1008 = call i32 @BN_CTX_free(i32* %1007)
  %1009 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %1010 = call i32 @EC_nistp224_pre_comp_free(%struct.TYPE_14__* %1009)
  %1011 = load i32, i32* %6, align 4
  store i32 %1011, i32* %3, align 4
  br label %1012

1012:                                             ; preds = %1002, %22
  %1013 = load i32, i32* %3, align 4
  ret i32 %1013
}

declare dso_local i32 @EC_pre_comp_free(%struct.TYPE_15__*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_15__*) #1

declare dso_local i32 @BN_bin2bn(i32, i32, i32*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_15__*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @nistp224_pre_comp_new(...) #1

declare dso_local i64 @EC_POINT_cmp(%struct.TYPE_15__*, i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @memcpy(i32***, i32, i32) #1

declare dso_local i32 @BN_to_felem(i32, i32) #1

declare dso_local i32 @point_double(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @point_add(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @make_points_affine(i32, i32**, i32*) #1

declare dso_local i32 @SETPRECOMP(%struct.TYPE_15__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_nistp224_pre_comp_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
