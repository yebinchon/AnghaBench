; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfigpar/extr_figpar.c_parse_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfigpar/extr_figpar.c_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.figpar_config = type { i32 (%struct.figpar_config*, i32, i8*, i8*)*, i32* }

@PATH_MAX = common dso_local global i32 0, align 4
@FIGPAR_BREAK_ON_EQUALS = common dso_local global i32 0, align 4
@FIGPAR_BREAK_ON_SEMICOLON = common dso_local global i32 0, align 4
@FIGPAR_CASE_SENSITIVE = common dso_local global i32 0, align 4
@FIGPAR_REQUIRE_EQUALS = common dso_local global i32 0, align 4
@FIGPAR_STRICT_EQUALS = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\\\\\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FNM_NOESCAPE = common dso_local global i32 0, align 4
@FNM_NOMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_config(%struct.figpar_config* %0, i8* %1, i32 (%struct.figpar_config*, i32, i8*, i8*)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.figpar_config*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (%struct.figpar_config*, i32, i8*, i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [2 x i8], align 1
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  store %struct.figpar_config* %0, %struct.figpar_config** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (%struct.figpar_config*, i32, i8*, i8*)* %2, i32 (%struct.figpar_config*, i32, i8*, i8*)** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %16, align 8
  store i64 1, i64* %26, align 8
  store i32 1, i32* %28, align 4
  %37 = load i32, i32* @PATH_MAX, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %34, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %35, align 8
  %41 = load %struct.figpar_config*, %struct.figpar_config** %6, align 8
  %42 = icmp eq %struct.figpar_config* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %4
  %44 = load i32 (%struct.figpar_config*, i32, i8*, i8*)*, i32 (%struct.figpar_config*, i32, i8*, i8*)** %8, align 8
  %45 = icmp eq i32 (%struct.figpar_config*, i32, i8*, i8*)* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

47:                                               ; preds = %43, %4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @FIGPAR_BREAK_ON_EQUALS, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 0, i32 1
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %10, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @FIGPAR_BREAK_ON_SEMICOLON, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 0, i32 1
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %11, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @FIGPAR_CASE_SENSITIVE, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 1
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %12, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @FIGPAR_REQUIRE_EQUALS, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 0, i32 1
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %18, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @FIGPAR_STRICT_EQUALS, align 4
  %78 = and i32 %76, %77
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 0, i32 1
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %19, align 8
  store i8* null, i8** %23, align 8
  store i8* null, i8** %21, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %30, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = call i64 @realpath(i8* %83, i8* %40)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %47
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

87:                                               ; preds = %47
  %88 = load i32, i32* @O_RDONLY, align 4
  %89 = call i32 @open(i8* %40, i32 %88)
  store i32 %89, i32* %25, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %752, %668, %92
  %94 = load i64, i64* %26, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %753

96:                                               ; preds = %93
  %97 = load i32, i32* %25, align 4
  %98 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %99 = call i64 @read(i32 %97, i8* %98, i32 1)
  store i64 %99, i64* %26, align 8
  br label %100

100:                                              ; preds = %145, %96
  %101 = load i64, i64* %26, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %100
  %104 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = call i64 @isspace(i8 signext %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %126, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 35
  br i1 %112, label %126, label %113

113:                                              ; preds = %108
  %114 = load i64, i64* %13, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %113
  %117 = load i64, i64* %11, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 59
  br label %124

124:                                              ; preds = %119, %116
  %125 = phi i1 [ false, %116 ], [ %123, %119 ]
  br label %126

126:                                              ; preds = %124, %113, %108, %103
  %127 = phi i1 [ true, %113 ], [ true, %108 ], [ true, %103 ], [ %125, %124 ]
  br label %128

128:                                              ; preds = %126, %100
  %129 = phi i1 [ false, %100 ], [ %127, %126 ]
  br i1 %129, label %130, label %149

130:                                              ; preds = %128
  %131 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 35
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i64 1, i64* %13, align 8
  br label %145

136:                                              ; preds = %130
  %137 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 10
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  store i64 0, i64* %13, align 8
  %142 = load i32, i32* %28, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %28, align 4
  br label %144

144:                                              ; preds = %141, %136
  br label %145

145:                                              ; preds = %144, %135
  %146 = load i32, i32* %25, align 4
  %147 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %148 = call i64 @read(i32 %146, i8* %147, i32 1)
  store i64 %148, i64* %26, align 8
  br label %100

149:                                              ; preds = %128
  %150 = load i64, i64* %26, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %25, align 4
  %154 = call i32 @close(i32 %153)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

155:                                              ; preds = %149
  %156 = load i32, i32* %25, align 4
  %157 = load i32, i32* @SEEK_CUR, align 4
  %158 = call i32 @lseek(i32 %156, i32 0, i32 %157)
  %159 = sub nsw i32 %158, 1
  store i32 %159, i32* %33, align 4
  %160 = load i32, i32* %33, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load i32, i32* %25, align 4
  %164 = call i32 @close(i32 %163)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

165:                                              ; preds = %155
  store i32 0, i32* %29, align 4
  br label %166

166:                                              ; preds = %197, %165
  %167 = load i64, i64* %26, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %200

169:                                              ; preds = %166
  %170 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %171 = load i8, i8* %170, align 1
  %172 = call i64 @isspace(i8 signext %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %200

175:                                              ; preds = %169
  %176 = load i64, i64* %10, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 61
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i64 1, i64* %16, align 8
  br label %200

184:                                              ; preds = %178, %175
  %185 = load i64, i64* %11, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 59
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %200

193:                                              ; preds = %187, %184
  %194 = load i32, i32* %25, align 4
  %195 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %196 = call i64 @read(i32 %194, i8* %195, i32 1)
  store i64 %196, i64* %26, align 8
  br label %197

197:                                              ; preds = %193
  %198 = load i32, i32* %29, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %29, align 4
  br label %166

200:                                              ; preds = %192, %183, %174, %166
  %201 = load i32, i32* %29, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = load i64, i64* %26, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32, i32* %25, align 4
  %208 = call i32 @close(i32 %207)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

209:                                              ; preds = %203, %200
  %210 = load i32, i32* %25, align 4
  %211 = load i32, i32* %33, align 4
  %212 = load i32, i32* @SEEK_SET, align 4
  %213 = call i32 @lseek(i32 %210, i32 %211, i32 %212)
  store i32 %213, i32* %24, align 4
  %214 = load i32, i32* %24, align 4
  %215 = load i32, i32* %33, align 4
  %216 = sub nsw i32 %215, 1
  %217 = icmp eq i32 %214, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %209
  %219 = load i32, i32* %25, align 4
  %220 = call i32 @close(i32 %219)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

221:                                              ; preds = %209
  %222 = load i32, i32* %29, align 4
  %223 = load i32, i32* %27, align 4
  %224 = icmp sgt i32 %222, %223
  br i1 %224, label %225, label %236

225:                                              ; preds = %221
  %226 = load i8*, i8** %21, align 8
  %227 = load i32, i32* %29, align 4
  %228 = add nsw i32 %227, 1
  %229 = call i8* @realloc(i8* %226, i32 %228)
  store i8* %229, i8** %21, align 8
  %230 = icmp eq i8* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %225
  %232 = load i32, i32* %25, align 4
  %233 = call i32 @close(i32 %232)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

234:                                              ; preds = %225
  %235 = load i32, i32* %29, align 4
  store i32 %235, i32* %27, align 4
  br label %236

236:                                              ; preds = %234, %221
  %237 = load i32, i32* %25, align 4
  %238 = load i8*, i8** %21, align 8
  %239 = load i32, i32* %29, align 4
  %240 = call i64 @read(i32 %237, i8* %238, i32 %239)
  store i64 %240, i64* %26, align 8
  %241 = load i64, i64* %10, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %268

243:                                              ; preds = %236
  %244 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 61
  br i1 %247, label %248, label %268

248:                                              ; preds = %243
  %249 = load i32, i32* %25, align 4
  %250 = load i32, i32* @SEEK_CUR, align 4
  %251 = call i32 @lseek(i32 %249, i32 1, i32 %250)
  %252 = icmp ne i32 %251, -1
  br i1 %252, label %253, label %257

253:                                              ; preds = %248
  %254 = load i32, i32* %25, align 4
  %255 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %256 = call i64 @read(i32 %254, i8* %255, i32 1)
  store i64 %256, i64* %26, align 8
  br label %257

257:                                              ; preds = %253, %248
  %258 = load i64, i64* %19, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %257
  %261 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %262 = load i8, i8* %261, align 1
  %263 = call i64 @isspace(i8 signext %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  store i8 10, i8* %266, align 1
  br label %267

267:                                              ; preds = %265, %260, %257
  br label %268

268:                                              ; preds = %267, %243, %236
  %269 = load i8*, i8** %21, align 8
  %270 = load i32, i32* %29, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  store i8 0, i8* %272, align 1
  %273 = load i64, i64* %12, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %268
  %276 = load i8*, i8** %21, align 8
  %277 = call i32 @strtolower(i8* %276)
  br label %278

278:                                              ; preds = %275, %268
  %279 = load i64, i64* %11, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %278
  %282 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp eq i32 %284, 59
  br i1 %285, label %315, label %286

286:                                              ; preds = %281, %278
  %287 = load i64, i64* %19, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %286
  %290 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp eq i32 %292, 61
  br i1 %293, label %315, label %294

294:                                              ; preds = %289, %286
  br label %295

295:                                              ; preds = %310, %294
  %296 = load i64, i64* %26, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %308

298:                                              ; preds = %295
  %299 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %300 = load i8, i8* %299, align 1
  %301 = call i64 @isspace(i8 signext %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %298
  %304 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = icmp ne i32 %306, 10
  br label %308

308:                                              ; preds = %303, %298, %295
  %309 = phi i1 [ false, %298 ], [ false, %295 ], [ %307, %303 ]
  br i1 %309, label %310, label %314

310:                                              ; preds = %308
  %311 = load i32, i32* %25, align 4
  %312 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %313 = call i64 @read(i32 %311, i8* %312, i32 1)
  store i64 %313, i64* %26, align 8
  br label %295

314:                                              ; preds = %308
  br label %315

315:                                              ; preds = %314, %289, %281
  %316 = load i64, i64* %26, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %353

318:                                              ; preds = %315
  %319 = load i64, i64* %10, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %353

321:                                              ; preds = %318
  %322 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 %324, 61
  br i1 %325, label %326, label %353

326:                                              ; preds = %321
  %327 = load i64, i64* %19, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %353, label %329

329:                                              ; preds = %326
  store i64 1, i64* %16, align 8
  %330 = load i32, i32* %25, align 4
  %331 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %332 = call i64 @read(i32 %330, i8* %331, i32 1)
  store i64 %332, i64* %26, align 8
  br label %333

333:                                              ; preds = %348, %329
  %334 = load i64, i64* %26, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %346

336:                                              ; preds = %333
  %337 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %338 = load i8, i8* %337, align 1
  %339 = call i64 @isspace(i8 signext %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %336
  %342 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp ne i32 %344, 10
  br label %346

346:                                              ; preds = %341, %336, %333
  %347 = phi i1 [ false, %336 ], [ false, %333 ], [ %345, %341 ]
  br i1 %347, label %348, label %352

348:                                              ; preds = %346
  %349 = load i32, i32* %25, align 4
  %350 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %351 = call i64 @read(i32 %349, i8* %350, i32 1)
  store i64 %351, i64* %26, align 8
  br label %333

352:                                              ; preds = %346
  br label %353

353:                                              ; preds = %352, %326, %321, %318, %315
  %354 = load i64, i64* %26, align 8
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %374, label %356

356:                                              ; preds = %353
  %357 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp eq i32 %359, 10
  br i1 %360, label %374, label %361

361:                                              ; preds = %356
  %362 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp eq i32 %364, 35
  br i1 %365, label %374, label %366

366:                                              ; preds = %361
  %367 = load i64, i64* %11, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %386

369:                                              ; preds = %366
  %370 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp eq i32 %372, 59
  br i1 %373, label %374, label %386

374:                                              ; preds = %369, %361, %356, %353
  %375 = load i8*, i8** %23, align 8
  %376 = icmp eq i8* %375, null
  br i1 %376, label %377, label %383

377:                                              ; preds = %374
  %378 = call i8* @malloc(i32 1)
  store i8* %378, i8** %23, align 8
  %379 = icmp eq i8* %378, null
  br i1 %379, label %380, label %383

380:                                              ; preds = %377
  %381 = load i32, i32* %25, align 4
  %382 = call i32 @close(i32 %381)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

383:                                              ; preds = %377, %374
  %384 = load i8*, i8** %23, align 8
  %385 = getelementptr inbounds i8, i8* %384, i64 0
  store i8 0, i8* %385, align 1
  br label %643

386:                                              ; preds = %369, %366
  %387 = load i32, i32* %25, align 4
  %388 = load i32, i32* @SEEK_CUR, align 4
  %389 = call i32 @lseek(i32 %387, i32 0, i32 %388)
  %390 = sub nsw i32 %389, 1
  store i32 %390, i32* %33, align 4
  %391 = load i32, i32* %33, align 4
  %392 = icmp eq i32 %391, -1
  br i1 %392, label %393, label %396

393:                                              ; preds = %386
  %394 = load i32, i32* %25, align 4
  %395 = call i32 @close(i32 %394)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

396:                                              ; preds = %386
  store i64 0, i64* %17, align 8
  store i64 0, i64* %14, align 8
  br label %397

397:                                              ; preds = %529, %428, %396
  %398 = load i64, i64* %26, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %397
  %401 = load i64, i64* %14, align 8
  %402 = icmp eq i64 %401, 0
  br label %403

403:                                              ; preds = %400, %397
  %404 = phi i1 [ false, %397 ], [ %402, %400 ]
  br i1 %404, label %405, label %533

405:                                              ; preds = %403
  %406 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %407 = load i8, i8* %406, align 1
  %408 = sext i8 %407 to i32
  %409 = icmp ne i32 %408, 34
  br i1 %409, label %410, label %432

410:                                              ; preds = %405
  %411 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %412 = load i8, i8* %411, align 1
  %413 = sext i8 %412 to i32
  %414 = icmp ne i32 %413, 35
  br i1 %414, label %415, label %432

415:                                              ; preds = %410
  %416 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp ne i32 %418, 10
  br i1 %419, label %420, label %432

420:                                              ; preds = %415
  %421 = load i64, i64* %11, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %428

423:                                              ; preds = %420
  %424 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %425 = load i8, i8* %424, align 1
  %426 = sext i8 %425 to i32
  %427 = icmp ne i32 %426, 59
  br i1 %427, label %428, label %432

428:                                              ; preds = %423, %420
  %429 = load i32, i32* %25, align 4
  %430 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %431 = call i64 @read(i32 %429, i8* %430, i32 1)
  store i64 %431, i64* %26, align 8
  br label %397

432:                                              ; preds = %423, %415, %410, %405
  %433 = load i32, i32* %25, align 4
  %434 = load i32, i32* @SEEK_CUR, align 4
  %435 = call i32 @lseek(i32 %433, i32 0, i32 %434)
  %436 = sub nsw i32 %435, 1
  store i32 %436, i32* %32, align 4
  %437 = load i32, i32* %32, align 4
  %438 = icmp eq i32 %437, -1
  br i1 %438, label %439, label %442

439:                                              ; preds = %432
  %440 = load i32, i32* %25, align 4
  %441 = call i32 @close(i32 %440)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

442:                                              ; preds = %432
  %443 = load i32, i32* %25, align 4
  %444 = load i32, i32* @SEEK_CUR, align 4
  %445 = call i32 @lseek(i32 %443, i32 -2, i32 %444)
  store i32 %445, i32* %24, align 4
  %446 = load i32, i32* %24, align 4
  %447 = icmp eq i32 %446, -3
  br i1 %447, label %448, label %451

448:                                              ; preds = %442
  %449 = load i32, i32* %25, align 4
  %450 = call i32 @close(i32 %449)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

451:                                              ; preds = %442
  %452 = load i32, i32* %25, align 4
  %453 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %454 = call i64 @read(i32 %452, i8* %453, i32 1)
  store i64 %454, i64* %26, align 8
  store i32 1, i32* %29, align 4
  br label %455

455:                                              ; preds = %473, %451
  %456 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %457 = load i8, i8* %456, align 1
  %458 = sext i8 %457 to i32
  %459 = icmp eq i32 %458, 92
  br i1 %459, label %460, label %476

460:                                              ; preds = %455
  %461 = load i32, i32* %25, align 4
  %462 = load i32, i32* @SEEK_CUR, align 4
  %463 = call i32 @lseek(i32 %461, i32 -2, i32 %462)
  store i32 %463, i32* %24, align 4
  %464 = load i32, i32* %24, align 4
  %465 = icmp eq i32 %464, -3
  br i1 %465, label %466, label %469

466:                                              ; preds = %460
  %467 = load i32, i32* %25, align 4
  %468 = call i32 @close(i32 %467)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

469:                                              ; preds = %460
  %470 = load i32, i32* %25, align 4
  %471 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %472 = call i64 @read(i32 %470, i8* %471, i32 1)
  store i64 %472, i64* %26, align 8
  br label %473

473:                                              ; preds = %469
  %474 = load i32, i32* %29, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %29, align 4
  br label %455

476:                                              ; preds = %455
  %477 = load i32, i32* %25, align 4
  %478 = load i32, i32* %32, align 4
  %479 = load i32, i32* @SEEK_SET, align 4
  %480 = call i32 @lseek(i32 %477, i32 %478, i32 %479)
  store i32 %480, i32* %24, align 4
  %481 = load i32, i32* %24, align 4
  %482 = load i32, i32* %32, align 4
  %483 = sub nsw i32 %482, 1
  %484 = icmp eq i32 %481, %483
  br i1 %484, label %485, label %488

485:                                              ; preds = %476
  %486 = load i32, i32* %25, align 4
  %487 = call i32 @close(i32 %486)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

488:                                              ; preds = %476
  %489 = load i32, i32* %25, align 4
  %490 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %491 = call i64 @read(i32 %489, i8* %490, i32 1)
  store i64 %491, i64* %26, align 8
  %492 = load i32, i32* %29, align 4
  %493 = and i32 %492, 1
  %494 = icmp eq i32 %493, 1
  br i1 %494, label %495, label %520

495:                                              ; preds = %488
  %496 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %497 = load i8, i8* %496, align 1
  %498 = sext i8 %497 to i32
  switch i32 %498, label %519 [
    i32 34, label %499
    i32 35, label %505
    i32 10, label %510
    i32 59, label %511
  ]

499:                                              ; preds = %495
  %500 = load i64, i64* %17, align 8
  %501 = icmp ne i64 %500, 0
  %502 = xor i1 %501, true
  %503 = zext i1 %502 to i32
  %504 = sext i32 %503 to i64
  store i64 %504, i64* %17, align 8
  br label %519

505:                                              ; preds = %495
  %506 = load i64, i64* %17, align 8
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %509, label %508

508:                                              ; preds = %505
  store i64 1, i64* %14, align 8
  br label %509

509:                                              ; preds = %508, %505
  br label %519

510:                                              ; preds = %495
  store i64 1, i64* %14, align 8
  br label %511

511:                                              ; preds = %495, %510
  %512 = load i64, i64* %17, align 8
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %518, label %514

514:                                              ; preds = %511
  %515 = load i64, i64* %11, align 8
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %514
  store i64 1, i64* %14, align 8
  br label %518

518:                                              ; preds = %517, %514, %511
  br label %519

519:                                              ; preds = %495, %518, %509, %499
  br label %529

520:                                              ; preds = %488
  %521 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %522 = load i8, i8* %521, align 1
  %523 = sext i8 %522 to i32
  %524 = icmp eq i32 %523, 10
  br i1 %524, label %525, label %528

525:                                              ; preds = %520
  %526 = load i32, i32* %28, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %28, align 4
  br label %528

528:                                              ; preds = %525, %520
  br label %529

529:                                              ; preds = %528, %519
  %530 = load i32, i32* %25, align 4
  %531 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %532 = call i64 @read(i32 %530, i8* %531, i32 1)
  store i64 %532, i64* %26, align 8
  br label %397

533:                                              ; preds = %403
  %534 = load i32, i32* %25, align 4
  %535 = load i32, i32* @SEEK_CUR, align 4
  %536 = call i32 @lseek(i32 %534, i32 0, i32 %535)
  %537 = sub nsw i32 %536, 1
  store i32 %537, i32* %32, align 4
  %538 = load i32, i32* %32, align 4
  %539 = icmp eq i32 %538, -1
  br i1 %539, label %540, label %543

540:                                              ; preds = %533
  %541 = load i32, i32* %25, align 4
  %542 = call i32 @close(i32 %541)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

543:                                              ; preds = %533
  %544 = load i32, i32* %32, align 4
  %545 = load i32, i32* %33, align 4
  %546 = sub nsw i32 %544, %545
  store i32 %546, i32* %29, align 4
  %547 = load i64, i64* %26, align 8
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %552

549:                                              ; preds = %543
  %550 = load i32, i32* %29, align 4
  %551 = add nsw i32 %550, -1
  store i32 %551, i32* %29, align 4
  br label %552

552:                                              ; preds = %549, %543
  %553 = load i32, i32* %25, align 4
  %554 = load i32, i32* %33, align 4
  %555 = load i32, i32* @SEEK_SET, align 4
  %556 = call i32 @lseek(i32 %553, i32 %554, i32 %555)
  store i32 %556, i32* %24, align 4
  %557 = load i32, i32* %24, align 4
  %558 = load i32, i32* %33, align 4
  %559 = sub nsw i32 %558, 1
  %560 = icmp eq i32 %557, %559
  br i1 %560, label %561, label %564

561:                                              ; preds = %552
  %562 = load i32, i32* %25, align 4
  %563 = call i32 @close(i32 %562)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

564:                                              ; preds = %552
  %565 = load i32, i32* %29, align 4
  %566 = load i32, i32* %30, align 4
  %567 = icmp sgt i32 %565, %566
  br i1 %567, label %568, label %579

568:                                              ; preds = %564
  %569 = load i8*, i8** %23, align 8
  %570 = load i32, i32* %29, align 4
  %571 = add nsw i32 %570, 1
  %572 = call i8* @realloc(i8* %569, i32 %571)
  store i8* %572, i8** %23, align 8
  %573 = icmp eq i8* %572, null
  br i1 %573, label %574, label %577

574:                                              ; preds = %568
  %575 = load i32, i32* %25, align 4
  %576 = call i32 @close(i32 %575)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

577:                                              ; preds = %568
  %578 = load i32, i32* %29, align 4
  store i32 %578, i32* %30, align 4
  br label %579

579:                                              ; preds = %577, %564
  %580 = load i32, i32* %25, align 4
  %581 = load i8*, i8** %23, align 8
  %582 = load i32, i32* %29, align 4
  %583 = call i64 @read(i32 %580, i8* %581, i32 %582)
  store i64 %583, i64* %26, align 8
  %584 = load i8*, i8** %23, align 8
  %585 = load i32, i32* %29, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i8, i8* %584, i64 %586
  store i8 0, i8* %587, align 1
  %588 = load i8*, i8** %23, align 8
  %589 = load i32, i32* %29, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i8, i8* %588, i64 %590
  store i8* %591, i8** %22, align 8
  br label %592

592:                                              ; preds = %598, %579
  %593 = load i8*, i8** %22, align 8
  %594 = getelementptr inbounds i8, i8* %593, i32 -1
  store i8* %594, i8** %22, align 8
  %595 = load i8, i8* %594, align 1
  %596 = call i64 @isspace(i8 signext %595)
  %597 = icmp ne i64 %596, 0
  br i1 %597, label %598, label %600

598:                                              ; preds = %592
  %599 = load i8*, i8** %22, align 8
  store i8 0, i8* %599, align 1
  br label %592

600:                                              ; preds = %592
  %601 = load i8*, i8** %23, align 8
  %602 = call i32 @strcount(i8* %601, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %602, i32* %31, align 4
  %603 = load i32, i32* %31, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %626

605:                                              ; preds = %600
  %606 = load i32, i32* %29, align 4
  %607 = load i32, i32* %31, align 4
  %608 = add nsw i32 %606, %607
  %609 = load i32, i32* %30, align 4
  %610 = icmp sgt i32 %608, %609
  br i1 %610, label %611, label %626

611:                                              ; preds = %605
  %612 = load i8*, i8** %23, align 8
  %613 = load i32, i32* %29, align 4
  %614 = load i32, i32* %31, align 4
  %615 = add nsw i32 %613, %614
  %616 = add nsw i32 %615, 1
  %617 = call i8* @realloc(i8* %612, i32 %616)
  store i8* %617, i8** %23, align 8
  %618 = icmp eq i8* %617, null
  br i1 %618, label %619, label %622

619:                                              ; preds = %611
  %620 = load i32, i32* %25, align 4
  %621 = call i32 @close(i32 %620)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

622:                                              ; preds = %611
  %623 = load i32, i32* %29, align 4
  %624 = load i32, i32* %31, align 4
  %625 = add nsw i32 %623, %624
  store i32 %625, i32* %30, align 4
  br label %626

626:                                              ; preds = %622, %605, %600
  %627 = load i8*, i8** %23, align 8
  %628 = call i64 @replaceall(i8* %627, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %629 = icmp slt i64 %628, 0
  br i1 %629, label %630, label %633

630:                                              ; preds = %626
  %631 = load i32, i32* %25, align 4
  %632 = call i32 @close(i32 %631)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

633:                                              ; preds = %626
  %634 = load i8*, i8** %23, align 8
  %635 = call i64 @replaceall(i8* %634, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %636 = icmp slt i64 %635, 0
  br i1 %636, label %637, label %640

637:                                              ; preds = %633
  %638 = load i32, i32* %25, align 4
  %639 = call i32 @close(i32 %638)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

640:                                              ; preds = %633
  %641 = load i8*, i8** %23, align 8
  %642 = call i32 @strexpand(i8* %641)
  br label %643

643:                                              ; preds = %640, %383
  %644 = load i64, i64* %18, align 8
  %645 = icmp ne i64 %644, 0
  br i1 %645, label %646, label %650

646:                                              ; preds = %643
  %647 = load i64, i64* %16, align 8
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %650, label %649

649:                                              ; preds = %646
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

650:                                              ; preds = %646, %643
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  %651 = load %struct.figpar_config*, %struct.figpar_config** %6, align 8
  %652 = icmp eq %struct.figpar_config* %651, null
  br i1 %652, label %653, label %669

653:                                              ; preds = %650
  %654 = load i32 (%struct.figpar_config*, i32, i8*, i8*)*, i32 (%struct.figpar_config*, i32, i8*, i8*)** %8, align 8
  %655 = icmp ne i32 (%struct.figpar_config*, i32, i8*, i8*)* %654, null
  br i1 %655, label %656, label %669

656:                                              ; preds = %653
  %657 = load i32 (%struct.figpar_config*, i32, i8*, i8*)*, i32 (%struct.figpar_config*, i32, i8*, i8*)** %8, align 8
  %658 = load i32, i32* %28, align 4
  %659 = load i8*, i8** %21, align 8
  %660 = load i8*, i8** %23, align 8
  %661 = call i32 %657(%struct.figpar_config* null, i32 %658, i8* %659, i8* %660)
  store i32 %661, i32* %24, align 4
  %662 = load i32, i32* %24, align 4
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %668

664:                                              ; preds = %656
  %665 = load i32, i32* %25, align 4
  %666 = call i32 @close(i32 %665)
  %667 = load i32, i32* %24, align 4
  store i32 %667, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

668:                                              ; preds = %656
  br label %93

669:                                              ; preds = %653, %650
  store i32 0, i32* %29, align 4
  br label %670

670:                                              ; preds = %730, %669
  %671 = load %struct.figpar_config*, %struct.figpar_config** %6, align 8
  %672 = load i32, i32* %29, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds %struct.figpar_config, %struct.figpar_config* %671, i64 %673
  %675 = getelementptr inbounds %struct.figpar_config, %struct.figpar_config* %674, i32 0, i32 1
  %676 = load i32*, i32** %675, align 8
  %677 = icmp ne i32* %676, null
  br i1 %677, label %678, label %733

678:                                              ; preds = %670
  %679 = load %struct.figpar_config*, %struct.figpar_config** %6, align 8
  %680 = load i32, i32* %29, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds %struct.figpar_config, %struct.figpar_config* %679, i64 %681
  %683 = getelementptr inbounds %struct.figpar_config, %struct.figpar_config* %682, i32 0, i32 1
  %684 = load i32*, i32** %683, align 8
  %685 = load i8*, i8** %21, align 8
  %686 = load i32, i32* @FNM_NOESCAPE, align 4
  %687 = call i32 @fnmatch(i32* %684, i8* %685, i32 %686)
  store i32 %687, i32* %24, align 4
  %688 = load i32, i32* %24, align 4
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %690, label %721

690:                                              ; preds = %678
  store i64 1, i64* %15, align 8
  %691 = load %struct.figpar_config*, %struct.figpar_config** %6, align 8
  %692 = load i32, i32* %29, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds %struct.figpar_config, %struct.figpar_config* %691, i64 %693
  %695 = getelementptr inbounds %struct.figpar_config, %struct.figpar_config* %694, i32 0, i32 0
  %696 = load i32 (%struct.figpar_config*, i32, i8*, i8*)*, i32 (%struct.figpar_config*, i32, i8*, i8*)** %695, align 8
  %697 = icmp ne i32 (%struct.figpar_config*, i32, i8*, i8*)* %696, null
  br i1 %697, label %698, label %720

698:                                              ; preds = %690
  %699 = load %struct.figpar_config*, %struct.figpar_config** %6, align 8
  %700 = load i32, i32* %29, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds %struct.figpar_config, %struct.figpar_config* %699, i64 %701
  %703 = getelementptr inbounds %struct.figpar_config, %struct.figpar_config* %702, i32 0, i32 0
  %704 = load i32 (%struct.figpar_config*, i32, i8*, i8*)*, i32 (%struct.figpar_config*, i32, i8*, i8*)** %703, align 8
  %705 = load %struct.figpar_config*, %struct.figpar_config** %6, align 8
  %706 = load i32, i32* %29, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.figpar_config, %struct.figpar_config* %705, i64 %707
  %709 = load i32, i32* %28, align 4
  %710 = load i8*, i8** %21, align 8
  %711 = load i8*, i8** %23, align 8
  %712 = call i32 %704(%struct.figpar_config* %708, i32 %709, i8* %710, i8* %711)
  store i32 %712, i32* %24, align 4
  %713 = load i32, i32* %24, align 4
  %714 = icmp ne i32 %713, 0
  br i1 %714, label %715, label %719

715:                                              ; preds = %698
  %716 = load i32, i32* %25, align 4
  %717 = call i32 @close(i32 %716)
  %718 = load i32, i32* %24, align 4
  store i32 %718, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

719:                                              ; preds = %698
  br label %720

720:                                              ; preds = %719, %690
  br label %729

721:                                              ; preds = %678
  %722 = load i32, i32* %24, align 4
  %723 = load i32, i32* @FNM_NOMATCH, align 4
  %724 = icmp ne i32 %722, %723
  br i1 %724, label %725, label %728

725:                                              ; preds = %721
  %726 = load i32, i32* %25, align 4
  %727 = call i32 @close(i32 %726)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

728:                                              ; preds = %721
  br label %729

729:                                              ; preds = %728, %720
  br label %730

730:                                              ; preds = %729
  %731 = load i32, i32* %29, align 4
  %732 = add nsw i32 %731, 1
  store i32 %732, i32* %29, align 4
  br label %670

733:                                              ; preds = %670
  %734 = load i64, i64* %15, align 8
  %735 = icmp ne i64 %734, 0
  br i1 %735, label %752, label %736

736:                                              ; preds = %733
  %737 = load i32 (%struct.figpar_config*, i32, i8*, i8*)*, i32 (%struct.figpar_config*, i32, i8*, i8*)** %8, align 8
  %738 = icmp ne i32 (%struct.figpar_config*, i32, i8*, i8*)* %737, null
  br i1 %738, label %739, label %752

739:                                              ; preds = %736
  %740 = load i32 (%struct.figpar_config*, i32, i8*, i8*)*, i32 (%struct.figpar_config*, i32, i8*, i8*)** %8, align 8
  %741 = load i32, i32* %28, align 4
  %742 = load i8*, i8** %21, align 8
  %743 = load i8*, i8** %23, align 8
  %744 = call i32 %740(%struct.figpar_config* null, i32 %741, i8* %742, i8* %743)
  store i32 %744, i32* %24, align 4
  %745 = load i32, i32* %24, align 4
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %747, label %751

747:                                              ; preds = %739
  %748 = load i32, i32* %25, align 4
  %749 = call i32 @close(i32 %748)
  %750 = load i32, i32* %24, align 4
  store i32 %750, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

751:                                              ; preds = %739
  br label %752

752:                                              ; preds = %751, %736, %733
  br label %93

753:                                              ; preds = %93
  %754 = load i32, i32* %25, align 4
  %755 = call i32 @close(i32 %754)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %36, align 4
  br label %756

756:                                              ; preds = %753, %747, %725, %715, %664, %649, %637, %630, %619, %574, %561, %540, %485, %466, %448, %439, %393, %380, %231, %218, %206, %162, %152, %91, %86, %46
  %757 = load i8*, i8** %34, align 8
  call void @llvm.stackrestore(i8* %757)
  %758 = load i32, i32* %5, align 4
  ret i32 %758
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @realpath(i8*, i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @read(i32, i8*, i32) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @lseek(i32, i32, i32) #2

declare dso_local i8* @realloc(i8*, i32) #2

declare dso_local i32 @strtolower(i8*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @strcount(i8*, i8*) #2

declare dso_local i64 @replaceall(i8*, i8*, i8*) #2

declare dso_local i32 @strexpand(i8*) #2

declare dso_local i32 @fnmatch(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
