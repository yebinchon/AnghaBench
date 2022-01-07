; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_float.c___printf_render_float.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_float.c___printf_render_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__printf_io = type { i32 }
%struct.printf_info = type { i32, i8, i32, i64, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@MAXEXPDIG = common dso_local global i32 0, align 4
@BUF = common dso_local global i32 0, align 4
@__lowercase_hex = common dso_local global i8* null, align 8
@__uppercase_hex = common dso_local global i8* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@DEFPREC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@CHAR_MAX = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__printf_render_float(%struct.__printf_io* %0, %struct.printf_info* %1, i8** %2) #0 {
  %4 = alloca %struct.__printf_io*, align 8
  %5 = alloca %struct.printf_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca x86_fp80, align 16
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [2 x i8], align 1
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i8, align 1
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  store %struct.__printf_io* %0, %struct.__printf_io** %4, align 8
  store %struct.printf_info* %1, %struct.printf_info** %5, align 8
  store i8** %2, i8*** %6, align 8
  %36 = load i32, i32* @MAXEXPDIG, align 4
  %37 = add nsw i32 %36, 2
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %18, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %19, align 8
  %41 = load i32, i32* @BUF, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %33, align 8
  %44 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %45 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %7, align 4
  %47 = getelementptr inbounds [2 x i8], [2 x i8]* %28, i64 0, i64 1
  store i8 0, i8* %47, align 1
  %48 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %49 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %48, i32 0, i32 1
  %50 = load i8, i8* %49, align 4
  store i8 %50, i8* %14, align 1
  store i32 0, i32* %35, align 4
  store i32 0, i32* %29, align 4
  %51 = call %struct.TYPE_2__* (...) @localeconv()
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %32, align 1
  store i8* null, i8** %22, align 8
  %55 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %56 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %3
  %60 = call %struct.TYPE_2__* (...) @localeconv()
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %22, align 8
  br label %63

63:                                               ; preds = %59, %3
  %64 = call %struct.TYPE_2__* (...) @localeconv()
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %30, align 8
  store i32 -1, i32* %27, align 4
  %67 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %68 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %154 [
    i32 97, label %70
    i32 65, label %70
    i32 101, label %129
    i32 69, label %129
    i32 102, label %143
    i32 70, label %143
    i32 103, label %144
    i32 71, label %144
  ]

70:                                               ; preds = %63, %63
  %71 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %72 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 97
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = getelementptr inbounds [2 x i8], [2 x i8]* %28, i64 0, i64 1
  store i8 120, i8* %76, align 1
  %77 = load i8*, i8** @__lowercase_hex, align 8
  store i8* %77, i8** %34, align 8
  store i8 112, i8* %9, align 1
  br label %81

78:                                               ; preds = %70
  %79 = getelementptr inbounds [2 x i8], [2 x i8]* %28, i64 0, i64 1
  store i8 88, i8* %79, align 1
  %80 = load i8*, i8** @__uppercase_hex, align 8
  store i8* %80, i8** %34, align 8
  store i8 80, i8* %9, align 1
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %7, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %89 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load i8**, i8*** %6, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = bitcast i8* %95 to x86_fp80*
  %97 = load x86_fp80, x86_fp80* %96, align 16
  store x86_fp80 %97, x86_fp80* %24, align 16
  %98 = load x86_fp80, x86_fp80* %24, align 16
  %99 = load i8*, i8** %34, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i8* @__hldtoa(x86_fp80 %98, i8* %99, i32 %100, i32* %11, i32* %12, i8** %13)
  store i8* %101, i8** %10, align 8
  store i8* %101, i8** %8, align 8
  br label %112

102:                                              ; preds = %87
  %103 = load i8**, i8*** %6, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  %105 = load i8*, i8** %104, align 8
  %106 = bitcast i8* %105 to double*
  %107 = load double, double* %106, align 8
  store double %107, double* %25, align 8
  %108 = load double, double* %25, align 8
  %109 = load i8*, i8** %34, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i8* @__hdtoa(double %108, i8* %109, i32 %110, i32* %11, i32* %12, i8** %13)
  store i8* %111, i8** %10, align 8
  store i8* %111, i8** %8, align 8
  br label %112

112:                                              ; preds = %102, %92
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i8*, i8** %13, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %115, %112
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @INT_MAX, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = getelementptr inbounds [2 x i8], [2 x i8]* %28, i64 0, i64 1
  store i8 0, i8* %127, align 1
  br label %128

128:                                              ; preds = %126, %122
  br label %204

129:                                              ; preds = %63, %63
  %130 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %131 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %9, align 1
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load i32, i32* @DEFPREC, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %142

139:                                              ; preds = %129
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %139, %136
  br label %161

143:                                              ; preds = %63, %63
  store i8 0, i8* %9, align 1
  br label %161

144:                                              ; preds = %63, %63
  %145 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %146 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 %147, 2
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %9, align 1
  %150 = load i32, i32* %7, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  store i32 1, i32* %7, align 4
  br label %153

153:                                              ; preds = %152, %144
  br label %161

154:                                              ; preds = %63
  %155 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %156 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 102
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  br label %161

161:                                              ; preds = %154, %153, %143, %142
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i32, i32* @DEFPREC, align 4
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %164, %161
  %167 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %168 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %167, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %166
  %172 = load i8**, i8*** %6, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 0
  %174 = load i8*, i8** %173, align 8
  %175 = bitcast i8* %174 to x86_fp80*
  %176 = load x86_fp80, x86_fp80* %175, align 16
  store x86_fp80 %176, x86_fp80* %24, align 16
  %177 = load i8, i8* %9, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 2, i32 3
  %182 = load i32, i32* %7, align 4
  %183 = call i8* @__ldtoa(x86_fp80* %24, i32 %181, i32 %182, i32* %11, i32* %12, i8** %13)
  store i8* %183, i8** %10, align 8
  store i8* %183, i8** %8, align 8
  br label %203

184:                                              ; preds = %166
  %185 = load i8**, i8*** %6, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 0
  %187 = load i8*, i8** %186, align 8
  %188 = bitcast i8* %187 to double*
  %189 = load double, double* %188, align 8
  store double %189, double* %25, align 8
  %190 = load double, double* %25, align 8
  %191 = load i8, i8* %9, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 2, i32 3
  %196 = load i32, i32* %7, align 4
  %197 = call i8* @dtoa(double %190, i32 %195, i32 %196, i32* %11, i32* %12, i8** %13)
  store i8* %197, i8** %10, align 8
  store i8* %197, i8** %8, align 8
  %198 = load i32, i32* %11, align 4
  %199 = icmp eq i32 %198, 9999
  br i1 %199, label %200, label %202

200:                                              ; preds = %184
  %201 = load i32, i32* @INT_MAX, align 4
  store i32 %201, i32* %11, align 4
  br label %202

202:                                              ; preds = %200, %184
  br label %203

203:                                              ; preds = %202, %171
  br label %204

204:                                              ; preds = %203, %128
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  store i8 45, i8* %14, align 1
  br label %208

208:                                              ; preds = %207, %204
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* @INT_MAX, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %232

212:                                              ; preds = %208
  %213 = load i8*, i8** %10, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 78
  br i1 %216, label %217, label %224

217:                                              ; preds = %212
  %218 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %219 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = icmp sge i32 %220, 97
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  store i8* %223, i8** %10, align 8
  store i8 0, i8* %14, align 1
  br label %231

224:                                              ; preds = %212
  %225 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %226 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp sge i32 %227, 97
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  store i8* %230, i8** %10, align 8
  br label %231

231:                                              ; preds = %224, %217
  store i32 3, i32* %15, align 4
  store i32 1, i32* %35, align 4
  br label %374

232:                                              ; preds = %208
  %233 = load i8*, i8** %13, align 8
  %234 = load i8*, i8** %10, align 8
  %235 = ptrtoint i8* %233 to i64
  %236 = ptrtoint i8* %234 to i64
  %237 = sub i64 %235, %236
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %16, align 4
  %239 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %240 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 103
  br i1 %242, label %248, label %243

243:                                              ; preds = %232
  %244 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %245 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = icmp eq i32 %246, 71
  br i1 %247, label %248, label %282

248:                                              ; preds = %243, %232
  %249 = load i32, i32* %11, align 4
  %250 = icmp sgt i32 %249, -4
  br i1 %250, label %251, label %273

251:                                              ; preds = %248
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* %7, align 4
  %254 = icmp sle i32 %252, %253
  br i1 %254, label %255, label %273

255:                                              ; preds = %251
  store i8 0, i8* %9, align 1
  %256 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %257 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %256, i32 0, i32 5
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %255
  %261 = load i32, i32* %11, align 4
  %262 = load i32, i32* %7, align 4
  %263 = sub nsw i32 %262, %261
  store i32 %263, i32* %7, align 4
  br label %268

264:                                              ; preds = %255
  %265 = load i32, i32* %16, align 4
  %266 = load i32, i32* %11, align 4
  %267 = sub nsw i32 %265, %266
  store i32 %267, i32* %7, align 4
  br label %268

268:                                              ; preds = %264, %260
  %269 = load i32, i32* %7, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %268
  store i32 0, i32* %7, align 4
  br label %272

272:                                              ; preds = %271, %268
  br label %281

273:                                              ; preds = %251, %248
  %274 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %275 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %274, i32 0, i32 5
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %273
  %279 = load i32, i32* %16, align 4
  store i32 %279, i32* %7, align 4
  br label %280

280:                                              ; preds = %278, %273
  br label %281

281:                                              ; preds = %280, %272
  br label %282

282:                                              ; preds = %281, %243
  %283 = load i8, i8* %9, align 1
  %284 = icmp ne i8 %283, 0
  br i1 %284, label %285, label %304

285:                                              ; preds = %282
  %286 = load i32, i32* %11, align 4
  %287 = sub nsw i32 %286, 1
  %288 = load i8, i8* %9, align 1
  %289 = call i32 @exponent(i8* %40, i32 %287, i8 signext %288)
  store i32 %289, i32* %17, align 4
  %290 = load i32, i32* %17, align 4
  %291 = load i32, i32* %7, align 4
  %292 = add nsw i32 %290, %291
  store i32 %292, i32* %15, align 4
  %293 = load i32, i32* %7, align 4
  %294 = icmp sgt i32 %293, 1
  br i1 %294, label %300, label %295

295:                                              ; preds = %285
  %296 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %297 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %296, i32 0, i32 5
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %295, %285
  %301 = load i32, i32* %15, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %15, align 4
  br label %303

303:                                              ; preds = %300, %295
  br label %373

304:                                              ; preds = %282
  %305 = load i32, i32* %11, align 4
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %304
  %308 = load i32, i32* %11, align 4
  store i32 %308, i32* %15, align 4
  br label %310

309:                                              ; preds = %304
  store i32 1, i32* %15, align 4
  br label %310

310:                                              ; preds = %309, %307
  %311 = load i32, i32* %7, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %318, label %313

313:                                              ; preds = %310
  %314 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %315 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %314, i32 0, i32 5
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %313, %310
  %319 = load i32, i32* %7, align 4
  %320 = add nsw i32 %319, 1
  %321 = load i32, i32* %15, align 4
  %322 = add nsw i32 %321, %320
  store i32 %322, i32* %15, align 4
  br label %323

323:                                              ; preds = %318, %313
  %324 = load i8*, i8** %22, align 8
  %325 = icmp ne i8* %324, null
  br i1 %325, label %326, label %370

326:                                              ; preds = %323
  %327 = load i32, i32* %11, align 4
  %328 = icmp sgt i32 %327, 0
  br i1 %328, label %329, label %370

329:                                              ; preds = %326
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  %330 = load i32, i32* %11, align 4
  store i32 %330, i32* %23, align 4
  br label %331

331:                                              ; preds = %363, %329
  %332 = load i8*, i8** %22, align 8
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = load i8, i8* @CHAR_MAX, align 1
  %336 = sext i8 %335 to i32
  %337 = icmp ne i32 %334, %336
  br i1 %337, label %338, label %364

338:                                              ; preds = %331
  %339 = load i32, i32* %23, align 4
  %340 = load i8*, i8** %22, align 8
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i32
  %343 = icmp sle i32 %339, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %338
  br label %364

345:                                              ; preds = %338
  %346 = load i8*, i8** %22, align 8
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = load i32, i32* %23, align 4
  %350 = sub nsw i32 %349, %348
  store i32 %350, i32* %23, align 4
  %351 = load i8*, i8** %22, align 8
  %352 = getelementptr inbounds i8, i8* %351, i64 1
  %353 = load i8, i8* %352, align 1
  %354 = icmp ne i8 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %345
  %356 = load i32, i32* %20, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %20, align 4
  %358 = load i8*, i8** %22, align 8
  %359 = getelementptr inbounds i8, i8* %358, i32 1
  store i8* %359, i8** %22, align 8
  br label %363

360:                                              ; preds = %345
  %361 = load i32, i32* %21, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %21, align 4
  br label %363

363:                                              ; preds = %360, %355
  br label %331

364:                                              ; preds = %344, %331
  %365 = load i32, i32* %20, align 4
  %366 = load i32, i32* %21, align 4
  %367 = add nsw i32 %365, %366
  %368 = load i32, i32* %15, align 4
  %369 = add nsw i32 %368, %367
  store i32 %369, i32* %15, align 4
  br label %372

370:                                              ; preds = %326, %323
  %371 = load i32, i32* %11, align 4
  store i32 %371, i32* %23, align 4
  br label %372

372:                                              ; preds = %370, %364
  br label %373

373:                                              ; preds = %372, %303
  br label %374

374:                                              ; preds = %373, %231
  %375 = load i32, i32* %27, align 4
  %376 = load i32, i32* %15, align 4
  %377 = icmp sgt i32 %375, %376
  br i1 %377, label %378, label %380

378:                                              ; preds = %374
  %379 = load i32, i32* %27, align 4
  br label %382

380:                                              ; preds = %374
  %381 = load i32, i32* %15, align 4
  br label %382

382:                                              ; preds = %380, %378
  %383 = phi i32 [ %379, %378 ], [ %381, %380 ]
  store i32 %383, i32* %26, align 4
  %384 = load i8, i8* %14, align 1
  %385 = icmp ne i8 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %382
  %387 = load i32, i32* %26, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %26, align 4
  br label %389

389:                                              ; preds = %386, %382
  %390 = getelementptr inbounds [2 x i8], [2 x i8]* %28, i64 0, i64 1
  %391 = load i8, i8* %390, align 1
  %392 = icmp ne i8 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %389
  %394 = load i32, i32* %26, align 4
  %395 = add nsw i32 %394, 2
  store i32 %395, i32* %26, align 4
  br label %396

396:                                              ; preds = %393, %389
  %397 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %398 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %397, i32 0, i32 6
  %399 = load i32, i32* %398, align 8
  %400 = icmp ne i32 %399, 48
  br i1 %400, label %401, label %418

401:                                              ; preds = %396
  %402 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %403 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %402, i32 0, i32 3
  %404 = load i64, i64* %403, align 8
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %406, label %418

406:                                              ; preds = %401
  %407 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %408 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %409 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %408, i32 0, i32 4
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* %26, align 4
  %412 = sub nsw i32 %410, %411
  %413 = call i64 @__printf_pad(%struct.__printf_io* %407, i32 %412, i32 0)
  %414 = load i32, i32* %29, align 4
  %415 = sext i32 %414 to i64
  %416 = add nsw i64 %415, %413
  %417 = trunc i64 %416 to i32
  store i32 %417, i32* %29, align 4
  br label %418

418:                                              ; preds = %406, %401, %396
  %419 = load i8, i8* %14, align 1
  %420 = icmp ne i8 %419, 0
  br i1 %420, label %421, label %428

421:                                              ; preds = %418
  %422 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %423 = call i64 @__printf_puts(%struct.__printf_io* %422, i8* %14, i32 1)
  %424 = load i32, i32* %29, align 4
  %425 = sext i32 %424 to i64
  %426 = add nsw i64 %425, %423
  %427 = trunc i64 %426 to i32
  store i32 %427, i32* %29, align 4
  br label %428

428:                                              ; preds = %421, %418
  %429 = getelementptr inbounds [2 x i8], [2 x i8]* %28, i64 0, i64 1
  %430 = load i8, i8* %429, align 1
  %431 = icmp ne i8 %430, 0
  br i1 %431, label %432, label %441

432:                                              ; preds = %428
  %433 = getelementptr inbounds [2 x i8], [2 x i8]* %28, i64 0, i64 0
  store i8 48, i8* %433, align 1
  %434 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %435 = getelementptr inbounds [2 x i8], [2 x i8]* %28, i64 0, i64 0
  %436 = call i64 @__printf_puts(%struct.__printf_io* %434, i8* %435, i32 2)
  %437 = load i32, i32* %29, align 4
  %438 = sext i32 %437 to i64
  %439 = add nsw i64 %438, %436
  %440 = trunc i64 %439 to i32
  store i32 %440, i32* %29, align 4
  br label %441

441:                                              ; preds = %432, %428
  %442 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %443 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %442, i32 0, i32 6
  %444 = load i32, i32* %443, align 8
  %445 = icmp eq i32 %444, 48
  br i1 %445, label %446, label %463

446:                                              ; preds = %441
  %447 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %448 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %447, i32 0, i32 3
  %449 = load i64, i64* %448, align 8
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %451, label %463

451:                                              ; preds = %446
  %452 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %453 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %454 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %453, i32 0, i32 4
  %455 = load i32, i32* %454, align 8
  %456 = load i32, i32* %26, align 4
  %457 = sub nsw i32 %455, %456
  %458 = call i64 @__printf_pad(%struct.__printf_io* %452, i32 %457, i32 1)
  %459 = load i32, i32* %29, align 4
  %460 = sext i32 %459 to i64
  %461 = add nsw i64 %460, %458
  %462 = trunc i64 %461 to i32
  store i32 %462, i32* %29, align 4
  br label %463

463:                                              ; preds = %451, %446, %441
  %464 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %465 = load i32, i32* %27, align 4
  %466 = load i32, i32* %15, align 4
  %467 = sub nsw i32 %465, %466
  %468 = call i64 @__printf_pad(%struct.__printf_io* %464, i32 %467, i32 1)
  %469 = load i32, i32* %29, align 4
  %470 = sext i32 %469 to i64
  %471 = add nsw i64 %470, %468
  %472 = trunc i64 %471 to i32
  store i32 %472, i32* %29, align 4
  %473 = load i32, i32* %35, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %484

475:                                              ; preds = %463
  %476 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %477 = load i8*, i8** %10, align 8
  %478 = load i32, i32* %15, align 4
  %479 = call i64 @__printf_puts(%struct.__printf_io* %476, i8* %477, i32 %478)
  %480 = load i32, i32* %29, align 4
  %481 = sext i32 %480 to i64
  %482 = add nsw i64 %481, %479
  %483 = trunc i64 %482 to i32
  store i32 %483, i32* %29, align 4
  br label %661

484:                                              ; preds = %463
  %485 = load i8, i8* %9, align 1
  %486 = icmp ne i8 %485, 0
  br i1 %486, label %604, label %487

487:                                              ; preds = %484
  %488 = load i32, i32* %11, align 4
  %489 = icmp sle i32 %488, 0
  br i1 %489, label %490, label %524

490:                                              ; preds = %487
  %491 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %492 = call i64 @__printf_puts(%struct.__printf_io* %491, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %493 = load i32, i32* %29, align 4
  %494 = sext i32 %493 to i64
  %495 = add nsw i64 %494, %492
  %496 = trunc i64 %495 to i32
  store i32 %496, i32* %29, align 4
  %497 = load i32, i32* %7, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %504, label %499

499:                                              ; preds = %490
  %500 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %501 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %500, i32 0, i32 5
  %502 = load i64, i64* %501, align 8
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %512

504:                                              ; preds = %499, %490
  %505 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %506 = load i8*, i8** %30, align 8
  %507 = call i64 @__printf_puts(%struct.__printf_io* %505, i8* %506, i32 1)
  %508 = load i32, i32* %29, align 4
  %509 = sext i32 %508 to i64
  %510 = add nsw i64 %509, %507
  %511 = trunc i64 %510 to i32
  store i32 %511, i32* %29, align 4
  br label %512

512:                                              ; preds = %504, %499
  %513 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %514 = load i32, i32* %11, align 4
  %515 = sub nsw i32 0, %514
  %516 = call i64 @__printf_pad(%struct.__printf_io* %513, i32 %515, i32 1)
  %517 = load i32, i32* %29, align 4
  %518 = sext i32 %517 to i64
  %519 = add nsw i64 %518, %516
  %520 = trunc i64 %519 to i32
  store i32 %520, i32* %29, align 4
  %521 = load i32, i32* %11, align 4
  %522 = load i32, i32* %7, align 4
  %523 = add nsw i32 %522, %521
  store i32 %523, i32* %7, align 4
  br label %598

524:                                              ; preds = %487
  %525 = load i8*, i8** %10, align 8
  %526 = load i8*, i8** %13, align 8
  %527 = load i32, i32* %23, align 4
  %528 = trunc i32 %527 to i8
  %529 = call i32 @PRINTANDPAD(i8* %525, i8* %526, i8 signext %528, i32 1)
  %530 = load i32, i32* %23, align 4
  %531 = load i8*, i8** %10, align 8
  %532 = sext i32 %530 to i64
  %533 = getelementptr inbounds i8, i8* %531, i64 %532
  store i8* %533, i8** %10, align 8
  %534 = load i8*, i8** %22, align 8
  %535 = icmp ne i8* %534, null
  br i1 %535, label %536, label %581

536:                                              ; preds = %524
  br label %537

537:                                              ; preds = %556, %536
  %538 = load i32, i32* %20, align 4
  %539 = icmp sgt i32 %538, 0
  br i1 %539, label %543, label %540

540:                                              ; preds = %537
  %541 = load i32, i32* %21, align 4
  %542 = icmp sgt i32 %541, 0
  br label %543

543:                                              ; preds = %540, %537
  %544 = phi i1 [ true, %537 ], [ %542, %540 ]
  br i1 %544, label %545, label %574

545:                                              ; preds = %543
  %546 = load i32, i32* %21, align 4
  %547 = icmp sgt i32 %546, 0
  br i1 %547, label %548, label %551

548:                                              ; preds = %545
  %549 = load i32, i32* %21, align 4
  %550 = add nsw i32 %549, -1
  store i32 %550, i32* %21, align 4
  br label %556

551:                                              ; preds = %545
  %552 = load i8*, i8** %22, align 8
  %553 = getelementptr inbounds i8, i8* %552, i32 -1
  store i8* %553, i8** %22, align 8
  %554 = load i32, i32* %20, align 4
  %555 = add nsw i32 %554, -1
  store i32 %555, i32* %20, align 4
  br label %556

556:                                              ; preds = %551, %548
  %557 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %558 = call i64 @__printf_puts(%struct.__printf_io* %557, i8* %32, i32 1)
  %559 = load i32, i32* %29, align 4
  %560 = sext i32 %559 to i64
  %561 = add nsw i64 %560, %558
  %562 = trunc i64 %561 to i32
  store i32 %562, i32* %29, align 4
  %563 = load i8*, i8** %10, align 8
  %564 = load i8*, i8** %13, align 8
  %565 = load i8*, i8** %22, align 8
  %566 = load i8, i8* %565, align 1
  %567 = call i32 @PRINTANDPAD(i8* %563, i8* %564, i8 signext %566, i32 1)
  %568 = load i8*, i8** %22, align 8
  %569 = load i8, i8* %568, align 1
  %570 = sext i8 %569 to i32
  %571 = load i8*, i8** %10, align 8
  %572 = sext i32 %570 to i64
  %573 = getelementptr inbounds i8, i8* %571, i64 %572
  store i8* %573, i8** %10, align 8
  br label %537

574:                                              ; preds = %543
  %575 = load i8*, i8** %10, align 8
  %576 = load i8*, i8** %13, align 8
  %577 = icmp ugt i8* %575, %576
  br i1 %577, label %578, label %580

578:                                              ; preds = %574
  %579 = load i8*, i8** %13, align 8
  store i8* %579, i8** %10, align 8
  br label %580

580:                                              ; preds = %578, %574
  br label %581

581:                                              ; preds = %580, %524
  %582 = load i32, i32* %7, align 4
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %589, label %584

584:                                              ; preds = %581
  %585 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %586 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %585, i32 0, i32 5
  %587 = load i64, i64* %586, align 8
  %588 = icmp ne i64 %587, 0
  br i1 %588, label %589, label %597

589:                                              ; preds = %584, %581
  %590 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %591 = load i8*, i8** %30, align 8
  %592 = call i64 @__printf_puts(%struct.__printf_io* %590, i8* %591, i32 1)
  %593 = load i32, i32* %29, align 4
  %594 = sext i32 %593 to i64
  %595 = add nsw i64 %594, %592
  %596 = trunc i64 %595 to i32
  store i32 %596, i32* %29, align 4
  br label %597

597:                                              ; preds = %589, %584
  br label %598

598:                                              ; preds = %597, %512
  %599 = load i8*, i8** %10, align 8
  %600 = load i8*, i8** %13, align 8
  %601 = load i32, i32* %7, align 4
  %602 = trunc i32 %601 to i8
  %603 = call i32 @PRINTANDPAD(i8* %599, i8* %600, i8 signext %602, i32 1)
  br label %660

604:                                              ; preds = %484
  %605 = load i32, i32* %7, align 4
  %606 = icmp sgt i32 %605, 1
  br i1 %606, label %612, label %607

607:                                              ; preds = %604
  %608 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %609 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %608, i32 0, i32 5
  %610 = load i64, i64* %609, align 8
  %611 = icmp ne i64 %610, 0
  br i1 %611, label %612, label %644

612:                                              ; preds = %607, %604
  %613 = load i8*, i8** %10, align 8
  %614 = getelementptr inbounds i8, i8* %613, i32 1
  store i8* %614, i8** %10, align 8
  %615 = load i8, i8* %613, align 1
  %616 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 %615, i8* %616, align 16
  %617 = load i8*, i8** %30, align 8
  %618 = load i8, i8* %617, align 1
  %619 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 %618, i8* %619, align 1
  %620 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %621 = call i64 @__printf_puts(%struct.__printf_io* %620, i8* %43, i32 2)
  %622 = load i32, i32* %29, align 4
  %623 = sext i32 %622 to i64
  %624 = add nsw i64 %623, %621
  %625 = trunc i64 %624 to i32
  store i32 %625, i32* %29, align 4
  %626 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %627 = load i8*, i8** %10, align 8
  %628 = load i32, i32* %16, align 4
  %629 = sub nsw i32 %628, 1
  %630 = call i64 @__printf_puts(%struct.__printf_io* %626, i8* %627, i32 %629)
  %631 = load i32, i32* %29, align 4
  %632 = sext i32 %631 to i64
  %633 = add nsw i64 %632, %630
  %634 = trunc i64 %633 to i32
  store i32 %634, i32* %29, align 4
  %635 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %636 = load i32, i32* %7, align 4
  %637 = load i32, i32* %16, align 4
  %638 = sub nsw i32 %636, %637
  %639 = call i64 @__printf_pad(%struct.__printf_io* %635, i32 %638, i32 1)
  %640 = load i32, i32* %29, align 4
  %641 = sext i32 %640 to i64
  %642 = add nsw i64 %641, %639
  %643 = trunc i64 %642 to i32
  store i32 %643, i32* %29, align 4
  br label %652

644:                                              ; preds = %607
  %645 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %646 = load i8*, i8** %10, align 8
  %647 = call i64 @__printf_puts(%struct.__printf_io* %645, i8* %646, i32 1)
  %648 = load i32, i32* %29, align 4
  %649 = sext i32 %648 to i64
  %650 = add nsw i64 %649, %647
  %651 = trunc i64 %650 to i32
  store i32 %651, i32* %29, align 4
  br label %652

652:                                              ; preds = %644, %612
  %653 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %654 = load i32, i32* %17, align 4
  %655 = call i64 @__printf_puts(%struct.__printf_io* %653, i8* %40, i32 %654)
  %656 = load i32, i32* %29, align 4
  %657 = sext i32 %656 to i64
  %658 = add nsw i64 %657, %655
  %659 = trunc i64 %658 to i32
  store i32 %659, i32* %29, align 4
  br label %660

660:                                              ; preds = %652, %598
  br label %661

661:                                              ; preds = %660, %475
  %662 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %663 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %662, i32 0, i32 3
  %664 = load i64, i64* %663, align 8
  %665 = icmp ne i64 %664, 0
  br i1 %665, label %666, label %678

666:                                              ; preds = %661
  %667 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %668 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %669 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %668, i32 0, i32 4
  %670 = load i32, i32* %669, align 8
  %671 = load i32, i32* %26, align 4
  %672 = sub nsw i32 %670, %671
  %673 = call i64 @__printf_pad(%struct.__printf_io* %667, i32 %672, i32 0)
  %674 = load i32, i32* %29, align 4
  %675 = sext i32 %674 to i64
  %676 = add nsw i64 %675, %673
  %677 = trunc i64 %676 to i32
  store i32 %677, i32* %29, align 4
  br label %678

678:                                              ; preds = %666, %661
  %679 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %680 = call i32 @__printf_flush(%struct.__printf_io* %679)
  %681 = load i8*, i8** %8, align 8
  %682 = icmp ne i8* %681, null
  br i1 %682, label %683, label %686

683:                                              ; preds = %678
  %684 = load i8*, i8** %8, align 8
  %685 = call i32 @freedtoa(i8* %684)
  br label %686

686:                                              ; preds = %683, %678
  %687 = load i32, i32* %29, align 4
  %688 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %688)
  ret i32 %687
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_2__* @localeconv(...) #2

declare dso_local i8* @__hldtoa(x86_fp80, i8*, i32, i32*, i32*, i8**) #2

declare dso_local i8* @__hdtoa(double, i8*, i32, i32*, i32*, i8**) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @__ldtoa(x86_fp80*, i32, i32, i32*, i32*, i8**) #2

declare dso_local i8* @dtoa(double, i32, i32, i32*, i32*, i8**) #2

declare dso_local i32 @exponent(i8*, i32, i8 signext) #2

declare dso_local i64 @__printf_pad(%struct.__printf_io*, i32, i32) #2

declare dso_local i64 @__printf_puts(%struct.__printf_io*, i8*, i32) #2

declare dso_local i32 @PRINTANDPAD(i8*, i8*, i8 signext, i32) #2

declare dso_local i32 @__printf_flush(%struct.__printf_io*) #2

declare dso_local i32 @freedtoa(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
