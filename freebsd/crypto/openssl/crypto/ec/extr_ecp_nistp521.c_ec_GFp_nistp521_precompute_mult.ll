; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp521.c_ec_GFp_nistp521_precompute_mult.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp521.c_ec_GFp_nistp521_precompute_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32** }

@nistp521_curve_params = common dso_local global i32* null, align 8
@gmul = common dso_local global i32 0, align 4
@nistp521 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_nistp521_precompute_mult(%struct.TYPE_15__* %0, i32* %1) #0 {
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
  %14 = alloca [16 x i32], align 16
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
  br label %642

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
  br label %632

34:                                               ; preds = %24
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = icmp eq %struct.TYPE_13__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %632

40:                                               ; preds = %34
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = call i32* @EC_POINT_new(%struct.TYPE_15__* %41)
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %632

46:                                               ; preds = %40
  %47 = load i32*, i32** @nistp521_curve_params, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @BN_bin2bn(i32 %49, i32 4, i32* %50)
  %52 = load i32*, i32** @nistp521_curve_params, align 8
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
  br label %632

65:                                               ; preds = %46
  %66 = call %struct.TYPE_14__* (...) @nistp521_pre_comp_new()
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %7, align 8
  %67 = icmp eq %struct.TYPE_14__* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %632

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
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* @gmul, align 4
  %83 = call i32 @memcpy(i32** %81, i32 %82, i32 8)
  br label %627

