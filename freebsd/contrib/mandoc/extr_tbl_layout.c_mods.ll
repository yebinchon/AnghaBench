; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_layout.c_mods.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_layout.c_mods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbl_node = type { i32 }
%struct.tbl_cell = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c".,-=^_ACLNRSaclnrs\00", align 1
@MANDOCERR_TBLLAYOUT_PAR = common dso_local global i32 0, align 4
@TBL_CELL_BOLD = common dso_local global i32 0, align 4
@TBL_CELL_BALIGN = common dso_local global i32 0, align 4
@TBL_CELL_EQUAL = common dso_local global i32 0, align 4
@TBL_CELL_ITALIC = common dso_local global i32 0, align 4
@MANDOCERR_TBLLAYOUT_MOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@TBL_CELL_TALIGN = common dso_local global i32 0, align 4
@TBL_CELL_UP = common dso_local global i32 0, align 4
@TBL_CELL_WMAX = common dso_local global i32 0, align 4
@TBL_CELL_WIGN = common dso_local global i32 0, align 4
@MANDOCERR_TBLLAYOUT_VERT = common dso_local global i32 0, align 4
@MANDOCERR_TBLLAYOUT_CHAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@MANDOCERR_FT_BAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"TS %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"TS f%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tbl_node*, %struct.tbl_cell*, i32, i8*, i32*)* @mods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mods(%struct.tbl_node* %0, %struct.tbl_cell* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.tbl_node*, align 8
  %7 = alloca %struct.tbl_cell*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.tbl_node* %0, %struct.tbl_node** %6, align 8
  store %struct.tbl_cell* %1, %struct.tbl_cell** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  br label %13

13:                                               ; preds = %456, %455, %449, %443, %433, %366, %342, %341, %318, %312, %311, %212, %206, %205, %163, %157, %150, %144, %138, %113, %94, %5
  br label %14

14:                                               ; preds = %34, %13
  %15 = load i8*, i8** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %32, label %23

23:                                               ; preds = %14
  %24 = load i8*, i8** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 9
  br label %32

32:                                               ; preds = %23, %14
  %33 = phi i1 [ true, %14 ], [ %31, %23 ]
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %14

38:                                               ; preds = %32
  %39 = load i8*, i8** %9, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i32* @strchr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8 signext %44)
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %471

48:                                               ; preds = %38
  %49 = load i8*, i8** %9, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 40, %55
  br i1 %56, label %57, label %104

57:                                               ; preds = %48
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %81, %57
  %62 = load i8*, i8** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load i8*, i8** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 41, %77
  br label %79

79:                                               ; preds = %70, %61
  %80 = phi i1 [ false, %61 ], [ %78, %70 ]
  br i1 %80, label %81, label %85

81:                                               ; preds = %79
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %61

85:                                               ; preds = %79
  %86 = load i8*, i8** %9, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 41, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %13

98:                                               ; preds = %85
  %99 = load i32, i32* @MANDOCERR_TBLLAYOUT_PAR, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %99, i32 %100, i32 %102, i8* null)
  br label %471

