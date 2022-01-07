; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcam/extr_scsi_cmdparse.c_next_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcam/extr_scsi_cmdparse.c_next_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid starting character: %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid startfield %c (%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32*, i32*, i8*, i32, i32*, i32*)* @next_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_field(i8** %0, i8* %1, i32* %2, i32* %3, i8* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8** %0, i8*** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %28 = load i8**, i8*** %10, align 8
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 8, i32* %23, align 4
  %30 = load i8*, i8** %11, align 8
  store i8 105, i8* %30, align 1
  store i32 1, i32* %24, align 4
  %31 = load i8*, i8** %14, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %8
  %34 = load i8*, i8** %14, align 8
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %33, %8
  store i32 0, i32* %21, align 4
  br label %36

36:                                               ; preds = %299, %35
  %37 = load i32, i32* %21, align 4
  %38 = icmp ne i32 %37, 3
  br i1 %38, label %39, label %300

39:                                               ; preds = %36
  %40 = load i32, i32* %21, align 4
  switch i32 %40, label %299 [
    i32 0, label %41
    i32 1, label %243
    i32 2, label %253
    i32 3, label %298
  ]

41:                                               ; preds = %39
  %42 = load i8*, i8** %18, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 3, i32* %21, align 4
  br label %242

47:                                               ; preds = %41
  %48 = load i8*, i8** %18, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @isspace(i8 signext %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %18, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %18, align 8
  br label %241

55:                                               ; preds = %47
  %56 = load i8*, i8** %18, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 35
  br i1 %59, label %60, label %85

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %73, %60
  %62 = load i8*, i8** %18, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i8*, i8** %18, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 10
  br label %71

71:                                               ; preds = %66, %61
  %72 = phi i1 [ false, %61 ], [ %70, %66 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i8*, i8** %18, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %18, align 8
  br label %61

76:                                               ; preds = %71
  %77 = load i8*, i8** %18, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %18, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %18, align 8
  br label %84

84:                                               ; preds = %81, %76
  br label %240

85:                                               ; preds = %55
  %86 = load i8*, i8** %18, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 123
  br i1 %89, label %90, label %145

90:                                               ; preds = %85
  store i32 0, i32* %27, align 4
  %91 = load i8*, i8** %18, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %18, align 8
  br label %93

93:                                               ; preds = %121, %90
  %94 = load i8*, i8** %18, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i8*, i8** %18, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 125
  br label %103

103:                                              ; preds = %98, %93
  %104 = phi i1 [ false, %93 ], [ %102, %98 ]
  br i1 %104, label %105, label %124

105:                                              ; preds = %103
  %106 = load i8*, i8** %14, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load i32, i32* %27, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i8*, i8** %18, align 8
  %114 = load i8, i8* %113, align 1
  %115 = load i8*, i8** %14, align 8
  %116 = load i32, i32* %27, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8 %114, i8* %118, align 1
  %119 = load i32, i32* %27, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %27, align 4
  br label %121

121:                                              ; preds = %112, %108, %105
  %122 = load i8*, i8** %18, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %18, align 8
  br label %93

124:                                              ; preds = %103
  %125 = load i8*, i8** %14, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load i32, i32* %27, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i8*, i8** %14, align 8
  %133 = load i32, i32* %27, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  store i8 0, i8* %135, align 1
  br label %136

136:                                              ; preds = %131, %127, %124
  %137 = load i8*, i8** %18, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 125
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i8*, i8** %18, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %18, align 8
  br label %144

144:                                              ; preds = %141, %136
  br label %239

145:                                              ; preds = %85
  %146 = load i8*, i8** %18, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 42
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i8*, i8** %18, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %18, align 8
  store i32 1, i32* %26, align 4
  br label %238

153:                                              ; preds = %145
  %154 = load i8*, i8** %18, align 8
  %155 = load i8, i8* %154, align 1
  %156 = call i32 @isxdigit(i8 signext %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  store i32 1, i32* %20, align 4
  %159 = load i8*, i8** %18, align 8
  %160 = call i32 @strtol(i8* %159, i8** %19, i32 16)
  store i32 %160, i32* %22, align 4
  %161 = load i8*, i8** %19, align 8
  store i8* %161, i8** %18, align 8
  store i32 1, i32* %21, align 4
  br label %237

162:                                              ; preds = %153
  %163 = load i8*, i8** %18, align 8
  %164 = load i8, i8* %163, align 1
  %165 = call signext i8 @tolower(i8 signext %164)
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 118
  br i1 %167, label %168, label %173

168:                                              ; preds = %162
  %169 = load i8*, i8** %18, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %18, align 8
  store i32 2, i32* %20, align 4
  %171 = load i32*, i32** %13, align 8
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %22, align 4
  store i32 1, i32* %21, align 4
  br label %236

173:                                              ; preds = %162
  %174 = load i8*, i8** %18, align 8
  %175 = load i8, i8* %174, align 1
  %176 = call signext i8 @tolower(i8 signext %175)
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 105
  br i1 %178, label %179, label %188

179:                                              ; preds = %173
  store i32 2, i32* %20, align 4
  %180 = load i32*, i32** %13, align 8
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %22, align 4
  %182 = load i8*, i8** %18, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %18, align 8
  %184 = load i8*, i8** %11, align 8
  store i8 105, i8* %184, align 1
  store i32 8, i32* %23, align 4
  %185 = load i8*, i8** %18, align 8
  %186 = call i32 @strtol(i8* %185, i8** %19, i32 10)
  store i32 %186, i32* %24, align 4
  %187 = load i8*, i8** %19, align 8
  store i8* %187, i8** %18, align 8
  store i32 3, i32* %21, align 4
  br label %235

188:                                              ; preds = %173
  %189 = load i8*, i8** %18, align 8
  %190 = load i8, i8* %189, align 1
  %191 = call signext i8 @tolower(i8 signext %190)
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 116
  br i1 %193, label %194, label %203

194:                                              ; preds = %188
  store i32 2, i32* %20, align 4
  %195 = load i32*, i32** %13, align 8
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %22, align 4
  %197 = load i8*, i8** %18, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %18, align 8
  %199 = load i8*, i8** %11, align 8
  store i8 98, i8* %199, align 1
  store i32 1, i32* %23, align 4
  %200 = load i8*, i8** %18, align 8
  %201 = call i32 @strtol(i8* %200, i8** %19, i32 10)
  store i32 %201, i32* %24, align 4
  %202 = load i8*, i8** %19, align 8
  store i8* %202, i8** %18, align 8
  store i32 3, i32* %21, align 4
  br label %234

203:                                              ; preds = %188
  %204 = load i8*, i8** %18, align 8
  %205 = load i8, i8* %204, align 1
  %206 = call signext i8 @tolower(i8 signext %205)
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 115
  br i1 %208, label %209, label %228

209:                                              ; preds = %203
  %210 = load i8*, i8** %11, align 8
  store i8 115, i8* %210, align 1
  %211 = load i8*, i8** %18, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %18, align 8
  %213 = load i8*, i8** %18, align 8
  %214 = load i8, i8* %213, align 1
  %215 = call signext i8 @tolower(i8 signext %214)
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 118
  br i1 %217, label %218, label %223

218:                                              ; preds = %209
  %219 = load i8*, i8** %18, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %18, align 8
  store i32 2, i32* %20, align 4
  %221 = load i32*, i32** %13, align 8
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %22, align 4
  br label %227

223:                                              ; preds = %209
  store i32 1, i32* %20, align 4
  %224 = load i8*, i8** %18, align 8
  %225 = call i32 @strtol(i8* %224, i8** %19, i32 0)
  store i32 %225, i32* %22, align 4
  %226 = load i8*, i8** %19, align 8
  store i8* %226, i8** %18, align 8
  br label %227

227:                                              ; preds = %223, %218
  store i32 3, i32* %21, align 4
  br label %233

228:                                              ; preds = %203
  %229 = load i32, i32* @stderr, align 4
  %230 = load i8*, i8** %18, align 8
  %231 = load i8, i8* %230, align 1
  %232 = call i32 (i32, i8*, i8, ...) @fprintf(i32 %229, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8 signext %231)
  store i32 1, i32* %25, align 4
  store i32 3, i32* %21, align 4
  br label %233

233:                                              ; preds = %228, %227
  br label %234

234:                                              ; preds = %233, %194
  br label %235

235:                                              ; preds = %234, %179
  br label %236

236:                                              ; preds = %235, %168
  br label %237

237:                                              ; preds = %236, %158
  br label %238

238:                                              ; preds = %237, %150
  br label %239

239:                                              ; preds = %238, %144
  br label %240

240:                                              ; preds = %239, %84
  br label %241

241:                                              ; preds = %240, %52
  br label %242

242:                                              ; preds = %241, %46
  br label %299

243:                                              ; preds = %39
  %244 = load i8*, i8** %18, align 8
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 58
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load i8*, i8** %18, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %18, align 8
  store i32 1, i32* %23, align 4
  store i32 2, i32* %21, align 4
  br label %252

251:                                              ; preds = %243
  store i32 3, i32* %21, align 4
  br label %252

252:                                              ; preds = %251, %248
  br label %299

253:                                              ; preds = %39
  %254 = load i8*, i8** %18, align 8
  %255 = load i8, i8* %254, align 1
  %256 = call i32 @isdigit(i8 signext %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = load i8*, i8** %11, align 8
  store i8 98, i8* %259, align 1
  store i32 1, i32* %23, align 4
  %260 = load i8*, i8** %18, align 8
  %261 = call i32 @strtol(i8* %260, i8** %19, i32 10)
  store i32 %261, i32* %24, align 4
  %262 = load i8*, i8** %19, align 8
  store i8* %262, i8** %18, align 8
  store i32 3, i32* %21, align 4
  br label %297

263:                                              ; preds = %253
  %264 = load i8*, i8** %18, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 105
  br i1 %267, label %268, label %275

268:                                              ; preds = %263
  %269 = load i8*, i8** %18, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %18, align 8
  %271 = load i8*, i8** %11, align 8
  store i8 105, i8* %271, align 1
  store i32 8, i32* %23, align 4
  %272 = load i8*, i8** %18, align 8
  %273 = call i32 @strtol(i8* %272, i8** %19, i32 10)
  store i32 %273, i32* %24, align 4
  %274 = load i8*, i8** %19, align 8
  store i8* %274, i8** %18, align 8
  store i32 3, i32* %21, align 4
  br label %296

275:                                              ; preds = %263
  %276 = load i8*, i8** %18, align 8
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 98
  br i1 %279, label %280, label %287

280:                                              ; preds = %275
  %281 = load i8*, i8** %18, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %18, align 8
  %283 = load i8*, i8** %11, align 8
  store i8 98, i8* %283, align 1
  store i32 1, i32* %23, align 4
  %284 = load i8*, i8** %18, align 8
  %285 = call i32 @strtol(i8* %284, i8** %19, i32 10)
  store i32 %285, i32* %24, align 4
  %286 = load i8*, i8** %19, align 8
  store i8* %286, i8** %18, align 8
  store i32 3, i32* %21, align 4
  br label %295

287:                                              ; preds = %275
  %288 = load i32, i32* @stderr, align 4
  %289 = load i8*, i8** %18, align 8
  %290 = load i8, i8* %289, align 1
  %291 = load i8*, i8** %18, align 8
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = call i32 (i32, i8*, i8, ...) @fprintf(i32 %288, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8 signext %290, i32 %293)
  store i32 1, i32* %25, align 4
  store i32 3, i32* %21, align 4
  br label %295

295:                                              ; preds = %287, %280
  br label %296

296:                                              ; preds = %295, %268
  br label %297

297:                                              ; preds = %296, %258
  br label %299

298:                                              ; preds = %39
  br label %299

299:                                              ; preds = %39, %298, %297, %252, %242
  br label %36

300:                                              ; preds = %36
  %301 = load i32, i32* %25, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  %304 = load i32*, i32** %16, align 8
  store i32 1, i32* %304, align 4
  store i32 0, i32* %9, align 4
  br label %318

305:                                              ; preds = %300
  %306 = load i32*, i32** %16, align 8
  store i32 0, i32* %306, align 4
  %307 = load i8*, i8** %18, align 8
  %308 = load i8**, i8*** %10, align 8
  store i8* %307, i8** %308, align 8
  %309 = load i32, i32* %24, align 4
  %310 = load i32, i32* %23, align 4
  %311 = mul nsw i32 %309, %310
  %312 = load i32*, i32** %12, align 8
  store i32 %311, i32* %312, align 4
  %313 = load i32, i32* %22, align 4
  %314 = load i32*, i32** %13, align 8
  store i32 %313, i32* %314, align 4
  %315 = load i32, i32* %26, align 4
  %316 = load i32*, i32** %17, align 8
  store i32 %315, i32* %316, align 4
  %317 = load i32, i32* %20, align 4
  store i32 %317, i32* %9, align 4
  br label %318

318:                                              ; preds = %305, %303
  %319 = load i32, i32* %9, align 4
  ret i32 %319
}

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8 signext, ...) #1

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
