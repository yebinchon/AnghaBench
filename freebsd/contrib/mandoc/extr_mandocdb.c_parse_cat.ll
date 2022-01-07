; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_cat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { i8*, i8*, %struct.mlink* }
%struct.mlink = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@warnings = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"&fopen\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Section \22%s\22 manual in %s directory\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Cannot find NAME section\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"No dash in title line, reusing \22%s\22 as one-line description\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpage*, i32)* @parse_cat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_cat(%struct.mpage* %0, i32 %1) #0 {
  %3 = alloca %struct.mpage*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlink*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mpage* %0, %struct.mpage** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.mpage*, %struct.mpage** %3, align 8
  %17 = getelementptr inbounds %struct.mpage, %struct.mpage* %16, i32 0, i32 2
  %18 = load %struct.mlink*, %struct.mlink** %17, align 8
  store %struct.mlink* %18, %struct.mlink** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.mlink*, %struct.mlink** %6, align 8
  %23 = getelementptr inbounds %struct.mlink, %struct.mlink* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @fopen(i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = call i32* @fdopen(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i32* [ %25, %21 ], [ %28, %26 ]
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @close(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i64, i64* @warnings, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.mlink*, %struct.mlink** %6, align 8
  %44 = getelementptr inbounds %struct.mlink, %struct.mlink* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, ...) @say(i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %39
  br label %319

48:                                               ; preds = %29
  store i8* null, i8** %7, align 8
  store i64 0, i64* %11, align 8
  br label %49

49:                                               ; preds = %58, %48
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @getline(i8** %7, i64* %11, i32* %50)
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %115

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %49

59:                                               ; preds = %53
  %60 = load i8*, i8** %7, align 8
  %61 = call i8* @strchr(i8* %60, i8 signext 40)
  store i8* %61, i8** %10, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %115

64:                                               ; preds = %59
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %10, align 8
  %67 = call i8* @strchr(i8* %66, i8 signext 41)
  store i8* %67, i8** %8, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %115

70:                                               ; preds = %64
  %71 = load %struct.mpage*, %struct.mpage** %3, align 8
  %72 = getelementptr inbounds %struct.mpage, %struct.mpage* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = call i8* @mandoc_strndup(i8* %75, i32 %81)
  %83 = load %struct.mpage*, %struct.mpage** %3, align 8
  %84 = getelementptr inbounds %struct.mpage, %struct.mpage* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load i64, i64* @warnings, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %70
  %88 = load %struct.mlink*, %struct.mlink** %6, align 8
  %89 = getelementptr inbounds %struct.mlink, %struct.mlink* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %87
  %95 = load %struct.mpage*, %struct.mpage** %3, align 8
  %96 = getelementptr inbounds %struct.mpage, %struct.mpage* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.mlink*, %struct.mlink** %6, align 8
  %99 = getelementptr inbounds %struct.mlink, %struct.mlink* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strcasecmp(i8* %97, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %94
  %104 = load %struct.mlink*, %struct.mlink** %6, align 8
  %105 = getelementptr inbounds %struct.mlink, %struct.mlink* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.mpage*, %struct.mpage** %3, align 8
  %108 = getelementptr inbounds %struct.mpage, %struct.mpage* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.mlink*, %struct.mlink** %6, align 8
  %111 = getelementptr inbounds %struct.mlink, %struct.mlink* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 (i32, i8*, ...) @say(i32 %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %109, i8* %112)
  br label %114

114:                                              ; preds = %103, %94, %87, %70
  br label %115

115:                                              ; preds = %114, %69, %63, %49
  br label %116

116:                                              ; preds = %131, %115
  %117 = load i8*, i8** %7, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = load i8*, i8** %7, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 10
  br label %124

124:                                              ; preds = %119, %116
  %125 = phi i1 [ true, %116 ], [ %123, %119 ]
  br i1 %125, label %126, label %132

126:                                              ; preds = %124
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @getline(i8** %7, i64* %11, i32* %127)
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %132

131:                                              ; preds = %126
  br label %116

132:                                              ; preds = %130, %124
  br label %133

133:                                              ; preds = %148, %132
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @getline(i8** %7, i64* %11, i32* %134)
  %136 = icmp ne i32 %135, -1
  br i1 %136, label %137, label %149

137:                                              ; preds = %133
  %138 = load i8*, i8** %7, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 10
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i8*, i8** %7, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 32
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %149

148:                                              ; preds = %142, %137
  br label %133

149:                                              ; preds = %147, %133
  store i64 0, i64* %13, align 8
  store i8* null, i8** %9, align 8
  br label %150

150:                                              ; preds = %181, %180, %149
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @getline(i8** %7, i64* %11, i32* %151)
  store i32 %152, i32* %14, align 4
  %153 = icmp ne i32 %152, -1
  br i1 %153, label %154, label %212

154:                                              ; preds = %150
  %155 = load i8*, i8** %7, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 32
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %212

160:                                              ; preds = %154
  store i32 0, i32* %15, align 4
  br label %161

161:                                              ; preds = %169, %160
  %162 = load i8*, i8** %7, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = call i64 @isspace(i8 zeroext %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %161
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %15, align 4
  br label %161

172:                                              ; preds = %161
  %173 = load i8*, i8** %7, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  br label %150

181:                                              ; preds = %172
  %182 = load i8*, i8** %9, align 8
  %183 = load i64, i64* %13, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = add i64 %183, %185
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  %189 = sub i64 %186, %188
  %190 = call i8* @mandoc_realloc(i8* %182, i64 %189)
  store i8* %190, i8** %9, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = load i64, i64* %13, align 8
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  %194 = load i8*, i8** %7, align 8
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %15, align 4
  %200 = sub nsw i32 %198, %199
  %201 = call i32 @memcpy(i8* %193, i8* %197, i32 %200)
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %15, align 4
  %204 = sub nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %13, align 8
  %207 = add i64 %206, %205
  store i64 %207, i64* %13, align 8
  %208 = load i8*, i8** %9, align 8
  %209 = load i64, i64* %13, align 8
  %210 = sub i64 %209, 1
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  store i8 32, i8* %211, align 1
  br label %150

212:                                              ; preds = %159, %150
  %213 = load i8*, i8** %7, align 8
  %214 = call i32 @free(i8* %213)
  %215 = load i8*, i8** %9, align 8
  %216 = icmp eq i8* null, %215
  br i1 %216, label %222, label %217

217:                                              ; preds = %212
  %218 = load i8*, i8** %9, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 0, %220
  br i1 %221, label %222, label %235

222:                                              ; preds = %217, %212
  %223 = load i64, i64* @warnings, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = load %struct.mlink*, %struct.mlink** %6, align 8
  %227 = getelementptr inbounds %struct.mlink, %struct.mlink* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 (i32, i8*, ...) @say(i32 %228, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %230

230:                                              ; preds = %225, %222
  %231 = load i32*, i32** %5, align 8
  %232 = call i32 @fclose(i32* %231)
  %233 = load i8*, i8** %9, align 8
  %234 = call i32 @free(i8* %233)
  br label %319

235:                                              ; preds = %217
  %236 = load i8*, i8** %9, align 8
  %237 = load i64, i64* %13, align 8
  %238 = sub i64 %237, 1
  %239 = getelementptr inbounds i8, i8* %236, i64 %238
  store i8 0, i8* %239, align 1
  %240 = load i8*, i8** %9, align 8
  %241 = call i8* @strstr(i8* %240, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i8* %241, i8** %8, align 8
  %242 = icmp ne i8* null, %241
  br i1 %242, label %243, label %263

243:                                              ; preds = %235
  %244 = load i8*, i8** %8, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 2
  store i8* %245, i8** %8, align 8
  br label %246

246:                                              ; preds = %259, %243
  %247 = load i8*, i8** %8, align 8
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 32, %249
  br i1 %250, label %256, label %251

251:                                              ; preds = %246
  %252 = load i8*, i8** %8, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 8, %254
  br label %256

256:                                              ; preds = %251, %246
  %257 = phi i1 [ true, %246 ], [ %255, %251 ]
  br i1 %257, label %258, label %262

258:                                              ; preds = %256
  br label %259

259:                                              ; preds = %258
  %260 = load i8*, i8** %8, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %8, align 8
  br label %246

262:                                              ; preds = %256
  br label %274

263:                                              ; preds = %235
  %264 = load i64, i64* @warnings, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = load %struct.mlink*, %struct.mlink** %6, align 8
  %268 = getelementptr inbounds %struct.mlink, %struct.mlink* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load i8*, i8** %9, align 8
  %271 = call i32 (i32, i8*, ...) @say(i32 %269, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i8* %270)
  br label %272

272:                                              ; preds = %266, %263
  %273 = load i8*, i8** %9, align 8
  store i8* %273, i8** %8, align 8
  br label %274

274:                                              ; preds = %272, %262
  %275 = load i8*, i8** %8, align 8
  %276 = call i64 @strlen(i8* %275)
  store i64 %276, i64* %12, align 8
  br label %277

277:                                              ; preds = %298, %291, %274
  %278 = load i8*, i8** %8, align 8
  %279 = load i64, i64* %12, align 8
  %280 = call i8* @memchr(i8* %278, i8 signext 8, i64 %279)
  store i8* %280, i8** %7, align 8
  %281 = icmp ne i8* null, %280
  br i1 %281, label %282, label %310

282:                                              ; preds = %277
  %283 = load i8*, i8** %7, align 8
  %284 = load i8*, i8** %8, align 8
  %285 = ptrtoint i8* %283 to i64
  %286 = ptrtoint i8* %284 to i64
  %287 = sub i64 %285, %286
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %14, align 4
  %289 = load i32, i32* %14, align 4
  %290 = icmp eq i32 0, %289
  br i1 %290, label %291, label %298

291:                                              ; preds = %282
  %292 = load i8*, i8** %7, align 8
  %293 = load i8*, i8** %7, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 1
  %295 = load i64, i64* %12, align 8
  %296 = add i64 %295, -1
  store i64 %296, i64* %12, align 8
  %297 = call i32 @memmove(i8* %292, i8* %294, i64 %295)
  br label %277

298:                                              ; preds = %282
  %299 = load i8*, i8** %7, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 -1
  %301 = load i8*, i8** %7, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 1
  %303 = load i64, i64* %12, align 8
  %304 = load i32, i32* %14, align 4
  %305 = sext i32 %304 to i64
  %306 = sub i64 %303, %305
  %307 = call i32 @memmove(i8* %300, i8* %302, i64 %306)
  %308 = load i64, i64* %12, align 8
  %309 = sub i64 %308, 2
  store i64 %309, i64* %12, align 8
  br label %277

310:                                              ; preds = %277
  %311 = load i8*, i8** %8, align 8
  %312 = call i8* @mandoc_strndup(i8* %311, i32 150)
  %313 = load %struct.mpage*, %struct.mpage** %3, align 8
  %314 = getelementptr inbounds %struct.mpage, %struct.mpage* %313, i32 0, i32 1
  store i8* %312, i8** %314, align 8
  %315 = load i32*, i32** %5, align 8
  %316 = call i32 @fclose(i32* %315)
  %317 = load i8*, i8** %9, align 8
  %318 = call i32 @free(i8* %317)
  br label %319

319:                                              ; preds = %310, %230, %47
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @say(i32, i8*, ...) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @mandoc_strndup(i8*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @mandoc_realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
