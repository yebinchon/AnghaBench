; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getopt_long.c_getopt_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getopt_long.c_getopt_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@getopt_internal.posixly_correct = internal global i32 -1, align 4
@optind = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@FLAG_ALLARGS = common dso_local global i32 0, align 4
@FLAG_PERMUTE = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@nonopt_end = common dso_local global i32 0, align 4
@nonopt_start = common dso_local global i32 0, align 4
@place = common dso_local global i8* null, align 8
@EMSG = common dso_local global i8* null, align 8
@INORDER = common dso_local global i32 0, align 4
@FLAG_LONGONLY = common dso_local global i32 0, align 4
@PRINT_ERROR = common dso_local global i64 0, align 8
@illoptchar = common dso_local global i32 0, align 4
@optopt = common dso_local global i32 0, align 4
@BADCH = common dso_local global i32 0, align 4
@recargchar = common dso_local global i32 0, align 4
@BADARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*, %struct.option*, i32*, i32)* @getopt_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.option*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.option* %3, %struct.option** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %420

20:                                               ; preds = %6
  %21 = load i32, i32* @optind, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* @getopt_internal.posixly_correct, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @optreset, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27, %24
  %31 = call i32* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  store i32 %33, i32* @getopt_internal.posixly_correct, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i8*, i8** %10, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 45
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @FLAG_ALLARGS, align 4
  %41 = load i32, i32* %13, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %13, align 4
  br label %57

43:                                               ; preds = %34
  %44 = load i32, i32* @getopt_internal.posixly_correct, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 43
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %43
  %52 = load i32, i32* @FLAG_PERMUTE, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %13, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56, %39
  %58 = load i8*, i8** %10, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 43
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %10, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 45
  br i1 %66, label %67, label %70

67:                                               ; preds = %62, %57
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %10, align 8
  br label %70

70:                                               ; preds = %67, %62
  store i8* null, i8** @optarg, align 8
  %71 = load i32, i32* @optreset, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 -1, i32* @nonopt_end, align 4
  store i32 -1, i32* @nonopt_start, align 4
  br label %74

74:                                               ; preds = %73, %70
  br label %75

75:                                               ; preds = %167, %74
  %76 = load i32, i32* @optreset, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** @place, align 8
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %215, label %82

82:                                               ; preds = %78, %75
  store i32 0, i32* @optreset, align 4
  %83 = load i32, i32* @optind, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %82
  %87 = load i8*, i8** @EMSG, align 8
  store i8* %87, i8** @place, align 8
  %88 = load i32, i32* @nonopt_end, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load i32, i32* @nonopt_start, align 4
  %92 = load i32, i32* @nonopt_end, align 4
  %93 = load i32, i32* @optind, align 4
  %94 = load i8**, i8*** %9, align 8
  %95 = call i32 @permute_args(i32 %91, i32 %92, i32 %93, i8** %94)
  %96 = load i32, i32* @nonopt_end, align 4
  %97 = load i32, i32* @nonopt_start, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* @optind, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* @optind, align 4
  br label %107

101:                                              ; preds = %86
  %102 = load i32, i32* @nonopt_start, align 4
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* @nonopt_start, align 4
  store i32 %105, i32* @optind, align 4
  br label %106

106:                                              ; preds = %104, %101
  br label %107

107:                                              ; preds = %106, %90
  store i32 -1, i32* @nonopt_end, align 4
  store i32 -1, i32* @nonopt_start, align 4
  store i32 -1, i32* %7, align 4
  br label %420

108:                                              ; preds = %82
  %109 = load i8**, i8*** %9, align 8
  %110 = load i32, i32* @optind, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** @place, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 45
  br i1 %116, label %127, label %117

117:                                              ; preds = %108
  %118 = load i8*, i8** @place, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %170

123:                                              ; preds = %117
  %124 = load i8*, i8** %10, align 8
  %125 = call i8* @strchr(i8* %124, i32 45)
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %170

127:                                              ; preds = %123, %108
  %128 = load i8*, i8** @EMSG, align 8
  store i8* %128, i8** @place, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @FLAG_ALLARGS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load i8**, i8*** %9, align 8
  %135 = load i32, i32* @optind, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* @optind, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8*, i8** %134, i64 %137
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** @optarg, align 8
  %140 = load i32, i32* @INORDER, align 4
  store i32 %140, i32* %7, align 4
  br label %420

141:                                              ; preds = %127
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* @FLAG_PERMUTE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  store i32 -1, i32* %7, align 4
  br label %420

