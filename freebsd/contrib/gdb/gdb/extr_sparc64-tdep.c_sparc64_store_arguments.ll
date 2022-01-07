; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_store_arguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_store_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }
%struct.value = type { i32 }
%struct.type = type { i32 }

@BIAS = common dso_local global i64 0, align 8
@builtin_type_int64 = common dso_local global i32 0, align 4
@SPARC_O0_REGNUM = common dso_local global i32 0, align 4
@SPARC64_Q0_REGNUM = common dso_local global i32 0, align 4
@SPARC64_D0_REGNUM = common dso_local global i32 0, align 4
@SPARC64_D10_REGNUM = common dso_local global i32 0, align 4
@SPARC64_Q8_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regcache*, i32, %struct.value**, i32, i32, i32)* @sparc64_store_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc64_store_arguments(%struct.regcache* %0, i32 %1, %struct.value** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.regcache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.value**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.type*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.type*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [16 x i8], align 16
  store %struct.regcache* %0, %struct.regcache** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.value** %2, %struct.value*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load i64, i64* @BIAS, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %30, %6
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %140, %33
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %143

38:                                               ; preds = %34
  %39 = load %struct.value**, %struct.value*** %9, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.value*, %struct.value** %39, i64 %41
  %43 = load %struct.value*, %struct.value** %42, align 8
  %44 = call %struct.type* @VALUE_TYPE(%struct.value* %43)
  store %struct.type* %44, %struct.type** %16, align 8
  %45 = load %struct.type*, %struct.type** %16, align 8
  %46 = call i32 @TYPE_LENGTH(%struct.type* %45)
  store i32 %46, i32* %17, align 4
  %47 = load %struct.type*, %struct.type** %16, align 8
  %48 = call i64 @sparc64_structure_or_union_p(%struct.type* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %96

50:                                               ; preds = %38
  %51 = load i32, i32* %17, align 4
  %52 = icmp sle i32 %51, 16
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = srem i32 %54, 2
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.type*, %struct.type** %16, align 8
  %59 = call i64 @sparc64_16_byte_align_p(%struct.type* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %61, %57, %53
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %65, 7
  %67 = sdiv i32 %66, 8
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %13, align 4
  br label %95

70:                                               ; preds = %50
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, -16
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.value**, %struct.value*** %9, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.value*, %struct.value** %77, i64 %79
  %81 = load %struct.value*, %struct.value** %80, align 8
  %82 = call i8* @VALUE_CONTENTS(%struct.value* %81)
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @write_memory(i32 %76, i8* %82, i32 %83)
  %85 = load %struct.type*, %struct.type** %16, align 8
  %86 = call i32 @lookup_pointer_type(%struct.type* %85)
  %87 = load i32, i32* %10, align 4
  %88 = call %struct.value* @value_from_pointer(i32 %86, i32 %87)
  %89 = load %struct.value**, %struct.value*** %9, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.value*, %struct.value** %89, i64 %91
  store %struct.value* %88, %struct.value** %92, align 8
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %70, %64
  br label %139

96:                                               ; preds = %38
  %97 = load %struct.type*, %struct.type** %16, align 8
  %98 = call i64 @sparc64_floating_p(%struct.type* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = load i32, i32* %17, align 4
  %102 = icmp eq i32 %101, 16
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = srem i32 %106, 2
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %109, %103
  br label %116

113:                                              ; preds = %100
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %113, %112
  br label %138

117:                                              ; preds = %96
  %118 = load %struct.type*, %struct.type** %16, align 8
  %119 = call i32 @sparc64_integral_or_pointer_p(%struct.type* %118)
  %120 = call i32 @gdb_assert(i32 %119)
  %121 = load i32, i32* %17, align 4
  %122 = icmp slt i32 %121, 8
  br i1 %122, label %123, label %135

123:                                              ; preds = %117
  %124 = load i32, i32* @builtin_type_int64, align 4
  %125 = load %struct.value**, %struct.value*** %9, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.value*, %struct.value** %125, i64 %127
  %129 = load %struct.value*, %struct.value** %128, align 8
  %130 = call %struct.value* @value_cast(i32 %124, %struct.value* %129)
  %131 = load %struct.value**, %struct.value*** %9, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.value*, %struct.value** %131, i64 %133
  store %struct.value* %130, %struct.value** %134, align 8
  br label %135

135:                                              ; preds = %123, %117
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %135, %116
  br label %139

139:                                              ; preds = %138, %95
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %15, align 4
  br label %34

143:                                              ; preds = %34
  %144 = load i32, i32* %13, align 4
  %145 = mul nsw i32 %144, 8
  %146 = load i32, i32* %10, align 4
  %147 = sub nsw i32 %146, %145
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = and i32 %148, -16
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %143
  %153 = load %struct.regcache*, %struct.regcache** %7, align 8
  %154 = load i32, i32* @SPARC_O0_REGNUM, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @regcache_cooked_write_unsigned(%struct.regcache* %153, i32 %154, i32 %155)
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %152, %143
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %364, %159
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %367

164:                                              ; preds = %160
  %165 = load %struct.value**, %struct.value*** %9, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.value*, %struct.value** %165, i64 %167
  %169 = load %struct.value*, %struct.value** %168, align 8
  %170 = call i8* @VALUE_CONTENTS(%struct.value* %169)
  store i8* %170, i8** %18, align 8
  %171 = load %struct.value**, %struct.value*** %9, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.value*, %struct.value** %171, i64 %173
  %175 = load %struct.value*, %struct.value** %174, align 8
  %176 = call %struct.type* @VALUE_TYPE(%struct.value* %175)
  store %struct.type* %176, %struct.type** %19, align 8
  %177 = load %struct.type*, %struct.type** %19, align 8
  %178 = call i32 @TYPE_LENGTH(%struct.type* %177)
  store i32 %178, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  %179 = load %struct.type*, %struct.type** %19, align 8
  %180 = call i64 @sparc64_structure_or_union_p(%struct.type* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %233

182:                                              ; preds = %164
  %183 = load i32, i32* %20, align 4
  %184 = icmp sle i32 %183, 16
  %185 = zext i1 %184 to i32
  %186 = call i32 @gdb_assert(i32 %185)
  %187 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %188 = call i32 @memset(i8* %187, i32 0, i32 16)
  %189 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %190 = load i8*, i8** %18, align 8
  %191 = load i32, i32* %20, align 4
  %192 = call i8* @memcpy(i8* %189, i8* %190, i32 %191)
  store i8* %192, i8** %18, align 8
  %193 = load i32, i32* %14, align 4
  %194 = srem i32 %193, 2
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %182
  %197 = load %struct.type*, %struct.type** %19, align 8
  %198 = call i64 @sparc64_16_byte_align_p(%struct.type* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %200, %196, %182
  %204 = load i32, i32* %14, align 4
  %205 = icmp slt i32 %204, 6
  br i1 %205, label %206, label %223

206:                                              ; preds = %203
  %207 = load i32, i32* @SPARC_O0_REGNUM, align 4
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %207, %208
  store i32 %209, i32* %21, align 4
  %210 = load i32, i32* %20, align 4
  %211 = icmp sgt i32 %210, 8
  br i1 %211, label %212, label %222

212:                                              ; preds = %206
  %213 = load i32, i32* %14, align 4
  %214 = icmp slt i32 %213, 5
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load %struct.regcache*, %struct.regcache** %7, align 8
  %217 = load i32, i32* %21, align 4
  %218 = add nsw i32 %217, 1
  %219 = load i8*, i8** %18, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 8
  %221 = call i32 @regcache_cooked_write(%struct.regcache* %216, i32 %218, i8* %220)
  br label %222

222:                                              ; preds = %215, %212, %206
  br label %223

223:                                              ; preds = %222, %203
  %224 = load i32, i32* %14, align 4
  %225 = icmp slt i32 %224, 16
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = load %struct.regcache*, %struct.regcache** %7, align 8
  %228 = load %struct.type*, %struct.type** %19, align 8
  %229 = load i8*, i8** %18, align 8
  %230 = load i32, i32* %14, align 4
  %231 = call i32 @sparc64_store_floating_fields(%struct.regcache* %227, %struct.type* %228, i8* %229, i32 %230, i32 0)
  br label %232

232:                                              ; preds = %226, %223
  br label %297

233:                                              ; preds = %164
  %234 = load %struct.type*, %struct.type** %19, align 8
  %235 = call i64 @sparc64_floating_p(%struct.type* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %284

237:                                              ; preds = %233
  %238 = load i32, i32* %20, align 4
  %239 = icmp eq i32 %238, 16
  br i1 %239, label %240, label %256

240:                                              ; preds = %237
  %241 = load i32, i32* %14, align 4
  %242 = srem i32 %241, 2
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %14, align 4
  br label %247

247:                                              ; preds = %244, %240
  %248 = load i32, i32* %14, align 4
  %249 = icmp slt i32 %248, 16
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = load i32, i32* @SPARC64_Q0_REGNUM, align 4
  %252 = load i32, i32* %14, align 4
  %253 = sdiv i32 %252, 2
  %254 = add nsw i32 %251, %253
  store i32 %254, i32* %21, align 4
  br label %255

255:                                              ; preds = %250, %247
  br label %283

256:                                              ; preds = %237
  %257 = load i32, i32* %20, align 4
  %258 = icmp eq i32 %257, 8
  br i1 %258, label %259, label %267

259:                                              ; preds = %256
  %260 = load i32, i32* %14, align 4
  %261 = icmp slt i32 %260, 16
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = load i32, i32* @SPARC64_D0_REGNUM, align 4
  %264 = load i32, i32* %14, align 4
  %265 = add nsw i32 %263, %264
  store i32 %265, i32* %21, align 4
  br label %266

266:                                              ; preds = %262, %259
  br label %282

267:                                              ; preds = %256
  %268 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %269 = call i32 @memset(i8* %268, i32 0, i32 4)
  %270 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %271 = getelementptr inbounds i8, i8* %270, i64 4
  %272 = load i8*, i8** %18, align 8
  %273 = call i8* @memcpy(i8* %271, i8* %272, i32 4)
  %274 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  store i8* %274, i8** %18, align 8
  store i32 8, i32* %20, align 4
  %275 = load i32, i32* %14, align 4
  %276 = icmp slt i32 %275, 16
  br i1 %276, label %277, label %281

277:                                              ; preds = %267
  %278 = load i32, i32* @SPARC64_D0_REGNUM, align 4
  %279 = load i32, i32* %14, align 4
  %280 = add nsw i32 %278, %279
  store i32 %280, i32* %21, align 4
  br label %281

281:                                              ; preds = %277, %267
  br label %282

282:                                              ; preds = %281, %266
  br label %283

283:                                              ; preds = %282, %255
  br label %296

284:                                              ; preds = %233
  %285 = load i32, i32* %20, align 4
  %286 = icmp eq i32 %285, 8
  %287 = zext i1 %286 to i32
  %288 = call i32 @gdb_assert(i32 %287)
  %289 = load i32, i32* %14, align 4
  %290 = icmp slt i32 %289, 6
  br i1 %290, label %291, label %295

291:                                              ; preds = %284
  %292 = load i32, i32* @SPARC_O0_REGNUM, align 4
  %293 = load i32, i32* %14, align 4
  %294 = add nsw i32 %292, %293
  store i32 %294, i32* %21, align 4
  br label %295

295:                                              ; preds = %291, %284
  br label %296

296:                                              ; preds = %295, %283
  br label %297

297:                                              ; preds = %296, %232
  %298 = load i32, i32* %21, align 4
  %299 = icmp ne i32 %298, -1
  br i1 %299, label %300, label %351

300:                                              ; preds = %297
  %301 = load %struct.regcache*, %struct.regcache** %7, align 8
  %302 = load i32, i32* %21, align 4
  %303 = load i8*, i8** %18, align 8
  %304 = call i32 @regcache_cooked_write(%struct.regcache* %301, i32 %302, i8* %303)
  %305 = load i32, i32* %21, align 4
  %306 = load i32, i32* @SPARC64_D0_REGNUM, align 4
  %307 = icmp sge i32 %305, %306
  br i1 %307, label %308, label %324

308:                                              ; preds = %300
  %309 = load i32, i32* %21, align 4
  %310 = load i32, i32* @SPARC64_D10_REGNUM, align 4
  %311 = icmp sle i32 %309, %310
  br i1 %311, label %312, label %324

312:                                              ; preds = %308
  %313 = load i32, i32* %14, align 4
  %314 = icmp slt i32 %313, 6
  %315 = zext i1 %314 to i32
  %316 = call i32 @gdb_assert(i32 %315)
  %317 = load i32, i32* @SPARC_O0_REGNUM, align 4
  %318 = load i32, i32* %14, align 4
  %319 = add nsw i32 %317, %318
  store i32 %319, i32* %21, align 4
  %320 = load %struct.regcache*, %struct.regcache** %7, align 8
  %321 = load i32, i32* %21, align 4
  %322 = load i8*, i8** %18, align 8
  %323 = call i32 @regcache_cooked_write(%struct.regcache* %320, i32 %321, i8* %322)
  br label %350

324:                                              ; preds = %308, %300
  %325 = load i32, i32* %21, align 4
  %326 = load i32, i32* @SPARC64_Q0_REGNUM, align 4
  %327 = icmp sge i32 %325, %326
  br i1 %327, label %328, label %349

328:                                              ; preds = %324
  %329 = load i32, i32* %21, align 4
  %330 = load i32, i32* @SPARC64_Q8_REGNUM, align 4
  %331 = icmp sle i32 %329, %330
  br i1 %331, label %332, label %349

332:                                              ; preds = %328
  %333 = load i32, i32* %14, align 4
  %334 = icmp slt i32 %333, 6
  %335 = zext i1 %334 to i32
  %336 = call i32 @gdb_assert(i32 %335)
  %337 = load i32, i32* @SPARC_O0_REGNUM, align 4
  %338 = load i32, i32* %14, align 4
  %339 = add nsw i32 %337, %338
  store i32 %339, i32* %21, align 4
  %340 = load %struct.regcache*, %struct.regcache** %7, align 8
  %341 = load i32, i32* %21, align 4
  %342 = load i8*, i8** %18, align 8
  %343 = call i32 @regcache_cooked_write(%struct.regcache* %340, i32 %341, i8* %342)
  %344 = load %struct.regcache*, %struct.regcache** %7, align 8
  %345 = load i32, i32* %21, align 4
  %346 = add nsw i32 %345, 1
  %347 = load i8*, i8** %18, align 8
  %348 = call i32 @regcache_cooked_write(%struct.regcache* %344, i32 %346, i8* %347)
  br label %349

349:                                              ; preds = %332, %328, %324
  br label %350

350:                                              ; preds = %349, %312
  br label %351

351:                                              ; preds = %350, %297
  %352 = load i32, i32* %10, align 4
  %353 = load i32, i32* %14, align 4
  %354 = mul nsw i32 %353, 8
  %355 = add nsw i32 %352, %354
  %356 = load i8*, i8** %18, align 8
  %357 = load i32, i32* %20, align 4
  %358 = call i32 @write_memory(i32 %355, i8* %356, i32 %357)
  %359 = load i32, i32* %20, align 4
  %360 = add nsw i32 %359, 7
  %361 = sdiv i32 %360, 8
  %362 = load i32, i32* %14, align 4
  %363 = add nsw i32 %362, %361
  store i32 %363, i32* %14, align 4
  br label %364

364:                                              ; preds = %351
  %365 = load i32, i32* %15, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %15, align 4
  br label %160

367:                                              ; preds = %160
  %368 = load i32, i32* %14, align 4
  %369 = load i32, i32* %13, align 4
  %370 = icmp eq i32 %368, %369
  %371 = zext i1 %370 to i32
  %372 = call i32 @gdb_assert(i32 %371)
  %373 = load i64, i64* @BIAS, align 8
  %374 = load i32, i32* %10, align 4
  %375 = sext i32 %374 to i64
  %376 = sub nsw i64 %375, %373
  %377 = trunc i64 %376 to i32
  store i32 %377, i32* %10, align 4
  %378 = load i32, i32* %10, align 4
  ret i32 %378
}

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @sparc64_structure_or_union_p(%struct.type*) #1

declare dso_local i64 @sparc64_16_byte_align_p(%struct.type*) #1

declare dso_local i32 @write_memory(i32, i8*, i32) #1

declare dso_local i8* @VALUE_CONTENTS(%struct.value*) #1

declare dso_local %struct.value* @value_from_pointer(i32, i32) #1

declare dso_local i32 @lookup_pointer_type(%struct.type*) #1

declare dso_local i64 @sparc64_floating_p(%struct.type*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @sparc64_integral_or_pointer_p(%struct.type*) #1

declare dso_local %struct.value* @value_cast(i32, %struct.value*) #1

declare dso_local i32 @regcache_cooked_write_unsigned(%struct.regcache*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @regcache_cooked_write(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @sparc64_store_floating_fields(%struct.regcache*, %struct.type*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