84:                                               ; preds = %69
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @BN_to_felem(i32 %91, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %129

99:                                               ; preds = %84
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32**, i32*** %101, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @BN_to_felem(i32 %106, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %99
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32**, i32*** %116, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @BN_to_felem(i32 %121, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %114, %99, %84
  br label %632

130:                                              ; preds = %114
  store i32 1, i32* %8, align 4
  br label %131

131:                                              ; preds = %262, %130
  %132 = load i32, i32* %8, align 4
  %133 = icmp sle i32 %132, 4
  br i1 %133, label %134, label %265

134:                                              ; preds = %131
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32**, i32*** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = mul nsw i32 2, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %137, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = mul nsw i32 2, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %147, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = mul nsw i32 2, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %157, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i32**, i32*** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i32**, i32*** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i32**, i32*** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*, i32** %185, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @point_double(i32 %144, i32 %154, i32 %164, i32 %173, i32 %182, i32 %191)
  store i32 0, i32* %9, align 4
  br label %193

193:                                              ; preds = %258, %134
  %194 = load i32, i32* %9, align 4
  %195 = icmp slt i32 %194, 129
  br i1 %195, label %196, label %261

196:                                              ; preds = %193
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load i32**, i32*** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = mul nsw i32 2, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %199, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load i32**, i32*** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = mul nsw i32 2, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %209, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = load i32**, i32*** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = mul nsw i32 2, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %219, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = load i32**, i32*** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = mul nsw i32 2, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32*, i32** %229, i64 %232
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i32**, i32*** %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = mul nsw i32 2, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32*, i32** %239, i64 %242
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = load i32**, i32*** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = mul nsw i32 2, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32*, i32** %249, i64 %252
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 2
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @point_double(i32 %206, i32 %216, i32 %226, i32 %236, i32 %246, i32 %256)
  br label %258

258:                                              ; preds = %196
  %259 = load i32, i32* %9, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %9, align 4
  br label %193

261:                                              ; preds = %193
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %8, align 4
  %264 = shl i32 %263, 1
  store i32 %264, i32* %8, align 4
  br label %131

265:                                              ; preds = %131
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  %268 = load i32**, i32*** %267, align 8
  %269 = getelementptr inbounds i32*, i32** %268, i64 0
  %270 = load i32*, i32** %269, align 8
  %271 = call i32 @memset(i32* %270, i32 0, i32 8)
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = load i32**, i32*** %273, align 8
  %275 = getelementptr inbounds i32*, i32** %274, i64 6
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 0
  %281 = load i32**, i32*** %280, align 8
  %282 = getelementptr inbounds i32*, i32** %281, i64 6
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 0
  %288 = load i32**, i32*** %287, align 8
  %289 = getelementptr inbounds i32*, i32** %288, i64 6
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 2
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 0
  %295 = load i32**, i32*** %294, align 8
  %296 = getelementptr inbounds i32*, i32** %295, i64 4
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 0
  %302 = load i32**, i32*** %301, align 8
  %303 = getelementptr inbounds i32*, i32** %302, i64 4
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 1
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load i32**, i32*** %308, align 8
  %310 = getelementptr inbounds i32*, i32** %309, i64 4
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 2
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 0
  %316 = load i32**, i32*** %315, align 8
  %317 = getelementptr inbounds i32*, i32** %316, i64 2
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  %323 = load i32**, i32*** %322, align 8
  %324 = getelementptr inbounds i32*, i32** %323, i64 2
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 0
  %330 = load i32**, i32*** %329, align 8
  %331 = getelementptr inbounds i32*, i32** %330, i64 2
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 2
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @point_add(i32 %278, i32 %285, i32 %292, i32 %299, i32 %306, i32 %313, i32 0, i32 %320, i32 %327, i32 %334)
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 0
  %338 = load i32**, i32*** %337, align 8
  %339 = getelementptr inbounds i32*, i32** %338, i64 10
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 0
  %345 = load i32**, i32*** %344, align 8
  %346 = getelementptr inbounds i32*, i32** %345, i64 10
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 1
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 0
  %352 = load i32**, i32*** %351, align 8
  %353 = getelementptr inbounds i32*, i32** %352, i64 10
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 2
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 0
  %359 = load i32**, i32*** %358, align 8
  %360 = getelementptr inbounds i32*, i32** %359, i64 8
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 0
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 0
  %366 = load i32**, i32*** %365, align 8
  %367 = getelementptr inbounds i32*, i32** %366, i64 8
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 1
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 0
  %373 = load i32**, i32*** %372, align 8
  %374 = getelementptr inbounds i32*, i32** %373, i64 8
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 2
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 0
  %380 = load i32**, i32*** %379, align 8
  %381 = getelementptr inbounds i32*, i32** %380, i64 2
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 0
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 0
  %387 = load i32**, i32*** %386, align 8
  %388 = getelementptr inbounds i32*, i32** %387, i64 2
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 1
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 0
  %394 = load i32**, i32*** %393, align 8
  %395 = getelementptr inbounds i32*, i32** %394, i64 2
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 2
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @point_add(i32 %342, i32 %349, i32 %356, i32 %363, i32 %370, i32 %377, i32 0, i32 %384, i32 %391, i32 %398)
  %400 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i32 0, i32 0
  %402 = load i32**, i32*** %401, align 8
  %403 = getelementptr inbounds i32*, i32** %402, i64 12
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 0
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 0
  %409 = load i32**, i32*** %408, align 8
  %410 = getelementptr inbounds i32*, i32** %409, i64 12
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 1
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 0
  %416 = load i32**, i32*** %415, align 8
  %417 = getelementptr inbounds i32*, i32** %416, i64 12
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 2
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %421, i32 0, i32 0
  %423 = load i32**, i32*** %422, align 8
  %424 = getelementptr inbounds i32*, i32** %423, i64 8
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 0
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 0
  %430 = load i32**, i32*** %429, align 8
  %431 = getelementptr inbounds i32*, i32** %430, i64 8
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 1
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i32 0, i32 0
  %437 = load i32**, i32*** %436, align 8
  %438 = getelementptr inbounds i32*, i32** %437, i64 8
  %439 = load i32*, i32** %438, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 2
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %443 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %442, i32 0, i32 0
  %444 = load i32**, i32*** %443, align 8
  %445 = getelementptr inbounds i32*, i32** %444, i64 4
  %446 = load i32*, i32** %445, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 0
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %450 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %449, i32 0, i32 0
  %451 = load i32**, i32*** %450, align 8
  %452 = getelementptr inbounds i32*, i32** %451, i64 4
  %453 = load i32*, i32** %452, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 1
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 0
  %458 = load i32**, i32*** %457, align 8
  %459 = getelementptr inbounds i32*, i32** %458, i64 4
  %460 = load i32*, i32** %459, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 2
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @point_add(i32 %406, i32 %413, i32 %420, i32 %427, i32 %434, i32 %441, i32 0, i32 %448, i32 %455, i32 %462)
  %464 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %464, i32 0, i32 0
  %466 = load i32**, i32*** %465, align 8
  %467 = getelementptr inbounds i32*, i32** %466, i64 14
  %468 = load i32*, i32** %467, align 8
  %469 = getelementptr inbounds i32, i32* %468, i64 0
  %470 = load i32, i32* %469, align 4
  %471 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %472 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %471, i32 0, i32 0
  %473 = load i32**, i32*** %472, align 8
  %474 = getelementptr inbounds i32*, i32** %473, i64 14
  %475 = load i32*, i32** %474, align 8
  %476 = getelementptr inbounds i32, i32* %475, i64 1
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %479 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %478, i32 0, i32 0
  %480 = load i32**, i32*** %479, align 8
  %481 = getelementptr inbounds i32*, i32** %480, i64 14
  %482 = load i32*, i32** %481, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 2
  %484 = load i32, i32* %483, align 4
  %485 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %486 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %485, i32 0, i32 0
  %487 = load i32**, i32*** %486, align 8
  %488 = getelementptr inbounds i32*, i32** %487, i64 12
  %489 = load i32*, i32** %488, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 0
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %493 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %492, i32 0, i32 0
  %494 = load i32**, i32*** %493, align 8
  %495 = getelementptr inbounds i32*, i32** %494, i64 12
  %496 = load i32*, i32** %495, align 8
  %497 = getelementptr inbounds i32, i32* %496, i64 1
  %498 = load i32, i32* %497, align 4
  %499 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %500 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %499, i32 0, i32 0
  %501 = load i32**, i32*** %500, align 8
  %502 = getelementptr inbounds i32*, i32** %501, i64 12
  %503 = load i32*, i32** %502, align 8
  %504 = getelementptr inbounds i32, i32* %503, i64 2
  %505 = load i32, i32* %504, align 4
  %506 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %507 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %506, i32 0, i32 0
  %508 = load i32**, i32*** %507, align 8
  %509 = getelementptr inbounds i32*, i32** %508, i64 2
  %510 = load i32*, i32** %509, align 8
  %511 = getelementptr inbounds i32, i32* %510, i64 0
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %514 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %513, i32 0, i32 0
  %515 = load i32**, i32*** %514, align 8
  %516 = getelementptr inbounds i32*, i32** %515, i64 2
  %517 = load i32*, i32** %516, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 1
  %519 = load i32, i32* %518, align 4
  %520 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %521 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %520, i32 0, i32 0
  %522 = load i32**, i32*** %521, align 8
  %523 = getelementptr inbounds i32*, i32** %522, i64 2
  %524 = load i32*, i32** %523, align 8
  %525 = getelementptr inbounds i32, i32* %524, i64 2
  %526 = load i32, i32* %525, align 4
  %527 = call i32 @point_add(i32 %470, i32 %477, i32 %484, i32 %491, i32 %498, i32 %505, i32 0, i32 %512, i32 %519, i32 %526)
  store i32 1, i32* %8, align 4
  br label %528

528:                                              ; preds = %617, %265
  %529 = load i32, i32* %8, align 4
  %530 = icmp slt i32 %529, 8
  br i1 %530, label %531, label %620

531:                                              ; preds = %528
  %532 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %533 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %532, i32 0, i32 0
  %534 = load i32**, i32*** %533, align 8
  %535 = load i32, i32* %8, align 4
  %536 = mul nsw i32 2, %535
  %537 = add nsw i32 %536, 1
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32*, i32** %534, i64 %538
  %540 = load i32*, i32** %539, align 8
  %541 = getelementptr inbounds i32, i32* %540, i64 0
  %542 = load i32, i32* %541, align 4
  %543 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %544 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %543, i32 0, i32 0
  %545 = load i32**, i32*** %544, align 8
  %546 = load i32, i32* %8, align 4
  %547 = mul nsw i32 2, %546
  %548 = add nsw i32 %547, 1
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i32*, i32** %545, i64 %549
  %551 = load i32*, i32** %550, align 8
  %552 = getelementptr inbounds i32, i32* %551, i64 1
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %555 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %554, i32 0, i32 0
  %556 = load i32**, i32*** %555, align 8
  %557 = load i32, i32* %8, align 4
  %558 = mul nsw i32 2, %557
  %559 = add nsw i32 %558, 1
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32*, i32** %556, i64 %560
  %562 = load i32*, i32** %561, align 8
  %563 = getelementptr inbounds i32, i32* %562, i64 2
  %564 = load i32, i32* %563, align 4
  %565 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %566 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %565, i32 0, i32 0
  %567 = load i32**, i32*** %566, align 8
  %568 = load i32, i32* %8, align 4
  %569 = mul nsw i32 2, %568
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i32*, i32** %567, i64 %570
  %572 = load i32*, i32** %571, align 8
  %573 = getelementptr inbounds i32, i32* %572, i64 0
  %574 = load i32, i32* %573, align 4
  %575 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %576 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %575, i32 0, i32 0
  %577 = load i32**, i32*** %576, align 8
  %578 = load i32, i32* %8, align 4
  %579 = mul nsw i32 2, %578
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i32*, i32** %577, i64 %580
  %582 = load i32*, i32** %581, align 8
  %583 = getelementptr inbounds i32, i32* %582, i64 1
  %584 = load i32, i32* %583, align 4
  %585 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %586 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %585, i32 0, i32 0
  %587 = load i32**, i32*** %586, align 8
  %588 = load i32, i32* %8, align 4
  %589 = mul nsw i32 2, %588
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i32*, i32** %587, i64 %590
  %592 = load i32*, i32** %591, align 8
  %593 = getelementptr inbounds i32, i32* %592, i64 2
  %594 = load i32, i32* %593, align 4
  %595 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %596 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %595, i32 0, i32 0
  %597 = load i32**, i32*** %596, align 8
  %598 = getelementptr inbounds i32*, i32** %597, i64 1
  %599 = load i32*, i32** %598, align 8
  %600 = getelementptr inbounds i32, i32* %599, i64 0
  %601 = load i32, i32* %600, align 4
  %602 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %603 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %602, i32 0, i32 0
  %604 = load i32**, i32*** %603, align 8
  %605 = getelementptr inbounds i32*, i32** %604, i64 1
  %606 = load i32*, i32** %605, align 8
  %607 = getelementptr inbounds i32, i32* %606, i64 1
  %608 = load i32, i32* %607, align 4
  %609 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %610 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %609, i32 0, i32 0
  %611 = load i32**, i32*** %610, align 8
  %612 = getelementptr inbounds i32*, i32** %611, i64 1
  %613 = load i32*, i32** %612, align 8
  %614 = getelementptr inbounds i32, i32* %613, i64 2
  %615 = load i32, i32* %614, align 4
  %616 = call i32 @point_add(i32 %542, i32 %553, i32 %564, i32 %574, i32 %584, i32 %594, i32 0, i32 %601, i32 %608, i32 %615)
  br label %617

617:                                              ; preds = %531
  %618 = load i32, i32* %8, align 4
  %619 = add nsw i32 %618, 1
  store i32 %619, i32* %8, align 4
  br label %528

620:                                              ; preds = %528
  %621 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %622 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %621, i32 0, i32 0
  %623 = load i32**, i32*** %622, align 8
  %624 = getelementptr inbounds i32*, i32** %623, i64 1
  %625 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %626 = call i32 @make_points_affine(i32 15, i32** %624, i32* %625)
  br label %627

627:                                              ; preds = %620, %78
  %628 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %629 = load i32, i32* @nistp521, align 4
  %630 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %631 = call i32 @SETPRECOMP(%struct.TYPE_15__* %628, i32 %629, %struct.TYPE_14__* %630)
  store i32 1, i32* %6, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %632

632:                                              ; preds = %627, %129, %68, %64, %45, %39, %33
  %633 = load i32*, i32** %5, align 8
  %634 = call i32 @BN_CTX_end(i32* %633)
  %635 = load i32*, i32** %13, align 8
  %636 = call i32 @EC_POINT_free(i32* %635)
  %637 = load i32*, i32** %10, align 8
  %638 = call i32 @BN_CTX_free(i32* %637)
  %639 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %640 = call i32 @EC_nistp521_pre_comp_free(%struct.TYPE_14__* %639)
  %641 = load i32, i32* %6, align 4
  store i32 %641, i32* %3, align 4
  br label %642

642:                                              ; preds = %632, %22
  %643 = load i32, i32* %3, align 4
  ret i32 %643
}

declare dso_local i32 @EC_pre_comp_free(%struct.TYPE_15__*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_15__*) #1

declare dso_local i32 @BN_bin2bn(i32, i32, i32*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_15__*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @nistp521_pre_comp_new(...) #1

declare dso_local i64 @EC_POINT_cmp(%struct.TYPE_15__*, i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @memcpy(i32**, i32, i32) #1

declare dso_local i32 @BN_to_felem(i32, i32) #1

declare dso_local i32 @point_double(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @point_add(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @make_points_affine(i32, i32**, i32*) #1

declare dso_local i32 @SETPRECOMP(%struct.TYPE_15__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_nistp521_pre_comp_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
