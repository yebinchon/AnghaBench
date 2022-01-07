; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rcmd.c___ivaliduser_sa.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rcmd.c___ivaliduser_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@NI_NAMEREQD = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ivaliduser_sa(i32* %0, %struct.sockaddr* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %21 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %22 = add nsw i32 %21, 128
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  %26 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %29 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = trunc i64 %27 to i32
  %32 = load i32, i32* @NI_NAMEREQD, align 4
  %33 = call i64 @getnameinfo(%struct.sockaddr* %29, i32 %30, i8* %28, i32 %31, i32* null, i32 0, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %36, align 16
  br label %37

37:                                               ; preds = %35, %5
  br label %38

38:                                               ; preds = %324, %70, %59, %37
  %39 = trunc i64 %23 to i32
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @fgets(i8* %25, i32 %39, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %325

43:                                               ; preds = %38
  store i8* %25, i8** %13, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = call i32* @strchr(i8* %44, i8 signext 10)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %58, %47
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @getc(i32* %49)
  store i32 %50, i32* %14, align 4
  %51 = icmp ne i32 %50, 10
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @EOF, align 4
  %55 = icmp ne i32 %53, %54
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i1 [ false, %48 ], [ %55, %52 ]
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  br label %48

59:                                               ; preds = %56
  br label %38

60:                                               ; preds = %43
  %61 = load i8*, i8** %13, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %13, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 35
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %60
  br label %38

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %108, %71
  %73 = load i8*, i8** %13, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 10
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load i8*, i8** %13, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 32
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i8*, i8** %13, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 9
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i8*, i8** %13, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %87, %82, %77, %72
  %93 = phi i1 [ false, %82 ], [ false, %77 ], [ false, %72 ], [ %91, %87 ]
  br i1 %93, label %94, label %114

94:                                               ; preds = %92
  %95 = load i8*, i8** %13, align 8
  %96 = load i8, i8* %95, align 1
  %97 = call i64 @isupper(i8 zeroext %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i8*, i8** %13, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call signext i8 @tolower(i8 zeroext %101)
  %103 = sext i8 %102 to i32
  br label %108

104:                                              ; preds = %94
  %105 = load i8*, i8** %13, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  br label %108

108:                                              ; preds = %104, %99
  %109 = phi i32 [ %103, %99 ], [ %107, %104 ]
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %13, align 8
  store i8 %110, i8* %111, align 1
  %112 = load i8*, i8** %13, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %13, align 8
  br label %72

114:                                              ; preds = %92
  %115 = load i8*, i8** %13, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 32
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load i8*, i8** %13, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 9
  br i1 %123, label %124, label %170

124:                                              ; preds = %119, %114
  %125 = load i8*, i8** %13, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %13, align 8
  store i8 0, i8* %125, align 1
  br label %127

127:                                              ; preds = %139, %124
  %128 = load i8*, i8** %13, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 32
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = load i8*, i8** %13, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 9
  br label %137

137:                                              ; preds = %132, %127
  %138 = phi i1 [ true, %127 ], [ %136, %132 ]
  br i1 %138, label %139, label %142

139:                                              ; preds = %137
  %140 = load i8*, i8** %13, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %13, align 8
  br label %127

142:                                              ; preds = %137
  %143 = load i8*, i8** %13, align 8
  store i8* %143, i8** %12, align 8
  br label %144

144:                                              ; preds = %166, %142
  %145 = load i8*, i8** %13, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 10
  br i1 %148, label %149, label %164

149:                                              ; preds = %144
  %150 = load i8*, i8** %13, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 32
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = load i8*, i8** %13, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 9
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i8*, i8** %13, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br label %164

164:                                              ; preds = %159, %154, %149, %144
  %165 = phi i1 [ false, %154 ], [ false, %149 ], [ false, %144 ], [ %163, %159 ]
  br i1 %165, label %166, label %169

166:                                              ; preds = %164
  %167 = load i8*, i8** %13, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %13, align 8
  br label %144

169:                                              ; preds = %164
  br label %172

170:                                              ; preds = %119
  %171 = load i8*, i8** %13, align 8
  store i8* %171, i8** %12, align 8
  br label %172

172:                                              ; preds = %170, %169
  %173 = load i8*, i8** %13, align 8
  store i8 0, i8* %173, align 1
  %174 = getelementptr inbounds i8, i8* %25, i64 0
  %175 = load i8, i8* %174, align 16
  %176 = sext i8 %175 to i32
  switch i32 %176, label %230 [
    i32 43, label %177
    i32 45, label %205
  ]

177:                                              ; preds = %172
  %178 = getelementptr inbounds i8, i8* %25, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = icmp ne i8 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %177
  store i32 1, i32* %19, align 4
  br label %234

182:                                              ; preds = %177
  %183 = getelementptr inbounds i8, i8* %25, i64 1
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 64
  br i1 %186, label %187, label %199

187:                                              ; preds = %182
  %188 = getelementptr inbounds i8, i8* %28, i64 0
  %189 = load i8, i8* %188, align 16
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %25, i64 2
  %194 = call i32 @innetgr(i8* %193, i8* %28, i8* null, i8* null)
  %195 = icmp ne i32 %194, 0
  br label %196

196:                                              ; preds = %192, %187
  %197 = phi i1 [ false, %187 ], [ %195, %192 ]
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %19, align 4
  br label %204

199:                                              ; preds = %182
  %200 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %201 = load i32, i32* %9, align 4
  %202 = getelementptr inbounds i8, i8* %25, i64 1
  %203 = call i32 @__icheckhost(%struct.sockaddr* %200, i32 %201, i8* %202)
  store i32 %203, i32* %19, align 4
  br label %204

204:                                              ; preds = %199, %196
  br label %234

205:                                              ; preds = %172
  %206 = getelementptr inbounds i8, i8* %25, i64 1
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 64
  br i1 %209, label %210, label %221

210:                                              ; preds = %205
  %211 = getelementptr inbounds i8, i8* %28, i64 0
  %212 = load i8, i8* %211, align 16
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %210
  %216 = getelementptr inbounds i8, i8* %25, i64 2
  %217 = call i32 @innetgr(i8* %216, i8* %28, i8* null, i8* null)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %215, %210
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %326

220:                                              ; preds = %215
  br label %229

221:                                              ; preds = %205
  %222 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %223 = load i32, i32* %9, align 4
  %224 = getelementptr inbounds i8, i8* %25, i64 1
  %225 = call i32 @__icheckhost(%struct.sockaddr* %222, i32 %223, i8* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %326

228:                                              ; preds = %221
  br label %229

229:                                              ; preds = %228, %220
  br label %234

230:                                              ; preds = %172
  %231 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @__icheckhost(%struct.sockaddr* %231, i32 %232, i8* %25)
  store i32 %233, i32* %19, align 4
  br label %234

234:                                              ; preds = %230, %229, %204, %181
  %235 = load i8*, i8** %12, align 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  switch i32 %237, label %297 [
    i32 43, label %238
    i32 45, label %264
  ]

238:                                              ; preds = %234
  %239 = load i8*, i8** %12, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  %241 = load i8, i8* %240, align 1
  %242 = icmp ne i8 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %238
  store i32 1, i32* %18, align 4
  br label %317

244:                                              ; preds = %238
  %245 = load i8*, i8** %12, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 64
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  %251 = load i8*, i8** %12, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 2
  %253 = load i8*, i8** %11, align 8
  %254 = call i32 @innetgr(i8* %252, i8* null, i8* %253, i8* null)
  store i32 %254, i32* %18, align 4
  br label %263

255:                                              ; preds = %244
  %256 = load i8*, i8** %11, align 8
  %257 = load i8*, i8** %12, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  %259 = call i32 @strcmp(i8* %256, i8* %258)
  %260 = icmp ne i32 %259, 0
  %261 = xor i1 %260, true
  %262 = zext i1 %261 to i32
  store i32 %262, i32* %18, align 4
  br label %263

263:                                              ; preds = %255, %250
  br label %317

264:                                              ; preds = %234
  %265 = load i32, i32* %19, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %296

267:                                              ; preds = %264
  %268 = load i8*, i8** %12, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 1
  %270 = load i8, i8* %269, align 1
  %271 = icmp ne i8 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %267
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %326

273:                                              ; preds = %267
  %274 = load i8*, i8** %12, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 1
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %277, 64
  br i1 %278, label %279, label %287

279:                                              ; preds = %273
  %280 = load i8*, i8** %12, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 2
  %282 = load i8*, i8** %11, align 8
  %283 = call i32 @innetgr(i8* %281, i8* null, i8* %282, i8* null)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %279
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %326

286:                                              ; preds = %279
  br label %295

287:                                              ; preds = %273
  %288 = load i8*, i8** %11, align 8
  %289 = load i8*, i8** %12, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 1
  %291 = call i32 @strcmp(i8* %288, i8* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %287
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %326

294:                                              ; preds = %287
  br label %295

295:                                              ; preds = %294, %286
  br label %296

296:                                              ; preds = %295, %264
  br label %317

297:                                              ; preds = %234
  %298 = load i32, i32* %19, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %316

300:                                              ; preds = %297
  %301 = load i8*, i8** %11, align 8
  %302 = load i8*, i8** %12, align 8
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %300
  %307 = load i8*, i8** %12, align 8
  br label %310

308:                                              ; preds = %300
  %309 = load i8*, i8** %10, align 8
  br label %310

310:                                              ; preds = %308, %306
  %311 = phi i8* [ %307, %306 ], [ %309, %308 ]
  %312 = call i32 @strcmp(i8* %301, i8* %311)
  %313 = icmp ne i32 %312, 0
  %314 = xor i1 %313, true
  %315 = zext i1 %314 to i32
  store i32 %315, i32* %18, align 4
  br label %316

316:                                              ; preds = %310, %297
  br label %317

317:                                              ; preds = %316, %296, %263, %243
  %318 = load i32, i32* %19, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %317
  %321 = load i32, i32* %18, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %326

324:                                              ; preds = %320, %317
  br label %38

325:                                              ; preds = %38
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %326

326:                                              ; preds = %325, %323, %293, %285, %272, %227, %219
  %327 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %327)
  %328 = load i32, i32* %6, align 4
  ret i32 %328
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i32 @getc(i32*) #2

declare dso_local i64 @isupper(i8 zeroext) #2

declare dso_local signext i8 @tolower(i8 zeroext) #2

declare dso_local i32 @innetgr(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @__icheckhost(%struct.sockaddr*, i32, i8*) #2

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
