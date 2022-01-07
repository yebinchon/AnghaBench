; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_popen.c_ftpd_popen.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_popen.c_ftpd_popen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i8** }

@MAXUSRARGS = common dso_local global i32 0, align 4
@MAXGLOBARGS = common dso_local global i32 0, align 4
@pids = common dso_local global i32* null, align 8
@fds = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@GLOB_BRACE = common dso_local global i32 0, align 4
@GLOB_NOCHECK = common dso_local global i32 0, align 4
@GLOB_TILDE = common dso_local global i32 0, align 4
@GLOB_LIMIT = common dso_local global i32 0, align 4
@_PATH_LS = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ftpd_popen(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load i32, i32* @MAXUSRARGS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8*, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32, i32* @MAXGLOBARGS, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8*, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 114
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 119
  br i1 %34, label %41, label %35

35:                                               ; preds = %30, %2
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %30
  store i32* null, i32** %3, align 8
  store i32 1, i32* %16, align 4
  br label %308

42:                                               ; preds = %35
  %43 = load i32*, i32** @pids, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = call i32 (...) @getdtablesize()
  store i32 %46, i32* @fds, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32* null, i32** %3, align 8
  store i32 1, i32* %16, align 4
  br label %308

49:                                               ; preds = %45
  %50 = load i32, i32* @fds, align 4
  %51 = call i32* @calloc(i32 %50, i32 4)
  store i32* %51, i32** @pids, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32* null, i32** %3, align 8
  store i32 1, i32* %16, align 4
  br label %308

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %42
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %57 = call i64 @pipe(i32* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32* null, i32** %3, align 8
  store i32 1, i32* %16, align 4
  br label %308

60:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  %61 = load i8*, i8** %4, align 8
  store i8* %61, i8** %6, align 8
  br label %62

62:                                               ; preds = %76, %60
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @MAXUSRARGS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i8*, i8** %6, align 8
  %68 = call i8* @strtok(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8*, i8** %22, i64 %71
  store i8* %68, i8** %72, align 8
  %73 = icmp ne i8* %68, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  br label %77

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  store i8* null, i8** %6, align 8
  br label %62

77:                                               ; preds = %74, %62
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %22, i64 %80
  store i8* null, i8** %81, align 8
  %82 = getelementptr inbounds i8*, i8** %22, i64 0
  %83 = load i8*, i8** %82, align 16
  %84 = getelementptr inbounds i8*, i8** %25, i64 0
  store i8* %83, i8** %84, align 16
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %85

85:                                               ; preds = %160, %77
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %22, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @MAXGLOBARGS, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp slt i32 %92, %94
  br label %96

96:                                               ; preds = %91, %85
  %97 = phi i1 [ false, %85 ], [ %95, %91 ]
  br i1 %97, label %98, label %163

98:                                               ; preds = %96
  %99 = load i32, i32* @GLOB_BRACE, align 4
  %100 = load i32, i32* @GLOB_NOCHECK, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @GLOB_TILDE, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %18, align 4
  %104 = call i32 @memset(%struct.TYPE_5__* %17, i32 0, i32 24)
  %105 = load i32, i32* @MAXGLOBARGS, align 4
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %105, i32* %106, align 8
  %107 = load i32, i32* @GLOB_LIMIT, align 4
  %108 = load i32, i32* %18, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %22, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %18, align 4
  %115 = call i64 @glob(i8* %113, i32 %114, i32* null, %struct.TYPE_5__* %17)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %98
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %22, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @strdup(i8* %121)
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8*, i8** %25, i64 %125
  store i8* %122, i8** %126, align 8
  br label %158

127:                                              ; preds = %98
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %133 = load i8**, i8*** %132, align 8
  store i8** %133, i8*** %12, align 8
  br label %134

134:                                              ; preds = %153, %131
  %135 = load i8**, i8*** %12, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @MAXGLOBARGS, align 4
  %141 = sub nsw i32 %140, 1
  %142 = icmp slt i32 %139, %141
  br label %143

143:                                              ; preds = %138, %134
  %144 = phi i1 [ false, %134 ], [ %142, %138 ]
  br i1 %144, label %145, label %156

145:                                              ; preds = %143
  %146 = load i8**, i8*** %12, align 8
  %147 = load i8*, i8** %146, align 8
  %148 = call i8* @strdup(i8* %147)
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8*, i8** %25, i64 %151
  store i8* %148, i8** %152, align 8
  br label %153

153:                                              ; preds = %145
  %154 = load i8**, i8*** %12, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i32 1
  store i8** %155, i8*** %12, align 8
  br label %134

156:                                              ; preds = %143
  br label %157

157:                                              ; preds = %156, %127
  br label %158

158:                                              ; preds = %157, %117
  %159 = call i32 @globfree(%struct.TYPE_5__* %17)
  br label %160

160:                                              ; preds = %158
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %85

163:                                              ; preds = %96
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %25, i64 %165
  store i8* null, i8** %166, align 8
  store i32* null, i32** %7, align 8
  %167 = call i32 @fflush(i32* null)
  %168 = getelementptr inbounds i8*, i8** %25, i64 0
  %169 = load i8*, i8** %168, align 16
  %170 = load i32, i32* @_PATH_LS, align 4
  %171 = call i64 @strcmp(i8* %169, i32 %170)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %163
  %174 = call i32 (...) @fork()
  br label %177

175:                                              ; preds = %163
  %176 = call i32 @vfork() #5
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i32 [ %174, %173 ], [ %176, %175 ]
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  switch i32 %179, label %263 [
    i32 -1, label %180
    i32 0, label %187
  ]

180:                                              ; preds = %177
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @close(i32 %182)
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @close(i32 %185)
  br label %290

187:                                              ; preds = %177
  %188 = load i8*, i8** %5, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 114
  br i1 %191, label %192, label %212

192:                                              ; preds = %187
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @STDOUT_FILENO, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %192
  %198 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @STDOUT_FILENO, align 4
  %201 = call i32 @dup2(i32 %199, i32 %200)
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @close(i32 %203)
  br label %205

205:                                              ; preds = %197, %192
  %206 = load i32, i32* @STDOUT_FILENO, align 4
  %207 = load i32, i32* @STDERR_FILENO, align 4
  %208 = call i32 @dup2(i32 %206, i32 %207)
  %209 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @close(i32 %210)
  br label %229

212:                                              ; preds = %187
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @STDIN_FILENO, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %212
  %218 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @STDIN_FILENO, align 4
  %221 = call i32 @dup2(i32 %219, i32 %220)
  %222 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @close(i32 %223)
  br label %225

225:                                              ; preds = %217, %212
  %226 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @close(i32 %227)
  br label %229

229:                                              ; preds = %225, %205
  %230 = call i32 (...) @getuid()
  %231 = call i32 (...) @geteuid()
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %229
  %234 = call i32 (...) @geteuid()
  %235 = call i32 @setuid(i32 %234)
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = call i32 @_exit(i32 1) #6
  unreachable

239:                                              ; preds = %233, %229
  %240 = getelementptr inbounds i8*, i8** %25, i64 0
  %241 = load i8*, i8** %240, align 16
  %242 = load i32, i32* @_PATH_LS, align 4
  %243 = call i64 @strcmp(i8* %241, i32 %242)
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %239
  store i32 1, i32* @optopt, align 4
  store i32 1, i32* @optind, align 4
  store i32 1, i32* @optreset, align 4
  %246 = call i32 (...) @closelog()
  %247 = call i32* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %248 = icmp eq i32* %247, null
  br i1 %248, label %249, label %254

249:                                              ; preds = %245
  %250 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %251 = call i32 (...) @tzset()
  %252 = call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %253 = call i32 (...) @tzset()
  br label %254

254:                                              ; preds = %249, %245
  %255 = load i32, i32* %9, align 4
  %256 = call i32 @ls_main(i32 %255, i8** %25)
  %257 = call i32 @exit(i32 %256) #6
  unreachable

258:                                              ; preds = %239
  %259 = getelementptr inbounds i8*, i8** %25, i64 0
  %260 = load i8*, i8** %259, align 16
  %261 = call i32 @execv(i8* %260, i8** %25)
  %262 = call i32 @_exit(i32 1) #6
  unreachable

263:                                              ; preds = %177
  %264 = load i8*, i8** %5, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 114
  br i1 %267, label %268, label %276

268:                                              ; preds = %263
  %269 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = load i8*, i8** %5, align 8
  %272 = call i32* @fdopen(i32 %270, i8* %271)
  store i32* %272, i32** %7, align 8
  %273 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @close(i32 %274)
  br label %284

276:                                              ; preds = %263
  %277 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %278 = load i32, i32* %277, align 4
  %279 = load i8*, i8** %5, align 8
  %280 = call i32* @fdopen(i32 %278, i8* %279)
  store i32* %280, i32** %7, align 8
  %281 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @close(i32 %282)
  br label %284

284:                                              ; preds = %276, %268
  %285 = load i32, i32* %11, align 4
  %286 = load i32*, i32** @pids, align 8
  %287 = load i32*, i32** %7, align 8
  %288 = call i64 @fileno(i32* %287)
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  store i32 %285, i32* %289, align 4
  br label %290

290:                                              ; preds = %284, %180
  store i32 1, i32* %8, align 4
  br label %291

291:                                              ; preds = %303, %290
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8*, i8** %25, i64 %293
  %295 = load i8*, i8** %294, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %306

297:                                              ; preds = %291
  %298 = load i32, i32* %8, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8*, i8** %25, i64 %299
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @free(i8* %301)
  br label %303

303:                                              ; preds = %297
  %304 = load i32, i32* %8, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %8, align 4
  br label %291

306:                                              ; preds = %291
  %307 = load i32*, i32** %7, align 8
  store i32* %307, i32** %3, align 8
  store i32 1, i32* %16, align 4
  br label %308

308:                                              ; preds = %306, %59, %53, %48, %41
  %309 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %309)
  %310 = load i32*, i32** %3, align 8
  ret i32* %310
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getdtablesize(...) #2

declare dso_local i32* @calloc(i32, i32) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i64 @glob(i8*, i32, i32*, %struct.TYPE_5__*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @globfree(%struct.TYPE_5__*) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @fork(...) #2

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #3

declare dso_local i32 @close(i32) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i32 @getuid(...) #2

declare dso_local i32 @geteuid(...) #2

declare dso_local i32 @setuid(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #4

declare dso_local i32 @closelog(...) #2

declare dso_local i32* @getenv(i8*) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #2

declare dso_local i32 @tzset(...) #2

declare dso_local i32 @unsetenv(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #4

declare dso_local i32 @ls_main(i32, i8**) #2

declare dso_local i32 @execv(i8*, i8**) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i64 @fileno(i32*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { returns_twice }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
