; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_grep.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_grep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@eolbyte = common dso_local global i8 0, align 1
@directories = common dso_local global i64 0, align 8
@RECURSE_DIRECTORIES = common dso_local global i64 0, align 8
@BZflag = common dso_local global i64 0, align 8
@bzbufdesc = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@totalcc = common dso_local global i64 0, align 8
@lastout = common dso_local global i8* null, align 8
@totalnl = common dso_local global i64 0, align 8
@max_count = common dso_local global i64 0, align 8
@outleft = common dso_local global i64 0, align 8
@after_last_match = common dso_local global i64 0, align 8
@pending = common dso_local global i64 0, align 8
@filename = common dso_local global i8* null, align 8
@binary_files = common dso_local global i64 0, align 8
@BINARY_BINARY_FILES = common dso_local global i64 0, align 8
@out_quiet = common dso_local global i32 0, align 4
@WITHOUT_MATCH_BINARY_FILES = common dso_local global i64 0, align 8
@bufbeg = common dso_local global i8* null, align 8
@buflim = common dso_local global i8* null, align 8
@done_on_match = common dso_local global i64 0, align 8
@lastnl = common dso_local global i8* null, align 8
@out_invert = common dso_local global i32 0, align 4
@out_before = common dso_local global i32 0, align 4
@out_byte = common dso_local global i64 0, align 8
@out_line = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Binary file %s matches\0A\00", align 1
@Zflag = common dso_local global i64 0, align 8
@gzbufdesc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.stats*)* @grep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep(i32 %0, i8* %1, %struct.stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.stats* %2, %struct.stats** %7, align 8
  %17 = load i8, i8* @eolbyte, align 1
  store i8 %17, i8* %16, align 1
  %18 = load i32, i32* %5, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.stats*, %struct.stats** %7, align 8
  %21 = call i32 @reset(i32 %18, i8* %19, %struct.stats* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %346

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %61

27:                                               ; preds = %24
  %28 = load i64, i64* @directories, align 8
  %29 = load i64, i64* @RECURSE_DIRECTORIES, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load %struct.stats*, %struct.stats** %7, align 8
  %33 = getelementptr inbounds %struct.stats, %struct.stats* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @S_ISDIR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %31
  %39 = load i64, i64* @BZflag, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i64, i64* @bzbufdesc, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, i64* @bzbufdesc, align 8
  %46 = call i32 @BZ2_bzclose(i64 %45)
  br label %56

47:                                               ; preds = %41, %38
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @close(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @errno, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @error(i32 0, i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.stats*, %struct.stats** %7, align 8
  %59 = call i32 @grepdir(i8* %57, %struct.stats* %58)
  %60 = sub nsw i32 %59, 2
  store i32 %60, i32* %4, align 4
  br label %346

61:                                               ; preds = %31, %27, %24
  store i64 0, i64* @totalcc, align 8
  store i8* null, i8** @lastout, align 8
  store i64 0, i64* @totalnl, align 8
  %62 = load i64, i64* @max_count, align 8
  store i64 %62, i64* @outleft, align 8
  store i64 0, i64* @after_last_match, align 8
  store i64 0, i64* @pending, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load %struct.stats*, %struct.stats** %7, align 8
  %65 = call i32 @fillbuf(i64 %63, %struct.stats* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @errno, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @is_EISDIR(i32 %68, i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** @filename, align 8
  %74 = load i32, i32* @errno, align 4
  %75 = call i32 @suppressible_error(i8* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %67
  store i32 0, i32* %4, align 4
  br label %346

77:                                               ; preds = %61
  %78 = load i64, i64* @binary_files, align 8
  %79 = load i64, i64* @BINARY_BINARY_FILES, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @out_quiet, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81, %77
  %85 = load i64, i64* @binary_files, align 8
  %86 = load i64, i64* @WITHOUT_MATCH_BINARY_FILES, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %84, %81
  %89 = load i8*, i8** @bufbeg, align 8
  %90 = load i8, i8* %16, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 0, i32 -128
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** @buflim, align 8
  %97 = load i8*, i8** @bufbeg, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = trunc i64 %100 to i32
  %102 = call i64 @memchr(i8* %89, i8 signext %95, i32 %101)
  %103 = icmp ne i64 %102, 0
  br label %104

104:                                              ; preds = %88, %84
  %105 = phi i1 [ false, %84 ], [ %103, %88 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i64, i64* @binary_files, align 8
  %111 = load i64, i64* @WITHOUT_MATCH_BINARY_FILES, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %346

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* @done_on_match, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* @done_on_match, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @out_quiet, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* @out_quiet, align 4
  br label %122

122:                                              ; preds = %293, %114
  %123 = load i8*, i8** @bufbeg, align 8
  store i8* %123, i8** @lastnl, align 8
  %124 = load i8*, i8** @lastout, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i8*, i8** @bufbeg, align 8
  store i8* %127, i8** @lastout, align 8
  br label %128

128:                                              ; preds = %126, %122
  %129 = load i8*, i8** @bufbeg, align 8
  %130 = load i64, i64* %12, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %14, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = load i8*, i8** @buflim, align 8
  %134 = icmp eq i8* %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %294

136:                                              ; preds = %128
  %137 = load i8*, i8** %14, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 -1
  %139 = load i8, i8* %138, align 1
  store i8 %139, i8* %13, align 1
  %140 = load i8, i8* %16, align 1
  %141 = load i8*, i8** %14, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 -1
  store i8 %140, i8* %142, align 1
  %143 = load i8*, i8** @buflim, align 8
  store i8* %143, i8** %15, align 8
  br label %144

144:                                              ; preds = %153, %136
  %145 = load i8*, i8** %15, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 -1
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = load i8, i8* %16, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %148, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152
  %154 = load i8*, i8** %15, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 -1
  store i8* %155, i8** %15, align 8
  br label %144

156:                                              ; preds = %144
  %157 = load i8, i8* %13, align 1
  %158 = load i8*, i8** %14, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 -1
  store i8 %157, i8* %159, align 1
  %160 = load i8*, i8** %15, align 8
  %161 = load i8*, i8** %14, align 8
  %162 = icmp eq i8* %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = load i8*, i8** %14, align 8
  %165 = load i64, i64* %11, align 8
  %166 = sub i64 0, %165
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  store i8* %167, i8** %15, align 8
  br label %168

168:                                              ; preds = %163, %156
  %169 = load i64, i64* %11, align 8
  %170 = load i8*, i8** %14, align 8
  %171 = sub i64 0, %169
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8* %172, i8** %14, align 8
  %173 = load i8*, i8** @buflim, align 8
  %174 = load i8*, i8** %15, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  store i64 %177, i64* %11, align 8
  %178 = load i8*, i8** %14, align 8
  %179 = load i8*, i8** %15, align 8
  %180 = icmp ult i8* %178, %179
  br i1 %180, label %181, label %215

181:                                              ; preds = %168
  %182 = load i64, i64* @outleft, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %181
  %185 = load i8*, i8** %14, align 8
  %186 = load i8*, i8** %15, align 8
  %187 = call i64 @grepbuf(i8* %185, i8* %186)
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %184, %181
  %193 = load i64, i64* @pending, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i8*, i8** %15, align 8
  %197 = call i32 @prpending(i8* %196)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i64, i64* @outleft, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load i64, i64* @pending, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %201, %198
  %205 = load i32, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  %208 = load i64, i64* @done_on_match, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i32, i32* @out_invert, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %210, %201
  br label %324

214:                                              ; preds = %210, %207, %204
  br label %215

215:                                              ; preds = %214, %168
  store i32 0, i32* %9, align 4
  %216 = load i8*, i8** %15, align 8
  store i8* %216, i8** %14, align 8
  br label %217

217:                                              ; preds = %245, %215
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* @out_before, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %217
  %222 = load i8*, i8** %14, align 8
  %223 = load i8*, i8** @bufbeg, align 8
  %224 = icmp ugt i8* %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load i8*, i8** %14, align 8
  %227 = load i8*, i8** @lastout, align 8
  %228 = icmp ne i8* %226, %227
  br label %229

229:                                              ; preds = %225, %221, %217
  %230 = phi i1 [ false, %221 ], [ false, %217 ], [ %228, %225 ]
  br i1 %230, label %231, label %246

231:                                              ; preds = %229
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %234

234:                                              ; preds = %237, %231
  %235 = load i8*, i8** %14, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 -1
  store i8* %236, i8** %14, align 8
  br label %237

237:                                              ; preds = %234
  %238 = load i8*, i8** %14, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 -1
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = load i8, i8* %16, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp ne i32 %241, %243
  br i1 %244, label %234, label %245

245:                                              ; preds = %237
  br label %217

246:                                              ; preds = %229
  %247 = load i8*, i8** %14, align 8
  %248 = load i8*, i8** @lastout, align 8
  %249 = icmp ne i8* %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  store i8* null, i8** @lastout, align 8
  br label %251

251:                                              ; preds = %250, %246
  %252 = load i64, i64* %11, align 8
  %253 = load i8*, i8** %15, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 %252
  %255 = load i8*, i8** %14, align 8
  %256 = ptrtoint i8* %254 to i64
  %257 = ptrtoint i8* %255 to i64
  %258 = sub i64 %256, %257
  store i64 %258, i64* %12, align 8
  %259 = load i64, i64* @out_byte, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %251
  %262 = load i64, i64* @totalcc, align 8
  %263 = load i8*, i8** @buflim, align 8
  %264 = load i8*, i8** @bufbeg, align 8
  %265 = ptrtoint i8* %263 to i64
  %266 = ptrtoint i8* %264 to i64
  %267 = sub i64 %265, %266
  %268 = load i64, i64* %12, align 8
  %269 = sub i64 %267, %268
  %270 = trunc i64 %269 to i32
  %271 = call i64 @add_count(i64 %262, i32 %270)
  store i64 %271, i64* @totalcc, align 8
  br label %272

272:                                              ; preds = %261, %251
  %273 = load i64, i64* @out_line, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load i8*, i8** %14, align 8
  %277 = call i32 @nlscan(i8* %276)
  br label %278

278:                                              ; preds = %275, %272
  %279 = load i64, i64* %12, align 8
  %280 = load %struct.stats*, %struct.stats** %7, align 8
  %281 = call i32 @fillbuf(i64 %279, %struct.stats* %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %293, label %283

283:                                              ; preds = %278
  %284 = load i32, i32* @errno, align 4
  %285 = load i8*, i8** %6, align 8
  %286 = call i32 @is_EISDIR(i32 %284, i8* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %283
  %289 = load i8*, i8** @filename, align 8
  %290 = load i32, i32* @errno, align 4
  %291 = call i32 @suppressible_error(i8* %289, i32 %290)
  br label %292

292:                                              ; preds = %288, %283
  br label %324

293:                                              ; preds = %278
  br label %122

294:                                              ; preds = %135
  %295 = load i64, i64* %11, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %323

297:                                              ; preds = %294
  %298 = load i8, i8* %16, align 1
  %299 = load i8*, i8** @buflim, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** @buflim, align 8
  store i8 %298, i8* %299, align 1
  %301 = load i64, i64* @outleft, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %316

303:                                              ; preds = %297
  %304 = load i8*, i8** @bufbeg, align 8
  %305 = load i64, i64* %12, align 8
  %306 = getelementptr inbounds i8, i8* %304, i64 %305
  %307 = load i64, i64* %11, align 8
  %308 = sub i64 0, %307
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  %310 = load i8*, i8** @buflim, align 8
  %311 = call i64 @grepbuf(i8* %309, i8* %310)
  %312 = load i32, i32* %8, align 4
  %313 = sext i32 %312 to i64
  %314 = add nsw i64 %313, %311
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* %8, align 4
  br label %316

316:                                              ; preds = %303, %297
  %317 = load i64, i64* @pending, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %316
  %320 = load i8*, i8** @buflim, align 8
  %321 = call i32 @prpending(i8* %320)
  br label %322

322:                                              ; preds = %319, %316
  br label %323

323:                                              ; preds = %322, %294
  br label %324

324:                                              ; preds = %323, %292, %213
  %325 = load i32, i32* %10, align 4
  %326 = sext i32 %325 to i64
  %327 = load i64, i64* @done_on_match, align 8
  %328 = sub nsw i64 %327, %326
  store i64 %328, i64* @done_on_match, align 8
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* @out_quiet, align 4
  %331 = sub nsw i32 %330, %329
  store i32 %331, i32* @out_quiet, align 4
  %332 = load i32, i32* %10, align 4
  %333 = load i32, i32* @out_quiet, align 4
  %334 = xor i32 %333, -1
  %335 = and i32 %332, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %324
  %338 = load i32, i32* %8, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %337
  %341 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %342 = load i8*, i8** @filename, align 8
  %343 = call i32 @printf(i8* %341, i8* %342)
  br label %344

344:                                              ; preds = %340, %337, %324
  %345 = load i32, i32* %8, align 4
  store i32 %345, i32* %4, align 4
  br label %346

346:                                              ; preds = %344, %113, %76, %56, %23
  %347 = load i32, i32* %4, align 4
  ret i32 %347
}

declare dso_local i32 @reset(i32, i8*, %struct.stats*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @BZ2_bzclose(i64) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @error(i32, i32, i8*, i8*) #1

declare dso_local i32 @grepdir(i8*, %struct.stats*) #1

declare dso_local i32 @fillbuf(i64, %struct.stats*) #1

declare dso_local i32 @is_EISDIR(i32, i8*) #1

declare dso_local i32 @suppressible_error(i8*, i32) #1

declare dso_local i64 @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @grepbuf(i8*, i8*) #1

declare dso_local i32 @prpending(i8*) #1

declare dso_local i64 @add_count(i64, i32) #1

declare dso_local i32 @nlscan(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
