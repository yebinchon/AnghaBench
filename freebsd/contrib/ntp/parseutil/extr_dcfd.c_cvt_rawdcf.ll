; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/parseutil/extr_dcfd.c_cvt_rawdcf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/parseutil/extr_dcfd.c_cvt_rawdcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@dcfparam = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CVT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"parse: cvt_rawdcf: character check for 0x%x@%ld FAILED\0A\00", align 1
@CVT_FAIL = common dso_local global i32 0, align 4
@CVT_BADFMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"parse: cvt_rawdcf: average bit count: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"parse: cvt_rawdcf: histogram:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" <M>\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"parse: cvt_rawdcf: lower maximum %d, higher maximum %d, cutoff %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%-30s\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"*** BAD DATA\00", align 1
@BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32*)* @cvt_rawdcf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cvt_rawdcf(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [9 x i8], align 1
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dcfparam, i32 0, i32 0), align 8
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dcfparam, i32 0, i32 1), align 8
  store i8* %25, i8** %10, align 8
  %26 = load i32, i32* @CVT_NONE, align 4
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %34, %3
  %28 = load i32, i32* %12, align 4
  %29 = icmp ult i32 %28, 9
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [9 x i8], [9 x i8]* %17, i64 0, i64 %32
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %27

37:                                               ; preds = %27
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %95, %37
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %98

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = xor i32 %45, 255
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = add i32 %47, 1
  %49 = load i32, i32* %18, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %80, label %56

56:                                               ; preds = %52, %42
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %63, %56
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %18, align 4
  %62 = lshr i32 %61, 1
  store i32 %62, i32* %18, align 4
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %57

66:                                               ; preds = %57
  %67 = load i32, i32* %12, align 4
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %7, align 8
  store i8 %68, i8* %69, align 1
  %70 = load i32, i32* %12, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [9 x i8], [9 x i8]* %17, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = add i8 %73, 1
  store i8 %74, i8* %72, align 1
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %15, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %13, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %95

80:                                               ; preds = %52
  %81 = load i8*, i8** %7, align 8
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 @dprintf(i8* %89)
  %91 = load i8*, i8** %7, align 8
  store i8 -1, i8* %91, align 1
  %92 = load i32, i32* @CVT_FAIL, align 4
  %93 = load i32, i32* @CVT_BADFMT, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %80, %66
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %7, align 8
  br label %38

98:                                               ; preds = %38
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %15, align 4
  %104 = udiv i32 %103, %102
  store i32 %104, i32* %15, align 4
  br label %106

105:                                              ; preds = %98
  store i32 4, i32* %15, align 4
  br label %106

106:                                              ; preds = %105, %101
  %107 = load i32, i32* %15, align 4
  %108 = zext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @dprintf(i8* %109)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %111 = call i32 @dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %140, %106
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp ule i32 %113, %114
  br i1 %115, label %116, label %143

116:                                              ; preds = %112
  %117 = load i32, i32* %12, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [9 x i8], [9 x i8]* %17, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i32, i32* %12, align 4
  %123 = mul i32 %121, %122
  %124 = load i32, i32* %13, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %12, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [9 x i8], [9 x i8]* %17, i64 0, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = load i32, i32* %14, align 4
  %132 = add i32 %131, %130
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %12, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [9 x i8], [9 x i8]* %17, i64 0, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = call i32 @dprintf(i8* %138)
  br label %140

140:                                              ; preds = %116
  %141 = load i32, i32* %12, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %112

143:                                              ; preds = %112
  %144 = call i32 @dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %145 = load i32, i32* %14, align 4
  %146 = udiv i32 %145, 2
  %147 = load i32, i32* %13, align 4
  %148 = add i32 %147, %146
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %13, align 4
  %154 = udiv i32 %153, %152
  store i32 %154, i32* %13, align 4
  br label %156

155:                                              ; preds = %143
  store i32 0, i32* %13, align 4
  br label %156

156:                                              ; preds = %155, %151
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %157

157:                                              ; preds = %184, %156
  %158 = load i32, i32* %12, align 4
  %159 = icmp ult i32 %158, 9
  br i1 %159, label %160, label %187

160:                                              ; preds = %157
  %161 = load i32, i32* %12, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [9 x i8], [9 x i8]* %17, i64 0, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = load i32, i32* %12, align 4
  %167 = mul i32 %165, %166
  %168 = load i32, i32* %14, align 4
  %169 = add i32 %168, %167
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %12, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [9 x i8], [9 x i8]* %17, i64 0, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = load i32, i32* %15, align 4
  %176 = add i32 %175, %174
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %12, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [9 x i8], [9 x i8]* %17, i64 0, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i64
  %182 = inttoptr i64 %181 to i8*
  %183 = call i32 @dprintf(i8* %182)
  br label %184

