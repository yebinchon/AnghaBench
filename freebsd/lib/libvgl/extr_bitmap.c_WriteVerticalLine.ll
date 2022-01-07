; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_bitmap.c_WriteVerticalLine.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_bitmap.c_WriteVerticalLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32, i32 }

@VGLBuf = common dso_local global i32* null, align 8
@color2bit = common dso_local global i32* null, align 8
@VGLAdpInfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@mask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32, i32*)* @WriteVerticalLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteVerticalLine(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
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
  %21 = alloca i32*, align 8
  %22 = alloca [4 x i32*], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %20, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %488 [
    i32 132, label %26
    i32 131, label %26
    i32 128, label %357
    i32 129, label %415
    i32 137, label %415
    i32 135, label %415
    i32 133, label %415
    i32 139, label %463
    i32 130, label %463
    i32 138, label %463
    i32 136, label %463
    i32 134, label %463
  ]

26:                                               ; preds = %5, %5
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 7
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %29, %30
  %32 = and i32 %31, 7
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %16, align 4
  %35 = add nsw i32 %33, %34
  %36 = sdiv i32 %35, 8
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %26
  %43 = load i32*, i32** @VGLBuf, align 8
  %44 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 0
  store i32* %43, i32** %44, align 16
  %45 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 0
  %46 = load i32*, i32** %45, align 16
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 1
  store i32* %49, i32** %50, align 8
  %51 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 2
  store i32* %55, i32** %56, align 16
  %57 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 2
  %58 = load i32*, i32** %57, align 16
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 3
  store i32* %61, i32** %62, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = sub nsw i32 8, %63
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %95, %42
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %127

69:                                               ; preds = %65
  store i32 0, i32* %20, align 4
  br label %70

70:                                               ; preds = %80, %69
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %75, %76
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i1 [ false, %70 ], [ %77, %74 ]
  br i1 %79, label %80, label %95

80:                                               ; preds = %78
  %81 = load i32, i32* %20, align 4
  %82 = shl i32 %81, 1
  %83 = load i32*, i32** @color2bit, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 15
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %83, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %82, %93
  store i32 %94, i32* %20, align 4
  br label %70

95:                                               ; preds = %78
  %96 = load i32, i32* %20, align 4
  %97 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 0
  %98 = load i32*, i32** %97, align 16
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %96, i32* %101, align 4
  %102 = load i32, i32* %20, align 4
  %103 = lshr i32 %102, 8
  %104 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %103, i32* %108, align 4
  %109 = load i32, i32* %20, align 4
  %110 = lshr i32 %109, 16
  %111 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 2
  %112 = load i32*, i32** %111, align 16
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %110, i32* %115, align 4
  %116 = load i32, i32* %20, align 4
  %117 = lshr i32 %116, 24
  %118 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %117, i32* %122, align 4
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 8
  store i32 %126, i32* %14, align 4
  br label %65

127:                                              ; preds = %65
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %164

132:                                              ; preds = %127
  %133 = load i32, i32* %17, align 4
  %134 = sub nsw i32 8, %133
  %135 = load i32, i32* %20, align 4
  %136 = shl i32 %135, %134
  store i32 %136, i32* %20, align 4
  %137 = load i32, i32* %20, align 4
  %138 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 0
  %139 = load i32*, i32** %138, align 16
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %137, i32* %142, align 4
  %143 = load i32, i32* %20, align 4
  %144 = lshr i32 %143, 8
  %145 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %144, i32* %149, align 4
  %150 = load i32, i32* %20, align 4
  %151 = lshr i32 %150, 16
  %152 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 2
  %153 = load i32*, i32** %152, align 16
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %151, i32* %156, align 4
  %157 = load i32, i32* %20, align 4
  %158 = lshr i32 %157, 24
  %159 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 3
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %158, i32* %163, align 4
  br label %164

164:                                              ; preds = %132, %127
  %165 = call i32 @outb(i32 974, i32 1)
  %166 = call i32 @outb(i32 975, i32 0)
  %167 = call i32 @outb(i32 974, i32 8)
  %168 = call i32 @outb(i32 975, i32 255)
  store i32 0, i32* %12, align 4
  br label %169

169:                                              ; preds = %353, %164
  %170 = load i32, i32* %12, align 4
  %171 = icmp slt i32 %170, 4
  br i1 %171, label %172, label %356

172:                                              ; preds = %169
  %173 = call i32 @outb(i32 964, i32 2)
  %174 = load i32, i32* %12, align 4
  %175 = shl i32 1, %174
  %176 = call i32 @outb(i32 965, i32 %175)
  %177 = call i32 @outb(i32 974, i32 4)
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @outb(i32 975, i32 %178)
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @VGLAdpInfo, i32 0, i32 0), align 4
  %181 = load i32, i32* %8, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32, i32* %7, align 4
  %184 = sdiv i32 %183, 8
  %185 = add nsw i32 %182, %184
  store i32 %185, i32* %13, align 4
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 132
  br i1 %189, label %190, label %257