147:                                              ; preds = %141
  %148 = load i32, i32* @nonopt_start, align 4
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32, i32* @optind, align 4
  store i32 %151, i32* @nonopt_start, align 4
  br label %167

152:                                              ; preds = %147
  %153 = load i32, i32* @nonopt_end, align 4
  %154 = icmp ne i32 %153, -1
  br i1 %154, label %155, label %166

155:                                              ; preds = %152
  %156 = load i32, i32* @nonopt_start, align 4
  %157 = load i32, i32* @nonopt_end, align 4
  %158 = load i32, i32* @optind, align 4
  %159 = load i8**, i8*** %9, align 8
  %160 = call i32 @permute_args(i32 %156, i32 %157, i32 %158, i8** %159)
  %161 = load i32, i32* @optind, align 4
  %162 = load i32, i32* @nonopt_end, align 4
  %163 = load i32, i32* @nonopt_start, align 4
  %164 = sub nsw i32 %162, %163
  %165 = sub nsw i32 %161, %164
  store i32 %165, i32* @nonopt_start, align 4
  store i32 -1, i32* @nonopt_end, align 4
  br label %166

166:                                              ; preds = %155, %152
  br label %167

167:                                              ; preds = %166, %150
  %168 = load i32, i32* @optind, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* @optind, align 4
  br label %75

170:                                              ; preds = %123, %117
  %171 = load i32, i32* @nonopt_start, align 4
  %172 = icmp ne i32 %171, -1
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load i32, i32* @nonopt_end, align 4
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = load i32, i32* @optind, align 4
  store i32 %177, i32* @nonopt_end, align 4
  br label %178

178:                                              ; preds = %176, %173, %170
  %179 = load i8*, i8** @place, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %214

184:                                              ; preds = %178
  %185 = load i8*, i8** @place, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** @place, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 45
  br i1 %189, label %190, label %214

190:                                              ; preds = %184
  %191 = load i8*, i8** @place, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %214

196:                                              ; preds = %190
  %197 = load i32, i32* @optind, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* @optind, align 4
  %199 = load i8*, i8** @EMSG, align 8
  store i8* %199, i8** @place, align 8
  %200 = load i32, i32* @nonopt_end, align 4
  %201 = icmp ne i32 %200, -1
  br i1 %201, label %202, label %213

202:                                              ; preds = %196
  %203 = load i32, i32* @nonopt_start, align 4
  %204 = load i32, i32* @nonopt_end, align 4
  %205 = load i32, i32* @optind, align 4
  %206 = load i8**, i8*** %9, align 8
  %207 = call i32 @permute_args(i32 %203, i32 %204, i32 %205, i8** %206)
  %208 = load i32, i32* @nonopt_end, align 4
  %209 = load i32, i32* @nonopt_start, align 4
  %210 = sub nsw i32 %208, %209
  %211 = load i32, i32* @optind, align 4
  %212 = sub nsw i32 %211, %210
  store i32 %212, i32* @optind, align 4
  br label %213

213:                                              ; preds = %202, %196
  store i32 -1, i32* @nonopt_end, align 4
  store i32 -1, i32* @nonopt_start, align 4
  store i32 -1, i32* %7, align 4
  br label %420

214:                                              ; preds = %190, %184, %178
  br label %215

215:                                              ; preds = %214, %78
  %216 = load %struct.option*, %struct.option** %11, align 8
  %217 = icmp ne %struct.option* %216, null
  br i1 %217, label %218, label %271

218:                                              ; preds = %215
  %219 = load i8*, i8** @place, align 8
  %220 = load i8**, i8*** %9, align 8
  %221 = load i32, i32* @optind, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8*, i8** %220, i64 %222
  %224 = load i8*, i8** %223, align 8
  %225 = icmp ne i8* %219, %224
  br i1 %225, label %226, label %271

226:                                              ; preds = %218
  %227 = load i8*, i8** @place, align 8
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 45
  br i1 %230, label %236, label %231

231:                                              ; preds = %226
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* @FLAG_LONGONLY, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %271

236:                                              ; preds = %231, %226
  store i32 0, i32* %16, align 4
  %237 = load i8*, i8** @place, align 8
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp eq i32 %239, 45
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load i8*, i8** @place, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** @place, align 8
  br label %258

244:                                              ; preds = %236
  %245 = load i8*, i8** @place, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp ne i32 %247, 58
  br i1 %248, label %249, label %257

249:                                              ; preds = %244
  %250 = load i8*, i8** %10, align 8
  %251 = load i8*, i8** @place, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = call i8* @strchr(i8* %250, i32 %253)
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %257

