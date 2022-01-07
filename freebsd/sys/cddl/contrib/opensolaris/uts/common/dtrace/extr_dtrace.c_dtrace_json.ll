; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_json.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT64_MIN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64, i8*, i32, i8*)* @dtrace_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dtrace_json(i64 %0, i64 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8, align 1
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 132, i32* %12, align 4
  %26 = load i32, i32* @INT64_MIN, align 4
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %27 = load i32, i32* @B_FALSE, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* @B_FALSE, align 4
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* @B_FALSE, align 4
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* @B_FALSE, align 4
  store i32 %30, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %31 = load i8*, i8** %9, align 8
  store i8* %31, i8** %22, align 8
  %32 = load i8*, i8** %11, align 8
  store i8* %32, i8** %23, align 8
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %24, align 8
  br label %34

34:                                               ; preds = %469, %5
  %35 = load i64, i64* %24, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %36, %37
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %472

40:                                               ; preds = %34
  %41 = load i64, i64* %24, align 8
  %42 = call signext i8 @dtrace_load8(i64 %41)
  store i8 %42, i8* %25, align 1
  %43 = load i8, i8* %25, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i8* null, i8** %6, align 8
  br label %473

47:                                               ; preds = %40
  %48 = load i32, i32* %12, align 4
  switch i32 %48, label %468 [
    i32 132, label %49
    i32 133, label %77
    i32 131, label %89
    i32 130, label %143
    i32 129, label %153
    i32 139, label %167
    i32 138, label %178
    i32 137, label %201
    i32 136, label %236
    i32 134, label %254
    i32 135, label %276
    i32 128, label %306
    i32 140, label %402
  ]

49:                                               ; preds = %47
  %50 = load i8, i8* %25, align 1
  %51 = call i32 @isspace(i8 signext %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %468

54:                                               ; preds = %49
  %55 = load i8, i8* %25, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 123
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 133, i32* %12, align 4
  br label %468

59:                                               ; preds = %54
  %60 = load i8, i8* %25, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 91
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i32, i32* @B_TRUE, align 4
  store i32 %64, i32* %19, align 4
  store i32 0, i32* %14, align 4
  %65 = load i8*, i8** %22, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @dtrace_strtoll(i8* %65, i32 10, i64 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @B_TRUE, align 4
  br label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @B_FALSE, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %18, align 4
  store i32 128, i32* %12, align 4
  br label %468

76:                                               ; preds = %59
  store i8* null, i8** %6, align 8
  br label %473

77:                                               ; preds = %47
  %78 = load i8, i8* %25, align 1
  %79 = call i32 @isspace(i8 signext %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %468

82:                                               ; preds = %77
  %83 = load i8, i8* %25, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 34
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  store i32 131, i32* %12, align 4
  %87 = load i32, i32* @B_TRUE, align 4
  store i32 %87, i32* %16, align 4
  br label %468

88:                                               ; preds = %82
  store i8* null, i8** %6, align 8
  br label %473

89:                                               ; preds = %47
  %90 = load i8, i8* %25, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 92
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i8*, i8** %23, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %23, align 8
  store i8 92, i8* %94, align 1
  store i32 130, i32* %12, align 4
  br label %468

96:                                               ; preds = %89
  %97 = load i8, i8* %25, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 34
  br i1 %99, label %100, label %139

100:                                              ; preds = %96
  %101 = load i32, i32* %17, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i8, i8* %25, align 1
  %105 = load i8*, i8** %23, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %23, align 8
  store i8 %104, i8* %105, align 1
  %107 = load i32, i32* @B_FALSE, align 4
  store i32 %107, i32* %17, align 4
  store i32 140, i32* %12, align 4
  br label %468

108:                                              ; preds = %100
  %109 = load i8*, i8** %23, align 8
  store i8 0, i8* %109, align 1
  %110 = load i8*, i8** %11, align 8
  store i8* %110, i8** %23, align 8
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load i8*, i8** %11, align 8
  %115 = load i8*, i8** %22, align 8
  %116 = load i64, i64* %7, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @dtrace_strncmp(i8* %114, i8* %115, i32 %117)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* @B_TRUE, align 4
  store i32 %121, i32* %18, align 4
  br label %122

122:                                              ; preds = %120, %113
  br label %133

123:                                              ; preds = %108
  %124 = load i32, i32* %18, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i32, i32* %10, align 4
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i8* null, i8** %6, align 8
  br label %473

130:                                              ; preds = %126
  %131 = load i8*, i8** %11, align 8
  store i8* %131, i8** %6, align 8
  br label %473

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %122
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 139, i32 138
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* @B_FALSE, align 4
  store i32 %138, i32* %16, align 4
  br label %468

139:                                              ; preds = %96
  %140 = load i8, i8* %25, align 1
  %141 = load i8*, i8** %23, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %23, align 8
  store i8 %140, i8* %141, align 1
  br label %468

143:                                              ; preds = %47
  %144 = load i8, i8* %25, align 1
  %145 = load i8*, i8** %23, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %23, align 8
  store i8 %144, i8* %145, align 1
  %147 = load i8, i8* %25, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 117
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  store i32 0, i32* %15, align 4
  store i32 129, i32* %12, align 4
  br label %152

151:                                              ; preds = %143
  store i32 131, i32* %12, align 4
  br label %152

152:                                              ; preds = %151, %150
  br label %468

153:                                              ; preds = %47
  %154 = load i8, i8* %25, align 1
  %155 = call i32 @isxdigit(i8 signext %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  store i8* null, i8** %6, align 8
  br label %473

158:                                              ; preds = %153
  %159 = load i8, i8* %25, align 1
  %160 = load i8*, i8** %23, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %23, align 8
  store i8 %159, i8* %160, align 1
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %15, align 4
  %164 = icmp eq i32 %163, 4
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  store i32 131, i32* %12, align 4
  br label %166

166:                                              ; preds = %165, %158
  br label %468

167:                                              ; preds = %47
  %168 = load i8, i8* %25, align 1
  %169 = call i32 @isspace(i8 signext %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %468

172:                                              ; preds = %167
  %173 = load i8, i8* %25, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 58
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 128, i32* %12, align 4
  br label %468

177:                                              ; preds = %172
  store i8* null, i8** %6, align 8
  br label %473

178:                                              ; preds = %47
  %179 = load i8, i8* %25, align 1
  %180 = call i32 @isspace(i8 signext %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %468

183:                                              ; preds = %178
  %184 = load i8, i8* %25, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 44
  br i1 %186, label %187, label %200

187:                                              ; preds = %183
  %188 = load i32, i32* %19, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %187
  store i32 128, i32* %12, align 4
  %191 = load i32, i32* %14, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %13, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i32, i32* @B_TRUE, align 4
  store i32 %196, i32* %18, align 4
  br label %197

197:                                              ; preds = %195, %190
  br label %199

198:                                              ; preds = %187
  store i32 133, i32* %12, align 4
  br label %199

199:                                              ; preds = %198, %197
  br label %468

200:                                              ; preds = %183
  store i8* null, i8** %6, align 8
  br label %473

201:                                              ; preds = %47
  %202 = load i8, i8* %25, align 1
  %203 = call i32 @islower(i8 signext %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load i8, i8* %25, align 1
  %207 = load i8*, i8** %23, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %23, align 8
  store i8 %206, i8* %207, align 1
  br label %468

209:                                              ; preds = %201
  %210 = load i8*, i8** %23, align 8
  store i8 0, i8* %210, align 1
  %211 = load i8*, i8** %11, align 8
  store i8* %211, i8** %23, align 8
  %212 = load i8*, i8** %11, align 8
  %213 = call i32 @dtrace_strncmp(i8* %212, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 5)
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %223, label %215

215:                                              ; preds = %209
  %216 = load i8*, i8** %11, align 8
  %217 = call i32 @dtrace_strncmp(i8* %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = load i8*, i8** %11, align 8
  %221 = call i32 @dtrace_strncmp(i8* %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %219, %215, %209
  %224 = load i32, i32* %18, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = load i32, i32* %10, align 4
  %228 = icmp sgt i32 %227, 1
  br i1 %228, label %229, label %230

229:                                              ; preds = %226
  store i8* null, i8** %6, align 8
  br label %473

230:                                              ; preds = %226
  %231 = load i8*, i8** %11, align 8
  store i8* %231, i8** %6, align 8
  br label %473

232:                                              ; preds = %223
  %233 = load i64, i64* %24, align 8
  %234 = add i64 %233, -1
  store i64 %234, i64* %24, align 8
  store i32 138, i32* %12, align 4
  br label %468

235:                                              ; preds = %219
  store i8* null, i8** %6, align 8
  br label %473

236:                                              ; preds = %47
  %237 = load i8, i8* %25, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp eq i32 %238, 46
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load i8, i8* %25, align 1
  %242 = load i8*, i8** %23, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %23, align 8
  store i8 %241, i8* %242, align 1
  store i32 134, i32* %12, align 4
  br label %468

244:                                              ; preds = %236
  %245 = load i8, i8* %25, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 120
  br i1 %247, label %252, label %248

248:                                              ; preds = %244
  %249 = load i8, i8* %25, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 88
  br i1 %251, label %252, label %253

252:                                              ; preds = %248, %244
  store i8* null, i8** %6, align 8
  br label %473

253:                                              ; preds = %248
  br label %254

254:                                              ; preds = %47, %253
  %255 = load i8, i8* %25, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp eq i32 %256, 101
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = load i8, i8* %25, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 69
  br i1 %261, label %262, label %266

262:                                              ; preds = %258, %254
  %263 = load i8, i8* %25, align 1
  %264 = load i8*, i8** %23, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %23, align 8
  store i8 %263, i8* %264, align 1
  store i32 135, i32* %12, align 4
  br label %468

266:                                              ; preds = %258
  %267 = load i8, i8* %25, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 43
  br i1 %269, label %274, label %270

270:                                              ; preds = %266
  %271 = load i8, i8* %25, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 45
  br i1 %273, label %274, label %275

274:                                              ; preds = %270, %266
  store i8* null, i8** %6, align 8
  br label %473

275:                                              ; preds = %270
  br label %276

276:                                              ; preds = %47, %275
  %277 = load i8, i8* %25, align 1
  %278 = call i32 @isdigit(i8 signext %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %288, label %280

280:                                              ; preds = %276
  %281 = load i8, i8* %25, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp eq i32 %282, 43
  br i1 %283, label %288, label %284

284:                                              ; preds = %280
  %285 = load i8, i8* %25, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp eq i32 %286, 45
  br i1 %287, label %288, label %292

288:                                              ; preds = %284, %280, %276
  %289 = load i8, i8* %25, align 1
  %290 = load i8*, i8** %23, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %23, align 8
  store i8 %289, i8* %290, align 1
  br label %468

292:                                              ; preds = %284
  %293 = load i8*, i8** %23, align 8
  store i8 0, i8* %293, align 1
  %294 = load i8*, i8** %11, align 8
  store i8* %294, i8** %23, align 8
  %295 = load i32, i32* %18, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %292
  %298 = load i32, i32* %10, align 4
  %299 = icmp sgt i32 %298, 1
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  store i8* null, i8** %6, align 8
  br label %473

301:                                              ; preds = %297
  %302 = load i8*, i8** %11, align 8
  store i8* %302, i8** %6, align 8
  br label %473

303:                                              ; preds = %292
  %304 = load i64, i64* %24, align 8
  %305 = add i64 %304, -1
  store i64 %305, i64* %24, align 8
  store i32 138, i32* %12, align 4
  br label %468

306:                                              ; preds = %47
  %307 = load i8, i8* %25, align 1
  %308 = call i32 @isspace(i8 signext %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %306
  br label %468

311:                                              ; preds = %306
  %312 = load i8, i8* %25, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp eq i32 %313, 123
  br i1 %314, label %319, label %315

315:                                              ; preds = %311
  %316 = load i8, i8* %25, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %317, 91
  br i1 %318, label %319, label %376

319:                                              ; preds = %315, %311
  %320 = load i32, i32* %10, align 4
  %321 = icmp sgt i32 %320, 1
  br i1 %321, label %322, label %366

322:                                              ; preds = %319
  %323 = load i32, i32* %18, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %366

325:                                              ; preds = %322
  %326 = load i8, i8* %25, align 1
  %327 = sext i8 %326 to i32
  %328 = icmp eq i32 %327, 91
  br i1 %328, label %329, label %331

329:                                              ; preds = %325
  %330 = load i32, i32* @B_TRUE, align 4
  br label %333

331:                                              ; preds = %325
  %332 = load i32, i32* @B_FALSE, align 4
  br label %333

333:                                              ; preds = %331, %329
  %334 = phi i32 [ %330, %329 ], [ %332, %331 ]
  store i32 %334, i32* %19, align 4
  br label %335

335:                                              ; preds = %340, %333
  %336 = load i8*, i8** %22, align 8
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %335
  %341 = load i8*, i8** %22, align 8
  %342 = getelementptr inbounds i8, i8* %341, i32 1
  store i8* %342, i8** %22, align 8
  br label %335

343:                                              ; preds = %335
  %344 = load i8*, i8** %22, align 8
  %345 = getelementptr inbounds i8, i8* %344, i32 1
  store i8* %345, i8** %22, align 8
  %346 = load i32, i32* %10, align 4
  %347 = add nsw i32 %346, -1
  store i32 %347, i32* %10, align 4
  %348 = load i8*, i8** %11, align 8
  store i8* %348, i8** %23, align 8
  %349 = load i32, i32* %19, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %363

351:                                              ; preds = %343
  store i32 128, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %352 = load i8*, i8** %22, align 8
  %353 = load i64, i64* %7, align 8
  %354 = call i32 @dtrace_strtoll(i8* %352, i32 10, i64 %353)
  store i32 %354, i32* %13, align 4
  %355 = load i32, i32* %13, align 4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %351
  %358 = load i32, i32* @B_TRUE, align 4
  br label %361

359:                                              ; preds = %351
  %360 = load i32, i32* @B_FALSE, align 4
  br label %361

361:                                              ; preds = %359, %357
  %362 = phi i32 [ %358, %357 ], [ %360, %359 ]
  store i32 %362, i32* %18, align 4
  br label %365

363:                                              ; preds = %343
  %364 = load i32, i32* @B_FALSE, align 4
  store i32 %364, i32* %18, align 4
  store i32 133, i32* %12, align 4
  br label %365

365:                                              ; preds = %363, %361
  br label %468

366:                                              ; preds = %322, %319
  %367 = load i8, i8* %25, align 1
  %368 = sext i8 %367 to i32
  %369 = icmp eq i32 %368, 91
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  store i32 1, i32* %21, align 4
  br label %372

371:                                              ; preds = %366
  store i32 1, i32* %20, align 4
  br label %372

372:                                              ; preds = %371, %370
  %373 = load i8, i8* %25, align 1
  %374 = load i8*, i8** %23, align 8
  %375 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %375, i8** %23, align 8
  store i8 %373, i8* %374, align 1
  store i32 140, i32* %12, align 4
  br label %468

376:                                              ; preds = %315
  %377 = load i8, i8* %25, align 1
  %378 = sext i8 %377 to i32
  %379 = icmp eq i32 %378, 34
  br i1 %379, label %380, label %381

380:                                              ; preds = %376
  store i32 131, i32* %12, align 4
  br label %468

381:                                              ; preds = %376
  %382 = load i8, i8* %25, align 1
  %383 = call i32 @islower(i8 signext %382)
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %389

385:                                              ; preds = %381
  %386 = load i8, i8* %25, align 1
  %387 = load i8*, i8** %23, align 8
  %388 = getelementptr inbounds i8, i8* %387, i32 1
  store i8* %388, i8** %23, align 8
  store i8 %386, i8* %387, align 1
  store i32 137, i32* %12, align 4
  br label %468

389:                                              ; preds = %381
  %390 = load i8, i8* %25, align 1
  %391 = sext i8 %390 to i32
  %392 = icmp eq i32 %391, 45
  br i1 %392, label %397, label %393

393:                                              ; preds = %389
  %394 = load i8, i8* %25, align 1
  %395 = call i32 @isdigit(i8 signext %394)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %393, %389
  %398 = load i8, i8* %25, align 1
  %399 = load i8*, i8** %23, align 8
  %400 = getelementptr inbounds i8, i8* %399, i32 1
  store i8* %400, i8** %23, align 8
  store i8 %398, i8* %399, align 1
  store i32 136, i32* %12, align 4
  br label %468

401:                                              ; preds = %393
  store i8* null, i8** %6, align 8
  br label %473

402:                                              ; preds = %47
  %403 = load i8, i8* %25, align 1
  %404 = sext i8 %403 to i32
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %402
  store i8* null, i8** %6, align 8
  br label %473

407:                                              ; preds = %402
  %408 = load i8, i8* %25, align 1
  %409 = load i8*, i8** %23, align 8
  %410 = getelementptr inbounds i8, i8* %409, i32 1
  store i8* %410, i8** %23, align 8
  store i8 %408, i8* %409, align 1
  %411 = load i8, i8* %25, align 1
  %412 = sext i8 %411 to i32
  %413 = icmp eq i32 %412, 34
  br i1 %413, label %414, label %416

414:                                              ; preds = %407
  %415 = load i32, i32* @B_TRUE, align 4
  store i32 %415, i32* %17, align 4
  store i32 131, i32* %12, align 4
  br label %468

416:                                              ; preds = %407
  %417 = load i8, i8* %25, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp eq i32 %418, 93
  br i1 %419, label %420, label %426

420:                                              ; preds = %416
  %421 = load i32, i32* %21, align 4
  %422 = add nsw i32 %421, -1
  store i32 %422, i32* %21, align 4
  %423 = icmp eq i32 %421, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %420
  store i8* null, i8** %6, align 8
  br label %473

425:                                              ; preds = %420
  br label %453

426:                                              ; preds = %416
  %427 = load i8, i8* %25, align 1
  %428 = sext i8 %427 to i32
  %429 = icmp eq i32 %428, 125
  br i1 %429, label %430, label %436

430:                                              ; preds = %426
  %431 = load i32, i32* %20, align 4
  %432 = add nsw i32 %431, -1
  store i32 %432, i32* %20, align 4
  %433 = icmp eq i32 %431, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %430
  store i8* null, i8** %6, align 8
  br label %473

435:                                              ; preds = %430
  br label %452

436:                                              ; preds = %426
  %437 = load i8, i8* %25, align 1
  %438 = sext i8 %437 to i32
  %439 = icmp eq i32 %438, 123
  br i1 %439, label %440, label %443

440:                                              ; preds = %436
  %441 = load i32, i32* %20, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %20, align 4
  br label %451

443:                                              ; preds = %436
  %444 = load i8, i8* %25, align 1
  %445 = sext i8 %444 to i32
  %446 = icmp eq i32 %445, 91
  br i1 %446, label %447, label %450

447:                                              ; preds = %443
  %448 = load i32, i32* %21, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %21, align 4
  br label %450

450:                                              ; preds = %447, %443
  br label %451

451:                                              ; preds = %450, %440
  br label %452

452:                                              ; preds = %451, %435
  br label %453

453:                                              ; preds = %452, %425
  %454 = load i32, i32* %21, align 4
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %467

456:                                              ; preds = %453
  %457 = load i32, i32* %20, align 4
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %467

459:                                              ; preds = %456
  %460 = load i32, i32* %18, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %459
  %463 = load i8*, i8** %23, align 8
  store i8 0, i8* %463, align 1
  %464 = load i8*, i8** %11, align 8
  store i8* %464, i8** %6, align 8
  br label %473

465:                                              ; preds = %459
  %466 = load i8*, i8** %11, align 8
  store i8* %466, i8** %23, align 8
  store i32 138, i32* %12, align 4
  br label %467

467:                                              ; preds = %465, %456, %453
  br label %468

468:                                              ; preds = %47, %467, %414, %397, %385, %380, %372, %365, %310, %303, %288, %262, %240, %232, %205, %199, %182, %176, %171, %166, %152, %139, %133, %103, %93, %86, %81, %74, %58, %53
  br label %469

469:                                              ; preds = %468
  %470 = load i64, i64* %24, align 8
  %471 = add i64 %470, 1
  store i64 %471, i64* %24, align 8
  br label %34

472:                                              ; preds = %34
  store i8* null, i8** %6, align 8
  br label %473

473:                                              ; preds = %472, %462, %434, %424, %406, %401, %301, %300, %274, %252, %235, %230, %229, %200, %177, %157, %130, %129, %88, %76, %46
  %474 = load i8*, i8** %6, align 8
  ret i8* %474
}

declare dso_local signext i8 @dtrace_load8(i64) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @dtrace_strtoll(i8*, i32, i64) #1

declare dso_local i32 @dtrace_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @islower(i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
