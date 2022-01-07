; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_moduli.c_gen_candidates.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_moduli.c_gen_candidates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TINY_NUMBER = common dso_local global i32 0, align 4
@largememory = common dso_local global i64 0, align 8
@LARGE_MINIMUM = common dso_local global i64 0, align 8
@LARGE_MAXIMUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Invalid memory amount (min %ld, max %ld)\00", align 1
@TEST_MAXIMUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Too many bits: %u > %lu\00", align 1
@TEST_MINIMUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Too few bits: %u < %u\00", align 1
@SHIFT_WORD = common dso_local global i64 0, align 8
@TEST_POWER = common dso_local global i64 0, align 8
@largewords = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Limited memory: %u MB; limit %lu MB\00", align 1
@SHIFT_MEGAWORD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Increased memory: %u MB; need %u bytes\00", align 1
@SHIFT_BYTE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"Decreased memory: %u MB; want %u bytes\00", align 1
@TinySieve = common dso_local global i32* null, align 8
@tinybits = common dso_local global i64 0, align 8
@SmallSieve = common dso_local global i32* null, align 8
@smallbits = common dso_local global i64 0, align 8
@LargeSieve = common dso_local global i32* null, align 8
@largebits = common dso_local global i32 0, align 4
@largenumbers = common dso_local global i32 0, align 4
@largetries = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"BN_new failed\00", align 1
@largebase = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"BN_rand failed\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"BN_copy: failed\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"BN_set_bit: failed\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"%.24s Sieve next %u plus %u-bit\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"start point: 0x%s\00", align 1
@smallbase = common dso_local global i32 0, align 4
@SMALL_MAXIMUM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [50 x i8] c"%.24s Sieved with %u small primes in %lld seconds\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"test q = largebase+%u\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"BN_set_word failed\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"BN_add failed\00", align 1
@MODULI_TYPE_SOPHIE_GERMAIN = common dso_local global i32 0, align 4
@MODULI_TESTS_SIEVE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"%.24s Found %u candidates\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_candidates(i32* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i32, i32* @TINY_NUMBER, align 4
  %22 = ashr i32 %21, 6
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %15, align 8
  %24 = load i32, i32* @TINY_NUMBER, align 4
  %25 = ashr i32 %24, 6
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %16, align 8
  store i32 0, i32* %20, align 4
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* @largememory, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @LARGE_MINIMUM, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @LARGE_MAXIMUM, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34, %30
  %39 = load i64, i64* @LARGE_MINIMUM, align 8
  %40 = load i64, i64* @LARGE_MAXIMUM, align 8
  %41 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40)
  store i32 -1, i32* %5, align 4
  br label %379

42:                                               ; preds = %34, %4
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @TEST_MAXIMUM, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @TEST_MAXIMUM, align 8
  %49 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 %48)
  store i32 -1, i32* %5, align 4
  br label %379

50:                                               ; preds = %42
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @TEST_MINIMUM, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @TEST_MINIMUM, align 8
  %57 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %55, i64 %56)
  store i32 -1, i32* %5, align 4
  br label %379

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %8, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = mul nsw i64 %62, %63
  %65 = load i64, i64* @SHIFT_WORD, align 8
  %66 = load i64, i64* @TEST_POWER, align 8
  %67 = sub nsw i64 %65, %66
  %68 = ashr i64 %64, %67
  store i64 %68, i64* @largewords, align 8
  %69 = load i64, i64* @largememory, align 8
  %70 = load i64, i64* @LARGE_MAXIMUM, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %59
  %73 = load i64, i64* @largememory, align 8
  %74 = load i64, i64* @LARGE_MAXIMUM, align 8
  %75 = call i32 (i8*, i64, i64, ...) @logit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %73, i64 %74)
  %76 = load i64, i64* @LARGE_MAXIMUM, align 8
  store i64 %76, i64* @largememory, align 8
  br label %77

