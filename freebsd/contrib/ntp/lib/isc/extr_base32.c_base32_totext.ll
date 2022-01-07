; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_base32.c_base32_totext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_base32.c_base32_totext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i8*, i32*, i8*)* @base32_totext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base32_totext(%struct.TYPE_4__* %0, i32 %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [9 x i8], align 1
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 8, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %15, %5
  %20 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %21 = call i32 @memset(i8* %20, i32 0, i32 9)
  br label %22

22:                                               ; preds = %283, %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %284

27:                                               ; preds = %22
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 3
  %35 = and i32 %34, 31
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %28, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  store i8 %38, i8* %39, align 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %67

44:                                               ; preds = %27
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 2
  %52 = and i32 %51, 28
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %45, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 1
  store i8 %55, i8* %56, align 1
  %57 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 4
  store i8 61, i8* %57, align 1
  %58 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 3
  store i8 61, i8* %58, align 1
  %59 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 2
  store i8 61, i8* %59, align 1
  %60 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 7
  store i8 61, i8* %60, align 1
  %61 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 6
  store i8 61, i8* %61, align 1
  %62 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 5
  store i8 61, i8* %62, align 1
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @str_totext(i8* %63, i32* %64)
  %66 = call i32 @RETERR(i32 %65)
  br label %284

67:                                               ; preds = %27
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 2
  %75 = and i32 %74, 28
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 6
  %82 = and i32 %81, 3
  %83 = or i32 %75, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %68, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 1
  store i8 %86, i8* %87, align 1
  %88 = load i8*, i8** %10, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 1
  %95 = and i32 %94, 31
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %88, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 2
  store i8 %98, i8* %99, align 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %125

104:                                              ; preds = %67
  %105 = load i8*, i8** %10, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 4
  %112 = and i32 %111, 16
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %105, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 3
  store i8 %115, i8* %116, align 1
  %117 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 7
  store i8 61, i8* %117, align 1
  %118 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 6
  store i8 61, i8* %118, align 1
  %119 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 5
  store i8 61, i8* %119, align 1
  %120 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 4
  store i8 61, i8* %120, align 1
  %121 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @str_totext(i8* %121, i32* %122)
  %124 = call i32 @RETERR(i32 %123)
  br label %284

125:                                              ; preds = %67
  %126 = load i8*, i8** %10, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 4
  %133 = and i32 %132, 16
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = ashr i32 %138, 4
  %140 = and i32 %139, 15
  %141 = or i32 %133, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %126, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 3
  store i8 %144, i8* %145, align 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 3
  br i1 %149, label %150, label %170

150:                                              ; preds = %125
  %151 = load i8*, i8** %10, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 1
  %158 = and i32 %157, 30
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %151, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 4
  store i8 %161, i8* %162, align 1
  %163 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 7
  store i8 61, i8* %163, align 1
  %164 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 6
  store i8 61, i8* %164, align 1
  %165 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 5
  store i8 61, i8* %165, align 1
  %166 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %167 = load i32*, i32** %9, align 8
  %168 = call i32 @str_totext(i8* %166, i32* %167)
  %169 = call i32 @RETERR(i32 %168)
  br label %284

170:                                              ; preds = %125
  %171 = load i8*, i8** %10, align 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 1
  %178 = and i32 %177, 30
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 3
  %183 = load i32, i32* %182, align 4
  %184 = ashr i32 %183, 7
  %185 = and i32 %184, 1
  %186 = or i32 %178, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %171, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 4
  store i8 %189, i8* %190, align 1
  %191 = load i8*, i8** %10, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = ashr i32 %196, 2
  %198 = and i32 %197, 31
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %191, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 5
  store i8 %201, i8* %202, align 1
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %205, 4
  br i1 %206, label %207, label %225

207:                                              ; preds = %170
  %208 = load i8*, i8** %10, align 8
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 3
  %213 = load i32, i32* %212, align 4
  %214 = shl i32 %213, 3
  %215 = and i32 %214, 24
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %208, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 6
  store i8 %218, i8* %219, align 1
  %220 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 7
  store i8 61, i8* %220, align 1
  %221 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %222 = load i32*, i32** %9, align 8
  %223 = call i32 @str_totext(i8* %221, i32* %222)
  %224 = call i32 @RETERR(i32 %223)
  br label %284

225:                                              ; preds = %170
  %226 = load i8*, i8** %10, align 8
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 3
  %231 = load i32, i32* %230, align 4
  %232 = shl i32 %231, 3
  %233 = and i32 %232, 24
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 4
  %238 = load i32, i32* %237, align 4
  %239 = ashr i32 %238, 5
  %240 = and i32 %239, 7
  %241 = or i32 %233, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %226, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 6
  store i8 %244, i8* %245, align 1
  %246 = load i8*, i8** %10, align 8
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 4
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 31
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %246, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 7
  store i8 %255, i8* %256, align 1
  %257 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %258 = load i32*, i32** %9, align 8
  %259 = call i32 @str_totext(i8* %257, i32* %258)
  %260 = call i32 @RETERR(i32 %259)
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %262 = call i32 @isc_region_consume(%struct.TYPE_4__* %261, i32 5)
  %263 = load i32, i32* %12, align 4
  %264 = add i32 %263, 1
  store i32 %264, i32* %12, align 4
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %283

269:                                              ; preds = %225
  %270 = load i32, i32* %7, align 4
  %271 = icmp sge i32 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %269
  %273 = load i32, i32* %12, align 4
  %274 = add i32 %273, 1
  %275 = mul i32 %274, 8
  %276 = load i32, i32* %7, align 4
  %277 = icmp sge i32 %275, %276
  br i1 %277, label %278, label %283

278:                                              ; preds = %272
  store i32 0, i32* %12, align 4
  %279 = load i8*, i8** %8, align 8
  %280 = load i32*, i32** %9, align 8
  %281 = call i32 @str_totext(i8* %279, i32* %280)
  %282 = call i32 @RETERR(i32 %281)
  br label %283

283:                                              ; preds = %278, %272, %269, %225
  br label %22

284:                                              ; preds = %207, %150, %104, %44, %22
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %284
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @isc_region_consume(%struct.TYPE_4__* %290, i32 %293)
  br label %295

295:                                              ; preds = %289, %284
  %296 = load i32, i32* @ISC_R_SUCCESS, align 4
  ret i32 %296
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @RETERR(i32) #1

declare dso_local i32 @str_totext(i8*, i32*) #1

declare dso_local i32 @isc_region_consume(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
