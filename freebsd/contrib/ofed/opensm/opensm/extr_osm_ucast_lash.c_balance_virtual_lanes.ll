; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_balance_virtual_lanes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_balance_virtual_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32*, i32***, i32, %struct.TYPE_19__**, %struct.TYPE_17__*, %struct.TYPE_21__**** }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { i64, i64 }

@MAX_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32)* @balance_virtual_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @balance_virtual_lanes(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__****, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32***, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_21__****, %struct.TYPE_21__***** %34, align 8
  store %struct.TYPE_21__**** %35, %struct.TYPE_21__***** %7, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %8, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 2
  %41 = load i32***, i32**** %40, align 8
  store i32*** %41, i32**** %9, align 8
  store i32 0, i32* %26, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %29, align 4
  store i32 0, i32* %11, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sub i32 %49, 1
  store i32 %50, i32* %10, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %2
  store i32 1, i32* %26, align 4
  br label %59

59:                                               ; preds = %58, %2
  br label %60

60:                                               ; preds = %674, %59
  %61 = load i32, i32* %26, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %675

63:                                               ; preds = %60
  %64 = call i32 (...) @rand()
  %65 = call i32 @abs(i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = urem i32 %65, %66
  store i32 %67, i32* %19, align 4
  %68 = call i32 (...) @rand()
  %69 = call i32 @abs(i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = urem i32 %69, %70
  store i32 %71, i32* %20, align 4
  br label %72

72:                                               ; preds = %154, %63
  %73 = load i32***, i32**** %9, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32**, i32*** %73, i64 %75
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %155

87:                                               ; preds = %72
  %88 = load i32, i32* %20, align 4
  store i32 %88, i32* %21, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %6, align 4
  %91 = sub i32 %90, 1
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 0, i32* %20, align 4
  br label %97

94:                                               ; preds = %87
  %95 = load i32, i32* %20, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %20, align 4
  br label %97

97:                                               ; preds = %94, %93
  br label %98

98:                                               ; preds = %128, %97
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %21, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = load i32***, i32**** %9, align 8
  %104 = load i32, i32* %19, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32**, i32*** %103, i64 %105
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 1
  br label %117

117:                                              ; preds = %102, %98
  %118 = phi i1 [ false, %98 ], [ %116, %102 ]
  br i1 %118, label %119, label %129

119:                                              ; preds = %117
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %6, align 4
  %122 = sub i32 %121, 1
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 0, i32* %20, align 4
  br label %128

125:                                              ; preds = %119
  %126 = load i32, i32* %20, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %20, align 4
  br label %128

128:                                              ; preds = %125, %124
  br label %98

129:                                              ; preds = %117
  %130 = load i32***, i32**** %9, align 8
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32**, i32*** %130, i64 %132
  %134 = load i32**, i32*** %133, align 8
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 1
  br i1 %143, label %144, label %154

144:                                              ; preds = %129
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %6, align 4
  %147 = sub i32 %146, 1
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store i32 0, i32* %19, align 4
  br label %153

150:                                              ; preds = %144
  %151 = load i32, i32* %19, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %19, align 4
  br label %153

153:                                              ; preds = %150, %149
  br label %154

154:                                              ; preds = %153, %129
  br label %72

155:                                              ; preds = %72
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i64 @generate_cdg_for_sp(%struct.TYPE_20__* %156, i32 %157, i32 %158, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %155
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %164 = load i32, i32* %20, align 4
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i64 @generate_cdg_for_sp(%struct.TYPE_20__* %163, i32 %164, i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162, %155
  store i32 -1, i32* %3, align 4
  br label %676

170:                                              ; preds = %162
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %172, align 8
  %174 = load i32, i32* %19, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %173, i64 %175
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %178, align 8
  %180 = load i32, i32* %20, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %23, align 4
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* %23, align 4
  %188 = call i32 @get_next_switch(%struct.TYPE_20__* %185, i32 %186, i32 %187)
  store i32 %188, i32* %22, align 4
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %190, align 8
  %192 = load i32, i32* %20, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %191, i64 %193
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = load i32, i32* %19, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %25, align 4
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %204 = load i32, i32* %20, align 4
  %205 = load i32, i32* %25, align 4
  %206 = call i32 @get_next_switch(%struct.TYPE_20__* %203, i32 %204, i32 %205)
  store i32 %206, i32* %24, align 4
  %207 = load %struct.TYPE_21__****, %struct.TYPE_21__***** %7, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_21__***, %struct.TYPE_21__**** %207, i64 %209
  %211 = load %struct.TYPE_21__***, %struct.TYPE_21__**** %210, align 8
  %212 = load i32, i32* %19, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_21__**, %struct.TYPE_21__*** %211, i64 %213
  %215 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %214, align 8
  %216 = load i32, i32* %22, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %215, i64 %217
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %218, align 8
  %220 = icmp ne %struct.TYPE_21__* %219, null
  %221 = zext i1 %220 to i32
  %222 = call i32 @CL_ASSERT(i32 %221)
  %223 = load %struct.TYPE_21__****, %struct.TYPE_21__***** %7, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_21__***, %struct.TYPE_21__**** %223, i64 %225
  %227 = load %struct.TYPE_21__***, %struct.TYPE_21__**** %226, align 8
  %228 = load i32, i32* %20, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_21__**, %struct.TYPE_21__*** %227, i64 %229
  %231 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %230, align 8
  %232 = load i32, i32* %24, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %231, i64 %233
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %234, align 8
  %236 = icmp ne %struct.TYPE_21__* %235, null
  %237 = zext i1 %236 to i32
  %238 = call i32 @CL_ASSERT(i32 %237)
  %239 = load %struct.TYPE_21__****, %struct.TYPE_21__***** %7, align 8
  %240 = load i32, i32* %10, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_21__***, %struct.TYPE_21__**** %239, i64 %241
  %243 = load %struct.TYPE_21__***, %struct.TYPE_21__**** %242, align 8
  %244 = load i32, i32* %19, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_21__**, %struct.TYPE_21__*** %243, i64 %245
  %247 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %246, align 8
  %248 = load i32, i32* %22, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %247, i64 %249
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %250, align 8
  %252 = call i32 @cycle_exists(%struct.TYPE_21__* %251, i32* null, i32* null, i32 1)
  store i32 %252, i32* %27, align 4
  %253 = load %struct.TYPE_21__****, %struct.TYPE_21__***** %7, align 8
  %254 = load i32, i32* %10, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_21__***, %struct.TYPE_21__**** %253, i64 %255
  %257 = load %struct.TYPE_21__***, %struct.TYPE_21__**** %256, align 8
  %258 = load i32, i32* %20, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_21__**, %struct.TYPE_21__*** %257, i64 %259
  %261 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %260, align 8
  %262 = load i32, i32* %24, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %261, i64 %263
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %264, align 8
  %266 = call i32 @cycle_exists(%struct.TYPE_21__* %265, i32* null, i32* null, i32 1)
  store i32 %266, i32* %28, align 4
  store i32 0, i32* %17, align 4
  br label %267

267:                                              ; preds = %325, %170
  %268 = load i32, i32* %17, align 4
  %269 = load i32, i32* %6, align 4
  %270 = icmp ult i32 %268, %269
  br i1 %270, label %271, label %328

271:                                              ; preds = %267
  store i32 0, i32* %18, align 4
  br label %272

272:                                              ; preds = %321, %271
  %273 = load i32, i32* %18, align 4
  %274 = load i32, i32* %6, align 4
  %275 = icmp ult i32 %273, %274
  br i1 %275, label %276, label %324

276:                                              ; preds = %272
  %277 = load %struct.TYPE_21__****, %struct.TYPE_21__***** %7, align 8
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_21__***, %struct.TYPE_21__**** %277, i64 %279
  %281 = load %struct.TYPE_21__***, %struct.TYPE_21__**** %280, align 8
  %282 = load i32, i32* %17, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_21__**, %struct.TYPE_21__*** %281, i64 %283
  %285 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %284, align 8
  %286 = load i32, i32* %18, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %285, i64 %287
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %288, align 8
  %290 = icmp ne %struct.TYPE_21__* %289, null
  br i1 %290, label %291, label %320

291:                                              ; preds = %276
  %292 = load %struct.TYPE_21__****, %struct.TYPE_21__***** %7, align 8
  %293 = load i32, i32* %10, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_21__***, %struct.TYPE_21__**** %292, i64 %294
  %296 = load %struct.TYPE_21__***, %struct.TYPE_21__**** %295, align 8
  %297 = load i32, i32* %17, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_21__**, %struct.TYPE_21__*** %296, i64 %298
  %300 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %299, align 8
  %301 = load i32, i32* %18, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %300, i64 %302
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 1
  store i64 0, i64* %305, align 8
  %306 = load %struct.TYPE_21__****, %struct.TYPE_21__***** %7, align 8
  %307 = load i32, i32* %10, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_21__***, %struct.TYPE_21__**** %306, i64 %308
  %310 = load %struct.TYPE_21__***, %struct.TYPE_21__**** %309, align 8
  %311 = load i32, i32* %17, align 4
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_21__**, %struct.TYPE_21__*** %310, i64 %312
  %314 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %313, align 8
  %315 = load i32, i32* %18, align 4
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %314, i64 %316
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 0
  store i64 0, i64* %319, align 8
  br label %320

320:                                              ; preds = %291, %276
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %18, align 4
  %323 = add i32 %322, 1
  store i32 %323, i32* %18, align 4
  br label %272

324:                                              ; preds = %272
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %17, align 4
  %327 = add i32 %326, 1
  store i32 %327, i32* %17, align 4
  br label %267

328:                                              ; preds = %267
  %329 = load i32, i32* %27, align 4
  %330 = icmp eq i32 %329, 1
  br i1 %330, label %334, label %331

331:                                              ; preds = %328
  %332 = load i32, i32* %28, align 4
  %333 = icmp eq i32 %332, 1
  br i1 %333, label %334, label %373

334:                                              ; preds = %331, %328
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %336 = load i32, i32* %19, align 4
  %337 = load i32, i32* %20, align 4
  %338 = load i32, i32* %10, align 4
  %339 = call i32 @remove_temp_depend_for_sp(%struct.TYPE_20__* %335, i32 %336, i32 %337, i32 %338)
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %341 = load i32, i32* %20, align 4
  %342 = load i32, i32* %19, align 4
  %343 = load i32, i32* %10, align 4
  %344 = call i32 @remove_temp_depend_for_sp(%struct.TYPE_20__* %340, i32 %341, i32 %342, i32 %343)
  %345 = load i32***, i32**** %9, align 8
  %346 = load i32, i32* %19, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32**, i32*** %345, i64 %347
  %349 = load i32**, i32*** %348, align 8
  %350 = load i32, i32* %20, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32*, i32** %349, i64 %351
  %353 = load i32*, i32** %352, align 8
  %354 = load i32, i32* %11, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  store i32 2, i32* %356, align 4
  %357 = load i32***, i32**** %9, align 8
  %358 = load i32, i32* %20, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32**, i32*** %357, i64 %359
  %361 = load i32**, i32*** %360, align 8
  %362 = load i32, i32* %19, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32*, i32** %361, i64 %363
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %11, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  store i32 2, i32* %368, align 4
  %369 = load i32, i32* %12, align 4
  %370 = add nsw i32 %369, -1
  store i32 %370, i32* %12, align 4
  %371 = load i32, i32* %12, align 4
  %372 = add nsw i32 %371, -1
  store i32 %372, i32* %12, align 4
  br label %498

373:                                              ; preds = %331
  %374 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %375 = load i32, i32* %19, align 4
  %376 = load i32, i32* %20, align 4
  %377 = load i32, i32* %10, align 4
  %378 = call i32 @set_temp_depend_to_permanent_for_sp(%struct.TYPE_20__* %374, i32 %375, i32 %376, i32 %377)
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %380 = load i32, i32* %20, align 4
  %381 = load i32, i32* %19, align 4
  %382 = load i32, i32* %10, align 4
  %383 = call i32 @set_temp_depend_to_permanent_for_sp(%struct.TYPE_20__* %379, i32 %380, i32 %381, i32 %382)
  %384 = load i32*, i32** %8, align 8
  %385 = load i32, i32* %11, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = add nsw i32 %388, -1
  store i32 %389, i32* %387, align 4
  %390 = load i32*, i32** %8, align 8
  %391 = load i32, i32* %11, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %394, -1
  store i32 %395, i32* %393, align 4
  %396 = load i32*, i32** %8, align 8
  %397 = load i32, i32* %10, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %399, align 4
  %402 = load i32*, i32** %8, align 8
  %403 = load i32, i32* %10, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %405, align 4
  %408 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %409 = load i32, i32* %19, align 4
  %410 = load i32, i32* %20, align 4
  %411 = load i32, i32* %11, align 4
  %412 = call i32 @remove_semipermanent_depend_for_sp(%struct.TYPE_20__* %408, i32 %409, i32 %410, i32 %411)
  %413 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %414 = load i32, i32* %20, align 4
  %415 = load i32, i32* %19, align 4
  %416 = load i32, i32* %11, align 4
  %417 = call i32 @remove_semipermanent_depend_for_sp(%struct.TYPE_20__* %413, i32 %414, i32 %415, i32 %416)
  %418 = load i32***, i32**** %9, align 8
  %419 = load i32, i32* %19, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32**, i32*** %418, i64 %420
  %422 = load i32**, i32*** %421, align 8
  %423 = load i32, i32* %20, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32*, i32** %422, i64 %424
  %426 = load i32*, i32** %425, align 8
  %427 = load i32, i32* %11, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  store i32 0, i32* %429, align 4
  %430 = load i32***, i32**** %9, align 8
  %431 = load i32, i32* %20, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32**, i32*** %430, i64 %432
  %434 = load i32**, i32*** %433, align 8
  %435 = load i32, i32* %19, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32*, i32** %434, i64 %436
  %438 = load i32*, i32** %437, align 8
  %439 = load i32, i32* %11, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  store i32 0, i32* %441, align 4
  %442 = load i32***, i32**** %9, align 8
  %443 = load i32, i32* %19, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32**, i32*** %442, i64 %444
  %446 = load i32**, i32*** %445, align 8
  %447 = load i32, i32* %20, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32*, i32** %446, i64 %448
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %10, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %450, i64 %452
  store i32 1, i32* %453, align 4
  %454 = load i32***, i32**** %9, align 8
  %455 = load i32, i32* %20, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32**, i32*** %454, i64 %456
  %458 = load i32**, i32*** %457, align 8
  %459 = load i32, i32* %19, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32*, i32** %458, i64 %460
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %10, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  store i32 1, i32* %465, align 4
  %466 = load i32, i32* %10, align 4
  %467 = load i32, i32* %29, align 4
  %468 = add i32 %466, %467
  %469 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %470 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %469, i32 0, i32 4
  %471 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %470, align 8
  %472 = load i32, i32* %19, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %471, i64 %473
  %475 = load %struct.TYPE_19__*, %struct.TYPE_19__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %475, i32 0, i32 0
  %477 = load %struct.TYPE_18__*, %struct.TYPE_18__** %476, align 8
  %478 = load i32, i32* %20, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %480, i32 0, i32 1
  store i32 %468, i32* %481, align 4
  %482 = load i32, i32* %10, align 4
  %483 = load i32, i32* %29, align 4
  %484 = add i32 %482, %483
  %485 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %485, i32 0, i32 4
  %487 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %486, align 8
  %488 = load i32, i32* %20, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %487, i64 %489
  %491 = load %struct.TYPE_19__*, %struct.TYPE_19__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %491, i32 0, i32 0
  %493 = load %struct.TYPE_18__*, %struct.TYPE_18__** %492, align 8
  %494 = load i32, i32* %19, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %493, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %496, i32 0, i32 1
  store i32 %484, i32* %497, align 4
  br label %498

498:                                              ; preds = %373, %334
  %499 = load i32, i32* %12, align 4
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %502

501:                                              ; preds = %498
  store i32 1, i32* %26, align 4
  br label %520

502:                                              ; preds = %498
  %503 = load i32*, i32** %8, align 8
  %504 = load i32, i32* %11, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, i32* %503, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = load i32*, i32** %8, align 8
  %509 = load i32, i32* %10, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %508, i64 %510
  %512 = load i32, i32* %511, align 4
  %513 = sub nsw i32 %507, %512
  %514 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %515 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %514, i32 0, i32 3
  %516 = load i32, i32* %515, align 8
  %517 = icmp slt i32 %513, %516
  br i1 %517, label %518, label %519

518:                                              ; preds = %502
  store i32 1, i32* %26, align 4
  br label %519

519:                                              ; preds = %518, %502
  br label %520

520:                                              ; preds = %519, %501
  %521 = load i32, i32* %10, align 4
  store i32 %521, i32* %13, align 4
  %522 = load i32, i32* %11, align 4
  store i32 %522, i32* %14, align 4
  %523 = load i32, i32* @MAX_INT, align 4
  store i32 %523, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %524

524:                                              ; preds = %559, %520
  %525 = load i32, i32* %17, align 4
  %526 = load i32, i32* %5, align 4
  %527 = icmp ult i32 %525, %526
  br i1 %527, label %528, label %562

528:                                              ; preds = %524
  %529 = load i32*, i32** %8, align 8
  %530 = load i32, i32* %17, align 4
  %531 = zext i32 %530 to i64
  %532 = getelementptr inbounds i32, i32* %529, i64 %531
  %533 = load i32, i32* %532, align 4
  %534 = load i32, i32* %15, align 4
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %536, label %543

536:                                              ; preds = %528
  %537 = load i32*, i32** %8, align 8
  %538 = load i32, i32* %17, align 4
  %539 = zext i32 %538 to i64
  %540 = getelementptr inbounds i32, i32* %537, i64 %539
  %541 = load i32, i32* %540, align 4
  store i32 %541, i32* %15, align 4
  %542 = load i32, i32* %17, align 4
  store i32 %542, i32* %10, align 4
  br label %543

543:                                              ; preds = %536, %528
  %544 = load i32*, i32** %8, align 8
  %545 = load i32, i32* %17, align 4
  %546 = zext i32 %545 to i64
  %547 = getelementptr inbounds i32, i32* %544, i64 %546
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* %16, align 4
  %550 = icmp sgt i32 %548, %549
  br i1 %550, label %551, label %558

551:                                              ; preds = %543
  %552 = load i32*, i32** %8, align 8
  %553 = load i32, i32* %17, align 4
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds i32, i32* %552, i64 %554
  %556 = load i32, i32* %555, align 4
  store i32 %556, i32* %16, align 4
  %557 = load i32, i32* %17, align 4
  store i32 %557, i32* %11, align 4
  br label %558

558:                                              ; preds = %551, %543
  br label %559

559:                                              ; preds = %558
  %560 = load i32, i32* %17, align 4
  %561 = add i32 %560, 1
  store i32 %561, i32* %17, align 4
  br label %524

562:                                              ; preds = %524
  %563 = load i32, i32* %13, align 4
  %564 = load i32, i32* %10, align 4
  %565 = icmp ne i32 %563, %564
  br i1 %565, label %566, label %618

566:                                              ; preds = %562
  %567 = load i32*, i32** %8, align 8
  %568 = load i32, i32* %11, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %567, i64 %569
  %571 = load i32, i32* %570, align 4
  store i32 %571, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %572

572:                                              ; preds = %614, %566
  %573 = load i32, i32* %17, align 4
  %574 = load i32, i32* %6, align 4
  %575 = icmp ult i32 %573, %574
  br i1 %575, label %576, label %617

576:                                              ; preds = %572
  store i32 0, i32* %18, align 4
  br label %577

577:                                              ; preds = %610, %576
  %578 = load i32, i32* %18, align 4
  %579 = load i32, i32* %6, align 4
  %580 = icmp ult i32 %578, %579
  br i1 %580, label %581, label %613

581:                                              ; preds = %577
  %582 = load i32***, i32**** %9, align 8
  %583 = load i32, i32* %17, align 4
  %584 = zext i32 %583 to i64
  %585 = getelementptr inbounds i32**, i32*** %582, i64 %584
  %586 = load i32**, i32*** %585, align 8
  %587 = load i32, i32* %18, align 4
  %588 = zext i32 %587 to i64
  %589 = getelementptr inbounds i32*, i32** %586, i64 %588
  %590 = load i32*, i32** %589, align 8
  %591 = load i32, i32* %11, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i32, i32* %590, i64 %592
  %594 = load i32, i32* %593, align 4
  %595 = icmp eq i32 %594, 2
  br i1 %595, label %596, label %609

596:                                              ; preds = %581
  %597 = load i32***, i32**** %9, align 8
  %598 = load i32, i32* %17, align 4
  %599 = zext i32 %598 to i64
  %600 = getelementptr inbounds i32**, i32*** %597, i64 %599
  %601 = load i32**, i32*** %600, align 8
  %602 = load i32, i32* %18, align 4
  %603 = zext i32 %602 to i64
  %604 = getelementptr inbounds i32*, i32** %601, i64 %603
  %605 = load i32*, i32** %604, align 8
  %606 = load i32, i32* %11, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i32, i32* %605, i64 %607
  store i32 1, i32* %608, align 4
  br label %609

609:                                              ; preds = %596, %581
  br label %610

610:                                              ; preds = %609
  %611 = load i32, i32* %18, align 4
  %612 = add i32 %611, 1
  store i32 %612, i32* %18, align 4
  br label %577

613:                                              ; preds = %577
  br label %614

614:                                              ; preds = %613
  %615 = load i32, i32* %17, align 4
  %616 = add i32 %615, 1
  store i32 %616, i32* %17, align 4
  br label %572

617:                                              ; preds = %572
  br label %618

618:                                              ; preds = %617, %562
  %619 = load i32, i32* %14, align 4
  %620 = load i32, i32* %11, align 4
  %621 = icmp ne i32 %619, %620
  br i1 %621, label %622, label %674

622:                                              ; preds = %618
  %623 = load i32*, i32** %8, align 8
  %624 = load i32, i32* %11, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i32, i32* %623, i64 %625
  %627 = load i32, i32* %626, align 4
  store i32 %627, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %628

628:                                              ; preds = %670, %622
  %629 = load i32, i32* %17, align 4
  %630 = load i32, i32* %6, align 4
  %631 = icmp ult i32 %629, %630
  br i1 %631, label %632, label %673

632:                                              ; preds = %628
  store i32 0, i32* %18, align 4
  br label %633

633:                                              ; preds = %666, %632
  %634 = load i32, i32* %18, align 4
  %635 = load i32, i32* %6, align 4
  %636 = icmp ult i32 %634, %635
  br i1 %636, label %637, label %669

637:                                              ; preds = %633
  %638 = load i32***, i32**** %9, align 8
  %639 = load i32, i32* %17, align 4
  %640 = zext i32 %639 to i64
  %641 = getelementptr inbounds i32**, i32*** %638, i64 %640
  %642 = load i32**, i32*** %641, align 8
  %643 = load i32, i32* %18, align 4
  %644 = zext i32 %643 to i64
  %645 = getelementptr inbounds i32*, i32** %642, i64 %644
  %646 = load i32*, i32** %645, align 8
  %647 = load i32, i32* %14, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i32, i32* %646, i64 %648
  %650 = load i32, i32* %649, align 4
  %651 = icmp eq i32 %650, 2
  br i1 %651, label %652, label %665

652:                                              ; preds = %637
  %653 = load i32***, i32**** %9, align 8
  %654 = load i32, i32* %17, align 4
  %655 = zext i32 %654 to i64
  %656 = getelementptr inbounds i32**, i32*** %653, i64 %655
  %657 = load i32**, i32*** %656, align 8
  %658 = load i32, i32* %18, align 4
  %659 = zext i32 %658 to i64
  %660 = getelementptr inbounds i32*, i32** %657, i64 %659
  %661 = load i32*, i32** %660, align 8
  %662 = load i32, i32* %14, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i32, i32* %661, i64 %663
  store i32 1, i32* %664, align 4
  br label %665

665:                                              ; preds = %652, %637
  br label %666

666:                                              ; preds = %665
  %667 = load i32, i32* %18, align 4
  %668 = add i32 %667, 1
  store i32 %668, i32* %18, align 4
  br label %633

669:                                              ; preds = %633
  br label %670

670:                                              ; preds = %669
  %671 = load i32, i32* %17, align 4
  %672 = add i32 %671, 1
  store i32 %672, i32* %17, align 4
  br label %628

673:                                              ; preds = %628
  br label %674

674:                                              ; preds = %673, %618
  br label %60

675:                                              ; preds = %60
  store i32 0, i32* %3, align 4
  br label %676

676:                                              ; preds = %675, %169
  %677 = load i32, i32* %3, align 4
  ret i32 %677
}

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i64 @generate_cdg_for_sp(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @get_next_switch(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @CL_ASSERT(i32) #1

declare dso_local i32 @cycle_exists(%struct.TYPE_21__*, i32*, i32*, i32) #1

declare dso_local i32 @remove_temp_depend_for_sp(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @set_temp_depend_to_permanent_for_sp(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @remove_semipermanent_depend_for_sp(%struct.TYPE_20__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
