; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_fingerprint_randomart.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_fingerprint_randomart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c" .o+=*BOX@%&#/^SE\00", align 1
@FLDSIZE_X = common dso_local global i32 0, align 4
@FLDSIZE_Y = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"[%s %u]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*, i64, %struct.sshkey*)* @fingerprint_randomart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fingerprint_randomart(i8* %0, i64* %1, i64 %2, %struct.sshkey* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sshkey*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.sshkey* %3, %struct.sshkey** %9, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %28 = load i32, i32* @FLDSIZE_X, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %13, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  %32 = load i32, i32* @FLDSIZE_X, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %15, align 8
  %35 = load i32, i32* @FLDSIZE_X, align 4
  %36 = zext i32 %35 to i64
  %37 = load i32, i32* @FLDSIZE_Y, align 4
  %38 = zext i32 %37 to i64
  %39 = mul nuw i64 %36, %38
  %40 = alloca i64, i64 %39, align 16
  store i64 %36, i64* %16, align 8
  store i64 %38, i64* %17, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %25, align 8
  %45 = load i32, i32* @FLDSIZE_X, align 4
  %46 = add nsw i32 %45, 3
  %47 = load i32, i32* @FLDSIZE_Y, align 4
  %48 = add nsw i32 %47, 2
  %49 = call i8* @calloc(i32 %46, i32 %48)
  store i8* %49, i8** %11, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  store i32 1, i32* %26, align 4
  br label %322

52:                                               ; preds = %4
  %53 = bitcast i64* %40 to i64**
  %54 = load i32, i32* @FLDSIZE_X, align 4
  %55 = load i32, i32* @FLDSIZE_Y, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 1
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memset(i64** %53, i32 0, i32 %59)
  %61 = load i32, i32* @FLDSIZE_X, align 4
  %62 = sdiv i32 %61, 2
  store i32 %62, i32* %22, align 4
  %63 = load i32, i32* @FLDSIZE_Y, align 4
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %23, align 4
  store i64 0, i64* %18, align 8
  br label %65

65:                                               ; preds = %139, %52
  %66 = load i64, i64* %18, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %142

69:                                               ; preds = %65
  %70 = load i64*, i64** %7, align 8
  %71 = load i64, i64* %18, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %27, align 4
  store i32 0, i32* %21, align 4
  br label %75

75:                                               ; preds = %135, %69
  %76 = load i32, i32* %21, align 4
  %77 = icmp slt i32 %76, 4
  br i1 %77, label %78, label %138

78:                                               ; preds = %75
  %79 = load i32, i32* %27, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 -1
  %84 = load i32, i32* %22, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %27, align 4
  %87 = and i32 %86, 2
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 -1
  %91 = load i32, i32* %23, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* %22, align 4
  %94 = call i32 @MAXIMUM(i32 %93, i32 0)
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %23, align 4
  %96 = call i32 @MAXIMUM(i32 %95, i32 0)
  store i32 %96, i32* %23, align 4
  %97 = load i32, i32* %22, align 4
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* @FLDSIZE_X, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = call i64 @MINIMUM(i64 %98, i64 %101)
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %22, align 4
  %104 = load i32, i32* %23, align 4
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* @FLDSIZE_Y, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = call i64 @MINIMUM(i64 %105, i64 %108)
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %23, align 4
  %111 = load i32, i32* %22, align 4
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %112, %38
  %114 = getelementptr inbounds i64, i64* %40, i64 %113
  %115 = load i32, i32* %23, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %25, align 8
  %120 = sub i64 %119, 2
  %121 = icmp ult i64 %118, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %78
  %123 = load i32, i32* %22, align 4
  %124 = sext i32 %123 to i64
  %125 = mul nsw i64 %124, %38
  %126 = getelementptr inbounds i64, i64* %40, i64 %125
  %127 = load i32, i32* %23, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %122, %78
  %133 = load i32, i32* %27, align 4
  %134 = ashr i32 %133, 2
  store i32 %134, i32* %27, align 4
  br label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %21, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %21, align 4
  br label %75

138:                                              ; preds = %75
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %18, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %18, align 8
  br label %65