184:                                              ; preds = %160
  %185 = load i32, i32* %12, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %12, align 4
  br label %157

187:                                              ; preds = %157
  %188 = call i32 @dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %189 = load i32, i32* %15, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %14, align 4
  %194 = udiv i32 %193, %192
  store i32 %194, i32* %14, align 4
  br label %196

195:                                              ; preds = %187
  store i32 8, i32* %14, align 4
  br label %196

196:                                              ; preds = %195, %191
  %197 = load i32, i32* %13, align 4
  store i32 %197, i32* %15, align 4
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %12, align 4
  br label %199

199:                                              ; preds = %233, %196
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %14, align 4
  %202 = icmp ule i32 %200, %201
  br i1 %202, label %203, label %236

203:                                              ; preds = %199
  %204 = load i32, i32* %15, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds [9 x i8], [9 x i8]* %17, i64 0, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = load i32, i32* %12, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [9 x i8], [9 x i8]* %17, i64 0, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = icmp sgt i32 %208, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %203
  %216 = load i32, i32* %12, align 4
  store i32 %216, i32* %16, align 4
  store i32 %216, i32* %15, align 4
  br label %232

217:                                              ; preds = %203
  %218 = load i32, i32* %15, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [9 x i8], [9 x i8]* %17, i64 0, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = load i32, i32* %12, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds [9 x i8], [9 x i8]* %17, i64 0, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = icmp eq i32 %222, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %217
  %230 = load i32, i32* %12, align 4
  store i32 %230, i32* %16, align 4
  br label %231

231:                                              ; preds = %229, %217
  br label %232

232:                                              ; preds = %231, %215
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %12, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %199

236:                                              ; preds = %199
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %16, align 4
  %239 = add i32 %237, %238
  %240 = udiv i32 %239, 2
  store i32 %240, i32* %15, align 4
  %241 = load i32, i32* %13, align 4
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %15, align 4
  %244 = zext i32 %243 to i64
  %245 = inttoptr i64 %244 to i8*
  %246 = call i32 @dprintf(i8* %245)
  %247 = load i8*, i8** %4, align 8
  store i8* %247, i8** %7, align 8
  br label %248

248:                                              ; preds = %289, %236
  %249 = load i8*, i8** %7, align 8
  %250 = load i8*, i8** %8, align 8
  %251 = icmp ult i8* %249, %250
  br i1 %251, label %252, label %262

252:                                              ; preds = %248
  %253 = load i8*, i8** %10, align 8
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = load i8*, i8** %9, align 8
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = icmp ne i32 %260, 0
  br label %262

262:                                              ; preds = %257, %252, %248
  %263 = phi i1 [ false, %252 ], [ false, %248 ], [ %261, %257 ]
  br i1 %263, label %264, label %296

264:                                              ; preds = %262
  %265 = load i8*, i8** %7, align 8
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp eq i32 %267, 255
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = load i8*, i8** %7, align 8
  store i8 63, i8* %270, align 1
  br label %289

271:                                              ; preds = %264
  %272 = load i8*, i8** %7, align 8
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = load i32, i32* %15, align 4
  %276 = icmp uge i32 %274, %275
  br i1 %276, label %277, label %281

277:                                              ; preds = %271
  %278 = load i8*, i8** %9, align 8
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  br label %285

281:                                              ; preds = %271
  %282 = load i8*, i8** %10, align 8
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  br label %285

285:                                              ; preds = %281, %277
  %286 = phi i32 [ %280, %277 ], [ %284, %281 ]
  %287 = trunc i32 %286 to i8
  %288 = load i8*, i8** %7, align 8
  store i8 %287, i8* %288, align 1
  br label %289

289:                                              ; preds = %285, %269
  %290 = load i8*, i8** %7, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %7, align 8
  %292 = load i8*, i8** %9, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %9, align 8
  %294 = load i8*, i8** %10, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %10, align 8
  br label %248

296:                                              ; preds = %262
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* @CVT_NONE, align 4
  %299 = icmp ne i32 %297, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %296
  %301 = call i32 @PRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %302

302:                                              ; preds = %300, %296
  %303 = load i32, i32* %11, align 4
  %304 = load i32, i32* @CVT_NONE, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %311

306:                                              ; preds = %302
  %307 = load i8*, i8** %4, align 8
  %308 = load i32, i32* %5, align 4
  %309 = load i32*, i32** %6, align 8
  %310 = call i64 @convert_rawdcf(i8* %307, i32 %308, i32* %309)
  br label %314

311:                                              ; preds = %302
  %312 = load i32, i32* %11, align 4
  %313 = zext i32 %312 to i64
  br label %314

314:                                              ; preds = %311, %306
  %315 = phi i64 [ %310, %306 ], [ %313, %311 ]
  ret i64 %315
}

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @PRINTF(i8*, i8*) #1

declare dso_local i64 @convert_rawdcf(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