256:                                              ; preds = %249
  store i32 1, i32* %16, align 4
  br label %257

257:                                              ; preds = %256, %249, %244
  br label %258

258:                                              ; preds = %257, %241
  %259 = load i8**, i8*** %9, align 8
  %260 = load i8*, i8** %10, align 8
  %261 = load %struct.option*, %struct.option** %11, align 8
  %262 = load i32*, i32** %12, align 8
  %263 = load i32, i32* %16, align 4
  %264 = call i32 @parse_long_options(i8** %259, i8* %260, %struct.option* %261, i32* %262, i32 %263)
  store i32 %264, i32* %15, align 4
  %265 = load i32, i32* %15, align 4
  %266 = icmp ne i32 %265, -1
  br i1 %266, label %267, label %270

267:                                              ; preds = %258
  %268 = load i8*, i8** @EMSG, align 8
  store i8* %268, i8** @place, align 8
  %269 = load i32, i32* %15, align 4
  store i32 %269, i32* %7, align 4
  br label %420

270:                                              ; preds = %258
  br label %271

271:                                              ; preds = %270, %231, %218, %215
  %272 = load i8*, i8** @place, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** @place, align 8
  %274 = load i8, i8* %272, align 1
  %275 = sext i8 %274 to i32
  store i32 %275, i32* %15, align 4
  %276 = icmp eq i32 %275, 58
  br i1 %276, label %290, label %277

277:                                              ; preds = %271
  %278 = load i32, i32* %15, align 4
  %279 = icmp eq i32 %278, 45
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = load i8*, i8** @place, align 8
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %290, label %285

285:                                              ; preds = %280, %277
  %286 = load i8*, i8** %10, align 8
  %287 = load i32, i32* %15, align 4
  %288 = call i8* @strchr(i8* %286, i32 %287)
  store i8* %288, i8** %14, align 8
  %289 = icmp eq i8* %288, null
  br i1 %289, label %290, label %316

290:                                              ; preds = %285, %280, %271
  %291 = load i32, i32* %15, align 4
  %292 = icmp eq i32 %291, 45
  br i1 %292, label %293, label %299

293:                                              ; preds = %290
  %294 = load i8*, i8** @place, align 8
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  store i32 -1, i32* %7, align 4
  br label %420

299:                                              ; preds = %293, %290
  %300 = load i8*, i8** @place, align 8
  %301 = load i8, i8* %300, align 1
  %302 = icmp ne i8 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %299
  %304 = load i32, i32* @optind, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* @optind, align 4
  br label %306

306:                                              ; preds = %303, %299
  %307 = load i64, i64* @PRINT_ERROR, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %306
  %310 = load i32, i32* @illoptchar, align 4
  %311 = load i32, i32* %15, align 4
  %312 = call i32 @warnx(i32 %310, i32 %311)
  br label %313

313:                                              ; preds = %309, %306
  %314 = load i32, i32* %15, align 4
  store i32 %314, i32* @optopt, align 4
  %315 = load i32, i32* @BADCH, align 4
  store i32 %315, i32* %7, align 4
  br label %420

316:                                              ; preds = %285
  %317 = load %struct.option*, %struct.option** %11, align 8
  %318 = icmp ne %struct.option* %317, null
  br i1 %318, label %319, label %364

319:                                              ; preds = %316
  %320 = load i32, i32* %15, align 4
  %321 = icmp eq i32 %320, 87
  br i1 %321, label %322, label %364

322:                                              ; preds = %319
  %323 = load i8*, i8** %14, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 1
  %325 = load i8, i8* %324, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp eq i32 %326, 59
  br i1 %327, label %328, label %364

328:                                              ; preds = %322
  %329 = load i8*, i8** @place, align 8
  %330 = load i8, i8* %329, align 1
  %331 = icmp ne i8 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %328
  br label %356

333:                                              ; preds = %328
  %334 = load i32, i32* @optind, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* @optind, align 4
  %336 = load i32, i32* %8, align 4
  %337 = icmp sge i32 %335, %336
  br i1 %337, label %338, label %349

338:                                              ; preds = %333
  %339 = load i8*, i8** @EMSG, align 8
  store i8* %339, i8** @place, align 8
  %340 = load i64, i64* @PRINT_ERROR, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %338
  %343 = load i32, i32* @recargchar, align 4
  %344 = load i32, i32* %15, align 4
  %345 = call i32 @warnx(i32 %343, i32 %344)
  br label %346