104:                                              ; preds = %48
  %105 = load i8*, i8** %9, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = call i64 @isdigit(i8 zeroext %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %104
  %114 = load i8*, i8** %9, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = call i32 @strtoull(i8* %118, i8** %11, i32 10)
  %120 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %121 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load i8*, i8** %11, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = load i32*, i32** %10, align 8
  store i32 %127, i32* %128, align 4
  br label %13

129:                                              ; preds = %104
  %130 = load i8*, i8** %9, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %130, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = call i32 @tolower(i8 zeroext %136)
  switch i32 %137, label %342 [
    i32 98, label %138
    i32 100, label %144
    i32 101, label %150
    i32 102, label %156
    i32 105, label %157
    i32 109, label %163
    i32 112, label %169
    i32 118, label %169
    i32 116, label %206
    i32 117, label %212
    i32 119, label %218
    i32 120, label %312
    i32 122, label %318
    i32 124, label %324
  ]

138:                                              ; preds = %129
  %139 = load i32, i32* @TBL_CELL_BOLD, align 4
  %140 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %141 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %13

144:                                              ; preds = %129
  %145 = load i32, i32* @TBL_CELL_BALIGN, align 4
  %146 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %147 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %13

150:                                              ; preds = %129
  %151 = load i32, i32* @TBL_CELL_EQUAL, align 4
  %152 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %153 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %13

156:                                              ; preds = %129
  br label %357

157:                                              ; preds = %129
  %158 = load i32, i32* @TBL_CELL_ITALIC, align 4
  %159 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %160 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %13

163:                                              ; preds = %129
  %164 = load i32, i32* @MANDOCERR_TBLLAYOUT_MOD, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %164, i32 %165, i32 %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %13

169:                                              ; preds = %129, %129
  %170 = load i8*, i8** %9, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 45
  br i1 %177, label %187, label %178

178:                                              ; preds = %169
  %179 = load i8*, i8** %9, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 43
  br i1 %186, label %187, label %191

187:                                              ; preds = %178, %169
  %188 = load i32*, i32** %10, align 8
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %187, %178
  br label %192

192:                                              ; preds = %201, %191
  %193 = load i8*, i8** %9, align 8
  %194 = load i32*, i32** %10, align 8
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = call i64 @isdigit(i8 zeroext %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %192
  %202 = load i32*, i32** %10, align 8
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 4
  br label %192

205:                                              ; preds = %192
  br label %13

206:                                              ; preds = %129
  %207 = load i32, i32* @TBL_CELL_TALIGN, align 4
  %208 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %209 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  br label %13

212:                                              ; preds = %129
  %213 = load i32, i32* @TBL_CELL_UP, align 4
  %214 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %215 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 4
  br label %13

218:                                              ; preds = %129
  store i64 0, i64* %12, align 8
  %219 = load i8*, i8** %9, align 8
  %220 = load i32*, i32** %10, align 8
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 40
  br i1 %226, label %227, label %259

227:                                              ; preds = %218
  %228 = load i32*, i32** %10, align 8
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %255, %227
  %232 = load i8*, i8** %9, align 8
  %233 = load i32*, i32** %10, align 8
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = load i64, i64* %12, align 8
  %237 = add i64 %235, %236
  %238 = getelementptr inbounds i8, i8* %232, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %231
  %243 = load i8*, i8** %9, align 8
  %244 = load i32*, i32** %10, align 8
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = load i64, i64* %12, align 8
  %248 = add i64 %246, %247
  %249 = getelementptr inbounds i8, i8* %243, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp ne i32 %251, 41
  br label %253

253:                                              ; preds = %242, %231
  %254 = phi i1 [ false, %231 ], [ %252, %242 ]
  br i1 %254, label %255, label %258

255:                                              ; preds = %253
  %256 = load i64, i64* %12, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* %12, align 8
  br label %231

258:                                              ; preds = %253
  br label %275

259:                                              ; preds = %218
  br label %260

260:                                              ; preds = %271, %259
  %261 = load i8*, i8** %9, align 8
  %262 = load i32*, i32** %10, align 8
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = load i64, i64* %12, align 8
  %266 = add i64 %264, %265
  %267 = getelementptr inbounds i8, i8* %261, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = call i64 @isdigit(i8 zeroext %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %260
  %272 = load i64, i64* %12, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %12, align 8
  br label %260

274:                                              ; preds = %260
  br label %275

275:                                              ; preds = %274, %258
  %276 = load i64, i64* %12, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %311

278:                                              ; preds = %275
  %279 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %280 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @free(i32 %281)
  %283 = load i8*, i8** %9, align 8
  %284 = load i32*, i32** %10, align 8
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %283, i64 %286
  %288 = load i64, i64* %12, align 8
  %289 = call i32 @mandoc_strndup(i8* %287, i64 %288)
  %290 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %291 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 4
  %292 = load i64, i64* %12, align 8
  %293 = load i32*, i32** %10, align 8
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = add i64 %295, %292
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %293, align 4
  %298 = load i8*, i8** %9, align 8
  %299 = load i32*, i32** %10, align 8
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %298, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp eq i32 %304, 41
  br i1 %305, label %306, label %310

306:                                              ; preds = %278
  %307 = load i32*, i32** %10, align 8
  %308 = load i32, i32* %307, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %306, %278
  br label %311

311:                                              ; preds = %310, %275
  br label %13

312:                                              ; preds = %129
  %313 = load i32, i32* @TBL_CELL_WMAX, align 4
  %314 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %315 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 4
  br label %13

318:                                              ; preds = %129
  %319 = load i32, i32* @TBL_CELL_WIGN, align 4
  %320 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %321 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = or i32 %322, %319
  store i32 %323, i32* %321, align 4
  br label %13

324:                                              ; preds = %129
  %325 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %326 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = icmp slt i32 %327, 2
  br i1 %328, label %329, label %334

329:                                              ; preds = %324
  %330 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %331 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 4
  br label %341

334:                                              ; preds = %324
  %335 = load i32, i32* @MANDOCERR_TBLLAYOUT_VERT, align 4
  %336 = load i32, i32* %8, align 4
  %337 = load i32*, i32** %10, align 8
  %338 = load i32, i32* %337, align 4
  %339 = sub nsw i32 %338, 1
  %340 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %335, i32 %336, i32 %339, i8* null)
  br label %341

341:                                              ; preds = %334, %329
  br label %13

342:                                              ; preds = %129
  %343 = load i32, i32* @MANDOCERR_TBLLAYOUT_CHAR, align 4
  %344 = load i32, i32* %8, align 4
  %345 = load i32*, i32** %10, align 8
  %346 = load i32, i32* %345, align 4
  %347 = sub nsw i32 %346, 1
  %348 = load i8*, i8** %9, align 8
  %349 = load i32*, i32** %10, align 8
  %350 = load i32, i32* %349, align 4
  %351 = sub nsw i32 %350, 1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %348, i64 %352
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %343, i32 %344, i32 %347, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %355)
  br label %13

357:                                              ; preds = %156
  %358 = load i8*, i8** %9, align 8
  %359 = load i32*, i32** %10, align 8
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8, i8* %358, i64 %361
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp eq i32 %364, 40
  br i1 %365, label %366, label %367

366:                                              ; preds = %357
  br label %13

367:                                              ; preds = %357
  %368 = load i8*, i8** %9, align 8
  %369 = load i32*, i32** %10, align 8
  %370 = load i32, i32* %369, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %368, i64 %371
  %373 = load i8, i8* %372, align 1
  %374 = sext i8 %373 to i32
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %396, label %376

376:                                              ; preds = %367
  %377 = load i8*, i8** %9, align 8
  %378 = load i32*, i32** %10, align 8
  %379 = load i32, i32* %378, align 4
  %380 = add nsw i32 %379, 1
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8, i8* %377, i64 %381
  %383 = load i8, i8* %382, align 1
  %384 = sext i8 %383 to i32
  %385 = icmp ne i32 %384, 32
  br i1 %385, label %386, label %434

386:                                              ; preds = %376
  %387 = load i8*, i8** %9, align 8
  %388 = load i32*, i32** %10, align 8
  %389 = load i32, i32* %388, align 4
  %390 = add nsw i32 %389, 1
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8, i8* %387, i64 %391
  %393 = load i8, i8* %392, align 1
  %394 = sext i8 %393 to i32
  %395 = icmp ne i32 %394, 46
  br i1 %395, label %396, label %434

396:                                              ; preds = %386, %367
  %397 = load i32, i32* @MANDOCERR_FT_BAD, align 4
  %398 = load i32, i32* %8, align 4
  %399 = load i32*, i32** %10, align 8
  %400 = load i32, i32* %399, align 4
  %401 = load i8*, i8** %9, align 8
  %402 = load i32*, i32** %10, align 8
  %403 = load i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %401, i64 %404
  %406 = getelementptr inbounds i8, i8* %405, i64 -1
  %407 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %397, i32 %398, i32 %400, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %406)
  %408 = load i8*, i8** %9, align 8
  %409 = load i32*, i32** %10, align 8
  %410 = load i32, i32* %409, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, i8* %408, i64 %411
  %413 = load i8, i8* %412, align 1
  %414 = sext i8 %413 to i32
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %396
  %417 = load i32*, i32** %10, align 8
  %418 = load i32, i32* %417, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %417, align 4
  br label %420

