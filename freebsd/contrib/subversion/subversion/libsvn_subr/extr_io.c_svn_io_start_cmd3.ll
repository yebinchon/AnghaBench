; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_start_cmd3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_start_cmd3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Can't create process '%s' attributes\00", align 1
@APR_PROGRAM_PATH = common dso_local global i32 0, align 4
@APR_PROGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't set process '%s' cmdtype\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Can't set process '%s' directory\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Can't set process '%s' child input\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Can't set process '%s' child outfile\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Can't set process '%s' child errfile\00", align 1
@APR_FULL_BLOCK = common dso_local global i32 0, align 4
@APR_NO_PIPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Can't set process '%s' stdio pipes\00", align 1
@ERRFILE_KEY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [55 x i8] c"Can't set process '%s' child errfile for error handler\00", align 1
@handle_child_process_error = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"Can't set process '%s' error handler\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Can't start process '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_io_start_cmd3(i32* %0, i8* %1, i8* %2, i8** %3, i8** %4, i64 %5, i64 %6, i32* %7, i64 %8, i32* %9, i64 %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8**, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  store i32* %0, i32** %15, align 8
  store i8* %1, i8** %16, align 8
  store i8* %2, i8** %17, align 8
  store i8** %3, i8*** %18, align 8
  store i8** %4, i8*** %19, align 8
  store i64 %5, i64* %20, align 8
  store i64 %6, i64* %21, align 8
  store i32* %7, i32** %22, align 8
  store i64 %8, i64* %23, align 8
  store i32* %9, i32** %24, align 8
  store i64 %10, i64* %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  %34 = load i32*, i32** %22, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %13
  %37 = load i64, i64* %21, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %36, %13
  %40 = phi i1 [ false, %13 ], [ %38, %36 ]
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @SVN_ERR_ASSERT(i32 %42)
  %44 = load i32*, i32** %24, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i64, i64* %23, align 8
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %46, %39
  %50 = phi i1 [ false, %39 ], [ %48, %46 ]
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @SVN_ERR_ASSERT(i32 %52)
  %54 = load i32*, i32** %26, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i64, i64* %25, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %56, %49
  %60 = phi i1 [ false, %49 ], [ %58, %56 ]
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @SVN_ERR_ASSERT(i32 %62)
  %64 = load i32*, i32** %27, align 8
  %65 = call i64 @apr_procattr_create(i32** %29, i32* %64)
  store i64 %65, i64* %28, align 8
  %66 = load i64, i64* %28, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load i64, i64* %28, align 8
  %70 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %71 = load i8*, i8** %17, align 8
  %72 = call i32* @svn_error_wrap_apr(i64 %69, i32 %70, i8* %71)
  store i32* %72, i32** %14, align 8
  br label %297

73:                                               ; preds = %59
  %74 = load i32*, i32** %29, align 8
  %75 = load i64, i64* %20, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @APR_PROGRAM_PATH, align 4
  br label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @APR_PROGRAM, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = call i64 @apr_procattr_cmdtype_set(i32* %74, i32 %82)
  store i64 %83, i64* %28, align 8
  %84 = load i64, i64* %28, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i64, i64* %28, align 8
  %88 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i8*, i8** %17, align 8
  %90 = call i32* @svn_error_wrap_apr(i64 %87, i32 %88, i8* %89)
  store i32* %90, i32** %14, align 8
  br label %297

91:                                               ; preds = %81
  %92 = load i8*, i8** %16, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load i8*, i8** %16, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %101