346:                                              ; preds = %342, %338
  %347 = load i32, i32* %15, align 4
  store i32 %347, i32* @optopt, align 4
  %348 = load i32, i32* @BADARG, align 4
  store i32 %348, i32* %7, align 4
  br label %420

349:                                              ; preds = %333
  %350 = load i8**, i8*** %9, align 8
  %351 = load i32, i32* @optind, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8*, i8** %350, i64 %352
  %354 = load i8*, i8** %353, align 8
  store i8* %354, i8** @place, align 8
  br label %355

355:                                              ; preds = %349
  br label %356

356:                                              ; preds = %355, %332
  %357 = load i8**, i8*** %9, align 8
  %358 = load i8*, i8** %10, align 8
  %359 = load %struct.option*, %struct.option** %11, align 8
  %360 = load i32*, i32** %12, align 8
  %361 = call i32 @parse_long_options(i8** %357, i8* %358, %struct.option* %359, i32* %360, i32 0)
  store i32 %361, i32* %15, align 4
  %362 = load i8*, i8** @EMSG, align 8
  store i8* %362, i8** @place, align 8
  %363 = load i32, i32* %15, align 4
  store i32 %363, i32* %7, align 4
  br label %420

364:                                              ; preds = %322, %319, %316
  %365 = load i8*, i8** %14, align 8
  %366 = getelementptr inbounds i8, i8* %365, i32 1
  store i8* %366, i8** %14, align 8
  %367 = load i8, i8* %366, align 1
  %368 = sext i8 %367 to i32
  %369 = icmp ne i32 %368, 58
  br i1 %369, label %370, label %378

370:                                              ; preds = %364
  %371 = load i8*, i8** @place, align 8
  %372 = load i8, i8* %371, align 1
  %373 = icmp ne i8 %372, 0
  br i1 %373, label %377, label %374

374:                                              ; preds = %370
  %375 = load i32, i32* @optind, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* @optind, align 4
  br label %377

377:                                              ; preds = %374, %370
  br label %418

378:                                              ; preds = %364
  store i8* null, i8** @optarg, align 8
  %379 = load i8*, i8** @place, align 8
  %380 = load i8, i8* %379, align 1
  %381 = icmp ne i8 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %378
  %383 = load i8*, i8** @place, align 8
  store i8* %383, i8** @optarg, align 8
  br label %414

384:                                              ; preds = %378
  %385 = load i8*, i8** %14, align 8
  %386 = getelementptr inbounds i8, i8* %385, i64 1
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp ne i32 %388, 58
  br i1 %389, label %390, label %413

390:                                              ; preds = %384
  %391 = load i32, i32* @optind, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* @optind, align 4
  %393 = load i32, i32* %8, align 4
  %394 = icmp sge i32 %392, %393
  br i1 %394, label %395, label %406

395:                                              ; preds = %390
  %396 = load i8*, i8** @EMSG, align 8
  store i8* %396, i8** @place, align 8
  %397 = load i64, i64* @PRINT_ERROR, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %395
  %400 = load i32, i32* @recargchar, align 4
  %401 = load i32, i32* %15, align 4
  %402 = call i32 @warnx(i32 %400, i32 %401)
  br label %403

403:                                              ; preds = %399, %395
  %404 = load i32, i32* %15, align 4
  store i32 %404, i32* @optopt, align 4
  %405 = load i32, i32* @BADARG, align 4
  store i32 %405, i32* %7, align 4
  br label %420

406:                                              ; preds = %390
  %407 = load i8**, i8*** %9, align 8
  %408 = load i32, i32* @optind, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8*, i8** %407, i64 %409
  %411 = load i8*, i8** %410, align 8
  store i8* %411, i8** @optarg, align 8
  br label %412

412:                                              ; preds = %406
  br label %413

413:                                              ; preds = %412, %384
  br label %414

414:                                              ; preds = %413, %382
  %415 = load i8*, i8** @EMSG, align 8
  store i8* %415, i8** @place, align 8
  %416 = load i32, i32* @optind, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* @optind, align 4
  br label %418

418:                                              ; preds = %414, %377
  %419 = load i32, i32* %15, align 4
  store i32 %419, i32* %7, align 4
  br label %420

420:                                              ; preds = %418, %403, %356, %346, %313, %298, %267, %213, %146, %133, %107, %19
  %421 = load i32, i32* %7, align 4
  ret i32 %421
}

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @permute_args(i32, i32, i32, i8**) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @parse_long_options(i8**, i8*, %struct.option*, i32*, i32) #1

declare dso_local i32 @warnx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