142:                                              ; preds = %65
  %143 = load i64, i64* %25, align 8
  %144 = sub i64 %143, 1
  %145 = load i32, i32* @FLDSIZE_X, align 4
  %146 = sdiv i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = mul nsw i64 %147, %38
  %149 = getelementptr inbounds i64, i64* %40, i64 %148
  %150 = load i32, i32* @FLDSIZE_Y, align 4
  %151 = sdiv i32 %150, 2
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %149, i64 %152
  store i64 %144, i64* %153, align 8
  %154 = load i64, i64* %25, align 8
  %155 = load i32, i32* %22, align 4
  %156 = sext i32 %155 to i64
  %157 = mul nsw i64 %156, %38
  %158 = getelementptr inbounds i64, i64* %40, i64 %157
  %159 = load i32, i32* %23, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  store i64 %154, i64* %161, align 8
  %162 = trunc i64 %29 to i32
  %163 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %164 = call i8* @sshkey_type(%struct.sshkey* %163)
  %165 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %166 = call i32 @sshkey_size(%struct.sshkey* %165)
  %167 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %31, i32 %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %164, i32 %166)
  store i32 %167, i32* %24, align 4
  %168 = load i32, i32* %24, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %142
  %171 = load i32, i32* %24, align 4
  %172 = trunc i64 %29 to i32
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %170, %142
  %175 = trunc i64 %29 to i32
  %176 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %177 = call i8* @sshkey_type(%struct.sshkey* %176)
  %178 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %31, i32 %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %177)
  store i32 %178, i32* %24, align 4
  br label %179

179:                                              ; preds = %174, %170
  %180 = load i32, i32* %24, align 4
  %181 = icmp sle i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  br label %185

183:                                              ; preds = %179
  %184 = call i32 @strlen(i8* %31)
  br label %185

185:                                              ; preds = %183, %182
  %186 = phi i32 [ 0, %182 ], [ %184, %183 ]
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %19, align 8
  %188 = trunc i64 %33 to i32
  %189 = load i8*, i8** %6, align 8
  %190 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %34, i32 %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %189)
  store i32 %190, i32* %24, align 4
  %191 = load i32, i32* %24, align 4
  %192 = icmp sle i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %185
  br label %196

194:                                              ; preds = %185
  %195 = call i32 @strlen(i8* %34)
  br label %196

196:                                              ; preds = %194, %193
  %197 = phi i32 [ 0, %193 ], [ %195, %194 ]
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %20, align 8
  %199 = load i8*, i8** %11, align 8
  store i8* %199, i8** %12, align 8
  %200 = load i8*, i8** %12, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %12, align 8
  store i8 43, i8* %200, align 1
  store i64 0, i64* %18, align 8
  br label %202

202:                                              ; preds = %213, %196
  %203 = load i64, i64* %18, align 8
  %204 = load i32, i32* @FLDSIZE_X, align 4
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %19, align 8
  %207 = sub i64 %205, %206
  %208 = udiv i64 %207, 2
  %209 = icmp ult i64 %203, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %202
  %211 = load i8*, i8** %12, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %12, align 8
  store i8 45, i8* %211, align 1
  br label %213

213:                                              ; preds = %210
  %214 = load i64, i64* %18, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %18, align 8
  br label %202

216:                                              ; preds = %202
  %217 = load i8*, i8** %12, align 8
  %218 = load i64, i64* %19, align 8
  %219 = call i32 @memcpy(i8* %217, i8* %31, i64 %218)
  %220 = load i64, i64* %19, align 8
  %221 = load i8*, i8** %12, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 %220
  store i8* %222, i8** %12, align 8
  %223 = load i64, i64* %19, align 8
  %224 = load i64, i64* %18, align 8
  %225 = add i64 %224, %223
  store i64 %225, i64* %18, align 8
  br label %226

226:                                              ; preds = %234, %216
  %227 = load i64, i64* %18, align 8
  %228 = load i32, i32* @FLDSIZE_X, align 4
  %229 = sext i32 %228 to i64
  %230 = icmp ult i64 %227, %229
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load i8*, i8** %12, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %12, align 8
  store i8 45, i8* %232, align 1
  br label %234

234:                                              ; preds = %231
  %235 = load i64, i64* %18, align 8
  %236 = add i64 %235, 1
  store i64 %236, i64* %18, align 8
  br label %226

237:                                              ; preds = %226
  %238 = load i8*, i8** %12, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %12, align 8
  store i8 43, i8* %238, align 1
  %240 = load i8*, i8** %12, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %12, align 8
  store i8 10, i8* %240, align 1
  store i32 0, i32* %23, align 4
  br label %242

242:                                              ; preds = %277, %237
  %243 = load i32, i32* %23, align 4
  %244 = load i32, i32* @FLDSIZE_Y, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %280

