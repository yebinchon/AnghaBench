; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_httpread.c_httpread_hdr_analyze.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_httpread.c_httpread_hdr_analyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpread = type { i8*, i32, i32, i32, i8*, i64, i64, i32 }

@HTTPREAD_HDR_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"HTTP/\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"TRACE\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"NOTIFY\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"M-SEARCH\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"M-POST\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"SUBSCRIBE\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"UNSUBSCRIBE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.httpread*)* @httpread_hdr_analyze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @httpread_hdr_analyze(%struct.httpread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.httpread*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.httpread* %0, %struct.httpread** %3, align 8
  %9 = load %struct.httpread*, %struct.httpread** %3, align 8
  %10 = getelementptr inbounds %struct.httpread, %struct.httpread* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  store i32 1, i32* %5, align 4
  %12 = load i32, i32* @HTTPREAD_HDR_TYPE_UNKNOWN, align 4
  %13 = load %struct.httpread*, %struct.httpread** %3, align 8
  %14 = getelementptr inbounds %struct.httpread, %struct.httpread* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @isgraph(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %434

20:                                               ; preds = %1
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @os_strncmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %91

24:                                               ; preds = %20
  %25 = load %struct.httpread*, %struct.httpread** %3, align 8
  %26 = getelementptr inbounds %struct.httpread, %struct.httpread* %25, i32 0, i32 1
  store i32 131, i32* %26, align 8
  store i32 0, i32* %5, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 5
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 49
  br i1 %33, label %34, label %55

34:                                               ; preds = %24
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @isdigit(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 48
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.httpread*, %struct.httpread** %3, align 8
  %54 = getelementptr inbounds %struct.httpread, %struct.httpread* %53, i32 0, i32 2
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %46, %40, %34, %24
  br label %56

56:                                               ; preds = %61, %55
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @isgraph(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  br label %56

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %77, %64
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %4, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 9
  br label %75

75:                                               ; preds = %70, %65
  %76 = phi i1 [ true, %65 ], [ %74, %70 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %4, align 8
  br label %65

80:                                               ; preds = %75
  %81 = load i8*, i8** %4, align 8
  %82 = load i8, i8* %81, align 1
  %83 = call i64 @isdigit(i8 signext %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  br label %434

86:                                               ; preds = %80
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @atol(i8* %87)
  %89 = load %struct.httpread*, %struct.httpread** %3, align 8
  %90 = getelementptr inbounds %struct.httpread, %struct.httpread* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  br label %188

91:                                               ; preds = %20
  %92 = load i8*, i8** %4, align 8
  %93 = call i64 @word_eq(i8* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.httpread*, %struct.httpread** %3, align 8
  %97 = getelementptr inbounds %struct.httpread, %struct.httpread* %96, i32 0, i32 1
  store i32 138, i32* %97, align 8
  br label %187

98:                                               ; preds = %91
  %99 = load i8*, i8** %4, align 8
  %100 = call i64 @word_eq(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.httpread*, %struct.httpread** %3, align 8
  %104 = getelementptr inbounds %struct.httpread, %struct.httpread* %103, i32 0, i32 1
  store i32 137, i32* %104, align 8
  br label %186

105:                                              ; preds = %98
  %106 = load i8*, i8** %4, align 8
  %107 = call i64 @word_eq(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load %struct.httpread*, %struct.httpread** %3, align 8
  %111 = getelementptr inbounds %struct.httpread, %struct.httpread* %110, i32 0, i32 1
  store i32 133, i32* %111, align 8
  br label %185

112:                                              ; preds = %105
  %113 = load i8*, i8** %4, align 8
  %114 = call i64 @word_eq(i8* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load %struct.httpread*, %struct.httpread** %3, align 8
  %118 = getelementptr inbounds %struct.httpread, %struct.httpread* %117, i32 0, i32 1
  store i32 132, i32* %118, align 8
  br label %184

119:                                              ; preds = %112
  %120 = load i8*, i8** %4, align 8
  %121 = call i64 @word_eq(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load %struct.httpread*, %struct.httpread** %3, align 8
  %125 = getelementptr inbounds %struct.httpread, %struct.httpread* %124, i32 0, i32 1
  store i32 139, i32* %125, align 8
  br label %183

126:                                              ; preds = %119
  %127 = load i8*, i8** %4, align 8
  %128 = call i64 @word_eq(i8* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load %struct.httpread*, %struct.httpread** %3, align 8
  %132 = getelementptr inbounds %struct.httpread, %struct.httpread* %131, i32 0, i32 1
  store i32 129, i32* %132, align 8
  br label %182

133:                                              ; preds = %126
  %134 = load i8*, i8** %4, align 8
  %135 = call i64 @word_eq(i8* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load %struct.httpread*, %struct.httpread** %3, align 8
  %139 = getelementptr inbounds %struct.httpread, %struct.httpread* %138, i32 0, i32 1
  store i32 140, i32* %139, align 8
  br label %181

140:                                              ; preds = %133
  %141 = load i8*, i8** %4, align 8
  %142 = call i64 @word_eq(i8* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load %struct.httpread*, %struct.httpread** %3, align 8
  %146 = getelementptr inbounds %struct.httpread, %struct.httpread* %145, i32 0, i32 1
  store i32 134, i32* %146, align 8
  br label %180

147:                                              ; preds = %140
  %148 = load i8*, i8** %4, align 8
  %149 = call i64 @word_eq(i8* %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.httpread*, %struct.httpread** %3, align 8
  %153 = getelementptr inbounds %struct.httpread, %struct.httpread* %152, i32 0, i32 1
  store i32 135, i32* %153, align 8
  br label %179

154:                                              ; preds = %147
  %155 = load i8*, i8** %4, align 8
  %156 = call i64 @word_eq(i8* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load %struct.httpread*, %struct.httpread** %3, align 8
  %160 = getelementptr inbounds %struct.httpread, %struct.httpread* %159, i32 0, i32 1
  store i32 136, i32* %160, align 8
  br label %178

161:                                              ; preds = %154
  %162 = load i8*, i8** %4, align 8
  %163 = call i64 @word_eq(i8* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load %struct.httpread*, %struct.httpread** %3, align 8
  %167 = getelementptr inbounds %struct.httpread, %struct.httpread* %166, i32 0, i32 1
  store i32 130, i32* %167, align 8
  br label %177

168:                                              ; preds = %161
  %169 = load i8*, i8** %4, align 8
  %170 = call i64 @word_eq(i8* %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load %struct.httpread*, %struct.httpread** %3, align 8
  %174 = getelementptr inbounds %struct.httpread, %struct.httpread* %173, i32 0, i32 1
  store i32 128, i32* %174, align 8
  br label %176

175:                                              ; preds = %168
  br label %176

176:                                              ; preds = %175, %172
  br label %177

177:                                              ; preds = %176, %165
  br label %178

178:                                              ; preds = %177, %158
  br label %179

179:                                              ; preds = %178, %151
  br label %180

180:                                              ; preds = %179, %144
  br label %181

181:                                              ; preds = %180, %137
  br label %182

182:                                              ; preds = %181, %130
  br label %183

183:                                              ; preds = %182, %123
  br label %184

184:                                              ; preds = %183, %116
  br label %185

185:                                              ; preds = %184, %109
  br label %186

186:                                              ; preds = %185, %102
  br label %187

187:                                              ; preds = %186, %95
  br label %188

188:                                              ; preds = %187, %86
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %337

191:                                              ; preds = %188
  br label %192

192:                                              ; preds = %197, %191
  %193 = load i8*, i8** %4, align 8
  %194 = load i8, i8* %193, align 1
  %195 = call i64 @isgraph(i8 signext %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i8*, i8** %4, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %4, align 8
  br label %192

200:                                              ; preds = %192
  br label %201

201:                                              ; preds = %213, %200
  %202 = load i8*, i8** %4, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 32
  br i1 %205, label %211, label %206

206:                                              ; preds = %201
  %207 = load i8*, i8** %4, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 9
  br label %211

211:                                              ; preds = %206, %201
  %212 = phi i1 [ true, %201 ], [ %210, %206 ]
  br i1 %212, label %213, label %216

213:                                              ; preds = %211
  %214 = load i8*, i8** %4, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %4, align 8
  br label %201

216:                                              ; preds = %211
  %217 = load i8*, i8** %4, align 8
  store i8* %217, i8** %6, align 8
  br label %218

218:                                              ; preds = %223, %216
  %219 = load i8*, i8** %4, align 8
  %220 = load i8, i8* %219, align 1
  %221 = call i64 @isgraph(i8 signext %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load i8*, i8** %4, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %4, align 8
  br label %218

226:                                              ; preds = %218
  %227 = load i8*, i8** %4, align 8
  %228 = load i8*, i8** %6, align 8
  %229 = ptrtoint i8* %227 to i64
  %230 = ptrtoint i8* %228 to i64
  %231 = sub i64 %229, %230
  %232 = add nsw i64 %231, 1
  %233 = trunc i64 %232 to i32
  %234 = call i8* @os_malloc(i32 %233)
  %235 = load %struct.httpread*, %struct.httpread** %3, align 8
  %236 = getelementptr inbounds %struct.httpread, %struct.httpread* %235, i32 0, i32 4
  store i8* %234, i8** %236, align 8
  %237 = load %struct.httpread*, %struct.httpread** %3, align 8
  %238 = getelementptr inbounds %struct.httpread, %struct.httpread* %237, i32 0, i32 4
  %239 = load i8*, i8** %238, align 8
  %240 = icmp eq i8* %239, null
  br i1 %240, label %241, label %242

241:                                              ; preds = %226
  br label %434

242:                                              ; preds = %226
  %243 = load %struct.httpread*, %struct.httpread** %3, align 8
  %244 = getelementptr inbounds %struct.httpread, %struct.httpread* %243, i32 0, i32 4
  %245 = load i8*, i8** %244, align 8
  store i8* %245, i8** %7, align 8
  br label %246

246:                                              ; preds = %284, %242
  %247 = load i8*, i8** %6, align 8
  %248 = load i8*, i8** %4, align 8
  %249 = icmp ult i8* %247, %248
  br i1 %249, label %250, label %285

250:                                              ; preds = %246
  %251 = load i8*, i8** %6, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* %8, align 4
  %255 = icmp eq i32 %254, 37
  br i1 %255, label %256, label %277

256:                                              ; preds = %250
  %257 = load i8*, i8** %6, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  %259 = load i8, i8* %258, align 1
  %260 = call i64 @isxdigit(i8 signext %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %277

262:                                              ; preds = %256
  %263 = load i8*, i8** %6, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 2
  %265 = load i8, i8* %264, align 1
  %266 = call i64 @isxdigit(i8 signext %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %262
  %269 = load i8*, i8** %6, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 1
  %271 = call i32 @hex2byte(i8* %270)
  %272 = trunc i32 %271 to i8
  %273 = load i8*, i8** %7, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %7, align 8
  store i8 %272, i8* %273, align 1
  %275 = load i8*, i8** %6, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 3
  store i8* %276, i8** %6, align 8
  br label %284

277:                                              ; preds = %262, %256, %250
  %278 = load i32, i32* %8, align 4
  %279 = trunc i32 %278 to i8
  %280 = load i8*, i8** %7, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %7, align 8
  store i8 %279, i8* %280, align 1
  %282 = load i8*, i8** %6, align 8
  %283 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %283, i8** %6, align 8
  br label %284

284:                                              ; preds = %277, %268
  br label %246

285:                                              ; preds = %246
  %286 = load i8*, i8** %7, align 8
  store i8 0, i8* %286, align 1
  br label %287

287:                                              ; preds = %299, %285
  %288 = load i8*, i8** %4, align 8
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp eq i32 %290, 32
  br i1 %291, label %297, label %292

292:                                              ; preds = %287
  %293 = load i8*, i8** %4, align 8
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp eq i32 %295, 9
  br label %297

297:                                              ; preds = %292, %287
  %298 = phi i1 [ true, %287 ], [ %296, %292 ]
  br i1 %298, label %299, label %302

299:                                              ; preds = %297
  %300 = load i8*, i8** %4, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %301, i8** %4, align 8
  br label %287

302:                                              ; preds = %297
  %303 = load i8*, i8** %4, align 8
  %304 = call i64 @strncmp(i8* %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %305 = icmp eq i64 0, %304
  br i1 %305, label %306, label %336

306:                                              ; preds = %302
  %307 = load i8*, i8** %4, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 5
  store i8* %308, i8** %4, align 8
  %309 = load i8*, i8** %4, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 0
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp eq i32 %312, 49
  br i1 %313, label %314, label %335

314:                                              ; preds = %306
  %315 = load i8*, i8** %4, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 1
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp eq i32 %318, 46
  br i1 %319, label %320, label %335

320:                                              ; preds = %314
  %321 = load i8*, i8** %4, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 2
  %323 = load i8, i8* %322, align 1
  %324 = call i64 @isdigit(i8 signext %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %335

326:                                              ; preds = %320
  %327 = load i8*, i8** %4, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 2
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp ne i32 %330, 48
  br i1 %331, label %332, label %335

332:                                              ; preds = %326
  %333 = load %struct.httpread*, %struct.httpread** %3, align 8
  %334 = getelementptr inbounds %struct.httpread, %struct.httpread* %333, i32 0, i32 2
  store i32 1, i32* %334, align 4
  br label %335

335:                                              ; preds = %332, %326, %320, %314, %306
  br label %336

336:                                              ; preds = %335, %302
  br label %337

337:                                              ; preds = %336, %188
  br label %338

338:                                              ; preds = %349, %337
  %339 = load i8*, i8** %4, align 8
  %340 = load i8, i8* %339, align 1
  %341 = icmp ne i8 %340, 0
  br i1 %341, label %342, label %350

342:                                              ; preds = %338
  %343 = load i8*, i8** %4, align 8
  %344 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %344, i8** %4, align 8
  %345 = load i8, i8* %343, align 1
  %346 = sext i8 %345 to i32
  %347 = icmp eq i32 %346, 10
  br i1 %347, label %348, label %349

348:                                              ; preds = %342
  br label %350

349:                                              ; preds = %342
  br label %338

350:                                              ; preds = %348, %338
  br label %351

351:                                              ; preds = %395, %350
  %352 = load i8*, i8** %4, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 0
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = icmp eq i32 %355, 10
  br i1 %356, label %369, label %357

357:                                              ; preds = %351
  %358 = load i8*, i8** %4, align 8
  %359 = getelementptr inbounds i8, i8* %358, i64 0
  %360 = load i8, i8* %359, align 1
  %361 = sext i8 %360 to i32
  %362 = icmp eq i32 %361, 13
  br i1 %362, label %363, label %370

363:                                              ; preds = %357
  %364 = load i8*, i8** %4, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 1
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp eq i32 %367, 10
  br i1 %368, label %369, label %370

369:                                              ; preds = %363, %351
  br label %396

370:                                              ; preds = %363, %357
  %371 = load i8*, i8** %4, align 8
  %372 = load i8, i8* %371, align 1
  %373 = call i64 @isgraph(i8 signext %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %376, label %375

375:                                              ; preds = %370
  br label %434

376:                                              ; preds = %370
  %377 = load %struct.httpread*, %struct.httpread** %3, align 8
  %378 = load i8*, i8** %4, align 8
  %379 = call i64 @httpread_hdr_option_analyze(%struct.httpread* %377, i8* %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %376
  br label %434

382:                                              ; preds = %376
  br label %383

383:                                              ; preds = %394, %382
  %384 = load i8*, i8** %4, align 8
  %385 = load i8, i8* %384, align 1
  %386 = icmp ne i8 %385, 0
  br i1 %386, label %387, label %395

387:                                              ; preds = %383
  %388 = load i8*, i8** %4, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %389, i8** %4, align 8
  %390 = load i8, i8* %388, align 1
  %391 = sext i8 %390 to i32
  %392 = icmp eq i32 %391, 10
  br i1 %392, label %393, label %394

393:                                              ; preds = %387
  br label %395

394:                                              ; preds = %387
  br label %383

395:                                              ; preds = %393, %383
  br label %351

396:                                              ; preds = %369
  %397 = load %struct.httpread*, %struct.httpread** %3, align 8
  %398 = getelementptr inbounds %struct.httpread, %struct.httpread* %397, i32 0, i32 5
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %396
  %402 = load %struct.httpread*, %struct.httpread** %3, align 8
  %403 = getelementptr inbounds %struct.httpread, %struct.httpread* %402, i32 0, i32 6
  store i64 0, i64* %403, align 8
  br label %404

404:                                              ; preds = %401, %396
  %405 = load %struct.httpread*, %struct.httpread** %3, align 8
  %406 = getelementptr inbounds %struct.httpread, %struct.httpread* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 8
  switch i32 %407, label %432 [
    i32 131, label %408
    i32 138, label %417
    i32 137, label %417
    i32 133, label %431
    i32 132, label %431
    i32 139, label %431
    i32 129, label %431
    i32 140, label %431
    i32 134, label %431
    i32 135, label %431
    i32 136, label %431
    i32 130, label %431
    i32 128, label %431
  ]

408:                                              ; preds = %404
  %409 = load %struct.httpread*, %struct.httpread** %3, align 8
  %410 = getelementptr inbounds %struct.httpread, %struct.httpread* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = icmp ne i32 %411, 200
  br i1 %412, label %413, label %416

413:                                              ; preds = %408
  %414 = load %struct.httpread*, %struct.httpread** %3, align 8
  %415 = getelementptr inbounds %struct.httpread, %struct.httpread* %414, i32 0, i32 7
  store i32 0, i32* %415, align 8
  br label %416

416:                                              ; preds = %413, %408
  br label %433

417:                                              ; preds = %404, %404
  %418 = load %struct.httpread*, %struct.httpread** %3, align 8
  %419 = getelementptr inbounds %struct.httpread, %struct.httpread* %418, i32 0, i32 5
  %420 = load i64, i64* %419, align 8
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %422, label %430

422:                                              ; preds = %417
  %423 = load %struct.httpread*, %struct.httpread** %3, align 8
  %424 = getelementptr inbounds %struct.httpread, %struct.httpread* %423, i32 0, i32 6
  %425 = load i64, i64* %424, align 8
  %426 = icmp eq i64 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %422
  %428 = load %struct.httpread*, %struct.httpread** %3, align 8
  %429 = getelementptr inbounds %struct.httpread, %struct.httpread* %428, i32 0, i32 7
  store i32 0, i32* %429, align 8
  br label %430

430:                                              ; preds = %427, %422, %417
  br label %433

431:                                              ; preds = %404, %404, %404, %404, %404, %404, %404, %404, %404, %404
  br label %432

432:                                              ; preds = %404, %431
  br label %433

433:                                              ; preds = %432, %430, %416
  store i32 0, i32* %2, align 4
  br label %435

434:                                              ; preds = %381, %375, %241, %85, %19
  store i32 -1, i32* %2, align 4
  br label %435

435:                                              ; preds = %434, %433
  %436 = load i32, i32* %2, align 4
  ret i32 %436
}

declare dso_local i64 @isgraph(i8 signext) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @atol(i8*) #1

declare dso_local i64 @word_eq(i8*, i8*) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i32 @hex2byte(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @httpread_hdr_option_analyze(%struct.httpread*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