420:                                              ; preds = %416, %396
  %421 = load i8*, i8** %9, align 8
  %422 = load i32*, i32** %10, align 8
  %423 = load i32, i32* %422, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8, i8* %421, i64 %424
  %426 = load i8, i8* %425, align 1
  %427 = sext i8 %426 to i32
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %420
  %430 = load i32*, i32** %10, align 8
  %431 = load i32, i32* %430, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %430, align 4
  br label %433

433:                                              ; preds = %429, %420
  br label %13

434:                                              ; preds = %386, %376
  %435 = load i8*, i8** %9, align 8
  %436 = load i32*, i32** %10, align 8
  %437 = load i32, i32* %436, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %436, align 4
  %439 = sext i32 %437 to i64
  %440 = getelementptr inbounds i8, i8* %435, i64 %439
  %441 = load i8, i8* %440, align 1
  %442 = sext i8 %441 to i32
  switch i32 %442, label %456 [
    i32 51, label %443
    i32 66, label %443
    i32 50, label %449
    i32 73, label %449
    i32 49, label %455
    i32 82, label %455
  ]

443:                                              ; preds = %434, %434
  %444 = load i32, i32* @TBL_CELL_BOLD, align 4
  %445 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %446 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = or i32 %447, %444
  store i32 %448, i32* %446, align 4
  br label %13

449:                                              ; preds = %434, %434
  %450 = load i32, i32* @TBL_CELL_ITALIC, align 4
  %451 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %452 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = or i32 %453, %450
  store i32 %454, i32* %452, align 4
  br label %13

455:                                              ; preds = %434, %434
  br label %13

456:                                              ; preds = %434
  %457 = load i32, i32* @MANDOCERR_FT_BAD, align 4
  %458 = load i32, i32* %8, align 4
  %459 = load i32*, i32** %10, align 8
  %460 = load i32, i32* %459, align 4
  %461 = sub nsw i32 %460, 1
  %462 = load i8*, i8** %9, align 8
  %463 = load i32*, i32** %10, align 8
  %464 = load i32, i32* %463, align 4
  %465 = sub nsw i32 %464, 1
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i8, i8* %462, i64 %466
  %468 = load i8, i8* %467, align 1
  %469 = sext i8 %468 to i32
  %470 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %457, i32 %458, i32 %461, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %469)
  br label %13

471:                                              ; preds = %98, %47
  ret void
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @tolower(i8 zeroext) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @mandoc_strndup(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
