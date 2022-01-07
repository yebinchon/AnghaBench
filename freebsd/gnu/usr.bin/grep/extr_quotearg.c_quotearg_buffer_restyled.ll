; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_quotearg.c_quotearg_buffer_restyled.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_quotearg.c_quotearg_buffer_restyled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quoting_options = type { i32* }

@MB_CUR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@INT_BITS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i32, %struct.quoting_options*)* @quotearg_buffer_restyled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, %struct.quoting_options* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.quoting_options*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.quoting_options* %5, %struct.quoting_options** %13, align 8
  store i64 0, i64* %15, align 8
  store i8* null, i8** %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %30 = load i32, i32* @MB_CUR_MAX, align 4
  %31 = icmp eq i32 %30, 1
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %12, align 4
  switch i32 %33, label %95 [
    i32 133, label %34
    i32 131, label %47
    i32 130, label %48
    i32 132, label %48
    i32 129, label %82
  ]

34:                                               ; preds = %6
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %15, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 34, i8* %42, align 1
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i64, i64* %15, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %15, align 8
  br label %46

46:                                               ; preds = %43
  store i32 1, i32* %18, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  store i64 1, i64* %17, align 8
  br label %96

47:                                               ; preds = %6
  store i32 1, i32* %18, align 4
  br label %96

48:                                               ; preds = %6, %6
  %49 = call i32 @N_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %12, align 4
  %51 = call i8* @gettext_quote(i32 %49, i32 %50)
  store i8* %51, i8** %20, align 8
  %52 = call i32 @N_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %12, align 4
  %54 = call i8* @gettext_quote(i32 %52, i32 %53)
  store i8* %54, i8** %21, align 8
  %55 = load i8*, i8** %20, align 8
  store i8* %55, i8** %16, align 8
  br label %56

56:                                               ; preds = %75, %48
  %57 = load i8*, i8** %16, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i8*, i8** %16, align 8
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %8, align 8
  %69 = load i64, i64* %15, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 %67, i8* %70, align 1
  br label %71

71:                                               ; preds = %65, %61
  %72 = load i64, i64* %15, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %15, align 8
  br label %74

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %16, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %16, align 8
  br label %56

78:                                               ; preds = %56
  store i32 1, i32* %18, align 4
  %79 = load i8*, i8** %21, align 8
  store i8* %79, i8** %16, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = call i64 @strlen(i8* %80)
  store i64 %81, i64* %17, align 8
  br label %96

82:                                               ; preds = %6
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i8*, i8** %8, align 8
  %89 = load i64, i64* %15, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 39, i8* %90, align 1
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i64, i64* %15, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %15, align 8
  br label %94

94:                                               ; preds = %91
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  store i64 1, i64* %17, align 8
  br label %96

95:                                               ; preds = %6
  br label %96

96:                                               ; preds = %95, %94, %78, %47, %46
  store i64 0, i64* %14, align 8
  br label %97

97:                                               ; preds = %528, %96
  %98 = load i64, i64* %11, align 8
  %99 = icmp eq i64 %98, -1
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i8*, i8** %10, align 8
  %102 = load i64, i64* %14, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  br label %113

108:                                              ; preds = %97
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %11, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  br label %113

113:                                              ; preds = %108, %100
  %114 = phi i32 [ %107, %100 ], [ %112, %108 ]
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  br i1 %116, label %117, label %531

117:                                              ; preds = %113
  %118 = load i32, i32* %18, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %117
  %121 = load i64, i64* %17, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %150

123:                                              ; preds = %120
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %17, align 8
  %126 = add i64 %124, %125
  %127 = load i64, i64* %11, align 8
  %128 = icmp ule i64 %126, %127
  br i1 %128, label %129, label %150

129:                                              ; preds = %123
  %130 = load i8*, i8** %10, align 8
  %131 = load i64, i64* %14, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8*, i8** %16, align 8
  %134 = load i64, i64* %17, align 8
  %135 = call i64 @memcmp(i8* %132, i8* %133, i64 %134)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %15, align 8
  %140 = load i64, i64* %9, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i8*, i8** %8, align 8
  %144 = load i64, i64* %15, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8 92, i8* %145, align 1
  br label %146

146:                                              ; preds = %142, %138
  %147 = load i64, i64* %15, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %15, align 8
  br label %149