101:                                              ; preds = %100, %94
  %102 = load i8*, i8** %16, align 8
  %103 = load i32*, i32** %27, align 8
  %104 = call i32 @cstring_from_utf8(i8** %33, i8* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i32*, i32** %29, align 8
  %107 = load i8*, i8** %33, align 8
  %108 = call i64 @apr_procattr_dir_set(i32* %106, i8* %107)
  store i64 %108, i64* %28, align 8
  %109 = load i64, i64* %28, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %101
  %112 = load i64, i64* %28, align 8
  %113 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i8*, i8** %17, align 8
  %115 = call i32* @svn_error_wrap_apr(i64 %112, i32 %113, i8* %114)
  store i32* %115, i32** %14, align 8
  br label %297

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116, %91
  %118 = load i32*, i32** %22, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load i32*, i32** %29, align 8
  %122 = load i32*, i32** %22, align 8
  %123 = call i64 @apr_procattr_child_in_set(i32* %121, i32* %122, i32* null)
  store i64 %123, i64* %28, align 8
  %124 = load i64, i64* %28, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load i64, i64* %28, align 8
  %128 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i8*, i8** %17, align 8
  %130 = call i32* @svn_error_wrap_apr(i64 %127, i32 %128, i8* %129)
  store i32* %130, i32** %14, align 8
  br label %297

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %117
  %133 = load i32*, i32** %24, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load i32*, i32** %29, align 8
  %137 = load i32*, i32** %24, align 8
  %138 = call i64 @apr_procattr_child_out_set(i32* %136, i32* %137, i32* null)
  store i64 %138, i64* %28, align 8
  %139 = load i64, i64* %28, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load i64, i64* %28, align 8
  %143 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %144 = load i8*, i8** %17, align 8
  %145 = call i32* @svn_error_wrap_apr(i64 %142, i32 %143, i8* %144)
  store i32* %145, i32** %14, align 8
  br label %297

146:                                              ; preds = %135
  br label %147

147:                                              ; preds = %146, %132
  %148 = load i32*, i32** %26, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %162

150:                                              ; preds = %147
  %151 = load i32*, i32** %29, align 8
  %152 = load i32*, i32** %26, align 8
  %153 = call i64 @apr_procattr_child_err_set(i32* %151, i32* %152, i32* null)
  store i64 %153, i64* %28, align 8
  %154 = load i64, i64* %28, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = load i64, i64* %28, align 8
  %158 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %159 = load i8*, i8** %17, align 8
  %160 = call i32* @svn_error_wrap_apr(i64 %157, i32 %158, i8* %159)
  store i32* %160, i32** %14, align 8
  br label %297

161:                                              ; preds = %150
  br label %162

162:                                              ; preds = %161, %147
  %163 = load i64, i64* %21, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = load i64, i64* %23, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load i64, i64* %25, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %206

171:                                              ; preds = %168, %165, %162
  %172 = load i32*, i32** %29, align 8
  %173 = load i64, i64* %21, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i32, i32* @APR_FULL_BLOCK, align 4
  br label %179

177:                                              ; preds = %171
  %178 = load i32, i32* @APR_NO_PIPE, align 4
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ]
  %181 = load i64, i64* %23, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i32, i32* @APR_FULL_BLOCK, align 4
  br label %187

185:                                              ; preds = %179
  %186 = load i32, i32* @APR_NO_PIPE, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = load i64, i64* %25, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i32, i32* @APR_FULL_BLOCK, align 4
  br label %195

193:                                              ; preds = %187
  %194 = load i32, i32* @APR_NO_PIPE, align 4
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i32 [ %192, %191 ], [ %194, %193 ]
  %197 = call i64 @apr_procattr_io_set(i32* %172, i32 %180, i32 %188, i32 %196)
  store i64 %197, i64* %28, align 8
  %198 = load i64, i64* %28, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load i64, i64* %28, align 8
  %202 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %203 = load i8*, i8** %17, align 8
  %204 = call i32* @svn_error_wrap_apr(i64 %201, i32 %202, i8* %203)
  store i32* %204, i32** %14, align 8
  br label %297

205:                                              ; preds = %195
  br label %206

206:                                              ; preds = %205, %168
  %207 = load i32*, i32** %26, align 8
  %208 = load i32, i32* @ERRFILE_KEY, align 4
  %209 = load i32*, i32** %27, align 8
  %210 = call i64 @apr_pool_userdata_set(i32* %207, i32 %208, i32* null, i32* %209)
  store i64 %210, i64* %28, align 8
  %211 = load i64, i64* %28, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %206
  %214 = load i64, i64* %28, align 8
  %215 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0))
  %216 = load i8*, i8** %17, align 8
  %217 = call i32* @svn_error_wrap_apr(i64 %214, i32 %215, i8* %216)
  store i32* %217, i32** %14, align 8
  br label %297

218:                                              ; preds = %206
  %219 = load i32*, i32** %29, align 8
  %220 = load i32, i32* @handle_child_process_error, align 4
  %221 = call i64 @apr_procattr_child_errfn_set(i32* %219, i32 %220)
  store i64 %221, i64* %28, align 8
  %222 = load i64, i64* %28, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %218
  %225 = load i64, i64* %28, align 8
  %226 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %227 = load i8*, i8** %17, align 8
  %228 = call i32* @svn_error_wrap_apr(i64 %225, i32 %226, i8* %227)
  store i32* %228, i32** %14, align 8
  br label %297

