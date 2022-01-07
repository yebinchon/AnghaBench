; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp256.c_ec_GFp_nistp256_precompute_mult.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp256.c_ec_GFp_nistp256_precompute_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32*** }

@nistp256_curve_params = common dso_local global i32* null, align 8
@gmul = common dso_local global i32 0, align 4
@nistp256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_nistp256_precompute_mult(%struct.TYPE_15__* %0, i32* %1) #0 {
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %13, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = call i32 @EC_pre_comp_free(%struct.TYPE_15__* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = call i32* (...) @BN_CTX_new()
  store i32* %23, i32** %10, align 8
  store i32* %23, i32** %5, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %1024

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @BN_CTX_start(i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @BN_CTX_get(i32* %30)
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @BN_CTX_get(i32* %32)
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %1014

37:                                               ; preds = %27
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = icmp eq %struct.TYPE_13__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %1014

43:                                               ; preds = %37
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = call i32* @EC_POINT_new(%struct.TYPE_15__* %44)
  store i32* %45, i32** %13, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %1014

49:                                               ; preds = %43
  %50 = load i32*, i32** @nistp256_curve_params, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @BN_bin2bn(i32 %52, i32 4, i32* %53)
  %55 = load i32*, i32** @nistp256_curve_params, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @BN_bin2bn(i32 %57, i32 4, i32* %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_15__* %60, i32* %61, i32* %62, i32* %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %49
  br label %1014

68:                                               ; preds = %49
  %69 = call %struct.TYPE_14__* (...) @nistp256_pre_comp_new()
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %7, align 8
  %70 = icmp eq %struct.TYPE_14__* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %1014

72:                                               ; preds = %68
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = call i64 @EC_POINT_cmp(%struct.TYPE_15__* %73, i32* %74, %struct.TYPE_13__* %77, i32* %78)
  %80 = icmp eq i64 0, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32***, i32**** %83, align 8
  %85 = load i32, i32* @gmul, align 4
  %86 = call i32 @memcpy(i32*** %84, i32 %85, i32 8)
  br label %1009

87:                                               ; preds = %72
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @BN_to_felem(i32 %88, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %87
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @BN_to_felem(i32 %97, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %96
  %106 = load i32, i32* %17, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @BN_to_felem(i32 %106, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %105, %96, %87
  br label %1014

115:                                              ; preds = %105
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32***, i32**** %117, align 8
  %119 = getelementptr inbounds i32**, i32*** %118, i64 0
  %120 = load i32**, i32*** %119, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @felem_shrink(i32 %124, i32 %125)
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32***, i32**** %128, align 8
  %130 = getelementptr inbounds i32**, i32*** %129, i64 0
  %131 = load i32**, i32*** %130, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @felem_shrink(i32 %135, i32 %136)
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32***, i32**** %139, align 8
  %141 = getelementptr inbounds i32**, i32*** %140, i64 0
  %142 = load i32**, i32*** %141, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @felem_shrink(i32 %146, i32 %147)
  store i32 1, i32* %8, align 4
  br label %149

149:                                              ; preds = %450, %115
  %150 = load i32, i32* %8, align 4
  %151 = icmp sle i32 %150, 8
  br i1 %151, label %152, label %453

152:                                              ; preds = %149
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32***, i32**** %154, align 8
  %156 = getelementptr inbounds i32**, i32*** %155, i64 1
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32***, i32**** %165, align 8
  %167 = getelementptr inbounds i32**, i32*** %166, i64 1
  %168 = load i32**, i32*** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i32***, i32**** %176, align 8
  %178 = getelementptr inbounds i32**, i32*** %177, i64 1
  %179 = load i32**, i32*** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32*, i32** %179, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32***, i32**** %187, align 8
  %189 = getelementptr inbounds i32**, i32*** %188, i64 0
  %190 = load i32**, i32*** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32*, i32** %190, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load i32***, i32**** %198, align 8
  %200 = getelementptr inbounds i32**, i32*** %199, i64 0
  %201 = load i32**, i32*** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i32***, i32**** %209, align 8
  %211 = getelementptr inbounds i32**, i32*** %210, i64 0
  %212 = load i32**, i32*** %211, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32*, i32** %212, i64 %214
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 2
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @point_double_small(i32 %163, i32 %174, i32 %185, i32 %196, i32 %207, i32 %218)
  store i32 0, i32* %9, align 4
  br label %220

220:                                              ; preds = %291, %152
  %221 = load i32, i32* %9, align 4
  %222 = icmp slt i32 %221, 31
  br i1 %222, label %223, label %294

223:                                              ; preds = %220
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i32***, i32**** %225, align 8
  %227 = getelementptr inbounds i32**, i32*** %226, i64 1
  %228 = load i32**, i32*** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %228, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = load i32***, i32**** %236, align 8
  %238 = getelementptr inbounds i32**, i32*** %237, i64 1
  %239 = load i32**, i32*** %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32*, i32** %239, i64 %241
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 0
  %248 = load i32***, i32**** %247, align 8
  %249 = getelementptr inbounds i32**, i32*** %248, i64 1
  %250 = load i32**, i32*** %249, align 8
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32*, i32** %250, i64 %252
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 2
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  %259 = load i32***, i32**** %258, align 8
  %260 = getelementptr inbounds i32**, i32*** %259, i64 1
  %261 = load i32**, i32*** %260, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32*, i32** %261, i64 %263
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 0
  %270 = load i32***, i32**** %269, align 8
  %271 = getelementptr inbounds i32**, i32*** %270, i64 1
  %272 = load i32**, i32*** %271, align 8
  %273 = load i32, i32* %8, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32*, i32** %272, i64 %274
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 0
  %281 = load i32***, i32**** %280, align 8
  %282 = getelementptr inbounds i32**, i32*** %281, i64 1
  %283 = load i32**, i32*** %282, align 8
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32*, i32** %283, i64 %285
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 2
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @point_double_small(i32 %234, i32 %245, i32 %256, i32 %267, i32 %278, i32 %289)
  br label %291

291:                                              ; preds = %223
  %292 = load i32, i32* %9, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %9, align 4
  br label %220

294:                                              ; preds = %220
  %295 = load i32, i32* %8, align 4
  %296 = icmp eq i32 %295, 8
  br i1 %296, label %297, label %298

297:                                              ; preds = %294
  br label %453

298:                                              ; preds = %294
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
  %309 = getelementptr inbounds i32, i32* %308, i64 0
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
  %321 = getelementptr inbounds i32, i32* %320, i64 1
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 0
  %325 = load i32***, i32**** %324, align 8
  %326 = getelementptr inbounds i32**, i32*** %325, i64 0
  %327 = load i32**, i32*** %326, align 8
  %328 = load i32, i32* %8, align 4
  %329 = mul nsw i32 2, %328
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32*, i32** %327, i64 %330
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 2
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 0
  %337 = load i32***, i32**** %336, align 8
  %338 = getelementptr inbounds i32**, i32*** %337, i64 1
  %339 = load i32**, i32*** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32*, i32** %339, i64 %341
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 0
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 0
  %348 = load i32***, i32**** %347, align 8
  %349 = getelementptr inbounds i32**, i32*** %348, i64 1
  %350 = load i32**, i32*** %349, align 8
  %351 = load i32, i32* %8, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32*, i32** %350, i64 %352
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 1
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 0
  %359 = load i32***, i32**** %358, align 8
  %360 = getelementptr inbounds i32**, i32*** %359, i64 1
  %361 = load i32**, i32*** %360, align 8
  %362 = load i32, i32* %8, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32*, i32** %361, i64 %363
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 2
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @point_double_small(i32 %310, i32 %322, i32 %334, i32 %345, i32 %356, i32 %367)
  store i32 0, i32* %9, align 4
  br label %369

369:                                              ; preds = %446, %298
  %370 = load i32, i32* %9, align 4
  %371 = icmp slt i32 %370, 31
  br i1 %371, label %372, label %449

372:                                              ; preds = %369
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
  %383 = getelementptr inbounds i32, i32* %382, i64 0
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
  %395 = getelementptr inbounds i32, i32* %394, i64 1
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
  %407 = getelementptr inbounds i32, i32* %406, i64 2
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
  %419 = getelementptr inbounds i32, i32* %418, i64 0
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
  %431 = getelementptr inbounds i32, i32* %430, i64 1
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %434 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %433, i32 0, i32 0
  %435 = load i32***, i32**** %434, align 8
  %436 = getelementptr inbounds i32**, i32*** %435, i64 0
  %437 = load i32**, i32*** %436, align 8
  %438 = load i32, i32* %8, align 4
  %439 = mul nsw i32 2, %438
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32*, i32** %437, i64 %440
  %442 = load i32*, i32** %441, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 2
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @point_double_small(i32 %384, i32 %396, i32 %408, i32 %420, i32 %432, i32 %444)
  br label %446

446:                                              ; preds = %372
  %447 = load i32, i32* %9, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %9, align 4
  br label %369

449:                                              ; preds = %369
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %8, align 4
  %452 = shl i32 %451, 1
  store i32 %452, i32* %8, align 4
  br label %149

453:                                              ; preds = %297, %149
  store i32 0, i32* %8, align 4
  br label %454

454:                                              ; preds = %997, %453
  %455 = load i32, i32* %8, align 4
  %456 = icmp slt i32 %455, 2
  br i1 %456, label %457, label %1000

457:                                              ; preds = %454
  %458 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %458, i32 0, i32 0
  %460 = load i32***, i32**** %459, align 8
  %461 = load i32, i32* %8, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32**, i32*** %460, i64 %462
  %464 = load i32**, i32*** %463, align 8
  %465 = getelementptr inbounds i32*, i32** %464, i64 0
  %466 = load i32*, i32** %465, align 8
  %467 = call i32 @memset(i32* %466, i32 0, i32 8)
  %468 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %468, i32 0, i32 0
  %470 = load i32***, i32**** %469, align 8
  %471 = load i32, i32* %8, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32**, i32*** %470, i64 %472
  %474 = load i32**, i32*** %473, align 8
  %475 = getelementptr inbounds i32*, i32** %474, i64 6
  %476 = load i32*, i32** %475, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 0
  %478 = load i32, i32* %477, align 4
  %479 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %480 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %479, i32 0, i32 0
  %481 = load i32***, i32**** %480, align 8
  %482 = load i32, i32* %8, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32**, i32*** %481, i64 %483
  %485 = load i32**, i32*** %484, align 8
  %486 = getelementptr inbounds i32*, i32** %485, i64 6
  %487 = load i32*, i32** %486, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 1
  %489 = load i32, i32* %488, align 4
  %490 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %491 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %490, i32 0, i32 0
  %492 = load i32***, i32**** %491, align 8
  %493 = load i32, i32* %8, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32**, i32*** %492, i64 %494
  %496 = load i32**, i32*** %495, align 8
  %497 = getelementptr inbounds i32*, i32** %496, i64 6
  %498 = load i32*, i32** %497, align 8
  %499 = getelementptr inbounds i32, i32* %498, i64 2
  %500 = load i32, i32* %499, align 4
  %501 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %502 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %501, i32 0, i32 0
  %503 = load i32***, i32**** %502, align 8
  %504 = load i32, i32* %8, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32**, i32*** %503, i64 %505
  %507 = load i32**, i32*** %506, align 8
  %508 = getelementptr inbounds i32*, i32** %507, i64 4
  %509 = load i32*, i32** %508, align 8
  %510 = getelementptr inbounds i32, i32* %509, i64 0
  %511 = load i32, i32* %510, align 4
  %512 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %513 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %512, i32 0, i32 0
  %514 = load i32***, i32**** %513, align 8
  %515 = load i32, i32* %8, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i32**, i32*** %514, i64 %516
  %518 = load i32**, i32*** %517, align 8
  %519 = getelementptr inbounds i32*, i32** %518, i64 4
  %520 = load i32*, i32** %519, align 8
  %521 = getelementptr inbounds i32, i32* %520, i64 1
  %522 = load i32, i32* %521, align 4
  %523 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %524 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %523, i32 0, i32 0
  %525 = load i32***, i32**** %524, align 8
  %526 = load i32, i32* %8, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32**, i32*** %525, i64 %527
  %529 = load i32**, i32*** %528, align 8
  %530 = getelementptr inbounds i32*, i32** %529, i64 4
  %531 = load i32*, i32** %530, align 8
  %532 = getelementptr inbounds i32, i32* %531, i64 2
  %533 = load i32, i32* %532, align 4
  %534 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %535 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %534, i32 0, i32 0
  %536 = load i32***, i32**** %535, align 8
  %537 = load i32, i32* %8, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32**, i32*** %536, i64 %538
  %540 = load i32**, i32*** %539, align 8
  %541 = getelementptr inbounds i32*, i32** %540, i64 2
  %542 = load i32*, i32** %541, align 8
  %543 = getelementptr inbounds i32, i32* %542, i64 0
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %546 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %545, i32 0, i32 0
  %547 = load i32***, i32**** %546, align 8
  %548 = load i32, i32* %8, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i32**, i32*** %547, i64 %549
  %551 = load i32**, i32*** %550, align 8
  %552 = getelementptr inbounds i32*, i32** %551, i64 2
  %553 = load i32*, i32** %552, align 8
  %554 = getelementptr inbounds i32, i32* %553, i64 1
  %555 = load i32, i32* %554, align 4
  %556 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %557 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %556, i32 0, i32 0
  %558 = load i32***, i32**** %557, align 8
  %559 = load i32, i32* %8, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32**, i32*** %558, i64 %560
  %562 = load i32**, i32*** %561, align 8
  %563 = getelementptr inbounds i32*, i32** %562, i64 2
  %564 = load i32*, i32** %563, align 8
  %565 = getelementptr inbounds i32, i32* %564, i64 2
  %566 = load i32, i32* %565, align 4
  %567 = call i32 @point_add_small(i32 %478, i32 %489, i32 %500, i32 %511, i32 %522, i32 %533, i32 %544, i32 %555, i32 %566)
  %568 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %569 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %568, i32 0, i32 0
  %570 = load i32***, i32**** %569, align 8
  %571 = load i32, i32* %8, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i32**, i32*** %570, i64 %572
  %574 = load i32**, i32*** %573, align 8
  %575 = getelementptr inbounds i32*, i32** %574, i64 10
  %576 = load i32*, i32** %575, align 8
  %577 = getelementptr inbounds i32, i32* %576, i64 0
  %578 = load i32, i32* %577, align 4
  %579 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %580 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %579, i32 0, i32 0
  %581 = load i32***, i32**** %580, align 8
  %582 = load i32, i32* %8, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32**, i32*** %581, i64 %583
  %585 = load i32**, i32*** %584, align 8
  %586 = getelementptr inbounds i32*, i32** %585, i64 10
  %587 = load i32*, i32** %586, align 8
  %588 = getelementptr inbounds i32, i32* %587, i64 1
  %589 = load i32, i32* %588, align 4
  %590 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %591 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %590, i32 0, i32 0
  %592 = load i32***, i32**** %591, align 8
  %593 = load i32, i32* %8, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i32**, i32*** %592, i64 %594
  %596 = load i32**, i32*** %595, align 8
  %597 = getelementptr inbounds i32*, i32** %596, i64 10
  %598 = load i32*, i32** %597, align 8
  %599 = getelementptr inbounds i32, i32* %598, i64 2
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %602 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %601, i32 0, i32 0
  %603 = load i32***, i32**** %602, align 8
  %604 = load i32, i32* %8, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i32**, i32*** %603, i64 %605
  %607 = load i32**, i32*** %606, align 8
  %608 = getelementptr inbounds i32*, i32** %607, i64 8
  %609 = load i32*, i32** %608, align 8
  %610 = getelementptr inbounds i32, i32* %609, i64 0
  %611 = load i32, i32* %610, align 4
  %612 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %613 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %612, i32 0, i32 0
  %614 = load i32***, i32**** %613, align 8
  %615 = load i32, i32* %8, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i32**, i32*** %614, i64 %616
  %618 = load i32**, i32*** %617, align 8
  %619 = getelementptr inbounds i32*, i32** %618, i64 8
  %620 = load i32*, i32** %619, align 8
  %621 = getelementptr inbounds i32, i32* %620, i64 1
  %622 = load i32, i32* %621, align 4
  %623 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %624 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %623, i32 0, i32 0
  %625 = load i32***, i32**** %624, align 8
  %626 = load i32, i32* %8, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds i32**, i32*** %625, i64 %627
  %629 = load i32**, i32*** %628, align 8
  %630 = getelementptr inbounds i32*, i32** %629, i64 8
  %631 = load i32*, i32** %630, align 8
  %632 = getelementptr inbounds i32, i32* %631, i64 2
  %633 = load i32, i32* %632, align 4
  %634 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %635 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %634, i32 0, i32 0
  %636 = load i32***, i32**** %635, align 8
  %637 = load i32, i32* %8, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds i32**, i32*** %636, i64 %638
  %640 = load i32**, i32*** %639, align 8
  %641 = getelementptr inbounds i32*, i32** %640, i64 2
  %642 = load i32*, i32** %641, align 8
  %643 = getelementptr inbounds i32, i32* %642, i64 0
  %644 = load i32, i32* %643, align 4
  %645 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %646 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %645, i32 0, i32 0
  %647 = load i32***, i32**** %646, align 8
  %648 = load i32, i32* %8, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i32**, i32*** %647, i64 %649
  %651 = load i32**, i32*** %650, align 8
  %652 = getelementptr inbounds i32*, i32** %651, i64 2
  %653 = load i32*, i32** %652, align 8
  %654 = getelementptr inbounds i32, i32* %653, i64 1
  %655 = load i32, i32* %654, align 4
  %656 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %657 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %656, i32 0, i32 0
  %658 = load i32***, i32**** %657, align 8
  %659 = load i32, i32* %8, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds i32**, i32*** %658, i64 %660
  %662 = load i32**, i32*** %661, align 8
  %663 = getelementptr inbounds i32*, i32** %662, i64 2
  %664 = load i32*, i32** %663, align 8
  %665 = getelementptr inbounds i32, i32* %664, i64 2
  %666 = load i32, i32* %665, align 4
  %667 = call i32 @point_add_small(i32 %578, i32 %589, i32 %600, i32 %611, i32 %622, i32 %633, i32 %644, i32 %655, i32 %666)
  %668 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %669 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %668, i32 0, i32 0
  %670 = load i32***, i32**** %669, align 8
  %671 = load i32, i32* %8, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds i32**, i32*** %670, i64 %672
  %674 = load i32**, i32*** %673, align 8
  %675 = getelementptr inbounds i32*, i32** %674, i64 12
  %676 = load i32*, i32** %675, align 8
  %677 = getelementptr inbounds i32, i32* %676, i64 0
  %678 = load i32, i32* %677, align 4
  %679 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %680 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %679, i32 0, i32 0
  %681 = load i32***, i32**** %680, align 8
  %682 = load i32, i32* %8, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i32**, i32*** %681, i64 %683
  %685 = load i32**, i32*** %684, align 8
  %686 = getelementptr inbounds i32*, i32** %685, i64 12
  %687 = load i32*, i32** %686, align 8
  %688 = getelementptr inbounds i32, i32* %687, i64 1
  %689 = load i32, i32* %688, align 4
  %690 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %691 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %690, i32 0, i32 0
  %692 = load i32***, i32**** %691, align 8
  %693 = load i32, i32* %8, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i32**, i32*** %692, i64 %694
  %696 = load i32**, i32*** %695, align 8
  %697 = getelementptr inbounds i32*, i32** %696, i64 12
  %698 = load i32*, i32** %697, align 8
  %699 = getelementptr inbounds i32, i32* %698, i64 2
  %700 = load i32, i32* %699, align 4
  %701 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %702 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %701, i32 0, i32 0
  %703 = load i32***, i32**** %702, align 8
  %704 = load i32, i32* %8, align 4
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds i32**, i32*** %703, i64 %705
  %707 = load i32**, i32*** %706, align 8
  %708 = getelementptr inbounds i32*, i32** %707, i64 8
  %709 = load i32*, i32** %708, align 8
  %710 = getelementptr inbounds i32, i32* %709, i64 0
  %711 = load i32, i32* %710, align 4
  %712 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %713 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %712, i32 0, i32 0
  %714 = load i32***, i32**** %713, align 8
  %715 = load i32, i32* %8, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds i32**, i32*** %714, i64 %716
  %718 = load i32**, i32*** %717, align 8
  %719 = getelementptr inbounds i32*, i32** %718, i64 8
  %720 = load i32*, i32** %719, align 8
  %721 = getelementptr inbounds i32, i32* %720, i64 1
  %722 = load i32, i32* %721, align 4
  %723 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %724 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %723, i32 0, i32 0
  %725 = load i32***, i32**** %724, align 8
  %726 = load i32, i32* %8, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i32**, i32*** %725, i64 %727
  %729 = load i32**, i32*** %728, align 8
  %730 = getelementptr inbounds i32*, i32** %729, i64 8
  %731 = load i32*, i32** %730, align 8
  %732 = getelementptr inbounds i32, i32* %731, i64 2
  %733 = load i32, i32* %732, align 4
  %734 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %735 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %734, i32 0, i32 0
  %736 = load i32***, i32**** %735, align 8
  %737 = load i32, i32* %8, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds i32**, i32*** %736, i64 %738
  %740 = load i32**, i32*** %739, align 8
  %741 = getelementptr inbounds i32*, i32** %740, i64 4
  %742 = load i32*, i32** %741, align 8
  %743 = getelementptr inbounds i32, i32* %742, i64 0
  %744 = load i32, i32* %743, align 4
  %745 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %746 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %745, i32 0, i32 0
  %747 = load i32***, i32**** %746, align 8
  %748 = load i32, i32* %8, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds i32**, i32*** %747, i64 %749
  %751 = load i32**, i32*** %750, align 8
  %752 = getelementptr inbounds i32*, i32** %751, i64 4
  %753 = load i32*, i32** %752, align 8
  %754 = getelementptr inbounds i32, i32* %753, i64 1
  %755 = load i32, i32* %754, align 4
  %756 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %757 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %756, i32 0, i32 0
  %758 = load i32***, i32**** %757, align 8
  %759 = load i32, i32* %8, align 4
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds i32**, i32*** %758, i64 %760
  %762 = load i32**, i32*** %761, align 8
  %763 = getelementptr inbounds i32*, i32** %762, i64 4
  %764 = load i32*, i32** %763, align 8
  %765 = getelementptr inbounds i32, i32* %764, i64 2
  %766 = load i32, i32* %765, align 4
  %767 = call i32 @point_add_small(i32 %678, i32 %689, i32 %700, i32 %711, i32 %722, i32 %733, i32 %744, i32 %755, i32 %766)
  %768 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %769 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %768, i32 0, i32 0
  %770 = load i32***, i32**** %769, align 8
  %771 = load i32, i32* %8, align 4
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds i32**, i32*** %770, i64 %772
  %774 = load i32**, i32*** %773, align 8
  %775 = getelementptr inbounds i32*, i32** %774, i64 14
  %776 = load i32*, i32** %775, align 8
  %777 = getelementptr inbounds i32, i32* %776, i64 0
  %778 = load i32, i32* %777, align 4
  %779 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %780 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %779, i32 0, i32 0
  %781 = load i32***, i32**** %780, align 8
  %782 = load i32, i32* %8, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds i32**, i32*** %781, i64 %783
  %785 = load i32**, i32*** %784, align 8
  %786 = getelementptr inbounds i32*, i32** %785, i64 14
  %787 = load i32*, i32** %786, align 8
  %788 = getelementptr inbounds i32, i32* %787, i64 1
  %789 = load i32, i32* %788, align 4
  %790 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %791 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %790, i32 0, i32 0
  %792 = load i32***, i32**** %791, align 8
  %793 = load i32, i32* %8, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds i32**, i32*** %792, i64 %794
  %796 = load i32**, i32*** %795, align 8
  %797 = getelementptr inbounds i32*, i32** %796, i64 14
  %798 = load i32*, i32** %797, align 8
  %799 = getelementptr inbounds i32, i32* %798, i64 2
  %800 = load i32, i32* %799, align 4
  %801 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %802 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %801, i32 0, i32 0
  %803 = load i32***, i32**** %802, align 8
  %804 = load i32, i32* %8, align 4
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds i32**, i32*** %803, i64 %805
  %807 = load i32**, i32*** %806, align 8
  %808 = getelementptr inbounds i32*, i32** %807, i64 12
  %809 = load i32*, i32** %808, align 8
  %810 = getelementptr inbounds i32, i32* %809, i64 0
  %811 = load i32, i32* %810, align 4
  %812 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %813 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %812, i32 0, i32 0
  %814 = load i32***, i32**** %813, align 8
  %815 = load i32, i32* %8, align 4
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds i32**, i32*** %814, i64 %816
  %818 = load i32**, i32*** %817, align 8
  %819 = getelementptr inbounds i32*, i32** %818, i64 12
  %820 = load i32*, i32** %819, align 8
  %821 = getelementptr inbounds i32, i32* %820, i64 1
  %822 = load i32, i32* %821, align 4
  %823 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %824 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %823, i32 0, i32 0
  %825 = load i32***, i32**** %824, align 8
  %826 = load i32, i32* %8, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds i32**, i32*** %825, i64 %827
  %829 = load i32**, i32*** %828, align 8
  %830 = getelementptr inbounds i32*, i32** %829, i64 12
  %831 = load i32*, i32** %830, align 8
  %832 = getelementptr inbounds i32, i32* %831, i64 2
  %833 = load i32, i32* %832, align 4
  %834 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %835 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %834, i32 0, i32 0
  %836 = load i32***, i32**** %835, align 8
  %837 = load i32, i32* %8, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds i32**, i32*** %836, i64 %838
  %840 = load i32**, i32*** %839, align 8
  %841 = getelementptr inbounds i32*, i32** %840, i64 2
  %842 = load i32*, i32** %841, align 8
  %843 = getelementptr inbounds i32, i32* %842, i64 0
  %844 = load i32, i32* %843, align 4
  %845 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %846 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %845, i32 0, i32 0
  %847 = load i32***, i32**** %846, align 8
  %848 = load i32, i32* %8, align 4
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds i32**, i32*** %847, i64 %849
  %851 = load i32**, i32*** %850, align 8
  %852 = getelementptr inbounds i32*, i32** %851, i64 2
  %853 = load i32*, i32** %852, align 8
  %854 = getelementptr inbounds i32, i32* %853, i64 1
  %855 = load i32, i32* %854, align 4
  %856 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %857 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %856, i32 0, i32 0
  %858 = load i32***, i32**** %857, align 8
  %859 = load i32, i32* %8, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds i32**, i32*** %858, i64 %860
  %862 = load i32**, i32*** %861, align 8
  %863 = getelementptr inbounds i32*, i32** %862, i64 2
  %864 = load i32*, i32** %863, align 8
  %865 = getelementptr inbounds i32, i32* %864, i64 2
  %866 = load i32, i32* %865, align 4
  %867 = call i32 @point_add_small(i32 %778, i32 %789, i32 %800, i32 %811, i32 %822, i32 %833, i32 %844, i32 %855, i32 %866)
  store i32 1, i32* %9, align 4
  br label %868

868:                                              ; preds = %993, %457
  %869 = load i32, i32* %9, align 4
  %870 = icmp slt i32 %869, 8
  br i1 %870, label %871, label %996

871:                                              ; preds = %868
  %872 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %873 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %872, i32 0, i32 0
  %874 = load i32***, i32**** %873, align 8
  %875 = load i32, i32* %8, align 4
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds i32**, i32*** %874, i64 %876
  %878 = load i32**, i32*** %877, align 8
  %879 = load i32, i32* %9, align 4
  %880 = mul nsw i32 2, %879
  %881 = add nsw i32 %880, 1
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds i32*, i32** %878, i64 %882
  %884 = load i32*, i32** %883, align 8
  %885 = getelementptr inbounds i32, i32* %884, i64 0
  %886 = load i32, i32* %885, align 4
  %887 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %888 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %887, i32 0, i32 0
  %889 = load i32***, i32**** %888, align 8
  %890 = load i32, i32* %8, align 4
  %891 = sext i32 %890 to i64
  %892 = getelementptr inbounds i32**, i32*** %889, i64 %891
  %893 = load i32**, i32*** %892, align 8
  %894 = load i32, i32* %9, align 4
  %895 = mul nsw i32 2, %894
  %896 = add nsw i32 %895, 1
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds i32*, i32** %893, i64 %897
  %899 = load i32*, i32** %898, align 8
  %900 = getelementptr inbounds i32, i32* %899, i64 1
  %901 = load i32, i32* %900, align 4
  %902 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %903 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %902, i32 0, i32 0
  %904 = load i32***, i32**** %903, align 8
  %905 = load i32, i32* %8, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds i32**, i32*** %904, i64 %906
  %908 = load i32**, i32*** %907, align 8
  %909 = load i32, i32* %9, align 4
  %910 = mul nsw i32 2, %909
  %911 = add nsw i32 %910, 1
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds i32*, i32** %908, i64 %912
  %914 = load i32*, i32** %913, align 8
  %915 = getelementptr inbounds i32, i32* %914, i64 2
  %916 = load i32, i32* %915, align 4
  %917 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %918 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %917, i32 0, i32 0
  %919 = load i32***, i32**** %918, align 8
  %920 = load i32, i32* %8, align 4
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds i32**, i32*** %919, i64 %921
  %923 = load i32**, i32*** %922, align 8
  %924 = load i32, i32* %9, align 4
  %925 = mul nsw i32 2, %924
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds i32*, i32** %923, i64 %926
  %928 = load i32*, i32** %927, align 8
  %929 = getelementptr inbounds i32, i32* %928, i64 0
  %930 = load i32, i32* %929, align 4
  %931 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %932 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %931, i32 0, i32 0
  %933 = load i32***, i32**** %932, align 8
  %934 = load i32, i32* %8, align 4
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds i32**, i32*** %933, i64 %935
  %937 = load i32**, i32*** %936, align 8
  %938 = load i32, i32* %9, align 4
  %939 = mul nsw i32 2, %938
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds i32*, i32** %937, i64 %940
  %942 = load i32*, i32** %941, align 8
  %943 = getelementptr inbounds i32, i32* %942, i64 1
  %944 = load i32, i32* %943, align 4
  %945 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %946 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %945, i32 0, i32 0
  %947 = load i32***, i32**** %946, align 8
  %948 = load i32, i32* %8, align 4
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds i32**, i32*** %947, i64 %949
  %951 = load i32**, i32*** %950, align 8
  %952 = load i32, i32* %9, align 4
  %953 = mul nsw i32 2, %952
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds i32*, i32** %951, i64 %954
  %956 = load i32*, i32** %955, align 8
  %957 = getelementptr inbounds i32, i32* %956, i64 2
  %958 = load i32, i32* %957, align 4
  %959 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %960 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %959, i32 0, i32 0
  %961 = load i32***, i32**** %960, align 8
  %962 = load i32, i32* %8, align 4
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds i32**, i32*** %961, i64 %963
  %965 = load i32**, i32*** %964, align 8
  %966 = getelementptr inbounds i32*, i32** %965, i64 1
  %967 = load i32*, i32** %966, align 8
  %968 = getelementptr inbounds i32, i32* %967, i64 0
  %969 = load i32, i32* %968, align 4
  %970 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %971 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %970, i32 0, i32 0
  %972 = load i32***, i32**** %971, align 8
  %973 = load i32, i32* %8, align 4
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds i32**, i32*** %972, i64 %974
  %976 = load i32**, i32*** %975, align 8
  %977 = getelementptr inbounds i32*, i32** %976, i64 1
  %978 = load i32*, i32** %977, align 8
  %979 = getelementptr inbounds i32, i32* %978, i64 1
  %980 = load i32, i32* %979, align 4
  %981 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %982 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %981, i32 0, i32 0
  %983 = load i32***, i32**** %982, align 8
  %984 = load i32, i32* %8, align 4
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds i32**, i32*** %983, i64 %985
  %987 = load i32**, i32*** %986, align 8
  %988 = getelementptr inbounds i32*, i32** %987, i64 1
  %989 = load i32*, i32** %988, align 8
  %990 = getelementptr inbounds i32, i32* %989, i64 2
  %991 = load i32, i32* %990, align 4
  %992 = call i32 @point_add_small(i32 %886, i32 %901, i32 %916, i32 %930, i32 %944, i32 %958, i32 %969, i32 %980, i32 %991)
  br label %993

993:                                              ; preds = %871
  %994 = load i32, i32* %9, align 4
  %995 = add nsw i32 %994, 1
  store i32 %995, i32* %9, align 4
  br label %868

996:                                              ; preds = %868
  br label %997

997:                                              ; preds = %996
  %998 = load i32, i32* %8, align 4
  %999 = add nsw i32 %998, 1
  store i32 %999, i32* %8, align 4
  br label %454

1000:                                             ; preds = %454
  %1001 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %1002 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1001, i32 0, i32 0
  %1003 = load i32***, i32**** %1002, align 8
  %1004 = getelementptr inbounds i32**, i32*** %1003, i64 0
  %1005 = load i32**, i32*** %1004, align 8
  %1006 = getelementptr inbounds i32*, i32** %1005, i64 1
  %1007 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %1008 = call i32 @make_points_affine(i32 31, i32** %1006, i32* %1007)
  br label %1009

1009:                                             ; preds = %1000, %81
  %1010 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %1011 = load i32, i32* @nistp256, align 4
  %1012 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %1013 = call i32 @SETPRECOMP(%struct.TYPE_15__* %1010, i32 %1011, %struct.TYPE_14__* %1012)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store i32 1, i32* %6, align 4
  br label %1014

1014:                                             ; preds = %1009, %114, %71, %67, %48, %42, %36
  %1015 = load i32*, i32** %5, align 8
  %1016 = call i32 @BN_CTX_end(i32* %1015)
  %1017 = load i32*, i32** %13, align 8
  %1018 = call i32 @EC_POINT_free(i32* %1017)
  %1019 = load i32*, i32** %10, align 8
  %1020 = call i32 @BN_CTX_free(i32* %1019)
  %1021 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %1022 = call i32 @EC_nistp256_pre_comp_free(%struct.TYPE_14__* %1021)
  %1023 = load i32, i32* %6, align 4
  store i32 %1023, i32* %3, align 4
  br label %1024

1024:                                             ; preds = %1014, %25
  %1025 = load i32, i32* %3, align 4
  ret i32 %1025
}

declare dso_local i32 @EC_pre_comp_free(%struct.TYPE_15__*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_15__*) #1

declare dso_local i32 @BN_bin2bn(i32, i32, i32*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_15__*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @nistp256_pre_comp_new(...) #1

declare dso_local i64 @EC_POINT_cmp(%struct.TYPE_15__*, i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @memcpy(i32***, i32, i32) #1

declare dso_local i32 @BN_to_felem(i32, i32) #1

declare dso_local i32 @felem_shrink(i32, i32) #1

declare dso_local i32 @point_double_small(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @point_add_small(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @make_points_affine(i32, i32**, i32*) #1

declare dso_local i32 @SETPRECOMP(%struct.TYPE_15__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_nistp256_pre_comp_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