149:                                              ; preds = %146
  br label %150

150:                                              ; preds = %149, %129, %123, %120, %117
  %151 = load i8*, i8** %10, align 8
  %152 = load i64, i64* %14, align 8
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  %154 = load i8, i8* %153, align 1
  store i8 %154, i8* %22, align 1
  %155 = load i8, i8* %22, align 1
  %156 = zext i8 %155 to i32
  switch i32 %156, label %301 [
    i32 63, label %157
    i32 134, label %228
    i32 8, label %229
    i32 12, label %230
    i32 10, label %231
    i32 13, label %232
    i32 9, label %233
    i32 11, label %234
    i32 92, label %235
    i32 35, label %248
    i32 126, label %248
    i32 32, label %253
    i32 33, label %253
    i32 34, label %253
    i32 36, label %253
    i32 38, label %253
    i32 40, label %253
    i32 41, label %253
    i32 42, label %253
    i32 59, label %253
    i32 60, label %253
    i32 62, label %253
    i32 91, label %253
    i32 94, label %253
    i32 96, label %253
    i32 124, label %253
    i32 39, label %258
    i32 37, label %300
    i32 43, label %300
    i32 44, label %300
    i32 45, label %300
    i32 46, label %300
    i32 47, label %300
    i32 48, label %300
    i32 49, label %300
    i32 50, label %300
    i32 51, label %300
    i32 52, label %300
    i32 53, label %300
    i32 54, label %300
    i32 55, label %300
    i32 56, label %300
    i32 57, label %300
    i32 58, label %300
    i32 61, label %300
    i32 65, label %300
    i32 66, label %300
    i32 67, label %300
    i32 68, label %300
    i32 69, label %300
    i32 70, label %300
    i32 71, label %300
    i32 72, label %300
    i32 73, label %300
    i32 74, label %300
    i32 75, label %300
    i32 76, label %300
    i32 77, label %300
    i32 78, label %300
    i32 79, label %300
    i32 80, label %300
    i32 81, label %300
    i32 82, label %300
    i32 83, label %300
    i32 84, label %300
    i32 85, label %300
    i32 86, label %300
    i32 87, label %300
    i32 88, label %300
    i32 89, label %300
    i32 90, label %300
    i32 93, label %300
    i32 95, label %300
    i32 97, label %300
    i32 98, label %300
    i32 99, label %300
    i32 100, label %300
    i32 101, label %300
    i32 102, label %300
    i32 103, label %300
    i32 104, label %300
    i32 105, label %300
    i32 106, label %300
    i32 107, label %300
    i32 108, label %300
    i32 109, label %300
    i32 110, label %300
    i32 111, label %300
    i32 112, label %300
    i32 113, label %300
    i32 114, label %300
    i32 115, label %300
    i32 116, label %300
    i32 117, label %300
    i32 118, label %300
    i32 119, label %300
    i32 120, label %300
    i32 121, label %300
    i32 122, label %300
    i32 123, label %300
    i32 125, label %300
  ]

157:                                              ; preds = %150
  %158 = load i32, i32* %12, align 4
  switch i32 %158, label %226 [
    i32 128, label %159
    i32 133, label %160
  ]

159:                                              ; preds = %157
  br label %568

160:                                              ; preds = %157
  %161 = load i64, i64* %14, align 8
  %162 = add i64 %161, 2
  %163 = load i64, i64* %11, align 8
  %164 = icmp ult i64 %162, %163
  br i1 %164, label %165, label %225

165:                                              ; preds = %160
  %166 = load i8*, i8** %10, align 8
  %167 = load i64, i64* %14, align 8
  %168 = add i64 %167, 1
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 63
  br i1 %172, label %173, label %225

173:                                              ; preds = %165
  %174 = load i8*, i8** %10, align 8
  %175 = load i64, i64* %14, align 8
  %176 = add i64 %175, 2
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  switch i32 %179, label %224 [
    i32 33, label %180
    i32 39, label %180
    i32 40, label %180
    i32 41, label %180
    i32 45, label %180
    i32 47, label %180
    i32 60, label %180
    i32 61, label %180
    i32 62, label %180
  ]

