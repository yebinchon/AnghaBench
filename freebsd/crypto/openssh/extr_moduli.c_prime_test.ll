; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_moduli.c_prime_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_moduli.c_prime_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRIAL_MINIMUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Minimum primality trials is %d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"BN_new failed\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"BN_CTX_new failed\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"%.24s Final %u Miller-Rabin trials (%x generator)\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"process from line %lu from pipe\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"process from line %lu to line %lu\00", align 1
@QLINESIZE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [60 x i8] c"skipping line %u, before checkpoint or specified start line\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%10u: comment or short line\00", align 1
@MODULI_TESTS_COMPOSITE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"%10u: known composite\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"%10u: (%u) Sophie-Germain\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"BN_hex2bn failed\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"BN_lshift failed\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"BN_add_word failed\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"%10u: (%u)\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"BN_rshift failed\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Unknown prime type\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"%10u: bit size %u mismatch\00", align 1
@QSIZE_MINIMUM = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [28 x i8] c"%10u: bit size %u too short\00", align 1
@MODULI_TESTS_MILLER_RABIN = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [25 x i8] c"%10u: generator %d != %d\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"%10u: no known generator\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"%10u: q failed first possible prime test\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"%10u: p is not prime\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"%10u: p is almost certainly prime\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"%10u: q is not prime\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"%10u: q is almost certainly prime\00", align 1
@.str.26 = private unnamed_addr constant [59 x i8] c"%.24s Found %u safe primes of %u candidates in %ld seconds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prime_test(i32* %0, i32* %1, i64 %2, i64 %3, i8* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %30, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @TRIAL_MINIMUM, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %7
  %40 = load i64, i64* @TRIAL_MINIMUM, align 8
  %41 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %40)
  store i32 -1, i32* %8, align 4
  br label %364

42:                                               ; preds = %7
  %43 = load i64, i64* %15, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32*, i32** %9, align 8
  %47 = call i64 @count_lines(i32* %46)
  store i64 %47, i64* %31, align 8
  br label %52

48:                                               ; preds = %42
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %15, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %31, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = call i32 @time(i64* %32)
  %54 = call i32* (...) @BN_new()
  store i32* %54, i32** %17, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  %59 = call i32* (...) @BN_new()
  store i32* %59, i32** %16, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  %64 = call i32* (...) @BN_CTX_new()
  store i32* %64, i32** %19, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = call i32 @ctime(i64* %32)
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %69, i64 %70, i64 %71)
  %73 = load i8*, i8** %13, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i8*, i8** %13, align 8
  %77 = call i64 @read_checkpoint(i8* %76)
  store i64 %77, i64* %30, align 8
  br label %78

78:                                               ; preds = %75, %68
  %79 = load i64, i64* %30, align 8
  %80 = load i64, i64* %14, align 8
  %81 = call i64 @MAXIMUM(i64 %79, i64 %80)
  store i64 %81, i64* %14, align 8
  store i64 %81, i64* %30, align 8
  %82 = load i64, i64* %31, align 8
  %83 = load i64, i64* @ULONG_MAX, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i64, i64* %30, align 8
  %87 = call i32 (i8*, i64, ...) @debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %86)
  br label %92

88:                                               ; preds = %78
  %89 = load i64, i64* %30, align 8
  %90 = load i64, i64* %31, align 8
  %91 = call i32 (i8*, i64, ...) @debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %89, i64 %90)
  br label %92

92:                                               ; preds = %88, %85
  store i32 0, i32* %34, align 4
  %93 = load i64, i64* @QLINESIZE, align 8
  %94 = add nsw i64 %93, 1
  %95 = call i8* @xmalloc(i64 %94)
  store i8* %95, i8** %21, align 8
  br label %96

96:                                               ; preds = %337, %320, %308, %299, %289, %281, %233, %225, %157, %143, %115, %92
  %97 = load i8*, i8** %21, align 8
  %98 = load i64, i64* @QLINESIZE, align 8
  %99 = add nsw i64 %98, 1
  %100 = load i32*, i32** %9, align 8
  %101 = call i32* @fgets(i8* %97, i64 %99, i32* %100)
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i64, i64* %22, align 8
  %105 = load i64, i64* %31, align 8
  %106 = icmp ult i64 %104, %105
  br label %107

107:                                              ; preds = %103, %96
  %108 = phi i1 [ false, %96 ], [ %106, %103 ]
  br i1 %108, label %109, label %340

