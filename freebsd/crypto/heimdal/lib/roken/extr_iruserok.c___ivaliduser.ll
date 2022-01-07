; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_iruserok.c___ivaliduser.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_iruserok.c___ivaliduser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@MaxHostNameLen = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i8*)* @__ivaliduser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ivaliduser(i32* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.hostent*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i32, i32* @MaxHostNameLen, align 4
  %21 = add nsw i32 %20, 128
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i32, i32* @MaxHostNameLen, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %28 = bitcast i32* %7 to i8*
  %29 = load i32, i32* @AF_INET, align 4
  %30 = call %struct.hostent* @gethostbyaddr(i8* %28, i32 4, i32 %29)
  store %struct.hostent* %30, %struct.hostent** %16, align 8
  %31 = icmp eq %struct.hostent* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %303

33:                                               ; preds = %4
  %34 = load %struct.hostent*, %struct.hostent** %16, align 8
  %35 = getelementptr inbounds %struct.hostent, %struct.hostent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = trunc i64 %26 to i32
  %38 = call i32 @strlcpy(i8* %27, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %301, %71, %60, %33
  %40 = trunc i64 %22 to i32
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @fgets(i8* %24, i32 %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %302

44:                                               ; preds = %39
  store i8* %24, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32* @strchr(i8* %45, i8 signext 10)
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %59, %48
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @getc(i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = icmp ne i32 %51, 10
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @EOF, align 4
  %56 = icmp ne i32 %54, %55
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  br label %49

60:                                               ; preds = %57
  br label %39

61:                                               ; preds = %44
  %62 = load i8*, i8** %11, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %11, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 35
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %61
  br label %39

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %105, %72
  %74 = load i8*, i8** %11, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 10
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i8*, i8** %11, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 32
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load i8*, i8** %11, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 9
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i8*, i8** %11, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br label %93

93:                                               ; preds = %88, %83, %78, %73
  %94 = phi i1 [ false, %83 ], [ false, %78 ], [ false, %73 ], [ %92, %88 ]
  br i1 %94, label %95, label %108

95:                                               ; preds = %93
  %96 = load i8*, i8** %11, align 8
  %97 = load i8, i8* %96, align 1
  %98 = call i64 @isupper(i8 zeroext %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i8*, i8** %11, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call signext i8 @tolower(i8 zeroext %102)
  %104 = load i8*, i8** %11, align 8
  store i8 %103, i8* %104, align 1
  br label %105

105:                                              ; preds = %100, %95
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %11, align 8
  br label %73

108:                                              ; preds = %93
  %109 = load i8*, i8** %11, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 32
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load i8*, i8** %11, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 9
  br i1 %117, label %118, label %164

118:                                              ; preds = %113, %108
  %119 = load i8*, i8** %11, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %11, align 8
  store i8 0, i8* %119, align 1
  br label %121

121:                                              ; preds = %133, %118
  %122 = load i8*, i8** %11, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 32
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load i8*, i8** %11, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 9
  br label %131

131:                                              ; preds = %126, %121
  %132 = phi i1 [ true, %121 ], [ %130, %126 ]
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = load i8*, i8** %11, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %11, align 8
  br label %121

136:                                              ; preds = %131
  %137 = load i8*, i8** %11, align 8
  store i8* %137, i8** %10, align 8
  br label %138

138:                                              ; preds = %160, %136
  %139 = load i8*, i8** %11, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 10
  br i1 %142, label %143, label %158

143:                                              ; preds = %138
  %144 = load i8*, i8** %11, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 32
  br i1 %147, label %148, label %158

148:                                              ; preds = %143
  %149 = load i8*, i8** %11, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 9
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i8*, i8** %11, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  br label %158

158:                                              ; preds = %153, %148, %143, %138
  %159 = phi i1 [ false, %148 ], [ false, %143 ], [ false, %138 ], [ %157, %153 ]
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = load i8*, i8** %11, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %11, align 8
  br label %138

163:                                              ; preds = %158
  br label %166

164:                                              ; preds = %113
  %165 = load i8*, i8** %11, align 8
  store i8* %165, i8** %10, align 8
  br label %166

166:                                              ; preds = %164, %163
  %167 = load i8*, i8** %11, align 8
  store i8 0, i8* %167, align 1
  %168 = getelementptr inbounds i8, i8* %24, i64 0
  %169 = load i8, i8* %168, align 16
  %170 = sext i8 %169 to i32
  switch i32 %170, label %208 [
    i32 43, label %171
    i32 45, label %189
  ]

171:                                              ; preds = %166
  %172 = getelementptr inbounds i8, i8* %24, i64 1
  %173 = load i8, i8* %172, align 1
  %174 = icmp ne i8 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %171
  store i32 1, i32* %18, align 4
  br label %211

176:                                              ; preds = %171
  %177 = getelementptr inbounds i8, i8* %24, i64 1
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 64
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = getelementptr inbounds i8, i8* %24, i64 2
  %183 = call i32 @innetgr(i8* %182, i8* %27, i8* null, i8* null)
  store i32 %183, i32* %18, align 4
  br label %188

184:                                              ; preds = %176
  %185 = load i32, i32* %7, align 4
  %186 = getelementptr inbounds i8, i8* %24, i64 1
  %187 = call i32 @__icheckhost(i32 %185, i8* %186)
  store i32 %187, i32* %18, align 4
  br label %188

188:                                              ; preds = %184, %181
  br label %211

189:                                              ; preds = %166
  %190 = getelementptr inbounds i8, i8* %24, i64 1
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 64
  br i1 %193, label %194, label %200

194:                                              ; preds = %189
  %195 = getelementptr inbounds i8, i8* %24, i64 2
  %196 = call i32 @innetgr(i8* %195, i8* %27, i8* null, i8* null)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %303

199:                                              ; preds = %194
  br label %207

200:                                              ; preds = %189
  %201 = load i32, i32* %7, align 4
  %202 = getelementptr inbounds i8, i8* %24, i64 1
  %203 = call i32 @__icheckhost(i32 %201, i8* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %303

206:                                              ; preds = %200
  br label %207

207:                                              ; preds = %206, %199
  br label %211

208:                                              ; preds = %166
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @__icheckhost(i32 %209, i8* %24)
  store i32 %210, i32* %18, align 4
  br label %211

211:                                              ; preds = %208, %207, %188, %175
  %212 = load i8*, i8** %10, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  switch i32 %214, label %274 [
    i32 43, label %215
    i32 45, label %241
  ]

215:                                              ; preds = %211
  %216 = load i8*, i8** %10, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 1
  %218 = load i8, i8* %217, align 1
  %219 = icmp ne i8 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %215
  store i32 1, i32* %17, align 4
  br label %294

221:                                              ; preds = %215
  %222 = load i8*, i8** %10, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 64
  br i1 %226, label %227, label %232

227:                                              ; preds = %221
  %228 = load i8*, i8** %10, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 2
  %230 = load i8*, i8** %9, align 8
  %231 = call i32 @innetgr(i8* %229, i8* null, i8* %230, i8* null)
  store i32 %231, i32* %17, align 4
  br label %240

232:                                              ; preds = %221
  %233 = load i8*, i8** %9, align 8
  %234 = load i8*, i8** %10, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 1
  %236 = call i32 @strcmp(i8* %233, i8* %235)
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  store i32 %239, i32* %17, align 4
  br label %240

240:                                              ; preds = %232, %227
  br label %294

241:                                              ; preds = %211
  %242 = load i32, i32* %18, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %273

244:                                              ; preds = %241
  %245 = load i8*, i8** %10, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  %247 = load i8, i8* %246, align 1
  %248 = icmp ne i8 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %244
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %303

250:                                              ; preds = %244
  %251 = load i8*, i8** %10, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 1
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 64
  br i1 %255, label %256, label %264

256:                                              ; preds = %250
  %257 = load i8*, i8** %10, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 2
  %259 = load i8*, i8** %9, align 8
  %260 = call i32 @innetgr(i8* %258, i8* null, i8* %259, i8* null)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %256
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %303

263:                                              ; preds = %256
  br label %272

264:                                              ; preds = %250
  %265 = load i8*, i8** %9, align 8
  %266 = load i8*, i8** %10, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 1
  %268 = call i32 @strcmp(i8* %265, i8* %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %264
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %303

271:                                              ; preds = %264
  br label %272

272:                                              ; preds = %271, %263
  br label %273

273:                                              ; preds = %272, %241
  br label %294

274:                                              ; preds = %211
  %275 = load i32, i32* %18, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %293

277:                                              ; preds = %274
  %278 = load i8*, i8** %9, align 8
  %279 = load i8*, i8** %10, align 8
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %277
  %284 = load i8*, i8** %10, align 8
  br label %287

285:                                              ; preds = %277
  %286 = load i8*, i8** %8, align 8
  br label %287

287:                                              ; preds = %285, %283
  %288 = phi i8* [ %284, %283 ], [ %286, %285 ]
  %289 = call i32 @strcmp(i8* %278, i8* %288)
  %290 = icmp ne i32 %289, 0
  %291 = xor i1 %290, true
  %292 = zext i1 %291 to i32
  store i32 %292, i32* %17, align 4
  br label %293

293:                                              ; preds = %287, %274
  br label %294

294:                                              ; preds = %293, %273, %240, %220
  %295 = load i32, i32* %18, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %294
  %298 = load i32, i32* %17, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %303

301:                                              ; preds = %297, %294
  br label %39

302:                                              ; preds = %39
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %303

303:                                              ; preds = %302, %300, %270, %262, %249, %205, %198, %32
  %304 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %304)
  %305 = load i32, i32* %5, align 4
  ret i32 %305
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i32 @getc(i32*) #2

declare dso_local i64 @isupper(i8 zeroext) #2

declare dso_local signext i8 @tolower(i8 zeroext) #2

declare dso_local i32 @innetgr(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @__icheckhost(i32, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
