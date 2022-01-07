; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_do_case_conv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_do_case_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@u8_common_b1_tbl = common dso_local global i64** null, align 8
@U8_TBL_ELEMENT_NOT_DEF = common dso_local global i64 0, align 8
@u8_case_common_b2_tbl = common dso_local global i64*** null, align 8
@u8_toupper_b3_tbl = common dso_local global %struct.TYPE_3__*** null, align 8
@u8_toupper_b4_tbl = common dso_local global i64*** null, align 8
@U8_MB_CUR_MAX = common dso_local global i64 0, align 8
@u8_toupper_final_tbl = common dso_local global i64** null, align 8
@u8_tolower_b3_tbl = common dso_local global %struct.TYPE_4__*** null, align 8
@u8_tolower_b4_tbl = common dso_local global i64*** null, align 8
@u8_tolower_final_tbl = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64*, i64*, i32, i64)* @do_case_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_case_conv(i32 %0, i64* %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %18, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %34

23:                                               ; preds = %5
  %24 = load i64*, i64** %9, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %8, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %26, i64* %28, align 8
  store i64 %26, i64* %15, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  store i64 %31, i64* %33, align 8
  store i64 %31, i64* %18, align 8
  br label %95

34:                                               ; preds = %5
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i64*, i64** %9, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %40, i64* %42, align 8
  store i64 %40, i64* %14, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  store i64 %45, i64* %47, align 8
  store i64 %45, i64* %15, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  store i64 %50, i64* %52, align 8
  store i64 %50, i64* %18, align 8
  br label %94

53:                                               ; preds = %34
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load i64*, i64** %9, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  store i64 %59, i64* %61, align 8
  store i64 %59, i64* %13, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  store i64 %64, i64* %66, align 8
  store i64 %64, i64* %14, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 2
  store i64 %69, i64* %71, align 8
  store i64 %69, i64* %15, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 3
  store i64 %74, i64* %76, align 8
  store i64 %74, i64* %18, align 8
  br label %93

77:                                               ; preds = %53
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i64*, i64** %9, align 8
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @U8_ASCII_TOUPPER(i64 %82)
  %84 = load i64*, i64** %8, align 8
  store i64 %83, i64* %84, align 8
  br label %90

85:                                               ; preds = %77
  %86 = load i64*, i64** %9, align 8
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @U8_ASCII_TOLOWER(i64 %87)
  %89 = load i64*, i64** %8, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i64*, i64** %8, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  store i64 0, i64* %92, align 8
  store i64 1, i64* %6, align 8
  br label %328

93:                                               ; preds = %56
  br label %94

94:                                               ; preds = %93, %37
  br label %95

95:                                               ; preds = %94, %23
  %96 = load i64*, i64** %8, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 0, i64* %99, align 8
  %100 = load i64**, i64*** @u8_common_b1_tbl, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64*, i64** %100, i64 %102
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %13, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %13, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* @U8_TBL_ELEMENT_NOT_DEF, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %95
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %6, align 8
  br label %328

114:                                              ; preds = %95
  %115 = load i64***, i64**** @u8_case_common_b2_tbl, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64**, i64*** %115, i64 %117
  %119 = load i64**, i64*** %118, align 8
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds i64*, i64** %119, i64 %120
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* %14, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %14, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* @U8_TBL_ELEMENT_NOT_DEF, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %114
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %6, align 8
  br label %328

132:                                              ; preds = %114
  %133 = load i64, i64* %11, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %226

135:                                              ; preds = %132
  %136 = load %struct.TYPE_3__***, %struct.TYPE_3__**** @u8_toupper_b3_tbl, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__**, %struct.TYPE_3__*** %136, i64 %138
  %140 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %140, i64 %141
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i64, i64* %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %16, align 8
  %148 = load i64, i64* %16, align 8
  %149 = load i64, i64* @U8_TBL_ELEMENT_NOT_DEF, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %135
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %6, align 8
  br label %328

154:                                              ; preds = %135
  %155 = load i64***, i64**** @u8_toupper_b4_tbl, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64**, i64*** %155, i64 %157
  %159 = load i64**, i64*** %158, align 8
  %160 = load i64, i64* %16, align 8
  %161 = getelementptr inbounds i64*, i64** %159, i64 %160
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* %18, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %19, align 8
  %166 = load i64***, i64**** @u8_toupper_b4_tbl, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64**, i64*** %166, i64 %168
  %170 = load i64**, i64*** %169, align 8
  %171 = load i64, i64* %16, align 8
  %172 = getelementptr inbounds i64*, i64** %170, i64 %171
  %173 = load i64*, i64** %172, align 8
  %174 = load i64, i64* %18, align 8
  %175 = add i64 %174, 1
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %20, align 8
  %178 = load i64, i64* %19, align 8
  %179 = load i64, i64* %20, align 8
  %180 = icmp uge i64 %178, %179
  br i1 %180, label %187, label %181

181:                                              ; preds = %154
  %182 = load i64, i64* %20, align 8
  %183 = load i64, i64* %19, align 8
  %184 = sub i64 %182, %183
  %185 = load i64, i64* @U8_MB_CUR_MAX, align 8
  %186 = icmp ugt i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %181, %154
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %6, align 8
  br label %328

190:                                              ; preds = %181
  %191 = load %struct.TYPE_3__***, %struct.TYPE_3__**** @u8_toupper_b3_tbl, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_3__**, %struct.TYPE_3__*** %191, i64 %193
  %195 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %194, align 8
  %196 = load i64, i64* %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %195, i64 %196
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = load i64, i64* %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %17, align 8
  store i64 0, i64* %12, align 8
  br label %203

203:                                              ; preds = %222, %190
  %204 = load i64, i64* %19, align 8
  %205 = load i64, i64* %20, align 8
  %206 = icmp ult i64 %204, %205
  br i1 %206, label %207, label %225

207:                                              ; preds = %203
  %208 = load i64**, i64*** @u8_toupper_final_tbl, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64*, i64** %208, i64 %210
  %212 = load i64*, i64** %211, align 8
  %213 = load i64, i64* %17, align 8
  %214 = load i64, i64* %19, align 8
  %215 = add i64 %213, %214
  %216 = getelementptr inbounds i64, i64* %212, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = load i64*, i64** %8, align 8
  %219 = load i64, i64* %12, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %12, align 8
  %221 = getelementptr inbounds i64, i64* %218, i64 %219
  store i64 %217, i64* %221, align 8
  br label %222

222:                                              ; preds = %207
  %223 = load i64, i64* %19, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %19, align 8
  br label %203

225:                                              ; preds = %203
  br label %317

226:                                              ; preds = %132
  %227 = load %struct.TYPE_4__***, %struct.TYPE_4__**** @u8_tolower_b3_tbl, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_4__**, %struct.TYPE_4__*** %227, i64 %229
  %231 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %230, align 8
  %232 = load i64, i64* %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %231, i64 %232
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = load i64, i64* %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %16, align 8
  %239 = load i64, i64* %16, align 8
  %240 = load i64, i64* @U8_TBL_ELEMENT_NOT_DEF, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %226
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  store i64 %244, i64* %6, align 8
  br label %328

245:                                              ; preds = %226
  %246 = load i64***, i64**** @u8_tolower_b4_tbl, align 8
  %247 = load i32, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64**, i64*** %246, i64 %248
  %250 = load i64**, i64*** %249, align 8
  %251 = load i64, i64* %16, align 8
  %252 = getelementptr inbounds i64*, i64** %250, i64 %251
  %253 = load i64*, i64** %252, align 8
  %254 = load i64, i64* %18, align 8
  %255 = getelementptr inbounds i64, i64* %253, i64 %254
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %19, align 8
  %257 = load i64***, i64**** @u8_tolower_b4_tbl, align 8
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i64**, i64*** %257, i64 %259
  %261 = load i64**, i64*** %260, align 8
  %262 = load i64, i64* %16, align 8
  %263 = getelementptr inbounds i64*, i64** %261, i64 %262
  %264 = load i64*, i64** %263, align 8
  %265 = load i64, i64* %18, align 8
  %266 = add i64 %265, 1
  %267 = getelementptr inbounds i64, i64* %264, i64 %266
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %20, align 8
  %269 = load i64, i64* %19, align 8
  %270 = load i64, i64* %20, align 8
  %271 = icmp uge i64 %269, %270
  br i1 %271, label %278, label %272

272:                                              ; preds = %245
  %273 = load i64, i64* %20, align 8
  %274 = load i64, i64* %19, align 8
  %275 = sub i64 %273, %274
  %276 = load i64, i64* @U8_MB_CUR_MAX, align 8
  %277 = icmp ugt i64 %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %272, %245
  %279 = load i32, i32* %10, align 4
  %280 = sext i32 %279 to i64
  store i64 %280, i64* %6, align 8
  br label %328

281:                                              ; preds = %272
  %282 = load %struct.TYPE_4__***, %struct.TYPE_4__**** @u8_tolower_b3_tbl, align 8
  %283 = load i32, i32* %7, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_4__**, %struct.TYPE_4__*** %282, i64 %284
  %286 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %285, align 8
  %287 = load i64, i64* %14, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %286, i64 %287
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %288, align 8
  %290 = load i64, i64* %15, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %17, align 8
  store i64 0, i64* %12, align 8
  br label %294

294:                                              ; preds = %313, %281
  %295 = load i64, i64* %19, align 8
  %296 = load i64, i64* %20, align 8
  %297 = icmp ult i64 %295, %296
  br i1 %297, label %298, label %316

298:                                              ; preds = %294
  %299 = load i64**, i64*** @u8_tolower_final_tbl, align 8
  %300 = load i32, i32* %7, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64*, i64** %299, i64 %301
  %303 = load i64*, i64** %302, align 8
  %304 = load i64, i64* %17, align 8
  %305 = load i64, i64* %19, align 8
  %306 = add i64 %304, %305
  %307 = getelementptr inbounds i64, i64* %303, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = load i64*, i64** %8, align 8
  %310 = load i64, i64* %12, align 8
  %311 = add i64 %310, 1
  store i64 %311, i64* %12, align 8
  %312 = getelementptr inbounds i64, i64* %309, i64 %310
  store i64 %308, i64* %312, align 8
  br label %313

313:                                              ; preds = %298
  %314 = load i64, i64* %19, align 8
  %315 = add i64 %314, 1
  store i64 %315, i64* %19, align 8
  br label %294

316:                                              ; preds = %294
  br label %317

317:                                              ; preds = %316, %225
  %318 = load i64, i64* %12, align 8
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load i32, i32* %10, align 4
  %322 = sext i32 %321 to i64
  store i64 %322, i64* %6, align 8
  br label %328

323:                                              ; preds = %317
  %324 = load i64*, i64** %8, align 8
  %325 = load i64, i64* %12, align 8
  %326 = getelementptr inbounds i64, i64* %324, i64 %325
  store i64 0, i64* %326, align 8
  %327 = load i64, i64* %12, align 8
  store i64 %327, i64* %6, align 8
  br label %328

328:                                              ; preds = %323, %320, %278, %242, %187, %151, %129, %111, %90
  %329 = load i64, i64* %6, align 8
  ret i64 %329
}

declare dso_local i64 @U8_ASCII_TOUPPER(i64) #1

declare dso_local i64 @U8_ASCII_TOLOWER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