109:                                              ; preds = %107
  %110 = load i64, i64* %22, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %22, align 8
  %112 = load i64, i64* %22, align 8
  %113 = load i64, i64* %30, align 8
  %114 = icmp ule i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i64, i64* %22, align 8
  %117 = call i32 @debug3(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i64 %116)
  br label %96

118:                                              ; preds = %109
  %119 = load i8*, i8** %13, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i8*, i8** %13, align 8
  %123 = load i64, i64* %22, align 8
  %124 = call i32 @write_checkpoint(i8* %122, i64 %123)
  br label %125

125:                                              ; preds = %121, %118
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* %22, align 8
  %128 = load i64, i64* %31, align 8
  %129 = call i32 @print_progress(i64 %126, i64 %127, i64 %128)
  %130 = load i8*, i8** %21, align 8
  %131 = call i32 @strlen(i8* %130)
  %132 = icmp slt i32 %131, 14
  br i1 %132, label %143, label %133

133:                                              ; preds = %125
  %134 = load i8*, i8** %21, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 33
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load i8*, i8** %21, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 35
  br i1 %142, label %143, label %146

143:                                              ; preds = %138, %133, %125
  %144 = load i64, i64* %22, align 8
  %145 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %144)
  br label %96

146:                                              ; preds = %138
  %147 = load i8*, i8** %21, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 14
  store i8* %148, i8** %20, align 8
  %149 = load i8*, i8** %20, align 8
  %150 = call i64 @strtoul(i8* %149, i8** %20, i32 10)
  store i64 %150, i64* %28, align 8
  %151 = load i8*, i8** %20, align 8
  %152 = call i64 @strtoul(i8* %151, i8** %20, i32 10)
  store i64 %152, i64* %26, align 8
  %153 = load i64, i64* %26, align 8
  %154 = load i64, i64* @MODULI_TESTS_COMPOSITE, align 8
  %155 = and i64 %153, %154
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %146
  %158 = load i64, i64* %22, align 8
  %159 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i64 %158)
  br label %96

160:                                              ; preds = %146
  %161 = load i8*, i8** %20, align 8
  %162 = call i64 @strtoul(i8* %161, i8** %20, i32 10)
  store i64 %162, i64* %27, align 8
  %163 = load i8*, i8** %20, align 8
  %164 = call i64 @strtoul(i8* %163, i8** %20, i32 10)
  store i64 %164, i64* %29, align 8
  %165 = load i8*, i8** %20, align 8
  %166 = call i64 @strtoul(i8* %165, i8** %20, i32 16)
  store i64 %166, i64* %25, align 8
  %167 = load i8*, i8** %20, align 8
  %168 = call i32 @strspn(i8* %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %169 = load i8*, i8** %20, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8* %171, i8** %20, align 8
  %172 = load i64, i64* %28, align 8
  switch i64 %172, label %217 [
    i64 131, label %173
    i64 128, label %199
    i64 133, label %199
    i64 132, label %199
    i64 130, label %199
    i64 129, label %199
  ]

173:                                              ; preds = %160
  %174 = load i64, i64* %22, align 8
  %175 = load i64, i64* %28, align 8
  %176 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i64 %174, i64 %175)
  %177 = load i32*, i32** %16, align 8
  store i32* %177, i32** %18, align 8
  %178 = load i8*, i8** %20, align 8
  %179 = call i32 @BN_hex2bn(i32** %18, i8* %178)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = call i32 @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %173
  %184 = load i32*, i32** %17, align 8
  %185 = load i32*, i32** %16, align 8
  %186 = call i32 @BN_lshift(i32* %184, i32* %185, i32 1)
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = call i32 @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %183
  %191 = load i32*, i32** %17, align 8
  %192 = call i32 @BN_add_word(i32* %191, i32 1)
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = call i32 @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %190
  %197 = load i64, i64* %29, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %29, align 8
  store i64 0, i64* %25, align 8
  br label %219

199:                                              ; preds = %160, %160, %160, %160, %160
  %200 = load i64, i64* %22, align 8
  %201 = load i64, i64* %28, align 8
  %202 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 %200, i64 %201)
  %203 = load i32*, i32** %17, align 8
  store i32* %203, i32** %18, align 8
  %204 = load i8*, i8** %20, align 8
  %205 = call i32 @BN_hex2bn(i32** %18, i8* %204)
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %199
  %208 = call i32 @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207, %199
  %210 = load i32*, i32** %16, align 8
  %211 = load i32*, i32** %17, align 8
  %212 = call i32 @BN_rshift(i32* %210, i32* %211, i32 1)
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = call i32 @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %209
  br label %219

