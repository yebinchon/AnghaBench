; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_spec.c_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_spec.c_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i8*, %struct.TYPE_11__*, i64, %struct.TYPE_11__*, %struct.TYPE_11__* }

@mtree_lineno = common dso_local global i64 0, align 8
@FPARSELN_UNESCCOMM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"missing field\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"invalid specification `%s'\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@F_DIR = common dso_local global i64 0, align 8
@F_DONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"no parent node\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"realloc: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"strunvis failed on `%s'\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"missing directory in specification\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%s: empty leaf element\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"?*[\00", align 1
@F_MAGIC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [36 x i8] c"root node must be the directory `.'\00", align 1
@MAGIC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @spec(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  store i8* null, i8** %13, align 8
  store i64 0, i64* %15, align 8
  %17 = call i32 @memset(%struct.TYPE_11__* %10, i32 0, i32 56)
  store i64 0, i64* @mtree_lineno, align 8
  br label %18

18:                                               ; preds = %357, %1
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @FPARSELN_UNESCCOMM, align 4
  %21 = call i8* @fparseln(i32* %19, i32* null, i64* @mtree_lineno, i32* null, i32 %20)
  store i8* %21, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %360

23:                                               ; preds = %18
  %24 = load i8*, i8** %12, align 8
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %38, %23
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isspace(i8 zeroext %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  br label %25

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %357

46:                                               ; preds = %41
  %47 = load i8*, i8** %12, align 8
  store i8* %47, i8** %9, align 8
  br label %48

48:                                               ; preds = %58, %46
  %49 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %49, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i1 [ false, %48 ], [ %55, %51 ]
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  br label %48

59:                                               ; preds = %56
  %60 = load i8*, i8** %7, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 47
  br i1 %69, label %70, label %91

70:                                               ; preds = %64
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @set(i8* %76, %struct.TYPE_11__* %10)
  br label %90

78:                                               ; preds = %70
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @unset(i8* %84, %struct.TYPE_11__* %10)
  br label %89

86:                                               ; preds = %78
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89, %75
  br label %357

91:                                               ; preds = %64
  %92 = load i8*, i8** %7, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %129

95:                                               ; preds = %91
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %97 = icmp eq %struct.TYPE_11__* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %127

99:                                               ; preds = %95
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @F_DIR, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %112, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @F_DONE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %105, %99
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %115 = icmp eq %struct.TYPE_11__* %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %127

117:                                              ; preds = %112
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  store %struct.TYPE_11__* %120, %struct.TYPE_11__** %4, align 8
  br label %121

121:                                              ; preds = %117, %105
  %122 = load i32, i32* @F_DONE, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %357

127:                                              ; preds = %116, %98
  %128 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %91
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 @strlen(i8* %130)
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %16, align 8
  %134 = load i64, i64* %16, align 8
  %135 = load i64, i64* %15, align 8
  %136 = icmp ugt i64 %134, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %129
  %138 = load i8*, i8** %13, align 8
  %139 = load i64, i64* %16, align 8
  %140 = call i8* @realloc(i8* %138, i64 %139)
  store i8* %140, i8** %14, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* @errno, align 4
  %144 = call i32 @strerror(i32 %143)
  %145 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %142, %137
  %147 = load i8*, i8** %14, align 8
  store i8* %147, i8** %13, align 8
  %148 = load i64, i64* %16, align 8
  store i64 %148, i64* %15, align 8
  br label %149

149:                                              ; preds = %146, %129
  %150 = load i8*, i8** %13, align 8
  %151 = load i8*, i8** %7, align 8
  %152 = call i32 @strunvis(i8* %150, i8* %151)
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %154, %149
  %158 = load i8*, i8** %13, align 8
  store i8* %158, i8** %7, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = call i8* @strchr(i8* %159, i8 signext 47)
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %226

162:                                              ; preds = %157
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %163, %struct.TYPE_11__** %6, align 8
  br label %164

164:                                              ; preds = %214, %162
  %165 = load i8*, i8** %7, align 8
  %166 = call i8* @strchr(i8* %165, i8 signext 47)
  store i8* %166, i8** %8, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %217

168:                                              ; preds = %164
  %169 = load i8*, i8** %7, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = icmp eq i8* %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %214

173:                                              ; preds = %168
  %174 = load i8*, i8** %8, align 8
  store i8 0, i8* %174, align 1
  %175 = load i8*, i8** %7, align 8
  %176 = call i64 @strcmp(i8* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %173
  br label %179

179:                                              ; preds = %191, %178
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %181 = icmp ne %struct.TYPE_11__* %180, null
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = load i8*, i8** %7, align 8
  %187 = call i64 @strcmp(i8* %185, i8* %186)
  %188 = icmp ne i64 %187, 0
  br label %189

189:                                              ; preds = %182, %179
  %190 = phi i1 [ false, %179 ], [ %188, %182 ]
  br i1 %190, label %191, label %195

191:                                              ; preds = %189
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 6
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  store %struct.TYPE_11__* %194, %struct.TYPE_11__** %6, align 8
  br label %179

195:                                              ; preds = %189
  br label %196

196:                                              ; preds = %195, %173
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %198 = icmp eq %struct.TYPE_11__* %197, null
  br i1 %198, label %205, label %199

199:                                              ; preds = %196
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @F_DIR, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %199, %196
  %206 = load i8*, i8** %13, align 8
  %207 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %206, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %208

208:                                              ; preds = %205, %199
  %209 = load i8*, i8** %8, align 8
  store i8 47, i8* %209, align 1
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %210, %struct.TYPE_11__** %5, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 5
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  store %struct.TYPE_11__* %213, %struct.TYPE_11__** %6, align 8
  br label %214

214:                                              ; preds = %208, %172
  %215 = load i8*, i8** %8, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 1
  store i8* %216, i8** %7, align 8
  br label %164

217:                                              ; preds = %164
  %218 = load i8*, i8** %7, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load i8*, i8** %13, align 8
  %224 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %223)
  br label %225

225:                                              ; preds = %222, %217
  br label %226

226:                                              ; preds = %225, %157
  %227 = load i8*, i8** %7, align 8
  %228 = call i32 @strlen(i8* %227)
  %229 = sext i32 %228 to i64
  %230 = add i64 56, %229
  %231 = trunc i64 %230 to i32
  %232 = call %struct.TYPE_11__* @calloc(i32 1, i32 %231)
  store %struct.TYPE_11__* %232, %struct.TYPE_11__** %3, align 8
  %233 = icmp eq %struct.TYPE_11__* %232, null
  br i1 %233, label %234, label %238

234:                                              ; preds = %226
  %235 = load i32, i32* @errno, align 4
  %236 = call i32 @strerror(i32 %235)
  %237 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %236)
  br label %238

238:                                              ; preds = %234, %226
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %240 = bitcast %struct.TYPE_11__* %239 to i8*
  %241 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %240, i8* align 8 %241, i64 56, i1 false)
  %242 = load i64, i64* @mtree_lineno, align 8
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 4
  store i64 %242, i64* %244, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 2
  %247 = load i8*, i8** %246, align 8
  %248 = load i8*, i8** %7, align 8
  %249 = call i32 @strcpy(i8* %247, i8* %248)
  %250 = load i8*, i8** %7, align 8
  %251 = call i64 @strpbrk(i8* %250, i32 ptrtoint ([4 x i8]* @.str.14 to i32))
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %238
  %254 = load i32, i32* @F_MAGIC, align 4
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  br label %259

