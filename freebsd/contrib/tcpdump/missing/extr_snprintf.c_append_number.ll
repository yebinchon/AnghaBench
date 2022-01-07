; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/missing/extr_snprintf.c_append_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/missing/extr_snprintf.c_append_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i8*, i64 (%struct.state*, i8)* }

@zero_flag = common dso_local global i32 0, align 4
@alternate_flag = common dso_local global i32 0, align 4
@space_flag = common dso_local global i32 0, align 4
@plus_flag = common dso_local global i32 0, align 4
@minus_flag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.state*, i64, i32, i8*, i32, i32, i32, i32)* @append_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_number(%struct.state* %0, i64 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.state*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  store %struct.state* %0, %struct.state** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %8
  %25 = load i32, i32* @zero_flag, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %16, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %16, align 4
  br label %30

29:                                               ; preds = %8
  store i32 1, i32* %15, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* %15, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i64, i64* %11, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %351

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %60, %37
  %39 = load %struct.state*, %struct.state** %10, align 8
  %40 = getelementptr inbounds %struct.state, %struct.state* %39, i32 0, i32 1
  %41 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %40, align 8
  %42 = load %struct.state*, %struct.state** %10, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = urem i64 %44, %46
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = call i64 %41(%struct.state* %42, i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  br label %351

53:                                               ; preds = %38
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %12, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %11, align 8
  %59 = udiv i64 %58, %57
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %53
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %38, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %15, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %79, %63
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %15, align 4
  %70 = icmp sgt i32 %68, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load %struct.state*, %struct.state** %10, align 8
  %73 = getelementptr inbounds %struct.state, %struct.state* %72, i32 0, i32 1
  %74 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %73, align 8
  %75 = load %struct.state*, %struct.state** %10, align 8
  %76 = call i64 %74(%struct.state* %75, i8 signext 48)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 1, i32* %9, align 4
  br label %351

79:                                               ; preds = %71
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %18, align 4
  br label %67

82:                                               ; preds = %67
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* @alternate_flag, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %88, 16
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %91, 8
  br i1 %92, label %93, label %98

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %12, align 4
  %95 = udiv i32 %94, 8
  %96 = load i32, i32* %18, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %18, align 4
  br label %98

98:                                               ; preds = %93, %90, %82
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* @zero_flag, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %139

103:                                              ; preds = %98
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %14, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @space_flag, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @plus_flag, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114, %109, %103
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %119, %114
  br label %123

123:                                              ; preds = %135, %122
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %14, align 4
  %126 = icmp sgt i32 %124, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %123
  %128 = load %struct.state*, %struct.state** %10, align 8
  %129 = getelementptr inbounds %struct.state, %struct.state* %128, i32 0, i32 1
  %130 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %129, align 8
  %131 = load %struct.state*, %struct.state** %10, align 8
  %132 = call i64 %130(%struct.state* %131, i8 signext 48)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store i32 1, i32* %9, align 4
  br label %351

135:                                              ; preds = %127
  %136 = load i32, i32* %18, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %18, align 4
  br label %123

138:                                              ; preds = %123
  br label %139

139:                                              ; preds = %138, %98
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* @alternate_flag, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %177

144:                                              ; preds = %139
  %145 = load i32, i32* %12, align 4
  %146 = icmp eq i32 %145, 16
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %12, align 4
  %149 = icmp eq i32 %148, 8
  br i1 %149, label %150, label %177

150:                                              ; preds = %147, %144
  %151 = load i32, i32* %12, align 4
  %152 = icmp eq i32 %151, 16
  br i1 %152, label %153, label %168

153:                                              ; preds = %150
  %154 = load %struct.state*, %struct.state** %10, align 8
  %155 = getelementptr inbounds %struct.state, %struct.state* %154, i32 0, i32 1
  %156 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %155, align 8
  %157 = load %struct.state*, %struct.state** %10, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 10
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = add nsw i32 %161, 23
  %163 = trunc i32 %162 to i8
  %164 = call i64 %156(%struct.state* %157, i8 signext %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %153
  store i32 1, i32* %9, align 4
  br label %351

167:                                              ; preds = %153
  br label %168

168:                                              ; preds = %167, %150
  %169 = load %struct.state*, %struct.state** %10, align 8
  %170 = getelementptr inbounds %struct.state, %struct.state* %169, i32 0, i32 1
  %171 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %170, align 8
  %172 = load %struct.state*, %struct.state** %10, align 8
  %173 = call i64 %171(%struct.state* %172, i8 signext 48)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  store i32 1, i32* %9, align 4
  br label %351

176:                                              ; preds = %168
  br label %177

177:                                              ; preds = %176, %147, %139
  %178 = load i32, i32* %17, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %177
  %181 = load %struct.state*, %struct.state** %10, align 8
  %182 = getelementptr inbounds %struct.state, %struct.state* %181, i32 0, i32 1
  %183 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %182, align 8
  %184 = load %struct.state*, %struct.state** %10, align 8
  %185 = call i64 %183(%struct.state* %184, i8 signext 45)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  store i32 1, i32* %9, align 4
  br label %351

188:                                              ; preds = %180
  %189 = load i32, i32* %18, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %18, align 4
  br label %225

191:                                              ; preds = %177
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* @plus_flag, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %191
  %197 = load %struct.state*, %struct.state** %10, align 8
  %198 = getelementptr inbounds %struct.state, %struct.state* %197, i32 0, i32 1
  %199 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %198, align 8
  %200 = load %struct.state*, %struct.state** %10, align 8
  %201 = call i64 %199(%struct.state* %200, i8 signext 43)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  store i32 1, i32* %9, align 4
  br label %351

204:                                              ; preds = %196
  %205 = load i32, i32* %18, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %18, align 4
  br label %224

207:                                              ; preds = %191
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* @space_flag, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %207
  %213 = load %struct.state*, %struct.state** %10, align 8
  %214 = getelementptr inbounds %struct.state, %struct.state* %213, i32 0, i32 1
  %215 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %214, align 8
  %216 = load %struct.state*, %struct.state** %10, align 8
  %217 = call i64 %215(%struct.state* %216, i8 signext 32)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %212
  store i32 1, i32* %9, align 4
  br label %351

220:                                              ; preds = %212
  %221 = load i32, i32* %18, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %18, align 4
  br label %223

223:                                              ; preds = %220, %207
  br label %224

224:                                              ; preds = %223, %204
  br label %225

225:                                              ; preds = %224, %188
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* @minus_flag, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %278

230:                                              ; preds = %225
  store i32 0, i32* %19, align 4
  br label %231

231:                                              ; preds = %274, %230
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %18, align 4
  %234 = sdiv i32 %233, 2
  %235 = icmp slt i32 %232, %234
  br i1 %235, label %236, label %277

236:                                              ; preds = %231
  %237 = load %struct.state*, %struct.state** %10, align 8
  %238 = getelementptr inbounds %struct.state, %struct.state* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* %19, align 4
  %241 = sub nsw i32 0, %240
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %239, i64 %243
  %245 = load i8, i8* %244, align 1
  store i8 %245, i8* %20, align 1
  %246 = load %struct.state*, %struct.state** %10, align 8
  %247 = getelementptr inbounds %struct.state, %struct.state* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = load i32, i32* %18, align 4
  %250 = sub nsw i32 0, %249
  %251 = load i32, i32* %19, align 4
  %252 = add nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %248, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = load %struct.state*, %struct.state** %10, align 8
  %257 = getelementptr inbounds %struct.state, %struct.state* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = load i32, i32* %19, align 4
  %260 = sub nsw i32 0, %259
  %261 = sub nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %258, i64 %262
  store i8 %255, i8* %263, align 1
  %264 = load i8, i8* %20, align 1
  %265 = load %struct.state*, %struct.state** %10, align 8
  %266 = getelementptr inbounds %struct.state, %struct.state* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = load i32, i32* %18, align 4
  %269 = sub nsw i32 0, %268
  %270 = load i32, i32* %19, align 4
  %271 = add nsw i32 %269, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %267, i64 %272
  store i8 %264, i8* %273, align 1
  br label %274

274:                                              ; preds = %236
  %275 = load i32, i32* %19, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %19, align 4
  br label %231

277:                                              ; preds = %231
  br label %278

278:                                              ; preds = %277, %225
  %279 = load i32, i32* %18, align 4
  %280 = load i32, i32* %14, align 4
  %281 = sub nsw i32 %280, %279
  store i32 %281, i32* %14, align 4
  br label %282

282:                                              ; preds = %294, %278
  %283 = load i32, i32* %14, align 4
  %284 = add nsw i32 %283, -1
  store i32 %284, i32* %14, align 4
  %285 = icmp sgt i32 %283, 0
  br i1 %285, label %286, label %297

286:                                              ; preds = %282
  %287 = load %struct.state*, %struct.state** %10, align 8
  %288 = getelementptr inbounds %struct.state, %struct.state* %287, i32 0, i32 1
  %289 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %288, align 8
  %290 = load %struct.state*, %struct.state** %10, align 8
  %291 = call i64 %289(%struct.state* %290, i8 signext 32)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %286
  store i32 1, i32* %9, align 4
  br label %351

294:                                              ; preds = %286
  %295 = load i32, i32* %18, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %18, align 4
  br label %282

297:                                              ; preds = %282
  %298 = load i32, i32* %16, align 4
  %299 = load i32, i32* @minus_flag, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %350, label %302

302:                                              ; preds = %297
  store i32 0, i32* %19, align 4
  br label %303

303:                                              ; preds = %346, %302
  %304 = load i32, i32* %19, align 4
  %305 = load i32, i32* %18, align 4
  %306 = sdiv i32 %305, 2
  %307 = icmp slt i32 %304, %306
  br i1 %307, label %308, label %349

308:                                              ; preds = %303
  %309 = load %struct.state*, %struct.state** %10, align 8
  %310 = getelementptr inbounds %struct.state, %struct.state* %309, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  %312 = load i32, i32* %19, align 4
  %313 = sub nsw i32 0, %312
  %314 = sub nsw i32 %313, 1
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %311, i64 %315
  %317 = load i8, i8* %316, align 1
  store i8 %317, i8* %21, align 1
  %318 = load %struct.state*, %struct.state** %10, align 8
  %319 = getelementptr inbounds %struct.state, %struct.state* %318, i32 0, i32 0
  %320 = load i8*, i8** %319, align 8
  %321 = load i32, i32* %18, align 4
  %322 = sub nsw i32 0, %321
  %323 = load i32, i32* %19, align 4
  %324 = add nsw i32 %322, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %320, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = load %struct.state*, %struct.state** %10, align 8
  %329 = getelementptr inbounds %struct.state, %struct.state* %328, i32 0, i32 0
  %330 = load i8*, i8** %329, align 8
  %331 = load i32, i32* %19, align 4
  %332 = sub nsw i32 0, %331
  %333 = sub nsw i32 %332, 1
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %330, i64 %334
  store i8 %327, i8* %335, align 1
  %336 = load i8, i8* %21, align 1
  %337 = load %struct.state*, %struct.state** %10, align 8
  %338 = getelementptr inbounds %struct.state, %struct.state* %337, i32 0, i32 0
  %339 = load i8*, i8** %338, align 8
  %340 = load i32, i32* %18, align 4
  %341 = sub nsw i32 0, %340
  %342 = load i32, i32* %19, align 4
  %343 = add nsw i32 %341, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %339, i64 %344
  store i8 %336, i8* %345, align 1
  br label %346

346:                                              ; preds = %308
  %347 = load i32, i32* %19, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %19, align 4
  br label %303

349:                                              ; preds = %303
  br label %350

350:                                              ; preds = %349, %297
  store i32 0, i32* %9, align 4
  br label %351

351:                                              ; preds = %350, %293, %219, %203, %187, %175, %166, %134, %78, %52, %36
  %352 = load i32, i32* %9, align 4
  ret i32 %352
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