217:                                              ; preds = %160
  %218 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %216, %196
  %220 = load i32*, i32** %17, align 8
  %221 = call i64 @BN_num_bits(i32* %220)
  %222 = load i64, i64* %29, align 8
  %223 = add i64 %222, 1
  %224 = icmp ne i64 %221, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %219
  %226 = load i64, i64* %22, align 8
  %227 = load i64, i64* %29, align 8
  %228 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i64 %226, i64 %227)
  br label %96

229:                                              ; preds = %219
  %230 = load i64, i64* %29, align 8
  %231 = load i64, i64* @QSIZE_MINIMUM, align 8
  %232 = icmp ult i64 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load i64, i64* %22, align 8
  %235 = load i64, i64* %29, align 8
  %236 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i64 %234, i64 %235)
  br label %96

237:                                              ; preds = %229
  %238 = load i64, i64* %26, align 8
  %239 = load i64, i64* @MODULI_TESTS_MILLER_RABIN, align 8
  %240 = and i64 %238, %239
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = load i64, i64* %11, align 8
  %244 = load i64, i64* %27, align 8
  %245 = add i64 %244, %243
  store i64 %245, i64* %27, align 8
  br label %248

246:                                              ; preds = %237
  %247 = load i64, i64* %11, align 8
  store i64 %247, i64* %27, align 8
  br label %248

248:                                              ; preds = %246, %242
  %249 = load i64, i64* %25, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %274

251:                                              ; preds = %248
  %252 = load i32*, i32** %17, align 8
  %253 = call i32 @BN_mod_word(i32* %252, i32 24)
  %254 = icmp eq i32 %253, 11
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  store i64 2, i64* %25, align 8
  br label %273

256:                                              ; preds = %251
  %257 = load i32*, i32** %17, align 8
  %258 = call i32 @BN_mod_word(i32* %257, i32 12)
  %259 = icmp eq i32 %258, 5
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  store i64 3, i64* %25, align 8
  br label %272

261:                                              ; preds = %256
  %262 = load i32*, i32** %17, align 8
  %263 = call i32 @BN_mod_word(i32* %262, i32 10)
  %264 = sext i32 %263 to i64
  store i64 %264, i64* %35, align 8
  %265 = load i64, i64* %35, align 8
  %266 = icmp eq i64 %265, 3
  br i1 %266, label %270, label %267

267:                                              ; preds = %261
  %268 = load i64, i64* %35, align 8
  %269 = icmp eq i64 %268, 7
  br i1 %269, label %270, label %271

270:                                              ; preds = %267, %261
  store i64 5, i64* %25, align 8
  br label %271

271:                                              ; preds = %270, %267
  br label %272

272:                                              ; preds = %271, %260
  br label %273

273:                                              ; preds = %272, %255
  br label %274

274:                                              ; preds = %273, %248
  %275 = load i64, i64* %12, align 8
  %276 = icmp ugt i64 %275, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %274
  %278 = load i64, i64* %12, align 8
  %279 = load i64, i64* %25, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %286

281:                                              ; preds = %277
  %282 = load i64, i64* %22, align 8
  %283 = load i64, i64* %25, align 8
  %284 = load i64, i64* %12, align 8
  %285 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i64 %282, i64 %283, i64 %284)
  br label %96

286:                                              ; preds = %277, %274
  %287 = load i64, i64* %25, align 8
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load i64, i64* %22, align 8
  %291 = call i32 (i8*, ...) @debug2(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i64 %290)
  br label %96

292:                                              ; preds = %286
  %293 = load i64, i64* %24, align 8
  %294 = add i64 %293, 1
  store i64 %294, i64* %24, align 8
  %295 = load i32*, i32** %16, align 8
  %296 = load i32*, i32** %19, align 8
  %297 = call i64 @BN_is_prime_ex(i32* %295, i64 1, i32* %296, i32* null)
  %298 = icmp sle i64 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %292
  %300 = load i64, i64* %22, align 8
  %301 = call i32 (i8*, i64, ...) @debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i64 %300)
  br label %96