180:                                              ; preds = %173, %173, %173, %173, %173, %173, %173, %173, %173
  %181 = load i64, i64* %14, align 8
  %182 = add i64 %181, 2
  store i64 %182, i64* %14, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = load i64, i64* %14, align 8
  %185 = add i64 %184, 2
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8, i8* %186, align 1
  store i8 %187, i8* %22, align 1
  br label %188

188:                                              ; preds = %180
  %189 = load i64, i64* %15, align 8
  %190 = load i64, i64* %9, align 8
  %191 = icmp ult i64 %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load i8*, i8** %8, align 8
  %194 = load i64, i64* %15, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  store i8 63, i8* %195, align 1
  br label %196

196:                                              ; preds = %192, %188
  %197 = load i64, i64* %15, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %15, align 8
  br label %199

199:                                              ; preds = %196
  br label %200

200:                                              ; preds = %199
  %201 = load i64, i64* %15, align 8
  %202 = load i64, i64* %9, align 8
  %203 = icmp ult i64 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %200
  %205 = load i8*, i8** %8, align 8
  %206 = load i64, i64* %15, align 8
  %207 = getelementptr inbounds i8, i8* %205, i64 %206
  store i8 92, i8* %207, align 1
  br label %208

208:                                              ; preds = %204, %200
  %209 = load i64, i64* %15, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %15, align 8
  br label %211

211:                                              ; preds = %208
  br label %212

212:                                              ; preds = %211
  %213 = load i64, i64* %15, align 8
  %214 = load i64, i64* %9, align 8
  %215 = icmp ult i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %212
  %217 = load i8*, i8** %8, align 8
  %218 = load i64, i64* %15, align 8
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8 63, i8* %219, align 1
  br label %220

220:                                              ; preds = %216, %212
  %221 = load i64, i64* %15, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %15, align 8
  br label %223

223:                                              ; preds = %220
  br label %224

224:                                              ; preds = %173, %223
  br label %225

225:                                              ; preds = %224, %165, %160
  br label %227

226:                                              ; preds = %157
  br label %227

227:                                              ; preds = %226, %225
  br label %476

228:                                              ; preds = %150
  store i8 97, i8* %23, align 1
  br label %242

229:                                              ; preds = %150
  store i8 98, i8* %23, align 1
  br label %242

230:                                              ; preds = %150
  store i8 102, i8* %23, align 1
  br label %242

231:                                              ; preds = %150
  store i8 110, i8* %23, align 1
  br label %237

232:                                              ; preds = %150
  store i8 114, i8* %23, align 1
  br label %237

233:                                              ; preds = %150
  store i8 116, i8* %23, align 1
  br label %237

234:                                              ; preds = %150
  store i8 118, i8* %23, align 1
  br label %242

235:                                              ; preds = %150
  %236 = load i8, i8* %22, align 1
  store i8 %236, i8* %23, align 1
  br label %237

237:                                              ; preds = %235, %233, %232, %231
  %238 = load i32, i32* %12, align 4
  %239 = icmp eq i32 %238, 128
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  br label %568

241:                                              ; preds = %237
  br label %242

242:                                              ; preds = %241, %234, %230, %229, %228
  %243 = load i32, i32* %18, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = load i8, i8* %23, align 1
  store i8 %246, i8* %22, align 1
  br label %501

247:                                              ; preds = %242
  br label %476

248:                                              ; preds = %150, %150
  %249 = load i64, i64* %14, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %248
  br label %476

252:                                              ; preds = %248
  br label %253

253:                                              ; preds = %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %252
  %254 = load i32, i32* %12, align 4
  %255 = icmp eq i32 %254, 128
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  br label %568

257:                                              ; preds = %253
  br label %476

258:                                              ; preds = %150
  %259 = load i32, i32* %12, align 4
  switch i32 %259, label %298 [
    i32 128, label %260
    i32 129, label %261
  ]

260:                                              ; preds = %258
  br label %568

261:                                              ; preds = %258
  br label %262

262:                                              ; preds = %261
  %263 = load i64, i64* %15, align 8
  %264 = load i64, i64* %9, align 8
  %265 = icmp ult i64 %263, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %262
  %267 = load i8*, i8** %8, align 8
  %268 = load i64, i64* %15, align 8
  %269 = getelementptr inbounds i8, i8* %267, i64 %268
  store i8 39, i8* %269, align 1
  br label %270

