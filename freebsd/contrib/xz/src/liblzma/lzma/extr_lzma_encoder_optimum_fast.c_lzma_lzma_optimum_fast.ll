; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_lzma_encoder_optimum_fast.c_lzma_lzma_optimum_fast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_lzma_encoder_optimum_fast.c_lzma_lzma_optimum_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32**, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@MATCH_LEN_MAX = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@REPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lzma_lzma_optimum_fast(%struct.TYPE_11__* noalias %0, %struct.TYPE_10__* noalias %1, i32* noalias %2, i32* noalias %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = call i8* @mf_find(%struct.TYPE_10__* %31, i32* %11, %struct.TYPE_12__* %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %10, align 4
  br label %50

37:                                               ; preds = %4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %37, %30
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = call i32* @mf_ptr(%struct.TYPE_10__* %51)
  %53 = getelementptr inbounds i32, i32* %52, i64 -1
  store i32* %53, i32** %12, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = call i64 @mf_avail(%struct.TYPE_10__* %54)
  %56 = add nsw i64 %55, 1
  %57 = load i32, i32* @MATCH_LEN_MAX, align 4
  %58 = call i32 @my_min(i64 %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load i32, i32* @UINT32_MAX, align 4
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 1, i32* %64, align 4
  br label %386

65:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %66

66:                                               ; preds = %115, %65
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @REPS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %118

70:                                               ; preds = %66
  %71 = load i32*, i32** %12, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = ptrtoint i32* %71 to i64
  %80 = ptrtoint i32* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 4
  %83 = sub nsw i64 %82, 1
  %84 = inttoptr i64 %83 to i32*
  store i32* %84, i32** %17, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i32*, i32** %17, align 8
  %87 = call i64 @not_equal_16(i32* %85, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %70
  br label %115

90:                                               ; preds = %70
  %91 = load i32*, i32** %12, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @lzma_memcmplen(i32* %91, i32* %92, i32 2, i32 %93)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = load i32, i32* %16, align 4
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %18, align 4
  %102 = load i32*, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sub nsw i32 %104, 1
  %106 = call i32 @mf_skip(%struct.TYPE_10__* %103, i32 %105)
  br label %386

107:                                              ; preds = %90
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* %16, align 4
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %18, align 4
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %111, %107
  br label %115

115:                                              ; preds = %114, %89
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %66

118:                                              ; preds = %66
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %118
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @REPS, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32*, i32** %7, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32*, i32** %8, align 8
  store i32 %135, i32* %136, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sub nsw i32 %138, 1
  %140 = call i32 @mf_skip(%struct.TYPE_10__* %137, i32 %139)
  br label %386

141:                                              ; preds = %118
  store i32 0, i32* %19, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp sge i32 %142, 2
  br i1 %143, label %144, label %215

144:                                              ; preds = %141
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %19, align 4
  br label %154

154:                                              ; preds = %186, %144
  %155 = load i32, i32* %11, align 4
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %157, label %170

157:                                              ; preds = %154
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sub nsw i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  %169 = icmp eq i32 %158, %168
  br label %170

170:                                              ; preds = %157, %154
  %171 = phi i1 [ false, %154 ], [ %169, %157 ]
  br i1 %171, label %172, label %207

172:                                              ; preds = %170
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sub nsw i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %19, align 4
  %183 = call i64 @change_pair(i32 %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %172
  br label %207

186:                                              ; preds = %172
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %11, align 4
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %10, align 4
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %19, align 4
  br label %154

207:                                              ; preds = %185, %170
  %208 = load i32, i32* %10, align 4
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i32, i32* %19, align 4
  %212 = icmp sge i32 %211, 128
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  store i32 1, i32* %10, align 4
  br label %214

214:                                              ; preds = %213, %210, %207
  br label %215

215:                                              ; preds = %214, %141
  %216 = load i32, i32* %14, align 4
  %217 = icmp sge i32 %216, 2
  br i1 %217, label %218, label %253

218:                                              ; preds = %215
  %219 = load i32, i32* %14, align 4
  %220 = add nsw i32 %219, 1
  %221 = load i32, i32* %10, align 4
  %222 = icmp sge i32 %220, %221
  br i1 %222, label %243, label %223

223:                                              ; preds = %218
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 2
  %226 = load i32, i32* %10, align 4
  %227 = icmp sge i32 %225, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load i32, i32* %19, align 4
  %230 = call i32 @UINT32_C(i32 1)
  %231 = shl i32 %230, 9
  %232 = icmp sgt i32 %229, %231
  br i1 %232, label %243, label %233

233:                                              ; preds = %228, %223
  %234 = load i32, i32* %14, align 4
  %235 = add nsw i32 %234, 3
  %236 = load i32, i32* %10, align 4
  %237 = icmp sge i32 %235, %236
  br i1 %237, label %238, label %252

238:                                              ; preds = %233
  %239 = load i32, i32* %19, align 4
  %240 = call i32 @UINT32_C(i32 1)
  %241 = shl i32 %240, 15
  %242 = icmp sgt i32 %239, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %238, %228, %218
  %244 = load i32, i32* %15, align 4
  %245 = load i32*, i32** %7, align 8
  store i32 %244, i32* %245, align 4
  %246 = load i32, i32* %14, align 4
  %247 = load i32*, i32** %8, align 8
  store i32 %246, i32* %247, align 4
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %249 = load i32, i32* %14, align 4
  %250 = sub nsw i32 %249, 1
  %251 = call i32 @mf_skip(%struct.TYPE_10__* %248, i32 %250)
  br label %386

252:                                              ; preds = %238, %233
  br label %253

253:                                              ; preds = %252, %215
  %254 = load i32, i32* %10, align 4
  %255 = icmp slt i32 %254, 2
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = load i32, i32* %13, align 4
  %258 = icmp sle i32 %257, 2
  br i1 %258, label %259, label %263

259:                                              ; preds = %256, %253
  %260 = load i32, i32* @UINT32_MAX, align 4
  %261 = load i32*, i32** %7, align 8
  store i32 %260, i32* %261, align 4
  %262 = load i32*, i32** %8, align 8
  store i32 1, i32* %262, align 4
  br label %386

263:                                              ; preds = %256
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 3
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = call i8* @mf_find(%struct.TYPE_10__* %264, i32* %266, %struct.TYPE_12__* %269)
  %271 = ptrtoint i8* %270 to i32
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp sge i32 %276, 2
  br i1 %277, label %278, label %338

278:                                              ; preds = %263
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 3
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %280, align 8
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = sub nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* %20, align 4
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* %10, align 4
  %294 = icmp sge i32 %292, %293
  br i1 %294, label %295, label %299

295:                                              ; preds = %278
  %296 = load i32, i32* %20, align 4
  %297 = load i32, i32* %19, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %333, label %299

299:                                              ; preds = %295, %278
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* %10, align 4
  %304 = add nsw i32 %303, 1
  %305 = icmp eq i32 %302, %304
  br i1 %305, label %306, label %311

306:                                              ; preds = %299
  %307 = load i32, i32* %19, align 4
  %308 = load i32, i32* %20, align 4
  %309 = call i64 @change_pair(i32 %307, i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %333

311:                                              ; preds = %306, %299
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* %10, align 4
  %316 = add nsw i32 %315, 1
  %317 = icmp sgt i32 %314, %316
  br i1 %317, label %333, label %318

318:                                              ; preds = %311
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %321, 1
  %323 = load i32, i32* %10, align 4
  %324 = icmp sge i32 %322, %323
  br i1 %324, label %325, label %337

325:                                              ; preds = %318
  %326 = load i32, i32* %10, align 4
  %327 = icmp sge i32 %326, 3
  br i1 %327, label %328, label %337

328:                                              ; preds = %325
  %329 = load i32, i32* %20, align 4
  %330 = load i32, i32* %19, align 4
  %331 = call i64 @change_pair(i32 %329, i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %328, %311, %306, %295
  %334 = load i32, i32* @UINT32_MAX, align 4
  %335 = load i32*, i32** %7, align 8
  store i32 %334, i32* %335, align 4
  %336 = load i32*, i32** %8, align 8
  store i32 1, i32* %336, align 4
  br label %386

337:                                              ; preds = %328, %325, %318
  br label %338

338:                                              ; preds = %337, %263
  %339 = load i32*, i32** %12, align 8
  %340 = getelementptr inbounds i32, i32* %339, i32 1
  store i32* %340, i32** %12, align 8
  %341 = load i32, i32* %10, align 4
  %342 = sub nsw i32 %341, 1
  %343 = call i32 @my_max(i32 2, i32 %342)
  store i32 %343, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %344

344:                                              ; preds = %372, %338
  %345 = load i32, i32* %22, align 4
  %346 = load i32, i32* @REPS, align 4
  %347 = icmp slt i32 %345, %346
  br i1 %347, label %348, label %375

348:                                              ; preds = %344
  %349 = load i32*, i32** %12, align 8
  %350 = load i32*, i32** %12, align 8
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 2
  %353 = load i32**, i32*** %352, align 8
  %354 = load i32, i32* %22, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32*, i32** %353, i64 %355
  %357 = load i32*, i32** %356, align 8
  %358 = ptrtoint i32* %350 to i64
  %359 = ptrtoint i32* %357 to i64
  %360 = sub i64 %358, %359
  %361 = sdiv exact i64 %360, 4
  %362 = sub nsw i64 %361, 1
  %363 = trunc i64 %362 to i32
  %364 = load i32, i32* %21, align 4
  %365 = call i64 @memcmp(i32* %349, i32 %363, i32 %364)
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %348
  %368 = load i32, i32* @UINT32_MAX, align 4
  %369 = load i32*, i32** %7, align 8
  store i32 %368, i32* %369, align 4
  %370 = load i32*, i32** %8, align 8
  store i32 1, i32* %370, align 4
  br label %386

371:                                              ; preds = %348
  br label %372

372:                                              ; preds = %371
  %373 = load i32, i32* %22, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %22, align 4
  br label %344

375:                                              ; preds = %344
  %376 = load i32, i32* %19, align 4
  %377 = load i32, i32* @REPS, align 4
  %378 = add nsw i32 %376, %377
  %379 = load i32*, i32** %7, align 8
  store i32 %378, i32* %379, align 4
  %380 = load i32, i32* %10, align 4
  %381 = load i32*, i32** %8, align 8
  store i32 %380, i32* %381, align 4
  %382 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %383 = load i32, i32* %10, align 4
  %384 = sub nsw i32 %383, 2
  %385 = call i32 @mf_skip(%struct.TYPE_10__* %382, i32 %384)
  br label %386

386:                                              ; preds = %375, %367, %333, %259, %243, %122, %98, %61
  ret void
}

declare dso_local i8* @mf_find(%struct.TYPE_10__*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @mf_ptr(%struct.TYPE_10__*) #1

declare dso_local i32 @my_min(i64, i32) #1

declare dso_local i64 @mf_avail(%struct.TYPE_10__*) #1

declare dso_local i64 @not_equal_16(i32*, i32*) #1

declare dso_local i32 @lzma_memcmplen(i32*, i32*, i32, i32) #1

declare dso_local i32 @mf_skip(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @change_pair(i32, i32) #1

declare dso_local i32 @UINT32_C(i32) #1

declare dso_local i32 @my_max(i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