190:                                              ; preds = %172
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %218

193:                                              ; preds = %190
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %15, align 4
  %199 = add nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %196, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** @mask, align 8
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %202, %207
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %15, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %208
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %193, %190
  %219 = load i32, i32* %16, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %243

221:                                              ; preds = %218
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %13, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** @mask, align 8
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = xor i32 %233, -1
  %235 = and i32 %228, %234
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %235
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %221, %218
  %244 = load i32, i32* %12, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 %245
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %13, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %11, align 4
  %256 = call i32 @bcopy(i32* %248, i32* %254, i32 %255)
  br label %352

257:                                              ; preds = %172
  %258 = load i32, i32* %17, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %287

260:                                              ; preds = %257
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* %15, align 4
  %263 = add nsw i32 %261, %262
  %264 = call i32 @VGLSetSegment(i32 %263)
  store i32 %264, i32* %18, align 4
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %18, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32*, i32** @mask, align 8
  %273 = load i32, i32* %17, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %271, %276
  %278 = load i32, i32* %12, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 %279
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %15, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %277
  store i32 %286, i32* %284, align 4
  br label %287

287:                                              ; preds = %260, %257
  %288 = load i32, i32* %13, align 4
  %289 = call i32 @VGLSetSegment(i32 %288)
  store i32 %289, i32* %18, align 4
  %290 = load i32, i32* %16, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %314

292:                                              ; preds = %287
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %18, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load i32*, i32** @mask, align 8
  %301 = load i32, i32* %16, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = xor i32 %304, -1
  %306 = and i32 %299, %305
  %307 = load i32, i32* %12, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 %308
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 0
  %312 = load i32, i32* %311, align 4
  %313 = or i32 %312, %306
  store i32 %313, i32* %311, align 4
  br label %314

314:                                              ; preds = %292, %287
  %315 = load i32, i32* %11, align 4
  store i32 %315, i32* %14, align 4
  br label %316

316:                                              ; preds = %348, %314
  %317 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @VGLAdpInfo, i32 0, i32 1), align 4
  %318 = load i32, i32* %18, align 4
  %319 = sub nsw i32 %317, %318
  %320 = load i32, i32* %14, align 4
  %321 = call i32 @min(i32 %319, i32 %320)
  store i32 %321, i32* %19, align 4
  %322 = load i32, i32* %12, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 %323
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %11, align 4
  %327 = load i32, i32* %14, align 4
  %328 = sub nsw i32 %326, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %325, i64 %329
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 1
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %18, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %19, align 4
  %338 = call i32 @bcopy(i32* %330, i32* %336, i32 %337)
  %339 = load i32, i32* %19, align 4
  %340 = load i32, i32* %13, align 4
  %341 = add nsw i32 %340, %339
  store i32 %341, i32* %13, align 4
  %342 = load i32, i32* %19, align 4
  %343 = load i32, i32* %14, align 4
  %344 = sub nsw i32 %343, %342
  store i32 %344, i32* %14, align 4
  %345 = load i32, i32* %14, align 4
  %346 = icmp sle i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %316
  br label %351

348:                                              ; preds = %316
  %349 = load i32, i32* %13, align 4
  %350 = call i32 @VGLSetSegment(i32 %349)
  store i32 %350, i32* %18, align 4
  br label %316

351:                                              ; preds = %347
  br label %352

352:                                              ; preds = %351, %243
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %12, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %12, align 4
  br label %169

356:                                              ; preds = %169
  br label %489

357:                                              ; preds = %5
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 1
  %360 = load i32*, i32** %359, align 8
  %361 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @VGLAdpInfo, i32 0, i32 0), align 4
  %362 = load i32, i32* %8, align 4
  %363 = mul nsw i32 %361, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %360, i64 %364
  %366 = load i32, i32* %7, align 4
  %367 = sdiv i32 %366, 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  store i32* %369, i32** %21, align 8
  store i32 0, i32* %12, align 4
  br label %370

370:                                              ; preds = %411, %357
  %371 = load i32, i32* %12, align 4
  %372 = icmp slt i32 %371, 4
  br i1 %372, label %373, label %414

373:                                              ; preds = %370
  %374 = call i32 @outb(i32 964, i32 2)
  %375 = load i32, i32* %7, align 4
  %376 = load i32, i32* %12, align 4
  %377 = add nsw i32 %375, %376
  %378 = srem i32 %377, 4
  %379 = shl i32 1, %378
  %380 = call i32 @outb(i32 965, i32 %379)
  store i32 0, i32* %15, align 4
  %381 = load i32, i32* %12, align 4
  store i32 %381, i32* %13, align 4
  br label %382

