; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_insch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_insch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i64, i64, i32, i32, i32 }

@TXT_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i8*, i32)* @txt_insch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txt_insch(i32* %0, %struct.TYPE_3__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @TXT_REPLACE, align 4
  %19 = call i64 @LF_ISSET(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8 %32, i8* %40, align 1
  store i32 0, i32* %5, align 4
  br label %391

41:                                               ; preds = %21
  br label %310

42:                                               ; preds = %4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %309

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 9
  br i1 %54, label %55, label %81

55:                                               ; preds = %47
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %11, align 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 9, i8* %66, align 1
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @vs_columns(i32* %67, i8* %70, i32 %73, i64* %13, i64* %16)
  %75 = load i8, i8* %11, align 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8 %75, i8* %80, align 1
  br label %86

81:                                               ; preds = %47
  %82 = load i32*, i32** %6, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @KEY_COL(i32* %82, i8 signext %84)
  store i64 %85, i64* %16, align 8
  br label %86

86:                                               ; preds = %81, %55
  store i64 0, i64* %14, align 8
  br label %87

87:                                               ; preds = %258, %86
  %88 = load i64, i64* %16, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %90, %87
  %96 = phi i1 [ false, %87 ], [ %94, %90 ]
  br i1 %96, label %97, label %259

97:                                               ; preds = %95
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, -1
  store i64 %101, i64* %99, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* %13, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 9
  br i1 %109, label %110, label %119

110:                                              ; preds = %97
  %111 = load i32*, i32** %6, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @vs_columns(i32* %111, i8* %114, i32 %117, i64* %13, i64* %15)
  br label %128

119:                                              ; preds = %97
  %120 = load i32*, i32** %6, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load i64, i64* %13, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = call i64 @KEY_COL(i32* %120, i8 signext %126)
  store i64 %127, i64* %15, align 8
  br label %128

128:                                              ; preds = %119, %110
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* %16, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i64 0, i64* %16, align 8
  br label %259

133:                                              ; preds = %128
  %134 = load i64, i64* %15, align 8
  %135 = load i64, i64* %16, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i64, i64* %14, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %14, align 8
  %140 = load i64, i64* %15, align 8
  %141 = load i64, i64* %16, align 8
  %142 = sub i64 %141, %140
  store i64 %142, i64* %16, align 8
  br label %258

143:                                              ; preds = %133
  %144 = load i32*, i32** %6, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %15, align 8
  %155 = add i64 %153, %154
  %156 = call i32 @BINC_RETW(i32* %144, i8* %147, i32 %150, i64 %155)
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* %16, align 8
  %159 = sub i64 %157, %158
  store i64 %159, i64* %12, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = load i64, i64* %13, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i64, i64* %12, align 8
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = load i64, i64* %13, align 8
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %176, %180
  %182 = trunc i64 %181 to i32
  %183 = call i32 @MEMMOVE(i8* %167, i8* %173, i32 %182)
  %184 = load i64, i64* %12, align 8
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = add i64 %187, %184
  store i64 %188, i64* %186, align 8
  %189 = load i64, i64* %12, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = add i64 %192, %189
  store i64 %193, i64* %191, align 8
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = load i64, i64* %13, align 8
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 9
  br i1 %201, label %212, label %202

202:                                              ; preds = %143
  %203 = load i32*, i32** %6, align 8
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = load i64, i64* %13, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = call i64 @KEY_NEEDSWIDE(i32* %203, i8 signext %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %227

212:                                              ; preds = %202, %143
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = load i64, i64* %13, align 8
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  store i8* %218, i8** %17, align 8
  br label %219

219:                                              ; preds = %223, %212
  %220 = load i64, i64* %12, align 8
  %221 = add i64 %220, -1
  store i64 %221, i64* %12, align 8
  %222 = icmp ne i64 %220, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i8*, i8** %17, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %17, align 8
  store i8 32, i8* %224, align 1
  br label %219

226:                                              ; preds = %219
  br label %257

227:                                              ; preds = %202
  %228 = load i32*, i32** %6, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = load i64, i64* %13, align 8
  %233 = getelementptr inbounds i8, i8* %231, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = call i64 @KEY_NAME(i32* %228, i8 signext %234)
  %236 = inttoptr i64 %235 to i32*
  %237 = load i64, i64* %16, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  store i32* %238, i32** %10, align 8
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = load i64, i64* %13, align 8
  %243 = getelementptr inbounds i8, i8* %241, i64 %242
  %244 = getelementptr inbounds i8, i8* %243, i64 1
  store i8* %244, i8** %17, align 8
  br label %245

245:                                              ; preds = %249, %227
  %246 = load i64, i64* %12, align 8
  %247 = add i64 %246, -1
  store i64 %247, i64* %12, align 8
  %248 = icmp ne i64 %246, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %245
  %250 = load i32*, i32** %10, align 8
  %251 = getelementptr inbounds i32, i32* %250, i32 1
  store i32* %251, i32** %10, align 8
  %252 = load i32, i32* %250, align 4
  %253 = trunc i32 %252 to i8
  %254 = load i8*, i8** %17, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %17, align 8
  store i8 %253, i8* %254, align 1
  br label %245

256:                                              ; preds = %245
  br label %257

257:                                              ; preds = %256, %226
  store i64 0, i64* %16, align 8
  br label %259

258:                                              ; preds = %137
  br label %87

259:                                              ; preds = %257, %132, %95
  %260 = load i64, i64* %14, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %294

262:                                              ; preds = %259
  %263 = load i64, i64* %14, align 8
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = sub i64 %266, %263
  store i64 %267, i64* %265, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %294

269:                                              ; preds = %262
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 1
  %272 = load i8*, i8** %271, align 8
  %273 = load i64, i64* %13, align 8
  %274 = getelementptr inbounds i8, i8* %272, i64 %273
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 1
  %277 = load i8*, i8** %276, align 8
  %278 = load i64, i64* %13, align 8
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  %280 = load i64, i64* %14, align 8
  %281 = getelementptr inbounds i8, i8* %279, i64 %280
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = add nsw i64 %284, %288
  %290 = load i64, i64* %14, align 8
  %291 = add i64 %289, %290
  %292 = trunc i64 %291 to i32
  %293 = call i32 @MEMMOVE(i8* %274, i8* %281, i32 %292)
  br label %294

294:                                              ; preds = %269, %262, %259
  %295 = load i64, i64* %16, align 8
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %308

297:                                              ; preds = %294
  %298 = load i8*, i8** %8, align 8
  %299 = load i8, i8* %298, align 1
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 1
  %302 = load i8*, i8** %301, align 8
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = add i64 %305, 1
  store i64 %306, i64* %304, align 8
  %307 = getelementptr inbounds i8, i8* %302, i64 %305
  store i8 %299, i8* %307, align 1
  store i32 0, i32* %5, align 4
  br label %391

308:                                              ; preds = %294
  br label %309

309:                                              ; preds = %308, %42
  br label %310

310:                                              ; preds = %309, %41
  %311 = load i32*, i32** %6, align 8
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 1
  %314 = load i8*, i8** %313, align 8
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 5
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %320, 1
  %322 = call i32 @BINC_RETW(i32* %311, i8* %314, i32 %317, i64 %321)
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = add nsw i64 %325, 1
  store i64 %326, i64* %324, align 8
  %327 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %380

331:                                              ; preds = %310
  %332 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 8
  %335 = icmp eq i32 %334, 1
  br i1 %335, label %336, label %353

336:                                              ; preds = %331
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 1
  %339 = load i8*, i8** %338, align 8
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = getelementptr inbounds i8, i8* %339, i64 %342
  %344 = load i8, i8* %343, align 1
  %345 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 1
  %347 = load i8*, i8** %346, align 8
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = add i64 %350, 1
  %352 = getelementptr inbounds i8, i8* %347, i64 %351
  store i8 %344, i8* %352, align 1
  br label %379

353:                                              ; preds = %331
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 1
  %356 = load i8*, i8** %355, align 8
  %357 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = getelementptr inbounds i8, i8* %356, i64 %359
  %361 = getelementptr inbounds i8, i8* %360, i64 1
  %362 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 1
  %364 = load i8*, i8** %363, align 8
  %365 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = getelementptr inbounds i8, i8* %364, i64 %367
  %369 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 8
  %375 = sext i32 %374 to i64
  %376 = add nsw i64 %371, %375
  %377 = trunc i64 %376 to i32
  %378 = call i32 @MEMMOVE(i8* %361, i8* %368, i32 %377)
  br label %379

379:                                              ; preds = %353, %336
  br label %380

380:                                              ; preds = %379, %310
  %381 = load i8*, i8** %8, align 8
  %382 = load i8, i8* %381, align 1
  %383 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 1
  %385 = load i8*, i8** %384, align 8
  %386 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %386, i32 0, i32 2
  %388 = load i64, i64* %387, align 8
  %389 = add i64 %388, 1
  store i64 %389, i64* %387, align 8
  %390 = getelementptr inbounds i8, i8* %385, i64 %388
  store i8 %382, i8* %390, align 1
  store i32 0, i32* %5, align 4
  br label %391

391:                                              ; preds = %380, %297, %26
  %392 = load i32, i32* %5, align 4
  ret i32 %392
}

declare dso_local i64 @LF_ISSET(i32) #1

declare dso_local i32 @vs_columns(i32*, i8*, i32, i64*, i64*) #1

declare dso_local i64 @KEY_COL(i32*, i8 signext) #1

declare dso_local i32 @BINC_RETW(i32*, i8*, i32, i64) #1

declare dso_local i32 @MEMMOVE(i8*, i8*, i32) #1

declare dso_local i64 @KEY_NEEDSWIDE(i32*, i8 signext) #1

declare dso_local i64 @KEY_NAME(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