77:                                               ; preds = %72, %59
  %78 = load i64, i64* @largewords, align 8
  %79 = load i64, i64* @largememory, align 8
  %80 = load i64, i64* @SHIFT_MEGAWORD, align 8
  %81 = shl i64 %79, %80
  %82 = icmp sle i64 %78, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load i64, i64* @largememory, align 8
  %85 = load i64, i64* @largewords, align 8
  %86 = load i64, i64* @SHIFT_BYTE, align 8
  %87 = shl i64 %85, %86
  %88 = call i32 (i8*, i64, i64, ...) @logit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %84, i64 %87)
  %89 = load i64, i64* @largememory, align 8
  %90 = load i64, i64* @SHIFT_MEGAWORD, align 8
  %91 = shl i64 %89, %90
  store i64 %91, i64* @largewords, align 8
  br label %105

92:                                               ; preds = %77
  %93 = load i64, i64* @largememory, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i64, i64* @largememory, align 8
  %97 = load i64, i64* @largewords, align 8
  %98 = load i64, i64* @SHIFT_BYTE, align 8
  %99 = shl i64 %97, %98
  %100 = call i32 (i8*, i64, i64, ...) @logit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %96, i64 %99)
  %101 = load i64, i64* @largememory, align 8
  %102 = load i64, i64* @SHIFT_MEGAWORD, align 8
  %103 = shl i64 %101, %102
  store i64 %103, i64* @largewords, align 8
  br label %104

104:                                              ; preds = %95, %92
  br label %105

105:                                              ; preds = %104, %83
  %106 = load i64, i64* %16, align 8
  %107 = call i32* @xcalloc(i64 %106, i32 8)
  store i32* %107, i32** @TinySieve, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* @SHIFT_WORD, align 8
  %110 = shl i64 %108, %109
  store i64 %110, i64* @tinybits, align 8
  %111 = load i64, i64* %15, align 8
  %112 = call i32* @xcalloc(i64 %111, i32 8)
  store i32* %112, i32** @SmallSieve, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* @SHIFT_WORD, align 8
  %115 = shl i64 %113, %114
  store i64 %115, i64* @smallbits, align 8
  br label %116

116:                                              ; preds = %120, %105
  %117 = load i64, i64* @largewords, align 8
  %118 = call i32* @calloc(i64 %117, i32 8)
  store i32* %118, i32** @LargeSieve, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load i64, i64* @SHIFT_MEGAWORD, align 8
  %122 = sub nsw i64 %121, 2
  %123 = shl i64 1, %122
  %124 = load i64, i64* @largewords, align 8
  %125 = sub nsw i64 %124, %123
  store i64 %125, i64* @largewords, align 8
  br label %116

126:                                              ; preds = %116
  %127 = load i64, i64* @largewords, align 8
  %128 = load i64, i64* @SHIFT_WORD, align 8
  %129 = shl i64 %127, %128
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* @largebits, align 4
  %131 = load i32, i32* @largebits, align 4
  %132 = mul nsw i32 %131, 2
  store i32 %132, i32* @largenumbers, align 4
  store i32 0, i32* @largetries, align 4
  %133 = call i8* (...) @BN_new()
  %134 = bitcast i8* %133 to i32*
  store i32* %134, i32** %10, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = call i32 @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %126
  %139 = call i8* (...) @BN_new()
  %140 = bitcast i8* %139 to i32*
  store i32* %140, i32** @largebase, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = call i32 @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %138
  %145 = load i32*, i32** %9, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load i32*, i32** @largebase, align 8
  %149 = load i64, i64* %8, align 8
  %150 = call i64 @BN_rand(i32* %148, i64 %149, i32 1, i32 1)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = call i32 @fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %147
  br label %163

155:                                              ; preds = %144
  %156 = load i32*, i32** @largebase, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = call i32* @BN_copy(i32* %156, i32* %157)
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = call i32 @fatal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %155
  br label %163

