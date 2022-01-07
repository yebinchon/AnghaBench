; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/utils/extr_chargen.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/utils/extr_chargen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"ucl_chartable\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"static const unsigned int %s[256] = {\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"UCL_CHARACTER_WHITESPACE\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"UCL_CHARACTER_WHITESPACE_UNSAFE\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"UCL_CHARACTER_KEY_START\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"UCL_CHARACTER_KEY\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"UCL_CHARACTER_VALUE_END\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"UCL_CHARACTER_VALUE_STR\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"UCL_CHARACTER_VALUE_DIGIT_START\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"UCL_CHARACTER_VALUE_DIGIT\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"UCL_CHARACTER_ESCAPE\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"UCL_CHARACTER_KEY_SEP\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"UCL_CHARACTER_JSON_UNSAFE\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"UCL_CHARACTER_UCL_UNSAFE\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"UCL_CHARACTER_DENIED\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c" /* %c */\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2048 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %9, align 8
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %389, %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %24, label %392

24:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 9
  br i1 %29, label %30, label %40

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = call i64 @print_flag(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %10, i8* %34)
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %30, %27
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @isspace(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = call i64 @print_flag(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32* %10, i8* %48)
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %44, %40
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @isalnum(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = icmp sge i32 %59, 128
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 47
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 95
  br i1 %66, label %67, label %77

67:                                               ; preds = %64, %61, %58, %54
  %68 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = call i64 @print_flag(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32* %10, i8* %71)
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %67, %64
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @isalnum(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 45
  br i1 %83, label %96, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 95
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 47
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, 46
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = icmp sge i32 %94, 128
  br i1 %95, label %96, label %106

96:                                               ; preds = %93, %90, %87, %84, %81, %77
  %97 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = call i64 @print_flag(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %10, i8* %100)
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %96, %93
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %130, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 13
  br i1 %111, label %130, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 10
  br i1 %114, label %130, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %116, 93
  br i1 %117, label %130, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %6, align 4
  %120 = icmp eq i32 %119, 125
  br i1 %120, label %130, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %6, align 4
  %123 = icmp eq i32 %122, 59
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %6, align 4
  %126 = icmp eq i32 %125, 44
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %6, align 4
  %129 = icmp eq i32 %128, 35
  br i1 %129, label %130, label %140

130:                                              ; preds = %127, %124, %121, %118, %115, %112, %109, %106
  %131 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = call i64 @print_flag(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32* %10, i8* %134)
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %8, align 4
  br label %198

140:                                              ; preds = %127
  %141 = load i32, i32* %6, align 4
  %142 = call i64 @isprint(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %6, align 4
  %146 = icmp sge i32 %145, 128
  br i1 %146, label %147, label %157

147:                                              ; preds = %144, %140
  %148 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = call i64 @print_flag(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32* %10, i8* %151)
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %147, %144
  %158 = load i32, i32* %6, align 4
  %159 = call i64 @isdigit(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %6, align 4
  %163 = icmp eq i32 %162, 45
  br i1 %163, label %164, label %174

164:                                              ; preds = %161, %157
  %165 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = call i64 @print_flag(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32* %10, i8* %168)
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %164, %161
  %175 = load i32, i32* %6, align 4
  %176 = call i64 @isalnum(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %187, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %6, align 4
  %180 = icmp eq i32 %179, 46
  br i1 %180, label %187, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %6, align 4
  %183 = icmp eq i32 %182, 45
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %6, align 4
  %186 = icmp eq i32 %185, 43
  br i1 %186, label %187, label %197

187:                                              ; preds = %184, %181, %178, %174
  %188 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = call i64 @print_flag(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32* %10, i8* %191)
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %8, align 4
  br label %197

197:                                              ; preds = %187, %184
  br label %198

198:                                              ; preds = %197, %130
  %199 = load i32, i32* %6, align 4
  %200 = icmp eq i32 %199, 34
  br i1 %200, label %225, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %6, align 4
  %203 = icmp eq i32 %202, 92
  br i1 %203, label %225, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %6, align 4
  %206 = icmp eq i32 %205, 47
  br i1 %206, label %225, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* %6, align 4
  %209 = icmp eq i32 %208, 98
  br i1 %209, label %225, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %6, align 4
  %212 = icmp eq i32 %211, 102
  br i1 %212, label %225, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %6, align 4
  %215 = icmp eq i32 %214, 110
  br i1 %215, label %225, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %6, align 4
  %218 = icmp eq i32 %217, 114
  br i1 %218, label %225, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %6, align 4
  %221 = icmp eq i32 %220, 116
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = load i32, i32* %6, align 4
  %224 = icmp eq i32 %223, 117
  br i1 %224, label %225, label %235

225:                                              ; preds = %222, %219, %216, %213, %210, %207, %204, %201, %198
  %226 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = call i64 @print_flag(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32* %10, i8* %229)
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %232, %230
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %8, align 4
  br label %235

235:                                              ; preds = %225, %222
  %236 = load i32, i32* %6, align 4
  %237 = icmp eq i32 %236, 32
  br i1 %237, label %247, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* %6, align 4
  %240 = icmp eq i32 %239, 9
  br i1 %240, label %247, label %241

241:                                              ; preds = %238
  %242 = load i32, i32* %6, align 4
  %243 = icmp eq i32 %242, 58
  br i1 %243, label %247, label %244

244:                                              ; preds = %241
  %245 = load i32, i32* %6, align 4
  %246 = icmp eq i32 %245, 61
  br i1 %246, label %247, label %257

247:                                              ; preds = %244, %241, %238, %235
  %248 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  %252 = call i64 @print_flag(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32* %10, i8* %251)
  %253 = load i32, i32* %8, align 4
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %254, %252
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %8, align 4
  br label %257

257:                                              ; preds = %247, %244
  %258 = load i32, i32* %6, align 4
  %259 = icmp eq i32 %258, 10
  br i1 %259, label %278, label %260

260:                                              ; preds = %257
  %261 = load i32, i32* %6, align 4
  %262 = icmp eq i32 %261, 13
  br i1 %262, label %278, label %263

263:                                              ; preds = %260
  %264 = load i32, i32* %6, align 4
  %265 = icmp eq i32 %264, 92
  br i1 %265, label %278, label %266

266:                                              ; preds = %263
  %267 = load i32, i32* %6, align 4
  %268 = icmp eq i32 %267, 8
  br i1 %268, label %278, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* %6, align 4
  %271 = icmp eq i32 %270, 9
  br i1 %271, label %278, label %272

272:                                              ; preds = %269
  %273 = load i32, i32* %6, align 4
  %274 = icmp eq i32 %273, 34
  br i1 %274, label %278, label %275

275:                                              ; preds = %272
  %276 = load i32, i32* %6, align 4
  %277 = icmp eq i32 %276, 12
  br i1 %277, label %278, label %288

278:                                              ; preds = %275, %272, %269, %266, %263, %260, %257
  %279 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %280 = load i32, i32* %8, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %279, i64 %281
  %283 = call i64 @print_flag(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32* %10, i8* %282)
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %285, %283
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %8, align 4
  br label %288

288:                                              ; preds = %278, %275
  %289 = load i32, i32* %6, align 4
  %290 = icmp eq i32 %289, 10
  br i1 %290, label %324, label %291

291:                                              ; preds = %288
  %292 = load i32, i32* %6, align 4
  %293 = icmp eq i32 %292, 13
  br i1 %293, label %324, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %6, align 4
  %296 = icmp eq i32 %295, 92
  br i1 %296, label %324, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* %6, align 4
  %299 = icmp eq i32 %298, 8
  br i1 %299, label %324, label %300

300:                                              ; preds = %297
  %301 = load i32, i32* %6, align 4
  %302 = icmp eq i32 %301, 9
  br i1 %302, label %324, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* %6, align 4
  %305 = icmp eq i32 %304, 34
  br i1 %305, label %324, label %306

306:                                              ; preds = %303
  %307 = load i32, i32* %6, align 4
  %308 = icmp eq i32 %307, 12
  br i1 %308, label %324, label %309

309:                                              ; preds = %306
  %310 = load i32, i32* %6, align 4
  %311 = icmp eq i32 %310, 61
  br i1 %311, label %324, label %312

312:                                              ; preds = %309
  %313 = load i32, i32* %6, align 4
  %314 = icmp eq i32 %313, 58
  br i1 %314, label %324, label %315

315:                                              ; preds = %312
  %316 = load i32, i32* %6, align 4
  %317 = icmp eq i32 %316, 123
  br i1 %317, label %324, label %318

318:                                              ; preds = %315
  %319 = load i32, i32* %6, align 4
  %320 = icmp eq i32 %319, 91
  br i1 %320, label %324, label %321

321:                                              ; preds = %318
  %322 = load i32, i32* %6, align 4
  %323 = icmp eq i32 %322, 32
  br i1 %323, label %324, label %334

324:                                              ; preds = %321, %318, %315, %312, %309, %306, %303, %300, %297, %294, %291, %288
  %325 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %326 = load i32, i32* %8, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %325, i64 %327
  %329 = call i64 @print_flag(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32* %10, i8* %328)
  %330 = load i32, i32* %8, align 4
  %331 = sext i32 %330 to i64
  %332 = add nsw i64 %331, %329
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %8, align 4
  br label %334

334:                                              ; preds = %324, %321
  %335 = load i32, i32* %10, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %347, label %337

337:                                              ; preds = %334
  %338 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %339 = load i32, i32* %8, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %338, i64 %340
  %342 = call i64 @print_flag(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32* %10, i8* %341)
  %343 = load i32, i32* %8, align 4
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %344, %342
  %346 = trunc i64 %345 to i32
  store i32 %346, i32* %8, align 4
  br label %347

347:                                              ; preds = %337, %334
  %348 = load i32, i32* %6, align 4
  %349 = call i64 @isprint(i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %362

351:                                              ; preds = %347
  %352 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %353 = load i32, i32* %8, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, i8* %352, i64 %354
  %356 = load i32, i32* %6, align 4
  %357 = call i64 (i8*, i8*, ...) @sprintf(i8* %355, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %356)
  %358 = load i32, i32* %8, align 4
  %359 = sext i32 %358 to i64
  %360 = add nsw i64 %359, %357
  %361 = trunc i64 %360 to i32
  store i32 %361, i32* %8, align 4
  br label %362

362:                                              ; preds = %351, %347
  %363 = load i32, i32* %6, align 4
  %364 = icmp ne i32 %363, 255
  br i1 %364, label %365, label %375

365:                                              ; preds = %362
  %366 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %367 = load i32, i32* %8, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8, i8* %366, i64 %368
  %370 = call i64 (i8*, i8*, ...) @sprintf(i8* %369, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %371 = load i32, i32* %8, align 4
  %372 = sext i32 %371 to i64
  %373 = add nsw i64 %372, %370
  %374 = trunc i64 %373 to i32
  store i32 %374, i32* %8, align 4
  br label %375

375:                                              ; preds = %365, %362
  %376 = load i32, i32* %8, align 4
  %377 = load i32, i32* %7, align 4
  %378 = add nsw i32 %377, %376
  store i32 %378, i32* %7, align 4
  %379 = load i32, i32* %7, align 4
  %380 = icmp sgt i32 %379, 80
  br i1 %380, label %381, label %385

381:                                              ; preds = %375
  %382 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %383 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %382)
  %384 = load i32, i32* %8, align 4
  store i32 %384, i32* %7, align 4
  br label %388

385:                                              ; preds = %375
  %386 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %387 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %386)
  br label %388

388:                                              ; preds = %385, %381
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %6, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %6, align 4
  br label %21

392:                                              ; preds = %21
  %393 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @print_flag(i8*, i32*, i8*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @isalnum(i32) #1

declare dso_local i64 @isprint(i32) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