246:                                              ; preds = %242
  %247 = load i8*, i8** %12, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %12, align 8
  store i8 124, i8* %247, align 1
  store i32 0, i32* %22, align 4
  br label %249

249:                                              ; preds = %269, %246
  %250 = load i32, i32* %22, align 4
  %251 = load i32, i32* @FLDSIZE_X, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %272

253:                                              ; preds = %249
  %254 = load i8*, i8** %10, align 8
  %255 = load i32, i32* %22, align 4
  %256 = sext i32 %255 to i64
  %257 = mul nsw i64 %256, %38
  %258 = getelementptr inbounds i64, i64* %40, i64 %257
  %259 = load i32, i32* %23, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %258, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* %25, align 8
  %264 = call i64 @MINIMUM(i64 %262, i64 %263)
  %265 = getelementptr inbounds i8, i8* %254, i64 %264
  %266 = load i8, i8* %265, align 1
  %267 = load i8*, i8** %12, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %12, align 8
  store i8 %266, i8* %267, align 1
  br label %269

269:                                              ; preds = %253
  %270 = load i32, i32* %22, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %22, align 4
  br label %249

272:                                              ; preds = %249
  %273 = load i8*, i8** %12, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %12, align 8
  store i8 124, i8* %273, align 1
  %275 = load i8*, i8** %12, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %12, align 8
  store i8 10, i8* %275, align 1
  br label %277

277:                                              ; preds = %272
  %278 = load i32, i32* %23, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %23, align 4
  br label %242

280:                                              ; preds = %242
  %281 = load i8*, i8** %12, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %12, align 8
  store i8 43, i8* %281, align 1
  store i64 0, i64* %18, align 8
  br label %283

283:                                              ; preds = %294, %280
  %284 = load i64, i64* %18, align 8
  %285 = load i32, i32* @FLDSIZE_X, align 4
  %286 = sext i32 %285 to i64
  %287 = load i64, i64* %20, align 8
  %288 = sub i64 %286, %287
  %289 = udiv i64 %288, 2
  %290 = icmp ult i64 %284, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %283
  %292 = load i8*, i8** %12, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %12, align 8
  store i8 45, i8* %292, align 1
  br label %294

294:                                              ; preds = %291
  %295 = load i64, i64* %18, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %18, align 8
  br label %283

297:                                              ; preds = %283
  %298 = load i8*, i8** %12, align 8
  %299 = load i64, i64* %20, align 8
  %300 = call i32 @memcpy(i8* %298, i8* %34, i64 %299)
  %301 = load i64, i64* %20, align 8
  %302 = load i8*, i8** %12, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 %301
  store i8* %303, i8** %12, align 8
  %304 = load i64, i64* %20, align 8
  %305 = load i64, i64* %18, align 8
  %306 = add i64 %305, %304
  store i64 %306, i64* %18, align 8
  br label %307

307:                                              ; preds = %315, %297
  %308 = load i64, i64* %18, align 8
  %309 = load i32, i32* @FLDSIZE_X, align 4
  %310 = sext i32 %309 to i64
  %311 = icmp ult i64 %308, %310
  br i1 %311, label %312, label %318

312:                                              ; preds = %307
  %313 = load i8*, i8** %12, align 8
  %314 = getelementptr inbounds i8, i8* %313, i32 1
  store i8* %314, i8** %12, align 8
  store i8 45, i8* %313, align 1
  br label %315

315:                                              ; preds = %312
  %316 = load i64, i64* %18, align 8
  %317 = add i64 %316, 1
  store i64 %317, i64* %18, align 8
  br label %307

318:                                              ; preds = %307
  %319 = load i8*, i8** %12, align 8
  %320 = getelementptr inbounds i8, i8* %319, i32 1
  store i8* %320, i8** %12, align 8
  store i8 43, i8* %319, align 1
  %321 = load i8*, i8** %11, align 8
  store i8* %321, i8** %5, align 8
  store i32 1, i32* %26, align 4
  br label %322

322:                                              ; preds = %318, %51
  %323 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %323)
  %324 = load i8*, i8** %5, align 8
  ret i8* %324
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @calloc(i32, i32) #2

declare dso_local i32 @memset(i64**, i32, i32) #2

declare dso_local i32 @MAXIMUM(i32, i32) #2

declare dso_local i64 @MINIMUM(i64, i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @sshkey_type(%struct.sshkey*) #2

declare dso_local i32 @sshkey_size(%struct.sshkey*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