382:                                              ; preds = %396, %373
  %383 = load i32, i32* %13, align 4
  %384 = load i32, i32* %9, align 4
  %385 = icmp slt i32 %383, %384
  br i1 %385, label %386, label %401

386:                                              ; preds = %382
  %387 = load i32*, i32** %10, align 8
  %388 = load i32, i32* %13, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load i32*, i32** %21, align 8
  %393 = load i32, i32* %15, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  store i32 %391, i32* %395, align 4
  br label %396

396:                                              ; preds = %386
  %397 = load i32, i32* %15, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %15, align 4
  %399 = load i32, i32* %13, align 4
  %400 = add nsw i32 %399, 4
  store i32 %400, i32* %13, align 4
  br label %382

401:                                              ; preds = %382
  %402 = load i32, i32* %7, align 4
  %403 = load i32, i32* %12, align 4
  %404 = add nsw i32 %402, %403
  %405 = srem i32 %404, 4
  %406 = icmp eq i32 %405, 3
  br i1 %406, label %407, label %410

407:                                              ; preds = %401
  %408 = load i32*, i32** %21, align 8
  %409 = getelementptr inbounds i32, i32* %408, i32 1
  store i32* %409, i32** %21, align 8
  br label %410

410:                                              ; preds = %407, %401
  br label %411

411:                                              ; preds = %410
  %412 = load i32, i32* %12, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %12, align 4
  br label %370

414:                                              ; preds = %370
  br label %489

415:                                              ; preds = %5, %5, %5, %5
  %416 = load i32, i32* %9, align 4
  %417 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = mul nsw i32 %416, %419
  store i32 %420, i32* %9, align 4
  %421 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %8, align 4
  %425 = mul nsw i32 %423, %424
  %426 = load i32, i32* %7, align 4
  %427 = add nsw i32 %425, %426
  %428 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = mul nsw i32 %427, %430
  store i32 %431, i32* %13, align 4
  br label %432

432:                                              ; preds = %435, %415
  %433 = load i32, i32* %9, align 4
  %434 = icmp sgt i32 %433, 0
  br i1 %434, label %435, label %462

435:                                              ; preds = %432
  %436 = load i32, i32* %13, align 4
  %437 = call i32 @VGLSetSegment(i32 %436)
  store i32 %437, i32* %18, align 4
  %438 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @VGLAdpInfo, i32 0, i32 1), align 4
  %439 = load i32, i32* %18, align 4
  %440 = sub nsw i32 %438, %439
  %441 = load i32, i32* %9, align 4
  %442 = call i32 @min(i32 %440, i32 %441)
  store i32 %442, i32* %12, align 4
  %443 = load i32*, i32** %10, align 8
  %444 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 1
  %446 = load i32*, i32** %445, align 8
  %447 = load i32, i32* %18, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %446, i64 %448
  %450 = load i32, i32* %12, align 4
  %451 = call i32 @bcopy(i32* %443, i32* %449, i32 %450)
  %452 = load i32, i32* %12, align 4
  %453 = load i32*, i32** %10, align 8
  %454 = sext i32 %452 to i64
  %455 = getelementptr inbounds i32, i32* %453, i64 %454
  store i32* %455, i32** %10, align 8
  %456 = load i32, i32* %12, align 4
  %457 = load i32, i32* %13, align 4
  %458 = add nsw i32 %457, %456
  store i32 %458, i32* %13, align 4
  %459 = load i32, i32* %12, align 4
  %460 = load i32, i32* %9, align 4
  %461 = sub nsw i32 %460, %459
  store i32 %461, i32* %9, align 4
  br label %432

462:                                              ; preds = %432
  br label %489

463:                                              ; preds = %5, %5, %5, %5, %5
  %464 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i32 0, i32 1
  %466 = load i32*, i32** %465, align 8
  %467 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %467, i32 0, i32 3
  %469 = load i32, i32* %468, align 4
  %470 = load i32, i32* %8, align 4
  %471 = mul nsw i32 %469, %470
  %472 = load i32, i32* %7, align 4
  %473 = add nsw i32 %471, %472
  %474 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 8
  %477 = mul nsw i32 %473, %476
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %466, i64 %478
  store i32* %479, i32** %21, align 8
  %480 = load i32*, i32** %10, align 8
  %481 = load i32*, i32** %21, align 8
  %482 = load i32, i32* %9, align 4
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 2
  %485 = load i32, i32* %484, align 8
  %486 = mul nsw i32 %482, %485
  %487 = call i32 @bcopy(i32* %480, i32* %481, i32 %486)
  br label %489

488:                                              ; preds = %5
  br label %489

489:                                              ; preds = %488, %463, %462, %414, %356
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @VGLSetSegment(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
