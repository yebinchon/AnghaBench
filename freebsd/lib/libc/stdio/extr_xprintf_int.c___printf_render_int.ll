; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_int.c___printf_render_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_int.c___printf_render_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__printf_io = type { i32 }
%struct.printf_info = type { i32, i8, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.arg = type { i64 }
%struct.TYPE_2__ = type { i8*, i8* }

@BUF = common dso_local global i32 0, align 4
@__lowercase_hex = common dso_local global i8* null, align 8
@__uppercase_hex = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"pi->spec = '%c'\0A\00", align 1
@ULONG_MAX = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__printf_render_int(%struct.__printf_io* %0, %struct.printf_info* %1, i8** %2) #0 {
  %4 = alloca %struct.__printf_io*, align 8
  %5 = alloca %struct.printf_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %union.arg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8, align 1
  %21 = alloca i8*, align 8
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  store %struct.__printf_io* %0, %struct.__printf_io** %4, align 8
  store %struct.printf_info* %1, %struct.printf_info** %5, align 8
  store i8** %2, i8*** %6, align 8
  %24 = load i32, i32* @BUF, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  store i32 0, i32* %23, align 4
  store i8* null, i8** %18, align 8
  %28 = load i8*, i8** @__lowercase_hex, align 8
  store i8* %28, i8** %19, align 8
  store i8 0, i8* %12, align 1
  %29 = getelementptr inbounds i8, i8* %27, i64 %25
  %30 = getelementptr inbounds i8, i8* %29, i64 -1
  store i8* %30, i8** %11, align 8
  %31 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %32 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %31, i32 0, i32 15
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %3
  %36 = call %struct.TYPE_2__* (...) @localeconv()
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %20, align 1
  %40 = call %struct.TYPE_2__* (...) @localeconv()
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %21, align 8
  store i32 1, i32* %14, align 4
  br label %44

43:                                               ; preds = %3
  store i8 0, i8* %20, align 1
  store i8* null, i8** %21, align 8
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %43, %35
  %45 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %46 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %54 [
    i32 100, label %48
    i32 105, label %48
    i32 88, label %49
    i32 120, label %51
    i32 117, label %52
    i32 85, label %52
    i32 111, label %53
    i32 79, label %53
  ]

48:                                               ; preds = %44, %44
  store i32 10, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %61

49:                                               ; preds = %44
  %50 = load i8*, i8** @__uppercase_hex, align 8
  store i8* %50, i8** %19, align 8
  br label %51

51:                                               ; preds = %44, %49
  store i32 16, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %61

52:                                               ; preds = %44, %44
  store i32 10, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %61

53:                                               ; preds = %44, %44
  store i32 8, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %61

54:                                               ; preds = %44
  %55 = load i32, i32* @stderr, align 4
  %56 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %57 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = call i32 @assert(i32 0)
  br label %61

61:                                               ; preds = %54, %53, %52, %51, %48
  %62 = load i8**, i8*** %6, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = bitcast i8* %64 to %union.arg*
  store %union.arg* %65, %union.arg** %7, align 8
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %70 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %69, i32 0, i32 1
  %71 = load i8, i8* %70, align 4
  store i8 %71, i8* %12, align 1
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %74 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %73, i32 0, i32 14
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %97, label %77

77:                                               ; preds = %72
  %78 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %79 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %78, i32 0, i32 13
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %97, label %82

82:                                               ; preds = %77
  %83 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %84 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %83, i32 0, i32 12
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %82
  %88 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %89 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %88, i32 0, i32 11
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %94 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %93, i32 0, i32 10
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %92, %87, %82, %77, %72
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load %union.arg*, %union.arg** %7, align 8
  %102 = bitcast %union.arg* %101 to i8*
  %103 = load i8, i8* %102, align 8
  %104 = sext i8 %103 to i32
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %union.arg*, %union.arg** %7, align 8
  %108 = bitcast %union.arg* %107 to i8*
  %109 = load i8, i8* %108, align 8
  %110 = sext i8 %109 to i32
  %111 = sub nsw i32 0, %110
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %22, align 1
  store i8 45, i8* %12, align 1
  br label %117

113:                                              ; preds = %100, %97
  %114 = load %union.arg*, %union.arg** %7, align 8
  %115 = bitcast %union.arg* %114 to i8*
  %116 = load i8, i8* %115, align 8
  store i8 %116, i8* %22, align 1
  br label %117

117:                                              ; preds = %113, %106
  br label %223

118:                                              ; preds = %92
  %119 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %120 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %119, i32 0, i32 9
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %118
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load %union.arg*, %union.arg** %7, align 8
  %128 = bitcast %union.arg* %127 to i64*
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %union.arg*, %union.arg** %7, align 8
  %133 = bitcast %union.arg* %132 to i64*
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 0, %134
  %136 = trunc i64 %135 to i8
  store i8 %136, i8* %22, align 1
  store i8 45, i8* %12, align 1
  br label %141

137:                                              ; preds = %126, %123
  %138 = load %union.arg*, %union.arg** %7, align 8
  %139 = bitcast %union.arg* %138 to i8*
  %140 = load i8, i8* %139, align 8
  store i8 %140, i8* %22, align 1
  br label %141

141:                                              ; preds = %137, %131
  br label %222

142:                                              ; preds = %118
  %143 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %144 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %143, i32 0, i32 8
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %172

147:                                              ; preds = %142
  %148 = load i32, i32* %16, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %147
  %151 = load %union.arg*, %union.arg** %7, align 8
  %152 = bitcast %union.arg* %151 to i64*
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i16
  %155 = sext i16 %154 to i32
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %150
  %158 = load %union.arg*, %union.arg** %7, align 8
  %159 = bitcast %union.arg* %158 to i64*
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i16
  %162 = sext i16 %161 to i32
  %163 = sub nsw i32 0, %162
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %22, align 1
  store i8 45, i8* %12, align 1
  br label %171

165:                                              ; preds = %150, %147
  %166 = load %union.arg*, %union.arg** %7, align 8
  %167 = bitcast %union.arg* %166 to i8*
  %168 = load i8, i8* %167, align 8
  %169 = sext i8 %168 to i16
  %170 = trunc i16 %169 to i8
  store i8 %170, i8* %22, align 1
  br label %171

171:                                              ; preds = %165, %157
  br label %221

172:                                              ; preds = %142
  %173 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %174 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %173, i32 0, i32 7
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %200

177:                                              ; preds = %172
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %177
  %181 = load %union.arg*, %union.arg** %7, align 8
  %182 = bitcast %union.arg* %181 to i64*
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i8
  %185 = sext i8 %184 to i32
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %180
  %188 = load %union.arg*, %union.arg** %7, align 8
  %189 = bitcast %union.arg* %188 to i64*
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i8
  %192 = sext i8 %191 to i32
  %193 = sub nsw i32 0, %192
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %22, align 1
  store i8 45, i8* %12, align 1
  br label %199

195:                                              ; preds = %180, %177
  %196 = load %union.arg*, %union.arg** %7, align 8
  %197 = bitcast %union.arg* %196 to i8*
  %198 = load i8, i8* %197, align 8
  store i8 %198, i8* %22, align 1
  br label %199

199:                                              ; preds = %195, %187
  br label %220

200:                                              ; preds = %172
  %201 = load i32, i32* %16, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %200
  %204 = load %union.arg*, %union.arg** %7, align 8
  %205 = bitcast %union.arg* %204 to i64*
  %206 = load i64, i64* %205, align 8
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %203
  %209 = load %union.arg*, %union.arg** %7, align 8
  %210 = bitcast %union.arg* %209 to i64*
  %211 = load i64, i64* %210, align 8
  %212 = sub nsw i64 0, %211
  %213 = trunc i64 %212 to i32
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %22, align 1
  store i8 45, i8* %12, align 1
  br label %219

215:                                              ; preds = %203, %200
  %216 = load %union.arg*, %union.arg** %7, align 8
  %217 = bitcast %union.arg* %216 to i8*
  %218 = load i8, i8* %217, align 8
  store i8 %218, i8* %22, align 1
  br label %219

219:                                              ; preds = %215, %208
  br label %220

220:                                              ; preds = %219, %199
  br label %221

221:                                              ; preds = %220, %171
  br label %222

222:                                              ; preds = %221, %141
  br label %223

223:                                              ; preds = %222, %117
  %224 = load i8, i8* %22, align 1
  %225 = sext i8 %224 to i32
  %226 = load i8, i8* @ULONG_MAX, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp sle i32 %225, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %223
  %230 = load i8, i8* %22, align 1
  %231 = load i8*, i8** %11, align 8
  %232 = load i32, i32* %15, align 4
  %233 = load i8*, i8** %19, align 8
  %234 = load i32, i32* %14, align 4
  %235 = load i8, i8* %20, align 1
  %236 = load i8*, i8** %21, align 8
  %237 = call i8* @__ultoa(i8 signext %230, i8* %231, i32 %232, i8* %233, i32 %234, i8 signext %235, i8* %236)
  store i8* %237, i8** %10, align 8
  br label %247

238:                                              ; preds = %223
  %239 = load i8, i8* %22, align 1
  %240 = load i8*, i8** %11, align 8
  %241 = load i32, i32* %15, align 4
  %242 = load i8*, i8** %19, align 8
  %243 = load i32, i32* %14, align 4
  %244 = load i8, i8* %20, align 1
  %245 = load i8*, i8** %21, align 8
  %246 = call i8* @__ujtoa(i8 signext %239, i8* %240, i32 %241, i8* %242, i32 %243, i8 signext %244, i8* %245)
  store i8* %246, i8** %10, align 8
  br label %247

247:                                              ; preds = %238, %229
  store i32 0, i32* %13, align 4
  %248 = load i8, i8* %22, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %267

251:                                              ; preds = %247
  %252 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %253 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %266

256:                                              ; preds = %251
  %257 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %258 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %257, i32 0, i32 6
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %256
  %262 = load i32, i32* %15, align 4
  %263 = icmp eq i32 %262, 8
  br i1 %263, label %266, label %264

264:                                              ; preds = %261, %256
  %265 = load i8*, i8** %11, align 8
  store i8* %265, i8** %10, align 8
  br label %266

266:                                              ; preds = %264, %261, %251
  br label %293

267:                                              ; preds = %247
  %268 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %269 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %268, i32 0, i32 6
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %292

272:                                              ; preds = %267
  %273 = load i32, i32* %15, align 4
  %274 = icmp eq i32 %273, 8
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load i8*, i8** %10, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 -1
  store i8* %277, i8** %10, align 8
  store i8 48, i8* %277, align 1
  br label %278

278:                                              ; preds = %275, %272
  %279 = load i32, i32* %15, align 4
  %280 = icmp eq i32 %279, 16
  br i1 %280, label %281, label %291

281:                                              ; preds = %278
  %282 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %283 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp eq i32 %284, 120
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %288

287:                                              ; preds = %281
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  br label %288

288:                                              ; preds = %287, %286
  %289 = load i32, i32* %13, align 4
  %290 = add nsw i32 %289, 2
  store i32 %290, i32* %13, align 4
  br label %291

291:                                              ; preds = %288, %278
  br label %292

292:                                              ; preds = %291, %267
  br label %293

293:                                              ; preds = %292, %266
  %294 = load i8*, i8** %11, align 8
  %295 = load i8*, i8** %10, align 8
  %296 = ptrtoint i8* %294 to i64
  %297 = ptrtoint i8* %295 to i64
  %298 = sub i64 %296, %297
  %299 = load i32, i32* %13, align 4
  %300 = sext i32 %299 to i64
  %301 = add nsw i64 %300, %298
  %302 = trunc i64 %301 to i32
  store i32 %302, i32* %13, align 4
  %303 = load i8, i8* %12, align 1
  %304 = icmp ne i8 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %293
  %306 = load i32, i32* %13, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %13, align 4
  br label %308

308:                                              ; preds = %305, %293
  %309 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %310 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = sext i32 %311 to i64
  %313 = load i8*, i8** %11, align 8
  %314 = load i8*, i8** %10, align 8
  %315 = ptrtoint i8* %313 to i64
  %316 = ptrtoint i8* %314 to i64
  %317 = sub i64 %315, %316
  %318 = icmp sgt i64 %312, %317
  br i1 %318, label %319, label %331

319:                                              ; preds = %308
  %320 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %321 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = sext i32 %322 to i64
  %324 = load i8*, i8** %11, align 8
  %325 = load i8*, i8** %10, align 8
  %326 = ptrtoint i8* %324 to i64
  %327 = ptrtoint i8* %325 to i64
  %328 = sub i64 %326, %327
  %329 = sub nsw i64 %323, %328
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %17, align 4
  br label %362

331:                                              ; preds = %308
  %332 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %333 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = icmp ne i32 %334, -1
  br i1 %335, label %336, label %337

336:                                              ; preds = %331
  store i32 0, i32* %17, align 4
  br label %361

337:                                              ; preds = %331
  %338 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %339 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %338, i32 0, i32 5
  %340 = load i32, i32* %339, align 8
  %341 = icmp eq i32 %340, 48
  br i1 %341, label %342, label %359

342:                                              ; preds = %337
  %343 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %344 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* %13, align 4
  %347 = icmp sgt i32 %345, %346
  br i1 %347, label %348, label %359

348:                                              ; preds = %342
  %349 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %350 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %349, i32 0, i32 4
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %359, label %353

353:                                              ; preds = %348
  %354 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %355 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %13, align 4
  %358 = sub nsw i32 %356, %357
  store i32 %358, i32* %17, align 4
  br label %360

359:                                              ; preds = %348, %342, %337
  store i32 0, i32* %17, align 4
  br label %360

360:                                              ; preds = %359, %353
  br label %361

361:                                              ; preds = %360, %336
  br label %362

362:                                              ; preds = %361, %319
  %363 = load i32, i32* %17, align 4
  %364 = load i32, i32* %13, align 4
  %365 = add nsw i32 %364, %363
  store i32 %365, i32* %13, align 4
  br label %366

366:                                              ; preds = %374, %362
  %367 = load i32, i32* %17, align 4
  %368 = icmp sgt i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %366
  %370 = load i8*, i8** %10, align 8
  %371 = icmp ugt i8* %370, %27
  br label %372

372:                                              ; preds = %369, %366
  %373 = phi i1 [ false, %366 ], [ %371, %369 ]
  br i1 %373, label %374, label %379

374:                                              ; preds = %372
  %375 = load i8*, i8** %10, align 8
  %376 = getelementptr inbounds i8, i8* %375, i32 -1
  store i8* %376, i8** %10, align 8
  store i8 48, i8* %376, align 1
  %377 = load i32, i32* %17, align 4
  %378 = add nsw i32 %377, -1
  store i32 %378, i32* %17, align 4
  br label %366

379:                                              ; preds = %372
  %380 = load i32, i32* %13, align 4
  %381 = load i32, i32* @BUF, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %459

383:                                              ; preds = %379
  %384 = load i8, i8* %12, align 1
  %385 = icmp ne i8 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = load i8, i8* %12, align 1
  %388 = load i8*, i8** %10, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 -1
  store i8* %389, i8** %10, align 8
  store i8 %387, i8* %389, align 1
  br label %405

390:                                              ; preds = %383
  %391 = load i8*, i8** %18, align 8
  %392 = icmp ne i8* %391, null
  br i1 %392, label %393, label %404

393:                                              ; preds = %390
  %394 = load i8*, i8** %18, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 1
  %396 = load i8, i8* %395, align 1
  %397 = load i8*, i8** %10, align 8
  %398 = getelementptr inbounds i8, i8* %397, i32 -1
  store i8* %398, i8** %10, align 8
  store i8 %396, i8* %398, align 1
  %399 = load i8*, i8** %18, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 0
  %401 = load i8, i8* %400, align 1
  %402 = load i8*, i8** %10, align 8
  %403 = getelementptr inbounds i8, i8* %402, i32 -1
  store i8* %403, i8** %10, align 8
  store i8 %401, i8* %403, align 1
  br label %404

404:                                              ; preds = %393, %390
  br label %405

405:                                              ; preds = %404, %386
  %406 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %407 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 4
  %409 = sext i32 %408 to i64
  %410 = load i8*, i8** %11, align 8
  %411 = load i8*, i8** %10, align 8
  %412 = ptrtoint i8* %410 to i64
  %413 = ptrtoint i8* %411 to i64
  %414 = sub i64 %412, %413
  %415 = icmp sgt i64 %409, %414
  br i1 %415, label %416, label %458

416:                                              ; preds = %405
  %417 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %418 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %417, i32 0, i32 4
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %458, label %421

421:                                              ; preds = %416
  %422 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %423 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 4
  %425 = sext i32 %424 to i64
  %426 = load i8*, i8** %11, align 8
  %427 = load i8*, i8** %10, align 8
  %428 = ptrtoint i8* %426 to i64
  %429 = ptrtoint i8* %427 to i64
  %430 = sub i64 %428, %429
  %431 = sub nsw i64 %425, %430
  %432 = trunc i64 %431 to i32
  store i32 %432, i32* %13, align 4
  br label %433

433:                                              ; preds = %441, %421
  %434 = load i32, i32* %13, align 4
  %435 = icmp sgt i32 %434, 0
  br i1 %435, label %436, label %439

436:                                              ; preds = %433
  %437 = load i8*, i8** %10, align 8
  %438 = icmp ugt i8* %437, %27
  br label %439

439:                                              ; preds = %436, %433
  %440 = phi i1 [ false, %433 ], [ %438, %436 ]
  br i1 %440, label %441, label %446

441:                                              ; preds = %439
  %442 = load i8*, i8** %10, align 8
  %443 = getelementptr inbounds i8, i8* %442, i32 -1
  store i8* %443, i8** %10, align 8
  store i8 32, i8* %443, align 1
  %444 = load i32, i32* %13, align 4
  %445 = add nsw i32 %444, -1
  store i32 %445, i32* %13, align 4
  br label %433

446:                                              ; preds = %439
  %447 = load i32, i32* %13, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %457

449:                                              ; preds = %446
  %450 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %451 = load i32, i32* %13, align 4
  %452 = call i64 @__printf_pad(%struct.__printf_io* %450, i32 %451, i32 0)
  %453 = load i32, i32* %23, align 4
  %454 = sext i32 %453 to i64
  %455 = add nsw i64 %454, %452
  %456 = trunc i64 %455 to i32
  store i32 %456, i32* %23, align 4
  br label %457

457:                                              ; preds = %449, %446
  br label %458

458:                                              ; preds = %457, %416, %405
  br label %517

459:                                              ; preds = %379
  %460 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %461 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %460, i32 0, i32 4
  %462 = load i64, i64* %461, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %482, label %464

464:                                              ; preds = %459
  %465 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %466 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %465, i32 0, i32 3
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* %13, align 4
  %469 = icmp sgt i32 %467, %468
  br i1 %469, label %470, label %482

470:                                              ; preds = %464
  %471 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %472 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %473 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %472, i32 0, i32 3
  %474 = load i32, i32* %473, align 4
  %475 = load i32, i32* %13, align 4
  %476 = sub nsw i32 %474, %475
  %477 = call i64 @__printf_pad(%struct.__printf_io* %471, i32 %476, i32 0)
  %478 = load i32, i32* %23, align 4
  %479 = sext i32 %478 to i64
  %480 = add nsw i64 %479, %477
  %481 = trunc i64 %480 to i32
  store i32 %481, i32* %23, align 4
  br label %482

482:                                              ; preds = %470, %464, %459
  %483 = load i8, i8* %12, align 1
  %484 = sext i8 %483 to i32
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %493

486:                                              ; preds = %482
  %487 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %488 = call i64 @__printf_puts(%struct.__printf_io* %487, i8* %12, i32 1)
  %489 = load i32, i32* %23, align 4
  %490 = sext i32 %489 to i64
  %491 = add nsw i64 %490, %488
  %492 = trunc i64 %491 to i32
  store i32 %492, i32* %23, align 4
  br label %505

493:                                              ; preds = %482
  %494 = load i8*, i8** %18, align 8
  %495 = icmp ne i8* %494, null
  br i1 %495, label %496, label %504

496:                                              ; preds = %493
  %497 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %498 = load i8*, i8** %18, align 8
  %499 = call i64 @__printf_puts(%struct.__printf_io* %497, i8* %498, i32 2)
  %500 = load i32, i32* %23, align 4
  %501 = sext i32 %500 to i64
  %502 = add nsw i64 %501, %499
  %503 = trunc i64 %502 to i32
  store i32 %503, i32* %23, align 4
  br label %504

504:                                              ; preds = %496, %493
  br label %505

505:                                              ; preds = %504, %486
  %506 = load i32, i32* %17, align 4
  %507 = icmp sgt i32 %506, 0
  br i1 %507, label %508, label %516

508:                                              ; preds = %505
  %509 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %510 = load i32, i32* %17, align 4
  %511 = call i64 @__printf_pad(%struct.__printf_io* %509, i32 %510, i32 1)
  %512 = load i32, i32* %23, align 4
  %513 = sext i32 %512 to i64
  %514 = add nsw i64 %513, %511
  %515 = trunc i64 %514 to i32
  store i32 %515, i32* %23, align 4
  br label %516

516:                                              ; preds = %508, %505
  br label %517

517:                                              ; preds = %516, %458
  %518 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %519 = load i8*, i8** %10, align 8
  %520 = load i8*, i8** %11, align 8
  %521 = load i8*, i8** %10, align 8
  %522 = ptrtoint i8* %520 to i64
  %523 = ptrtoint i8* %521 to i64
  %524 = sub i64 %522, %523
  %525 = trunc i64 %524 to i32
  %526 = call i64 @__printf_puts(%struct.__printf_io* %518, i8* %519, i32 %525)
  %527 = load i32, i32* %23, align 4
  %528 = sext i32 %527 to i64
  %529 = add nsw i64 %528, %526
  %530 = trunc i64 %529 to i32
  store i32 %530, i32* %23, align 4
  %531 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %532 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %531, i32 0, i32 3
  %533 = load i32, i32* %532, align 4
  %534 = load i32, i32* %23, align 4
  %535 = icmp sgt i32 %533, %534
  br i1 %535, label %536, label %553

536:                                              ; preds = %517
  %537 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %538 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %537, i32 0, i32 4
  %539 = load i64, i64* %538, align 8
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %553

541:                                              ; preds = %536
  %542 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %543 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %544 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %543, i32 0, i32 3
  %545 = load i32, i32* %544, align 4
  %546 = load i32, i32* %23, align 4
  %547 = sub nsw i32 %545, %546
  %548 = call i64 @__printf_pad(%struct.__printf_io* %542, i32 %547, i32 0)
  %549 = load i32, i32* %23, align 4
  %550 = sext i32 %549 to i64
  %551 = add nsw i64 %550, %548
  %552 = trunc i64 %551 to i32
  store i32 %552, i32* %23, align 4
  br label %553

553:                                              ; preds = %541, %536, %517
  %554 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %555 = call i32 @__printf_flush(%struct.__printf_io* %554)
  %556 = load i32, i32* %23, align 4
  %557 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %557)
  ret i32 %556
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_2__* @localeconv(...) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @__ultoa(i8 signext, i8*, i32, i8*, i32, i8 signext, i8*) #2

declare dso_local i8* @__ujtoa(i8 signext, i8*, i32, i8*, i32, i8 signext, i8*) #2

declare dso_local i64 @__printf_pad(%struct.__printf_io*, i32, i32) #2

declare dso_local i64 @__printf_puts(%struct.__printf_io*, i8*, i32) #2

declare dso_local i32 @__printf_flush(%struct.__printf_io*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