229:                                              ; preds = %218
  %230 = load i8*, i8** %17, align 8
  %231 = load i32*, i32** %27, align 8
  %232 = call i32 @cstring_from_utf8(i8** %32, i8* %230, i32* %231)
  %233 = call i32 @SVN_ERR(i32 %232)
  store i32 0, i32* %30, align 4
  br label %234

234:                                              ; preds = %242, %229
  %235 = load i8**, i8*** %18, align 8
  %236 = load i32, i32* %30, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %235, i64 %237
  %239 = load i8*, i8** %238, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %245

241:                                              ; preds = %234
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %30, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %30, align 4
  br label %234

245:                                              ; preds = %234
  %246 = load i32*, i32** %27, align 8
  %247 = load i32, i32* %30, align 4
  %248 = add nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = mul i64 %249, 8
  %251 = trunc i64 %250 to i32
  %252 = call i8** @apr_palloc(i32* %246, i32 %251)
  store i8** %252, i8*** %31, align 8
  %253 = load i8**, i8*** %31, align 8
  %254 = load i32, i32* %30, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8*, i8** %253, i64 %255
  store i8* null, i8** %256, align 8
  br label %257

257:                                              ; preds = %261, %245
  %258 = load i32, i32* %30, align 4
  %259 = add nsw i32 %258, -1
  store i32 %259, i32* %30, align 4
  %260 = icmp ne i32 %258, 0
  br i1 %260, label %261, label %274

261:                                              ; preds = %257
  %262 = load i8**, i8*** %31, align 8
  %263 = load i32, i32* %30, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8*, i8** %262, i64 %264
  %266 = load i8**, i8*** %18, align 8
  %267 = load i32, i32* %30, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8*, i8** %266, i64 %268
  %270 = load i8*, i8** %269, align 8
  %271 = load i32*, i32** %27, align 8
  %272 = call i32 @cstring_from_utf8(i8** %265, i8* %270, i32* %271)
  %273 = call i32 @SVN_ERR(i32 %272)
  br label %257

274:                                              ; preds = %257
  %275 = load i32*, i32** %15, align 8
  %276 = load i8*, i8** %32, align 8
  %277 = load i8**, i8*** %31, align 8
  %278 = load i64, i64* %20, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %274
  br label %283

281:                                              ; preds = %274
  %282 = load i8**, i8*** %19, align 8
  br label %283

283:                                              ; preds = %281, %280
  %284 = phi i8** [ null, %280 ], [ %282, %281 ]
  %285 = load i32*, i32** %29, align 8
  %286 = load i32*, i32** %27, align 8
  %287 = call i64 @apr_proc_create(i32* %275, i8* %276, i8** %277, i8** %284, i32* %285, i32* %286)
  store i64 %287, i64* %28, align 8
  %288 = load i64, i64* %28, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %283
  %291 = load i64, i64* %28, align 8
  %292 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %293 = load i8*, i8** %17, align 8
  %294 = call i32* @svn_error_wrap_apr(i64 %291, i32 %292, i8* %293)
  store i32* %294, i32** %14, align 8
  br label %297

295:                                              ; preds = %283
  %296 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %296, i32** %14, align 8
  br label %297

297:                                              ; preds = %295, %290, %224, %213, %200, %156, %141, %126, %111, %86, %68
  %298 = load i32*, i32** %14, align 8
  ret i32* %298
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @apr_procattr_create(i32**, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @apr_procattr_cmdtype_set(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i64 @apr_procattr_dir_set(i32*, i8*) #1

declare dso_local i64 @apr_procattr_child_in_set(i32*, i32*, i32*) #1

declare dso_local i64 @apr_procattr_child_out_set(i32*, i32*, i32*) #1

declare dso_local i64 @apr_procattr_child_err_set(i32*, i32*, i32*) #1

declare dso_local i64 @apr_procattr_io_set(i32*, i32, i32, i32) #1

declare dso_local i64 @apr_pool_userdata_set(i32*, i32, i32*, i32*) #1

declare dso_local i64 @apr_procattr_child_errfn_set(i32*, i32) #1

declare dso_local i8** @apr_palloc(i32*, i32) #1

declare dso_local i64 @apr_proc_create(i32*, i8*, i8**, i8**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