270:                                              ; preds = %266, %262
  %271 = load i64, i64* %15, align 8
  %272 = add i64 %271, 1
  store i64 %272, i64* %15, align 8
  br label %273

273:                                              ; preds = %270
  br label %274

274:                                              ; preds = %273
  %275 = load i64, i64* %15, align 8
  %276 = load i64, i64* %9, align 8
  %277 = icmp ult i64 %275, %276
  br i1 %277, label %278, label %282

278:                                              ; preds = %274
  %279 = load i8*, i8** %8, align 8
  %280 = load i64, i64* %15, align 8
  %281 = getelementptr inbounds i8, i8* %279, i64 %280
  store i8 92, i8* %281, align 1
  br label %282

282:                                              ; preds = %278, %274
  %283 = load i64, i64* %15, align 8
  %284 = add i64 %283, 1
  store i64 %284, i64* %15, align 8
  br label %285

285:                                              ; preds = %282
  br label %286

286:                                              ; preds = %285
  %287 = load i64, i64* %15, align 8
  %288 = load i64, i64* %9, align 8
  %289 = icmp ult i64 %287, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %286
  %291 = load i8*, i8** %8, align 8
  %292 = load i64, i64* %15, align 8
  %293 = getelementptr inbounds i8, i8* %291, i64 %292
  store i8 39, i8* %293, align 1
  br label %294

294:                                              ; preds = %290, %286
  %295 = load i64, i64* %15, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %15, align 8
  br label %297

297:                                              ; preds = %294
  br label %299

298:                                              ; preds = %258
  br label %299

299:                                              ; preds = %298, %297
  br label %476

300:                                              ; preds = %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150
  br label %476

301:                                              ; preds = %150
  %302 = load i32, i32* %19, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  store i64 1, i64* %24, align 8
  %305 = load i8, i8* %22, align 1
  %306 = call i32 @ISPRINT(i8 zeroext %305)
  store i32 %306, i32* %25, align 4
  br label %377

307:                                              ; preds = %301
  %308 = call i32 @memset(i32* %26, i32 0, i32 4)
  store i64 0, i64* %24, align 8
  store i32 1, i32* %25, align 4
  %309 = load i64, i64* %11, align 8
  %310 = icmp eq i64 %309, -1
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = load i8*, i8** %10, align 8
  %313 = call i64 @strlen(i8* %312)
  store i64 %313, i64* %11, align 8
  br label %314

314:                                              ; preds = %311, %307
  br label %315

315:                                              ; preds = %372, %314
  %316 = load i8*, i8** %10, align 8
  %317 = load i64, i64* %14, align 8
  %318 = load i64, i64* %24, align 8
  %319 = add i64 %317, %318
  %320 = getelementptr inbounds i8, i8* %316, i64 %319
  %321 = load i64, i64* %11, align 8
  %322 = load i64, i64* %14, align 8
  %323 = load i64, i64* %24, align 8
  %324 = add i64 %322, %323
  %325 = sub i64 %321, %324
  %326 = trunc i64 %325 to i32
  %327 = call i64 @mbrtowc(i32* %27, i8* %320, i32 %326, i32* %26)
  store i64 %327, i64* %28, align 8
  %328 = load i64, i64* %28, align 8
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %315
  br label %376

331:                                              ; preds = %315
  %332 = load i64, i64* %28, align 8
  %333 = icmp eq i64 %332, -1
  br i1 %333, label %334, label %335

334:                                              ; preds = %331
  store i32 0, i32* %25, align 4
  br label %376

335:                                              ; preds = %331
  %336 = load i64, i64* %28, align 8
  %337 = icmp eq i64 %336, -2
  br i1 %337, label %338, label %360

338:                                              ; preds = %335
  store i32 0, i32* %25, align 4
  br label %339

339:                                              ; preds = %356, %338
  %340 = load i64, i64* %14, align 8
  %341 = load i64, i64* %24, align 8
  %342 = add i64 %340, %341
  %343 = load i64, i64* %11, align 8
  %344 = icmp ult i64 %342, %343
  br i1 %344, label %345, label %354

