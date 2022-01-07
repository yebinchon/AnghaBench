; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_fetch.c_fetchParseURL.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_fetch.c_fetchParseURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url = type { i32, i8*, i8*, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c":/\00", align 1
@URL_SCHEMELEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"/@\00", align 1
@URL_USERLEN = common dso_local global i32 0, align 4
@URL_PWDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c":0123456789ABCDEFabcdef\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"-.0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz\00", align 1
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@URL_BAD_PORT = common dso_local global i32 0, align 4
@IPPORT_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SCHEME_HTTP = common dso_local global i32 0, align 4
@SCHEME_HTTPS = common dso_local global i32 0, align 4
@__const.fetchParseURL.hexnums = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@.str.5 = private unnamed_addr constant [91 x i8] c"scheme:   \22%s\22\0Auser:     \22%s\22\0Apassword: \22%s\22\0Ahost:     \22%s\22\0Aport:     \22%d\22\0Adocument: \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.url* @fetchParseURL(i8* %0) #0 {
  %2 = alloca %struct.url*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.url*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [17 x i8], align 16
  store i8* %0, i8** %3, align 8
  %11 = call %struct.url* @calloc(i32 1, i32 48)
  store %struct.url* %11, %struct.url** %7, align 8
  %12 = icmp eq %struct.url* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (...) @fetch_syserr()
  store %struct.url* null, %struct.url** %2, align 8
  br label %390

15:                                               ; preds = %1
  %16 = load %struct.url*, %struct.url** %7, align 8
  %17 = getelementptr inbounds %struct.url, %struct.url* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @strstr(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %68

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = load i32, i32* @URL_SCHEMELEN, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp sgt i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %387

31:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ult i8* %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i8* @tolower(i8 zeroext %44)
  %46 = ptrtoint i8* %45 to i8
  %47 = load %struct.url*, %struct.url** %7, align 8
  %48 = getelementptr inbounds %struct.url, %struct.url* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %46, i8* %52, align 1
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %32

56:                                               ; preds = %32
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  store i8* %58, i8** %3, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 47
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  store i8* %66, i8** %5, align 8
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %64, %56
  br label %70

68:                                               ; preds = %15
  %69 = load i8*, i8** %3, align 8
  store i8* %69, i8** %5, align 8
  br label %70

70:                                               ; preds = %68, %67
  %71 = load i8*, i8** %3, align 8
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %70
  %75 = load i8*, i8** %3, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 47
  br i1 %78, label %100, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %3, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 46
  br i1 %83, label %100, label %84

84:                                               ; preds = %79
  %85 = load %struct.url*, %struct.url** %7, align 8
  %86 = getelementptr inbounds %struct.url, %struct.url* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load i8*, i8** %3, align 8
  %94 = call i32* @strchr(i8* %93, i8 signext 47)
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i8*, i8** %3, align 8
  %98 = call i32* @strchr(i8* %97, i8 signext 58)
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %79, %74, %70
  br label %282

101:                                              ; preds = %96, %92, %84
  %102 = load i8*, i8** %3, align 8
  %103 = call i8* @strpbrk(i8* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %133

106:                                              ; preds = %101
  %107 = load i8*, i8** %5, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 64
  br i1 %110, label %111, label %133

111:                                              ; preds = %106
  %112 = load %struct.url*, %struct.url** %7, align 8
  %113 = getelementptr inbounds %struct.url, %struct.url* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %3, align 8
  %116 = load i32, i32* @URL_USERLEN, align 4
  %117 = call i8* @fetch_pctdecode(i32 %114, i8* %115, i32 %116)
  store i8* %117, i8** %6, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 58
  br i1 %121, label %122, label %130

122:                                              ; preds = %111
  %123 = load %struct.url*, %struct.url** %7, align 8
  %124 = getelementptr inbounds %struct.url, %struct.url* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i32, i32* @URL_PWDLEN, align 4
  %129 = call i8* @fetch_pctdecode(i32 %125, i8* %127, i32 %128)
  store i8* %129, i8** %6, align 8
  br label %130

130:                                              ; preds = %122, %111
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %5, align 8
  br label %135

133:                                              ; preds = %106, %101
  %134 = load i8*, i8** %3, align 8
  store i8* %134, i8** %5, align 8
  br label %135

135:                                              ; preds = %133, %130
  %136 = load i8*, i8** %5, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 91
  br i1 %139, label %140, label %155

140:                                              ; preds = %135
  %141 = load i8*, i8** %5, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8*, i8** %5, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = call i32 @strspn(i8* %144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %142, i64 %146
  store i8* %147, i8** %6, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %6, align 8
  %150 = load i8, i8* %148, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 93
  br i1 %152, label %153, label %154

153:                                              ; preds = %140
  br label %387

154:                                              ; preds = %140
  br label %161

155:                                              ; preds = %135
  %156 = load i8*, i8** %5, align 8
  %157 = load i8*, i8** %5, align 8
  %158 = call i32 @strspn(i8* %157, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  store i8* %160, i8** %6, align 8
  br label %161

161:                                              ; preds = %155, %154
  %162 = load i8*, i8** %6, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %161
  %167 = load i8*, i8** %6, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 47
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load i8*, i8** %6, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %174, 58
  br i1 %175, label %185, label %176

176:                                              ; preds = %171, %166, %161
  %177 = load i8*, i8** %6, align 8
  %178 = load i8*, i8** %5, align 8
  %179 = ptrtoint i8* %177 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %183 = sext i32 %182 to i64
  %184 = icmp sgt i64 %181, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %176, %171
  br label %387

186:                                              ; preds = %176
  store i32 0, i32* %8, align 4
  br label %187

187:                                              ; preds = %208, %186
  %188 = load i8*, i8** %5, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i8*, i8** %6, align 8
  %193 = icmp ult i8* %191, %192
  br i1 %193, label %194, label %211

194:                                              ; preds = %187
  %195 = load i8*, i8** %5, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = call i8* @tolower(i8 zeroext %199)
  %201 = ptrtoint i8* %200 to i8
  %202 = load %struct.url*, %struct.url** %7, align 8
  %203 = getelementptr inbounds %struct.url, %struct.url* %202, i32 0, i32 2
  %204 = load i8*, i8** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  store i8 %201, i8* %207, align 1
  br label %208

208:                                              ; preds = %194
  %209 = load i32, i32* %8, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %8, align 4
  br label %187

211:                                              ; preds = %187
  %212 = load %struct.url*, %struct.url** %7, align 8
  %213 = getelementptr inbounds %struct.url, %struct.url* %212, i32 0, i32 2
  %214 = load i8*, i8** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  store i8 0, i8* %217, align 1
  %218 = load i8*, i8** %6, align 8
  store i8* %218, i8** %5, align 8
  %219 = load i8*, i8** %5, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 58
  br i1 %222, label %223, label %281

223:                                              ; preds = %211
  store i32 0, i32* %9, align 4
  %224 = load i8*, i8** %5, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %5, align 8
  store i8* %225, i8** %6, align 8
  br label %226

226:                                              ; preds = %265, %223
  %227 = load i8*, i8** %6, align 8
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load i8*, i8** %6, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp ne i32 %234, 47
  br label %236

236:                                              ; preds = %231, %226
  %237 = phi i1 [ false, %226 ], [ %235, %231 ]
  br i1 %237, label %238, label %268

238:                                              ; preds = %236
  %239 = load i8*, i8** %6, align 8
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp sge i32 %241, 48
  br i1 %242, label %243, label %261

243:                                              ; preds = %238
  %244 = load i8*, i8** %6, align 8
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp sle i32 %246, 57
  br i1 %247, label %248, label %261

248:                                              ; preds = %243
  %249 = load i32, i32* %9, align 4
  %250 = load i32, i32* @INT_MAX, align 4
  %251 = sdiv i32 %250, 10
  %252 = icmp slt i32 %249, %251
  br i1 %252, label %253, label %261

253:                                              ; preds = %248
  %254 = load i32, i32* %9, align 4
  %255 = mul nsw i32 %254, 10
  %256 = load i8*, i8** %6, align 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = sub nsw i32 %258, 48
  %260 = add nsw i32 %255, %259
  store i32 %260, i32* %9, align 4
  br label %264

261:                                              ; preds = %248, %243, %238
  %262 = load i32, i32* @URL_BAD_PORT, align 4
  %263 = call i32 @url_seterr(i32 %262)
  br label %387

264:                                              ; preds = %253
  br label %265

265:                                              ; preds = %264
  %266 = load i8*, i8** %6, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %6, align 8
  br label %226

268:                                              ; preds = %236
  %269 = load i32, i32* %9, align 4
  %270 = icmp slt i32 %269, 1
  br i1 %270, label %275, label %271

271:                                              ; preds = %268
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* @IPPORT_MAX, align 4
  %274 = icmp sgt i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %271, %268
  br label %387

276:                                              ; preds = %271
  %277 = load i32, i32* %9, align 4
  %278 = load %struct.url*, %struct.url** %7, align 8
  %279 = getelementptr inbounds %struct.url, %struct.url* %278, i32 0, i32 3
  store i32 %277, i32* %279, align 8
  %280 = load i8*, i8** %6, align 8
  store i8* %280, i8** %5, align 8
  br label %281

281:                                              ; preds = %276, %211
  br label %282

282:                                              ; preds = %281, %100
  %283 = load i8*, i8** %5, align 8
  %284 = load i8, i8* %283, align 1
  %285 = icmp ne i8 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %282
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %287

287:                                              ; preds = %286, %282
  %288 = load %struct.url*, %struct.url** %7, align 8
  %289 = getelementptr inbounds %struct.url, %struct.url* %288, i32 0, i32 1
  %290 = load i8*, i8** %289, align 8
  %291 = load i32, i32* @SCHEME_HTTP, align 4
  %292 = call i64 @strcmp(i8* %290, i32 %291)
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %301, label %294

294:                                              ; preds = %287
  %295 = load %struct.url*, %struct.url** %7, align 8
  %296 = getelementptr inbounds %struct.url, %struct.url* %295, i32 0, i32 1
  %297 = load i8*, i8** %296, align 8
  %298 = load i32, i32* @SCHEME_HTTPS, align 4
  %299 = call i64 @strcmp(i8* %297, i32 %298)
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %357

301:                                              ; preds = %294, %287
  %302 = bitcast [17 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %302, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.fetchParseURL.hexnums, i32 0, i32 0), i64 17, i1 false)
  %303 = load i8*, i8** %5, align 8
  %304 = call i32 @strlen(i8* %303)
  %305 = mul nsw i32 %304, 3
  %306 = add nsw i32 %305, 1
  %307 = call i8* @malloc(i32 %306)
  store i8* %307, i8** %4, align 8
  %308 = icmp eq i8* %307, null
  br i1 %308, label %309, label %311

309:                                              ; preds = %301
  %310 = call i32 (...) @fetch_syserr()
  br label %387

311:                                              ; preds = %301
  %312 = load i8*, i8** %4, align 8
  %313 = load %struct.url*, %struct.url** %7, align 8
  %314 = getelementptr inbounds %struct.url, %struct.url* %313, i32 0, i32 4
  store i8* %312, i8** %314, align 8
  br label %315

315:                                              ; preds = %354, %311
  %316 = load i8*, i8** %5, align 8
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %355

320:                                              ; preds = %315
  %321 = load i8*, i8** %5, align 8
  %322 = load i8, i8* %321, align 1
  %323 = call i32 @isspace(i8 zeroext %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %331, label %325

325:                                              ; preds = %320
  %326 = load i8*, i8** %5, align 8
  %327 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %327, i8** %5, align 8
  %328 = load i8, i8* %326, align 1
  %329 = load i8*, i8** %4, align 8
  %330 = getelementptr inbounds i8, i8* %329, i32 1
  store i8* %330, i8** %4, align 8
  store i8 %328, i8* %329, align 1
  br label %354

331:                                              ; preds = %320
  %332 = load i8*, i8** %4, align 8
  %333 = getelementptr inbounds i8, i8* %332, i32 1
  store i8* %333, i8** %4, align 8
  store i8 37, i8* %332, align 1
  %334 = load i8*, i8** %5, align 8
  %335 = load i8, i8* %334, align 1
  %336 = sext i8 %335 to i32
  %337 = lshr i32 %336, 4
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %338
  %340 = load i8, i8* %339, align 1
  %341 = load i8*, i8** %4, align 8
  %342 = getelementptr inbounds i8, i8* %341, i32 1
  store i8* %342, i8** %4, align 8
  store i8 %340, i8* %341, align 1
  %343 = load i8*, i8** %5, align 8
  %344 = load i8, i8* %343, align 1
  %345 = sext i8 %344 to i32
  %346 = and i32 %345, 15
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %347
  %349 = load i8, i8* %348, align 1
  %350 = load i8*, i8** %4, align 8
  %351 = getelementptr inbounds i8, i8* %350, i32 1
  store i8* %351, i8** %4, align 8
  store i8 %349, i8* %350, align 1
  %352 = load i8*, i8** %5, align 8
  %353 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %353, i8** %5, align 8
  br label %354

354:                                              ; preds = %331, %325
  br label %315

355:                                              ; preds = %315
  %356 = load i8*, i8** %4, align 8
  store i8 0, i8* %356, align 1
  br label %366

357:                                              ; preds = %294
  %358 = load i8*, i8** %5, align 8
  %359 = call i8* @strdup(i8* %358)
  %360 = load %struct.url*, %struct.url** %7, align 8
  %361 = getelementptr inbounds %struct.url, %struct.url* %360, i32 0, i32 4
  store i8* %359, i8** %361, align 8
  %362 = icmp eq i8* %359, null
  br i1 %362, label %363, label %365

363:                                              ; preds = %357
  %364 = call i32 (...) @fetch_syserr()
  br label %387

365:                                              ; preds = %357
  br label %366

366:                                              ; preds = %365, %355
  %367 = load %struct.url*, %struct.url** %7, align 8
  %368 = getelementptr inbounds %struct.url, %struct.url* %367, i32 0, i32 1
  %369 = load i8*, i8** %368, align 8
  %370 = load %struct.url*, %struct.url** %7, align 8
  %371 = getelementptr inbounds %struct.url, %struct.url* %370, i32 0, i32 6
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.url*, %struct.url** %7, align 8
  %374 = getelementptr inbounds %struct.url, %struct.url* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.url*, %struct.url** %7, align 8
  %377 = getelementptr inbounds %struct.url, %struct.url* %376, i32 0, i32 2
  %378 = load i8*, i8** %377, align 8
  %379 = load %struct.url*, %struct.url** %7, align 8
  %380 = getelementptr inbounds %struct.url, %struct.url* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.url*, %struct.url** %7, align 8
  %383 = getelementptr inbounds %struct.url, %struct.url* %382, i32 0, i32 4
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 @DEBUGF(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.5, i64 0, i64 0), i8* %369, i32 %372, i32 %375, i8* %378, i32 %381, i8* %384)
  %386 = load %struct.url*, %struct.url** %7, align 8
  store %struct.url* %386, %struct.url** %2, align 8
  br label %390

387:                                              ; preds = %363, %309, %275, %261, %185, %153, %30
  %388 = load %struct.url*, %struct.url** %7, align 8
  %389 = call i32 @free(%struct.url* %388)
  store %struct.url* null, %struct.url** %2, align 8
  br label %390

390:                                              ; preds = %387, %366, %13
  %391 = load %struct.url*, %struct.url** %2, align 8
  ret %struct.url* %391
}

declare dso_local %struct.url* @calloc(i32, i32) #1

declare dso_local i32 @fetch_syserr(...) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @tolower(i8 zeroext) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i8* @fetch_pctdecode(i32, i8*, i32) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @url_seterr(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @DEBUGF(i8*, i8*, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @free(%struct.url*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