302:                                              ; preds = %292
  %303 = load i32*, i32** %17, align 8
  %304 = load i64, i64* %11, align 8
  %305 = load i32*, i32** %19, align 8
  %306 = call i64 @BN_is_prime_ex(i32* %303, i64 %304, i32* %305, i32* null)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %302
  %309 = load i64, i64* %22, align 8
  %310 = call i32 (i8*, i64, ...) @debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i64 %309)
  br label %96

311:                                              ; preds = %302
  %312 = load i64, i64* %22, align 8
  %313 = call i32 (i8*, i64, ...) @debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i64 %312)
  %314 = load i32*, i32** %16, align 8
  %315 = load i64, i64* %11, align 8
  %316 = sub i64 %315, 1
  %317 = load i32*, i32** %19, align 8
  %318 = call i64 @BN_is_prime_ex(i32* %314, i64 %316, i32* %317, i32* null)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %311
  %321 = load i64, i64* %22, align 8
  %322 = call i32 (i8*, i64, ...) @debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i64 %321)
  br label %96

323:                                              ; preds = %311
  %324 = load i64, i64* %22, align 8
  %325 = call i32 (i8*, i64, ...) @debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i64 %324)
  %326 = load i32*, i32** %10, align 8
  %327 = load i64, i64* %26, align 8
  %328 = load i64, i64* @MODULI_TESTS_MILLER_RABIN, align 8
  %329 = or i64 %327, %328
  %330 = load i64, i64* %27, align 8
  %331 = load i64, i64* %29, align 8
  %332 = load i64, i64* %25, align 8
  %333 = load i32*, i32** %17, align 8
  %334 = call i64 @qfileout(i32* %326, i32 133, i64 %329, i64 %330, i64 %331, i64 %332, i32* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %323
  store i32 -1, i32* %34, align 4
  br label %340

337:                                              ; preds = %323
  %338 = load i64, i64* %23, align 8
  %339 = add i64 %338, 1
  store i64 %339, i64* %23, align 8
  br label %96

340:                                              ; preds = %336, %107
  %341 = call i32 @time(i64* %33)
  %342 = load i8*, i8** %21, align 8
  %343 = call i32 @free(i8* %342)
  %344 = load i32*, i32** %17, align 8
  %345 = call i32 @BN_free(i32* %344)
  %346 = load i32*, i32** %16, align 8
  %347 = call i32 @BN_free(i32* %346)
  %348 = load i32*, i32** %19, align 8
  %349 = call i32 @BN_CTX_free(i32* %348)
  %350 = load i8*, i8** %13, align 8
  %351 = icmp ne i8* %350, null
  br i1 %351, label %352, label %355

352:                                              ; preds = %340
  %353 = load i8*, i8** %13, align 8
  %354 = call i32 @unlink(i8* %353)
  br label %355

355:                                              ; preds = %352, %340
  %356 = call i32 @ctime(i64* %33)
  %357 = load i64, i64* %23, align 8
  %358 = load i64, i64* %24, align 8
  %359 = load i64, i64* %33, align 8
  %360 = load i64, i64* %32, align 8
  %361 = sub nsw i64 %359, %360
  %362 = call i32 @logit(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.26, i64 0, i64 0), i32 %356, i64 %357, i64 %358, i64 %361)
  %363 = load i32, i32* %34, align 4
  store i32 %363, i32* %8, align 4
  br label %364

364:                                              ; preds = %355, %39
  %365 = load i32, i32* %8, align 4
  ret i32 %365
}

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i64 @count_lines(i32*) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @debug2(i8*, ...) #1

declare dso_local i32 @ctime(i64*) #1

declare dso_local i64 @read_checkpoint(i8*) #1

declare dso_local i64 @MAXIMUM(i64, i64) #1

declare dso_local i32 @debug(i8*, i64, ...) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32* @fgets(i8*, i64, i32*) #1

declare dso_local i32 @debug3(i8*, i64) #1

declare dso_local i32 @write_checkpoint(i8*, i64) #1

declare dso_local i32 @print_progress(i64, i64, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32 @BN_lshift(i32*, i32*, i32) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

declare dso_local i32 @BN_rshift(i32*, i32*, i32) #1

declare dso_local i64 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_mod_word(i32*, i32) #1

declare dso_local i64 @BN_is_prime_ex(i32*, i64, i32*, i32*) #1

declare dso_local i64 @qfileout(i32*, i32, i64, i64, i64, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @logit(i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