163:                                              ; preds = %162, %154
  %164 = load i32*, i32** @largebase, align 8
  %165 = call i64 @BN_set_bit(i32* %164, i32 0)
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = call i32 @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %163
  %170 = call i32 @time(i64* %17)
  %171 = call i64 @ctime(i64* %17)
  %172 = load i32, i32* @largenumbers, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %8, align 8
  %175 = call i32 (i8*, i64, i64, ...) @logit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i64 %171, i64 %173, i64 %174)
  %176 = load i32*, i32** @largebase, align 8
  %177 = call i32 @BN_bn2hex(i32* %176)
  %178 = call i32 @debug2(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %177)
  store i64 0, i64* %19, align 8
  br label %179

179:                                              ; preds = %212, %169
  %180 = load i64, i64* %19, align 8
  %181 = load i64, i64* @tinybits, align 8
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %183, label %215

183:                                              ; preds = %179
  %184 = load i32*, i32** @TinySieve, align 8
  %185 = load i64, i64* %19, align 8
  %186 = call i64 @BIT_TEST(i32* %184, i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %212

189:                                              ; preds = %183
  %190 = load i64, i64* %19, align 8
  %191 = mul nsw i64 2, %190
  %192 = add nsw i64 %191, 3
  store i64 %192, i64* %14, align 8
  %193 = load i64, i64* %19, align 8
  %194 = load i64, i64* %14, align 8
  %195 = add nsw i64 %193, %194
  store i64 %195, i64* %11, align 8
  br label %196

196:                                              ; preds = %204, %189
  %197 = load i64, i64* %11, align 8
  %198 = load i64, i64* @tinybits, align 8
  %199 = icmp slt i64 %197, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %196
  %201 = load i32*, i32** @TinySieve, align 8
  %202 = load i64, i64* %11, align 8
  %203 = call i32 @BIT_SET(i32* %201, i64 %202)
  br label %204

204:                                              ; preds = %200
  %205 = load i64, i64* %14, align 8
  %206 = load i64, i64* %11, align 8
  %207 = add nsw i64 %206, %205
  store i64 %207, i64* %11, align 8
  br label %196

208:                                              ; preds = %196
  %209 = load i64, i64* %14, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 @sieve_large(i32 %210)
  br label %212

212:                                              ; preds = %208, %188
  %213 = load i64, i64* %19, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %19, align 8
  br label %179

215:                                              ; preds = %179
  %216 = load i32, i32* @TINY_NUMBER, align 4
  %217 = add nsw i32 %216, 3
  store i32 %217, i32* @smallbase, align 4
  br label %218

218:                                              ; preds = %305, %215
  %219 = load i32, i32* @smallbase, align 4
  %220 = load i32, i32* @SMALL_MAXIMUM, align 4
  %221 = load i32, i32* @TINY_NUMBER, align 4
  %222 = sub nsw i32 %220, %221
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %309

224:                                              ; preds = %218
  store i64 0, i64* %19, align 8
  br label %225

225:                                              ; preds = %274, %224
  %226 = load i64, i64* %19, align 8
  %227 = load i64, i64* @tinybits, align 8
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %229, label %277

229:                                              ; preds = %225
  %230 = load i32*, i32** @TinySieve, align 8
  %231 = load i64, i64* %19, align 8
  %232 = call i64 @BIT_TEST(i32* %230, i64 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  br label %274

235:                                              ; preds = %229
  %236 = load i64, i64* %19, align 8
  %237 = mul nsw i64 2, %236
  %238 = add nsw i64 %237, 3
  store i64 %238, i64* %14, align 8
  %239 = load i32, i32* @smallbase, align 4
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* %14, align 8
  %242 = srem i64 %240, %241
  store i64 %242, i64* %12, align 8
  %243 = load i64, i64* %12, align 8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %235
  store i64 0, i64* %13, align 8
  br label %250

246:                                              ; preds = %235
  %247 = load i64, i64* %14, align 8
  %248 = load i64, i64* %12, align 8
  %249 = sub nsw i64 %247, %248
  store i64 %249, i64* %13, align 8
  br label %250

250:                                              ; preds = %246, %245
  %251 = load i64, i64* %13, align 8
  %252 = and i64 %251, 1
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %250
  %255 = load i64, i64* %14, align 8
  %256 = load i64, i64* %13, align 8
  %257 = add nsw i64 %256, %255
  store i64 %257, i64* %13, align 8
  br label %258

258:                                              ; preds = %254, %250
  %259 = load i64, i64* %13, align 8
  %260 = sdiv i64 %259, 2
  store i64 %260, i64* %13, align 8
  br label %261

261:                                              ; preds = %269, %258
  %262 = load i64, i64* %13, align 8
  %263 = load i64, i64* @smallbits, align 8
  %264 = icmp slt i64 %262, %263
  br i1 %264, label %265, label %273

265:                                              ; preds = %261
  %266 = load i32*, i32** @SmallSieve, align 8
  %267 = load i64, i64* %13, align 8
  %268 = call i32 @BIT_SET(i32* %266, i64 %267)
  br label %269

269:                                              ; preds = %265
  %270 = load i64, i64* %14, align 8
  %271 = load i64, i64* %13, align 8
  %272 = add nsw i64 %271, %270
  store i64 %272, i64* %13, align 8
  br label %261

273:                                              ; preds = %261
  br label %274

274:                                              ; preds = %273, %234
  %275 = load i64, i64* %19, align 8
  %276 = add nsw i64 %275, 1
  store i64 %276, i64* %19, align 8
  br label %225

277:                                              ; preds = %225
  store i64 0, i64* %19, align 8
  br label %278

278:                                              ; preds = %296, %277
  %279 = load i64, i64* %19, align 8
  %280 = load i64, i64* @smallbits, align 8
  %281 = icmp slt i64 %279, %280
  br i1 %281, label %282, label %299

282:                                              ; preds = %278
  %283 = load i32*, i32** @SmallSieve, align 8
  %284 = load i64, i64* %19, align 8
  %285 = call i64 @BIT_TEST(i32* %283, i64 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %282
  br label %296

288:                                              ; preds = %282
  %289 = load i64, i64* %19, align 8
  %290 = mul nsw i64 2, %289
  %291 = load i32, i32* @smallbase, align 4
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %290, %292
  %294 = trunc i64 %293 to i32
  %295 = call i32 @sieve_large(i32 %294)
  br label %296

296:                                              ; preds = %288, %287
  %297 = load i64, i64* %19, align 8
  %298 = add nsw i64 %297, 1
  store i64 %298, i64* %19, align 8
  br label %278

299:                                              ; preds = %278
  %300 = load i32*, i32** @SmallSieve, align 8
  %301 = load i64, i64* %15, align 8
  %302 = load i64, i64* @SHIFT_BYTE, align 8
  %303 = shl i64 %301, %302
  %304 = call i32 @memset(i32* %300, i32 0, i64 %303)
  br label %305

305:                                              ; preds = %299
  %306 = load i32, i32* @TINY_NUMBER, align 4
  %307 = load i32, i32* @smallbase, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* @smallbase, align 4
  br label %218

309:                                              ; preds = %218
  %310 = call i32 @time(i64* %18)
  %311 = call i64 @ctime(i64* %18)
  %312 = load i32, i32* @largetries, align 4
  %313 = sext i32 %312 to i64
  %314 = load i64, i64* %18, align 8
  %315 = load i64, i64* %17, align 8
  %316 = sub nsw i64 %314, %315
  %317 = call i32 (i8*, i64, i64, ...) @logit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i64 %311, i64 %313, i64 %316)
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %318

318:                                              ; preds = %364, %309
  %319 = load i64, i64* %11, align 8
  %320 = load i32, i32* @largebits, align 4
  %321 = sext i32 %320 to i64
  %322 = icmp slt i64 %319, %321
  br i1 %322, label %323, label %367

323:                                              ; preds = %318
  %324 = load i32*, i32** @LargeSieve, align 8
  %325 = load i64, i64* %11, align 8
  %326 = call i64 @BIT_TEST(i32* %324, i64 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %323
  br label %364

329:                                              ; preds = %323
  %330 = load i64, i64* %11, align 8
  %331 = mul nsw i64 2, %330
  %332 = trunc i64 %331 to i32
  %333 = call i32 @debug2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %332)
  %334 = load i32*, i32** %10, align 8
  %335 = load i64, i64* %11, align 8
  %336 = mul nsw i64 2, %335
  %337 = trunc i64 %336 to i32
  %338 = call i64 @BN_set_word(i32* %334, i32 %337)
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %329
  %341 = call i32 @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  br label %342

342:                                              ; preds = %340, %329
  %343 = load i32*, i32** %10, align 8
  %344 = load i32*, i32** %10, align 8
  %345 = load i32*, i32** @largebase, align 8
  %346 = call i64 @BN_add(i32* %343, i32* %344, i32* %345)
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %342
  %349 = call i32 @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  br label %350

350:                                              ; preds = %348, %342
  %351 = load i32*, i32** %6, align 8
  %352 = load i32, i32* @MODULI_TYPE_SOPHIE_GERMAIN, align 4
  %353 = load i32, i32* @MODULI_TESTS_SIEVE, align 4
  %354 = load i32, i32* @largetries, align 4
  %355 = load i64, i64* %8, align 8
  %356 = sub nsw i64 %355, 1
  %357 = load i32*, i32** %10, align 8
  %358 = call i32 @qfileout(i32* %351, i32 %352, i32 %353, i32 %354, i64 %356, i32 0, i32* %357)
  %359 = icmp eq i32 %358, -1
  br i1 %359, label %360, label %361

360:                                              ; preds = %350
  store i32 -1, i32* %20, align 4
  br label %367

361:                                              ; preds = %350
  %362 = load i64, i64* %12, align 8
  %363 = add nsw i64 %362, 1
  store i64 %363, i64* %12, align 8
  br label %364

364:                                              ; preds = %361, %328
  %365 = load i64, i64* %11, align 8
  %366 = add nsw i64 %365, 1
  store i64 %366, i64* %11, align 8
  br label %318

367:                                              ; preds = %360, %318
  %368 = call i32 @time(i64* %18)
  %369 = load i32*, i32** @LargeSieve, align 8
  %370 = call i32 @free(i32* %369)
  %371 = load i32*, i32** @SmallSieve, align 8
  %372 = call i32 @free(i32* %371)
  %373 = load i32*, i32** @TinySieve, align 8
  %374 = call i32 @free(i32* %373)
  %375 = call i64 @ctime(i64* %18)
  %376 = load i64, i64* %12, align 8
  %377 = call i32 (i8*, i64, i64, ...) @logit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i64 %375, i64 %376)
  %378 = load i32, i32* %20, align 4
  store i32 %378, i32* %5, align 4
  br label %379

379:                                              ; preds = %367, %54, %46, %38
  %380 = load i32, i32* %5, align 4
  ret i32 %380
}

declare dso_local i32 @error(i8*, i64, i64) #1

declare dso_local i32 @logit(i8*, i64, i64, ...) #1

declare dso_local i32* @xcalloc(i64, i32) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i8* @BN_new(...) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @BN_rand(i32*, i64, i32, i32) #1

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i64 @BN_set_bit(i32*, i32) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i64 @ctime(i64*) #1

declare dso_local i32 @debug2(i8*, i32) #1

declare dso_local i32 @BN_bn2hex(i32*) #1

declare dso_local i64 @BIT_TEST(i32*, i64) #1

declare dso_local i32 @BIT_SET(i32*, i64) #1

declare dso_local i32 @sieve_large(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @BN_set_word(i32*, i32) #1

declare dso_local i64 @BN_add(i32*, i32*, i32*) #1

declare dso_local i32 @qfileout(i32*, i32, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