259:                                              ; preds = %253, %238
  %260 = load i8*, i8** %9, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %262 = call i32 @set(i8* %260, %struct.TYPE_11__* %261)
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %264 = icmp eq %struct.TYPE_11__* %263, null
  br i1 %264, label %265, label %299

265:                                              ; preds = %259
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 2
  %268 = load i8*, i8** %267, align 8
  %269 = call i64 @strcmp(i8* %268, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %280

271:                                              ; preds = %265
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %271
  %277 = load i64, i64* @F_DIR, align 8
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  store i64 %277, i64* %279, align 8
  br label %280

280:                                              ; preds = %276, %271, %265
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 2
  %283 = load i8*, i8** %282, align 8
  %284 = call i64 @strcmp(i8* %283, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %292, label %286

286:                                              ; preds = %280
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @F_DIR, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %286, %280
  %293 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %286
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %295, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %295, %struct.TYPE_11__** %4, align 8
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 3
  store %struct.TYPE_11__* %296, %struct.TYPE_11__** %298, align 8
  br label %356

299:                                              ; preds = %259
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %301 = icmp ne %struct.TYPE_11__* %300, null
  br i1 %301, label %302, label %310

302:                                              ; preds = %299
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 3
  store %struct.TYPE_11__* %303, %struct.TYPE_11__** %305, align 8
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %308 = call i32 @addchild(%struct.TYPE_11__* %306, %struct.TYPE_11__* %307)
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %309, %struct.TYPE_11__** %4, align 8
  br label %355

310:                                              ; preds = %299
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 2
  %313 = load i8*, i8** %312, align 8
  %314 = call i64 @strcmp(i8* %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %310
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %319 = call i32 @replacenode(%struct.TYPE_11__* %317, %struct.TYPE_11__* %318)
  br label %354

320:                                              ; preds = %310
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @F_DIR, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %341

326:                                              ; preds = %320
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @F_DONE, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %341, label %333

333:                                              ; preds = %326
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 3
  store %struct.TYPE_11__* %334, %struct.TYPE_11__** %336, align 8
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %339 = call i32 @addchild(%struct.TYPE_11__* %337, %struct.TYPE_11__* %338)
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %340, %struct.TYPE_11__** %4, align 8
  br label %353

341:                                              ; preds = %326, %320
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 3
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %343, align 8
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 3
  store %struct.TYPE_11__* %344, %struct.TYPE_11__** %346, align 8
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 3
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %348, align 8
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %351 = call i32 @addchild(%struct.TYPE_11__* %349, %struct.TYPE_11__* %350)
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %352, %struct.TYPE_11__** %4, align 8
  br label %353

353:                                              ; preds = %341, %333
  br label %354

354:                                              ; preds = %353, %316
  br label %355

355:                                              ; preds = %354, %302
  br label %356

356:                                              ; preds = %355, %294
  br label %357

357:                                              ; preds = %356, %121, %90, %45
  %358 = load i8*, i8** %12, align 8
  %359 = call i32 @free(i8* %358)
  br label %18

360:                                              ; preds = %18
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  ret %struct.TYPE_11__* %361
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i8* @fparseln(i32*, i32*, i64*, i32*, i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @mtree_err(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @set(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @unset(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @strunvis(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_11__* @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strpbrk(i8*, i32) #1

declare dso_local i32 @addchild(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @replacenode(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
