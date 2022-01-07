; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_parseconf.c_ParseConfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_parseconf.c_ParseConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32** }

@C_LINELEN = common dso_local global i32 0, align 4
@BootAny = common dso_local global i64 0, align 8
@ConfigFile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ParseConfig: can't open config file (%s)\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"ParseConfig: line %d: can't parse <%s>\00", align 1
@C_MAXFILE = common dso_local global i32 0, align 4
@BootFiles = common dso_local global i32** null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"ParseConfig: line %d: no boot file (%s)\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"ParseConfig: line %d: too many boot files (%s)\00", align 1
@Clients = common dso_local global %struct.TYPE_5__* null, align 8
@GETSTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseConfig() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* @C_LINELEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  store i32 0, i32* %12, align 4
  %18 = load i64, i64* @BootAny, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  store i32 1, i32* %13, align 4
  br label %332

21:                                               ; preds = %0
  %22 = call i32 (...) @FreeClients()
  %23 = load i32, i32* @ConfigFile, align 4
  %24 = call i32* @fopen(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %2, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = load i32, i32* @ConfigFile, align 4
  %29 = call i32 (i32, i8*, i32, ...) @syslog(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %13, align 4
  br label %332

30:                                               ; preds = %21
  %31 = load i32, i32* @SIGHUP, align 4
  %32 = call i32 @sigmask(i32 %31)
  %33 = call i32 @sigblock(i32 %32)
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %325, %314, %121, %112, %107, %49, %30
  %35 = load i32, i32* @C_LINELEN, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = call i32* @fgets(i8* %17, i32 %35, i32* %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %327

39:                                               ; preds = %34
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  %42 = load i8, i8* %17, align 16
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i8, i8* %17, align 16
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 35
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %39
  br label %34

50:                                               ; preds = %45
  %51 = call i8* @strchr(i8* %17, i8 signext 35)
  store i8* %51, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i8*, i8** %7, align 8
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %53, %50
  store i8* %17, i8** %7, align 8
  br label %56

56:                                               ; preds = %69, %55
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = call i32 @isspace(i32 %59) #4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** %7, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 44
  br label %67

67:                                               ; preds = %62, %56
  %68 = phi i1 [ true, %56 ], [ %66, %62 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  br label %56

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  store i8* %73, i8** %8, align 8
  br label %74

74:                                               ; preds = %93, %72
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load i8*, i8** %7, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 44
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = call i32 @isspace(i32 %87) #4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br label %91

91:                                               ; preds = %84, %79, %74
  %92 = phi i1 [ false, %79 ], [ false, %74 ], [ %90, %84 ]
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %7, align 8
  br label %74

96:                                               ; preds = %91
  %97 = load i8*, i8** %7, align 8
  %98 = load i8, i8* %97, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %7, align 8
  store i8 0, i8* %101, align 1
  br label %103

103:                                              ; preds = %100, %96
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = icmp eq i8* %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %34

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = call i32* @ParseAddr(i8* %109)
  store i32* %110, i32** %4, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32, i32* @LOG_ERR, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 (i32, i8*, i32, ...) @syslog(i32 %113, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %114, i8* %115)
  br label %34

117:                                              ; preds = %108
  %118 = load i32*, i32** %4, align 8
  %119 = call %struct.TYPE_5__* @NewClient(i32* %118)
  store %struct.TYPE_5__* %119, %struct.TYPE_5__** %3, align 8
  %120 = icmp eq %struct.TYPE_5__* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %34

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %136, %122
  %124 = load i8*, i8** %7, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = call i32 @isspace(i32 %126) #4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %123
  %130 = load i8*, i8** %7, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 44
  br label %134

134:                                              ; preds = %129, %123
  %135 = phi i1 [ true, %123 ], [ %133, %129 ]
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %7, align 8
  br label %123

139:                                              ; preds = %134
  %140 = load i8*, i8** %7, align 8
  store i8* %140, i8** %8, align 8
  br label %141

141:                                              ; preds = %160, %139
  %142 = load i8*, i8** %7, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %141
  %147 = load i8*, i8** %7, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 44
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i8*, i8** %7, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = call i32 @isspace(i32 %154) #4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  br label %158

158:                                              ; preds = %151, %146, %141
  %159 = phi i1 [ false, %146 ], [ false, %141 ], [ %157, %151 ]
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = load i8*, i8** %7, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %7, align 8
  br label %141

163:                                              ; preds = %158
  %164 = load i8*, i8** %7, align 8
  %165 = load i8, i8* %164, align 1
  %166 = icmp ne i8 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i8*, i8** %7, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %7, align 8
  store i8 0, i8* %168, align 1
  br label %170

170:                                              ; preds = %167, %163
  store i32 0, i32* %9, align 4
  %171 = load i8*, i8** %8, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = icmp eq i8* %171, %172
  br i1 %173, label %174, label %204

174:                                              ; preds = %170
  br label %175

175:                                              ; preds = %200, %174
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @C_MAXFILE, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load i32**, i32*** @BootFiles, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br label %186

186:                                              ; preds = %179, %175
  %187 = phi i1 [ false, %175 ], [ %185, %179 ]
  br i1 %187, label %188, label %203

188:                                              ; preds = %186
  %189 = load i32**, i32*** @BootFiles, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i32**, i32*** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32*, i32** %196, i64 %198
  store i32* %193, i32** %199, align 8
  br label %200

200:                                              ; preds = %188
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %175

203:                                              ; preds = %186
  br label %318

204:                                              ; preds = %170
  br label %205

205:                                              ; preds = %307, %204
  store i32 0, i32* %10, align 4
  br label %206

206:                                              ; preds = %255, %205
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* @C_MAXFILE, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %217, label %210

210:                                              ; preds = %206
  %211 = load i32**, i32*** @BootFiles, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32*, i32** %211, i64 %213
  %215 = load i32*, i32** %214, align 8
  %216 = icmp eq i32* %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %210, %206
  %218 = load i32, i32* @LOG_ERR, align 4
  %219 = load i32, i32* %12, align 4
  %220 = load i8*, i8** %8, align 8
  %221 = call i32 (i32, i8*, i32, ...) @syslog(i32 %218, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %219, i8* %220)
  br label %258

222:                                              ; preds = %210
  %223 = load i32**, i32*** @BootFiles, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32*, i32** %223, i64 %225
  %227 = load i32*, i32** %226, align 8
  %228 = load i8*, i8** %8, align 8
  %229 = call i64 @STREQN(i32* %227, i8* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %254

231:                                              ; preds = %222
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* @C_MAXFILE, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %248

235:                                              ; preds = %231
  %236 = load i32**, i32*** @BootFiles, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32*, i32** %236, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  %243 = load i32**, i32*** %242, align 8
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %9, align 4
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i32*, i32** %243, i64 %246
  store i32* %240, i32** %247, align 8
  br label %253

248:                                              ; preds = %231
  %249 = load i32, i32* @LOG_ERR, align 4
  %250 = load i32, i32* %12, align 4
  %251 = load i8*, i8** %8, align 8
  %252 = call i32 (i32, i8*, i32, ...) @syslog(i32 %249, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %250, i8* %251)
  br label %253

253:                                              ; preds = %248, %235
  br label %258

254:                                              ; preds = %222
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %10, align 4
  br label %206

258:                                              ; preds = %253, %217
  br label %259

259:                                              ; preds = %272, %258
  %260 = load i8*, i8** %7, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = call i32 @isspace(i32 %262) #4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %270, label %265

265:                                              ; preds = %259
  %266 = load i8*, i8** %7, align 8
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 44
  br label %270

270:                                              ; preds = %265, %259
  %271 = phi i1 [ true, %259 ], [ %269, %265 ]
  br i1 %271, label %272, label %275

272:                                              ; preds = %270
  %273 = load i8*, i8** %7, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %7, align 8
  br label %259

275:                                              ; preds = %270
  %276 = load i8*, i8** %7, align 8
  store i8* %276, i8** %8, align 8
  br label %277

277:                                              ; preds = %296, %275
  %278 = load i8*, i8** %7, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %294

282:                                              ; preds = %277
  %283 = load i8*, i8** %7, align 8
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp ne i32 %285, 44
  br i1 %286, label %287, label %294

287:                                              ; preds = %282
  %288 = load i8*, i8** %7, align 8
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = call i32 @isspace(i32 %290) #4
  %292 = icmp ne i32 %291, 0
  %293 = xor i1 %292, true
  br label %294

294:                                              ; preds = %287, %282, %277
  %295 = phi i1 [ false, %282 ], [ false, %277 ], [ %293, %287 ]
  br i1 %295, label %296, label %299

296:                                              ; preds = %294
  %297 = load i8*, i8** %7, align 8
  %298 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %298, i8** %7, align 8
  br label %277

299:                                              ; preds = %294
  %300 = load i8*, i8** %7, align 8
  %301 = load i8, i8* %300, align 1
  %302 = icmp ne i8 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %299
  %304 = load i8*, i8** %7, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** %7, align 8
  store i8 0, i8* %304, align 1
  br label %306

306:                                              ; preds = %303, %299
  br label %307

307:                                              ; preds = %306
  %308 = load i8*, i8** %8, align 8
  %309 = load i8*, i8** %7, align 8
  %310 = icmp ne i8* %308, %309
  br i1 %310, label %205, label %311

311:                                              ; preds = %307
  %312 = load i32, i32* %9, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %316 = call i32 @FreeClient(%struct.TYPE_5__* %315)
  br label %34

317:                                              ; preds = %311
  br label %318

318:                                              ; preds = %317, %203
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Clients, align 8
  %320 = icmp ne %struct.TYPE_5__* %319, null
  br i1 %320, label %321, label %325

321:                                              ; preds = %318
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Clients, align 8
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 0
  store %struct.TYPE_5__* %322, %struct.TYPE_5__** %324, align 8
  br label %325

325:                                              ; preds = %321, %318
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %326, %struct.TYPE_5__** @Clients, align 8
  br label %34

327:                                              ; preds = %34
  %328 = load i32*, i32** %2, align 8
  %329 = call i32 @fclose(i32* %328)
  %330 = load i32, i32* %11, align 4
  %331 = call i32 @sigsetmask(i32 %330)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %13, align 4
  br label %332

332:                                              ; preds = %327, %26, %20
  %333 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %333)
  %334 = load i32, i32* %1, align 4
  ret i32 %334
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FreeClients(...) #2

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @syslog(i32, i8*, i32, ...) #2

declare dso_local i32 @sigblock(i32) #2

declare dso_local i32 @sigmask(i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #3

declare dso_local i32* @ParseAddr(i8*) #2

declare dso_local %struct.TYPE_5__* @NewClient(i32*) #2

declare dso_local i64 @STREQN(i32*, i8*) #2

declare dso_local i32 @FreeClient(%struct.TYPE_5__*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @sigsetmask(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