345:                                              ; preds = %339
  %346 = load i8*, i8** %10, align 8
  %347 = load i64, i64* %14, align 8
  %348 = load i64, i64* %24, align 8
  %349 = add i64 %347, %348
  %350 = getelementptr inbounds i8, i8* %346, i64 %349
  %351 = load i8, i8* %350, align 1
  %352 = sext i8 %351 to i32
  %353 = icmp ne i32 %352, 0
  br label %354

354:                                              ; preds = %345, %339
  %355 = phi i1 [ false, %339 ], [ %353, %345 ]
  br i1 %355, label %356, label %359

356:                                              ; preds = %354
  %357 = load i64, i64* %24, align 8
  %358 = add i64 %357, 1
  store i64 %358, i64* %24, align 8
  br label %339

359:                                              ; preds = %354
  br label %376

360:                                              ; preds = %335
  %361 = load i32, i32* %27, align 4
  %362 = call i32 @iswprint(i32 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %365, label %364

364:                                              ; preds = %360
  store i32 0, i32* %25, align 4
  br label %365

365:                                              ; preds = %364, %360
  %366 = load i64, i64* %28, align 8
  %367 = load i64, i64* %24, align 8
  %368 = add i64 %367, %366
  store i64 %368, i64* %24, align 8
  br label %369

369:                                              ; preds = %365
  br label %370

370:                                              ; preds = %369
  br label %371

371:                                              ; preds = %370
  br label %372

372:                                              ; preds = %371
  %373 = call i32 @mbsinit(i32* %26)
  %374 = icmp ne i32 %373, 0
  %375 = xor i1 %374, true
  br i1 %375, label %315, label %376

376:                                              ; preds = %372, %359, %334, %330
  br label %377

377:                                              ; preds = %376, %304
  %378 = load i64, i64* %24, align 8
  %379 = icmp ult i64 1, %378
  br i1 %379, label %386, label %380

380:                                              ; preds = %377
  %381 = load i32, i32* %18, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %475

383:                                              ; preds = %380
  %384 = load i32, i32* %25, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %475, label %386

386:                                              ; preds = %383, %377
  %387 = load i64, i64* %14, align 8
  %388 = load i64, i64* %24, align 8
  %389 = add i64 %387, %388
  store i64 %389, i64* %29, align 8
  br label %390

390:                                              ; preds = %468, %386
  %391 = load i32, i32* %18, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %449

393:                                              ; preds = %390
  %394 = load i32, i32* %25, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %449, label %396

396:                                              ; preds = %393
  br label %397

397:                                              ; preds = %396
  %398 = load i64, i64* %15, align 8
  %399 = load i64, i64* %9, align 8
  %400 = icmp ult i64 %398, %399
  br i1 %400, label %401, label %405

401:                                              ; preds = %397
  %402 = load i8*, i8** %8, align 8
  %403 = load i64, i64* %15, align 8
  %404 = getelementptr inbounds i8, i8* %402, i64 %403
  store i8 92, i8* %404, align 1
  br label %405

405:                                              ; preds = %401, %397
  %406 = load i64, i64* %15, align 8
  %407 = add i64 %406, 1
  store i64 %407, i64* %15, align 8
  br label %408

408:                                              ; preds = %405
  br label %409

409:                                              ; preds = %408
  %410 = load i64, i64* %15, align 8
  %411 = load i64, i64* %9, align 8
  %412 = icmp ult i64 %410, %411
  br i1 %412, label %413, label %422

413:                                              ; preds = %409
  %414 = load i8, i8* %22, align 1
  %415 = zext i8 %414 to i32
  %416 = ashr i32 %415, 6
  %417 = add nsw i32 48, %416
  %418 = trunc i32 %417 to i8
  %419 = load i8*, i8** %8, align 8
  %420 = load i64, i64* %15, align 8
  %421 = getelementptr inbounds i8, i8* %419, i64 %420
  store i8 %418, i8* %421, align 1
  br label %422

422:                                              ; preds = %413, %409
  %423 = load i64, i64* %15, align 8
  %424 = add i64 %423, 1
  store i64 %424, i64* %15, align 8
  br label %425

425:                                              ; preds = %422
  br label %426

426:                                              ; preds = %425
  %427 = load i64, i64* %15, align 8
  %428 = load i64, i64* %9, align 8
  %429 = icmp ult i64 %427, %428
  br i1 %429, label %430, label %440

430:                                              ; preds = %426
  %431 = load i8, i8* %22, align 1
  %432 = zext i8 %431 to i32
  %433 = ashr i32 %432, 3
  %434 = and i32 %433, 7
  %435 = add nsw i32 48, %434
  %436 = trunc i32 %435 to i8
  %437 = load i8*, i8** %8, align 8
  %438 = load i64, i64* %15, align 8
  %439 = getelementptr inbounds i8, i8* %437, i64 %438
  store i8 %436, i8* %439, align 1
  br label %440

440:                                              ; preds = %430, %426
  %441 = load i64, i64* %15, align 8
  %442 = add i64 %441, 1
  store i64 %442, i64* %15, align 8
  br label %443

443:                                              ; preds = %440
  %444 = load i8, i8* %22, align 1
  %445 = zext i8 %444 to i32
  %446 = and i32 %445, 7
  %447 = add nsw i32 48, %446
  %448 = trunc i32 %447 to i8
  store i8 %448, i8* %22, align 1
  br label %449

449:                                              ; preds = %443, %393, %390
  %450 = load i64, i64* %29, align 8
  %451 = load i64, i64* %14, align 8
  %452 = add i64 %451, 1
  %453 = icmp ule i64 %450, %452
  br i1 %453, label %454, label %455

454:                                              ; preds = %449
  br label %474

455:                                              ; preds = %449
  br label %456

456:                                              ; preds = %455
  %457 = load i64, i64* %15, align 8
  %458 = load i64, i64* %9, align 8
  %459 = icmp ult i64 %457, %458
  br i1 %459, label %460, label %465

460:                                              ; preds = %456
  %461 = load i8, i8* %22, align 1
  %462 = load i8*, i8** %8, align 8
  %463 = load i64, i64* %15, align 8
  %464 = getelementptr inbounds i8, i8* %462, i64 %463
  store i8 %461, i8* %464, align 1
  br label %465

465:                                              ; preds = %460, %456
  %466 = load i64, i64* %15, align 8
  %467 = add i64 %466, 1
  store i64 %467, i64* %15, align 8
  br label %468

468:                                              ; preds = %465
  %469 = load i8*, i8** %10, align 8
  %470 = load i64, i64* %14, align 8
  %471 = add i64 %470, 1
  store i64 %471, i64* %14, align 8
  %472 = getelementptr inbounds i8, i8* %469, i64 %471
  %473 = load i8, i8* %472, align 1
  store i8 %473, i8* %22, align 1
  br label %390

474:                                              ; preds = %454
  br label %514

475:                                              ; preds = %383, %380
  br label %476

476:                                              ; preds = %475, %300, %299, %257, %251, %247, %227
  %477 = load i32, i32* %18, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %499

479:                                              ; preds = %476
  %480 = load %struct.quoting_options*, %struct.quoting_options** %13, align 8
  %481 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %480, i32 0, i32 0
  %482 = load i32*, i32** %481, align 8
  %483 = load i8, i8* %22, align 1
  %484 = zext i8 %483 to i32
  %485 = load i8, i8* @INT_BITS, align 1
  %486 = zext i8 %485 to i32
  %487 = sdiv i32 %484, %486
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32, i32* %482, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = load i8, i8* %22, align 1
  %492 = zext i8 %491 to i32
  %493 = load i8, i8* @INT_BITS, align 1
  %494 = zext i8 %493 to i32
  %495 = srem i32 %492, %494
  %496 = shl i32 1, %495
  %497 = and i32 %490, %496
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %500, label %499

499:                                              ; preds = %479, %476
  br label %514

500:                                              ; preds = %479
  br label %501

501:                                              ; preds = %500, %245
  br label %502

502:                                              ; preds = %501
  %503 = load i64, i64* %15, align 8
  %504 = load i64, i64* %9, align 8
  %505 = icmp ult i64 %503, %504
  br i1 %505, label %506, label %510

506:                                              ; preds = %502
  %507 = load i8*, i8** %8, align 8
  %508 = load i64, i64* %15, align 8
  %509 = getelementptr inbounds i8, i8* %507, i64 %508
  store i8 92, i8* %509, align 1
  br label %510

510:                                              ; preds = %506, %502
  %511 = load i64, i64* %15, align 8
  %512 = add i64 %511, 1
  store i64 %512, i64* %15, align 8
  br label %513

513:                                              ; preds = %510
  br label %514

514:                                              ; preds = %513, %499, %474
  br label %515

515:                                              ; preds = %514
  %516 = load i64, i64* %15, align 8
  %517 = load i64, i64* %9, align 8
  %518 = icmp ult i64 %516, %517
  br i1 %518, label %519, label %524

519:                                              ; preds = %515
  %520 = load i8, i8* %22, align 1
  %521 = load i8*, i8** %8, align 8
  %522 = load i64, i64* %15, align 8
  %523 = getelementptr inbounds i8, i8* %521, i64 %522
  store i8 %520, i8* %523, align 1
  br label %524

524:                                              ; preds = %519, %515
  %525 = load i64, i64* %15, align 8
  %526 = add i64 %525, 1
  store i64 %526, i64* %15, align 8
  br label %527

527:                                              ; preds = %524
  br label %528

528:                                              ; preds = %527
  %529 = load i64, i64* %14, align 8
  %530 = add i64 %529, 1
  store i64 %530, i64* %14, align 8
  br label %97

531:                                              ; preds = %113
  %532 = load i8*, i8** %16, align 8
  %533 = icmp ne i8* %532, null
  br i1 %533, label %534, label %558

534:                                              ; preds = %531
  br label %535

535:                                              ; preds = %554, %534
  %536 = load i8*, i8** %16, align 8
  %537 = load i8, i8* %536, align 1
  %538 = icmp ne i8 %537, 0
  br i1 %538, label %539, label %557

539:                                              ; preds = %535
  br label %540

540:                                              ; preds = %539
  %541 = load i64, i64* %15, align 8
  %542 = load i64, i64* %9, align 8
  %543 = icmp ult i64 %541, %542
  br i1 %543, label %544, label %550

544:                                              ; preds = %540
  %545 = load i8*, i8** %16, align 8
  %546 = load i8, i8* %545, align 1
  %547 = load i8*, i8** %8, align 8
  %548 = load i64, i64* %15, align 8
  %549 = getelementptr inbounds i8, i8* %547, i64 %548
  store i8 %546, i8* %549, align 1
  br label %550

550:                                              ; preds = %544, %540
  %551 = load i64, i64* %15, align 8
  %552 = add i64 %551, 1
  store i64 %552, i64* %15, align 8
  br label %553

553:                                              ; preds = %550
  br label %554

554:                                              ; preds = %553
  %555 = load i8*, i8** %16, align 8
  %556 = getelementptr inbounds i8, i8* %555, i32 1
  store i8* %556, i8** %16, align 8
  br label %535

557:                                              ; preds = %535
  br label %558

558:                                              ; preds = %557, %531
  %559 = load i64, i64* %15, align 8
  %560 = load i64, i64* %9, align 8
  %561 = icmp ult i64 %559, %560
  br i1 %561, label %562, label %566

562:                                              ; preds = %558
  %563 = load i8*, i8** %8, align 8
  %564 = load i64, i64* %15, align 8
  %565 = getelementptr inbounds i8, i8* %563, i64 %564
  store i8 0, i8* %565, align 1
  br label %566

566:                                              ; preds = %562, %558
  %567 = load i64, i64* %15, align 8
  store i64 %567, i64* %7, align 8
  br label %575

568:                                              ; preds = %260, %256, %240, %159
  %569 = load i8*, i8** %8, align 8
  %570 = load i64, i64* %9, align 8
  %571 = load i8*, i8** %10, align 8
  %572 = load i64, i64* %11, align 8
  %573 = load %struct.quoting_options*, %struct.quoting_options** %13, align 8
  %574 = call i64 @quotearg_buffer_restyled(i8* %569, i64 %570, i8* %571, i64 %572, i32 129, %struct.quoting_options* %573)
  store i64 %574, i64* %7, align 8
  br label %575

575:                                              ; preds = %568, %566
  %576 = load i64, i64* %7, align 8
  ret i64 %576
}

declare dso_local i8* @gettext_quote(i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @ISPRINT(i8 zeroext) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mbrtowc(i32*, i8*, i32, i32*) #1

declare dso_local i32 @iswprint(i32) #1

declare dso_local i32 @mbsinit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
