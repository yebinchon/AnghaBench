; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_operator_chars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_operator_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"mismatched quoting on brackets, try 'operator\\[\\]'\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"nothing is allowed between '[' and ']'\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"`operator ()' must be specified without whitespace in `()'\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"`operator ?:' must be specified without whitespace in `?:'\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"`operator []' must be specified without whitespace in `[]'\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"`operator %s' not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @operator_chars(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strncmp(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %3, align 8
  br label %301

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 8
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @isalpha(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 95
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 36
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %26, %21, %14
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %3, align 8
  br label %301

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %52, %39
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 9
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i1 [ true, %40 ], [ %49, %45 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  br label %40

55:                                               ; preds = %50
  %56 = load i8*, i8** %4, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @isalpha(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 95
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 36
  br i1 %69, label %70, label %97

70:                                               ; preds = %65, %60, %55
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %72, i8** %6, align 8
  br label %73

73:                                               ; preds = %90, %70
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @isalnum(i8 signext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 95
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 36
  br label %88

88:                                               ; preds = %83, %78, %73
  %89 = phi i1 [ true, %78 ], [ true, %73 ], [ %87, %83 ]
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %6, align 8
  br label %73

93:                                               ; preds = %88
  %94 = load i8*, i8** %6, align 8
  %95 = load i8**, i8*** %5, align 8
  store i8* %94, i8** %95, align 8
  %96 = load i8*, i8** %4, align 8
  store i8* %96, i8** %3, align 8
  br label %301

97:                                               ; preds = %65
  br label %98

98:                                               ; preds = %296, %163, %97
  %99 = load i8*, i8** %4, align 8
  %100 = load i8, i8* %99, align 1
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %102, label %297

102:                                              ; preds = %98
  %103 = load i8*, i8** %4, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  switch i32 %105, label %293 [
    i32 92, label %106
    i32 33, label %168
    i32 61, label %168
    i32 42, label %168
    i32 47, label %168
    i32 37, label %168
    i32 94, label %168
    i32 60, label %184
    i32 62, label %184
    i32 43, label %184
    i32 45, label %184
    i32 38, label %184
    i32 124, label %184
    i32 126, label %249
    i32 44, label %249
    i32 40, label %254
    i32 63, label %267
    i32 91, label %280
  ]

106:                                              ; preds = %102
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 42
  br i1 %111, label %112, label %128

112:                                              ; preds = %106
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 61
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 3
  %121 = load i8**, i8*** %5, align 8
  store i8* %120, i8** %121, align 8
  br label %126

122:                                              ; preds = %112
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 2
  %125 = load i8**, i8*** %5, align 8
  store i8* %124, i8** %125, align 8
  br label %126

126:                                              ; preds = %122, %118
  %127 = load i8*, i8** %4, align 8
  store i8* %127, i8** %3, align 8
  br label %301

128:                                              ; preds = %106
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 91
  br i1 %133, label %134, label %163

134:                                              ; preds = %128
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 2
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 93
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %162

142:                                              ; preds = %134
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 2
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 92
  br i1 %147, label %148, label %159

148:                                              ; preds = %142
  %149 = load i8*, i8** %4, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 3
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 93
  br i1 %153, label %154, label %159

154:                                              ; preds = %148
  %155 = load i8*, i8** %4, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 4
  %157 = load i8**, i8*** %5, align 8
  store i8* %156, i8** %157, align 8
  %158 = load i8*, i8** %4, align 8
  store i8* %158, i8** %3, align 8
  br label %301

159:                                              ; preds = %148, %142
  %160 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159
  br label %162

162:                                              ; preds = %161, %140
  br label %166

163:                                              ; preds = %128
  %164 = load i8*, i8** %4, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %4, align 8
  br label %98

166:                                              ; preds = %162
  br label %167

167:                                              ; preds = %166
  br label %296

168:                                              ; preds = %102, %102, %102, %102, %102, %102
  %169 = load i8*, i8** %4, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 61
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 2
  %177 = load i8**, i8*** %5, align 8
  store i8* %176, i8** %177, align 8
  br label %182

178:                                              ; preds = %168
  %179 = load i8*, i8** %4, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8**, i8*** %5, align 8
  store i8* %180, i8** %181, align 8
  br label %182

182:                                              ; preds = %178, %174
  %183 = load i8*, i8** %4, align 8
  store i8* %183, i8** %3, align 8
  br label %301

184:                                              ; preds = %102, %102, %102, %102, %102, %102
  %185 = load i8*, i8** %4, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 45
  br i1 %189, label %190, label %223

190:                                              ; preds = %184
  %191 = load i8*, i8** %4, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 62
  br i1 %195, label %196, label %223

196:                                              ; preds = %190
  %197 = load i8*, i8** %4, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 2
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 42
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = load i8*, i8** %4, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 3
  %205 = load i8**, i8*** %5, align 8
  store i8* %204, i8** %205, align 8
  %206 = load i8*, i8** %4, align 8
  store i8* %206, i8** %3, align 8
  br label %301

207:                                              ; preds = %196
  %208 = load i8*, i8** %4, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 2
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 92
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = load i8*, i8** %4, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 4
  %216 = load i8**, i8*** %5, align 8
  store i8* %215, i8** %216, align 8
  %217 = load i8*, i8** %4, align 8
  store i8* %217, i8** %3, align 8
  br label %301

218:                                              ; preds = %207
  %219 = load i8*, i8** %4, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 2
  %221 = load i8**, i8*** %5, align 8
  store i8* %220, i8** %221, align 8
  %222 = load i8*, i8** %4, align 8
  store i8* %222, i8** %3, align 8
  br label %301

223:                                              ; preds = %190, %184
  %224 = load i8*, i8** %4, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 61
  br i1 %228, label %239, label %229

229:                                              ; preds = %223
  %230 = load i8*, i8** %4, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 1
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = load i8*, i8** %4, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 0
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %233, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %229, %223
  %240 = load i8*, i8** %4, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 2
  %242 = load i8**, i8*** %5, align 8
  store i8* %241, i8** %242, align 8
  br label %247

243:                                              ; preds = %229
  %244 = load i8*, i8** %4, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 1
  %246 = load i8**, i8*** %5, align 8
  store i8* %245, i8** %246, align 8
  br label %247

247:                                              ; preds = %243, %239
  %248 = load i8*, i8** %4, align 8
  store i8* %248, i8** %3, align 8
  br label %301

249:                                              ; preds = %102, %102
  %250 = load i8*, i8** %4, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 1
  %252 = load i8**, i8*** %5, align 8
  store i8* %251, i8** %252, align 8
  %253 = load i8*, i8** %4, align 8
  store i8* %253, i8** %3, align 8
  br label %301

254:                                              ; preds = %102
  %255 = load i8*, i8** %4, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 1
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp ne i32 %258, 41
  br i1 %259, label %260, label %262

260:                                              ; preds = %254
  %261 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  br label %262

262:                                              ; preds = %260, %254
  %263 = load i8*, i8** %4, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 2
  %265 = load i8**, i8*** %5, align 8
  store i8* %264, i8** %265, align 8
  %266 = load i8*, i8** %4, align 8
  store i8* %266, i8** %3, align 8
  br label %301

267:                                              ; preds = %102
  %268 = load i8*, i8** %4, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 1
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp ne i32 %271, 58
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  br label %275

275:                                              ; preds = %273, %267
  %276 = load i8*, i8** %4, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 2
  %278 = load i8**, i8*** %5, align 8
  store i8* %277, i8** %278, align 8
  %279 = load i8*, i8** %4, align 8
  store i8* %279, i8** %3, align 8
  br label %301

280:                                              ; preds = %102
  %281 = load i8*, i8** %4, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 1
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp ne i32 %284, 93
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  br label %288

288:                                              ; preds = %286, %280
  %289 = load i8*, i8** %4, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 2
  %291 = load i8**, i8*** %5, align 8
  store i8* %290, i8** %291, align 8
  %292 = load i8*, i8** %4, align 8
  store i8* %292, i8** %3, align 8
  br label %301

293:                                              ; preds = %102
  %294 = load i8*, i8** %4, align 8
  %295 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %294)
  br label %296

296:                                              ; preds = %293, %167
  br label %98

297:                                              ; preds = %98
  %298 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %298, align 8
  %299 = load i8**, i8*** %5, align 8
  %300 = load i8*, i8** %299, align 8
  store i8* %300, i8** %3, align 8
  br label %301

301:                                              ; preds = %297, %288, %275, %262, %249, %247, %218, %213, %202, %182, %154, %126, %93, %36, %11
  %302 = load i8*, i8** %3, align 8
  ret i8* %302
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i32 @error(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
