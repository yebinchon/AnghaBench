; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_shift.c_shift.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_shift.c_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_19__, %struct.TYPE_20__, %struct.TYPE_21__** }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i8* }

@O_SHIFTWIDTH = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"152|shiftwidth option set to 0\00", align 1
@CUT_LINEMODE = common dso_local global i32 0, align 4
@DBG_FATAL = common dso_local global i32 0, align 4
@O_TABSTOP = common dso_local global i32 0, align 4
@RIGHT = common dso_local global i32 0, align 4
@L_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, i32)* @shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shift(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %23 = call i32 @NEEDFILE(%struct.TYPE_22__* %21, %struct.TYPE_23__* %22)
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = load i32, i32* @O_SHIFTWIDTH, align 4
  %26 = call i64 @O_VAL(%struct.TYPE_22__* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = load i32, i32* @M_INFO, align 4
  %31 = call i32 @msgq(%struct.TYPE_22__* %29, i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %323

32:                                               ; preds = %3
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 1
  %38 = load i32, i32* @CUT_LINEMODE, align 4
  %39 = call i64 @cut(%struct.TYPE_22__* %33, i32* null, %struct.TYPE_19__* %35, %struct.TYPE_20__* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %323

42:                                               ; preds = %32
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %45, i64 0
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %18, align 8
  store i64 0, i64* %16, align 8
  br label %50

50:                                               ; preds = %68, %42
  %51 = load i8*, i8** %18, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 62
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %18, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 60
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi i1 [ true, %50 ], [ %59, %55 ]
  br i1 %61, label %62, label %71

62:                                               ; preds = %60
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = load i32, i32* @O_SHIFTWIDTH, align 4
  %65 = call i64 @O_VAL(%struct.TYPE_22__* %63, i32 %64)
  %66 = load i64, i64* %16, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %16, align 8
  br label %68

68:                                               ; preds = %62
  %69 = load i8*, i8** %18, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %18, align 8
  br label %50

71:                                               ; preds = %60
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %73 = load i8*, i8** %19, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @GET_SPACE_RETW(%struct.TYPE_22__* %72, i8* %73, i64 %74, i32 256)
  store i32 0, i32* %17, align 4
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %9, align 8
  br label %84

84:                                               ; preds = %282, %71
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = icmp sle i64 %85, %86
  br i1 %87, label %88, label %285

88:                                               ; preds = %84
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i32, i32* @DBG_FATAL, align 4
  %92 = call i64 @db_get(%struct.TYPE_22__* %89, i64 %90, i32 %91, i8** %18, i64* %11)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %240

95:                                               ; preds = %88
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %95
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 1, i32* %17, align 4
  br label %105

105:                                              ; preds = %104, %98
  br label %282

106:                                              ; preds = %95
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %107

107:                                              ; preds = %143, %106
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %11, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %146

111:                                              ; preds = %107
  %112 = load i8*, i8** %18, align 8
  %113 = load i64, i64* %15, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 32
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i64, i64* %14, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %14, align 8
  br label %142

121:                                              ; preds = %111
  %122 = load i8*, i8** %18, align 8
  %123 = load i64, i64* %15, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 9
  br i1 %127, label %128, label %140

128:                                              ; preds = %121
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %130 = load i32, i32* @O_TABSTOP, align 4
  %131 = call i64 @O_VAL(%struct.TYPE_22__* %129, i32 %130)
  %132 = load i64, i64* %14, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %134 = load i32, i32* @O_TABSTOP, align 4
  %135 = call i64 @O_VAL(%struct.TYPE_22__* %133, i32 %134)
  %136 = urem i64 %132, %135
  %137 = sub i64 %131, %136
  %138 = load i64, i64* %14, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %14, align 8
  br label %141

140:                                              ; preds = %121
  br label %146

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %15, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %15, align 8
  br label %107

146:                                              ; preds = %140, %107
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @RIGHT, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i64, i64* %14, align 8
  %152 = load i64, i64* %16, align 8
  %153 = add i64 %151, %152
  store i64 %153, i64* %12, align 8
  br label %177

154:                                              ; preds = %146
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %16, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %163

159:                                              ; preds = %154
  %160 = load i64, i64* %14, align 8
  %161 = load i64, i64* %16, align 8
  %162 = sub i64 %160, %161
  br label %163

163:                                              ; preds = %159, %158
  %164 = phi i64 [ 0, %158 ], [ %162, %159 ]
  store i64 %164, i64* %12, align 8
  %165 = load i64, i64* %12, align 8
  %166 = load i64, i64* %14, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %8, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store i32 1, i32* %17, align 4
  br label %175

175:                                              ; preds = %174, %168
  br label %282

176:                                              ; preds = %163
  br label %177

177:                                              ; preds = %176, %150
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %179 = load i8*, i8** %19, align 8
  %180 = load i64, i64* %10, align 8
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* %11, align 8
  %183 = add i64 %181, %182
  %184 = call i32 @ADD_SPACE_RETW(%struct.TYPE_22__* %178, i8* %179, i64 %180, i64 %183)
  %185 = load i8*, i8** %19, align 8
  store i8* %185, i8** %20, align 8
  store i64 0, i64* %13, align 8
  br label %186

186:                                              ; preds = %200, %177
  %187 = load i64, i64* %12, align 8
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %189 = load i32, i32* @O_TABSTOP, align 4
  %190 = call i64 @O_VAL(%struct.TYPE_22__* %188, i32 %189)
  %191 = icmp uge i64 %187, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %186
  %193 = load i8*, i8** %20, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %20, align 8
  store i8 9, i8* %193, align 1
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %196 = load i32, i32* @O_TABSTOP, align 4
  %197 = call i64 @O_VAL(%struct.TYPE_22__* %195, i32 %196)
  %198 = load i64, i64* %12, align 8
  %199 = sub i64 %198, %197
  store i64 %199, i64* %12, align 8
  br label %200

200:                                              ; preds = %192
  %201 = load i64, i64* %13, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %13, align 8
  br label %186

203:                                              ; preds = %186
  br label %204

204:                                              ; preds = %210, %203
  %205 = load i64, i64* %12, align 8
  %206 = icmp ugt i64 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = load i8*, i8** %20, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %20, align 8
  store i8 32, i8* %208, align 1
  br label %210

210:                                              ; preds = %207
  %211 = load i64, i64* %12, align 8
  %212 = add i64 %211, -1
  store i64 %212, i64* %12, align 8
  %213 = load i64, i64* %13, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %13, align 8
  br label %204

215:                                              ; preds = %204
  %216 = load i8*, i8** %20, align 8
  %217 = load i8*, i8** %18, align 8
  %218 = load i64, i64* %15, align 8
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  %220 = load i64, i64* %11, align 8
  %221 = load i64, i64* %15, align 8
  %222 = sub i64 %220, %221
  %223 = call i32 @MEMCPY(i8* %216, i8* %219, i64 %222)
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %225 = load i64, i64* %8, align 8
  %226 = load i8*, i8** %19, align 8
  %227 = load i8*, i8** %20, align 8
  %228 = load i64, i64* %11, align 8
  %229 = load i64, i64* %15, align 8
  %230 = sub i64 %228, %229
  %231 = getelementptr inbounds i8, i8* %227, i64 %230
  %232 = load i8*, i8** %19, align 8
  %233 = ptrtoint i8* %231 to i64
  %234 = ptrtoint i8* %232 to i64
  %235 = sub i64 %233, %234
  %236 = trunc i64 %235 to i32
  %237 = call i64 @db_set(%struct.TYPE_22__* %224, i64 %225, i8* %226, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %215
  br label %240

240:                                              ; preds = %239, %94
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %242 = load i8*, i8** %19, align 8
  %243 = load i64, i64* %10, align 8
  %244 = call i32 @FREE_SPACEW(%struct.TYPE_22__* %241, i8* %242, i64 %243)
  store i32 1, i32* %4, align 4
  br label %323

245:                                              ; preds = %215
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* %8, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %281

251:                                              ; preds = %245
  store i32 1, i32* %17, align 4
  %252 = load i64, i64* %13, align 8
  %253 = load i64, i64* %15, align 8
  %254 = icmp ugt i64 %252, %253
  br i1 %254, label %255, label %263

255:                                              ; preds = %251
  %256 = load i64, i64* %13, align 8
  %257 = load i64, i64* %15, align 8
  %258 = sub i64 %256, %257
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = add i64 %261, %258
  store i64 %262, i64* %260, align 8
  br label %280

263:                                              ; preds = %251
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* %15, align 8
  %268 = load i64, i64* %13, align 8
  %269 = sub i64 %267, %268
  %270 = icmp uge i64 %266, %269
  br i1 %270, label %271, label %279

271:                                              ; preds = %263
  %272 = load i64, i64* %15, align 8
  %273 = load i64, i64* %13, align 8
  %274 = sub i64 %272, %273
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = sub i64 %277, %274
  store i64 %278, i64* %276, align 8
  br label %279

279:                                              ; preds = %271, %263
  br label %280

280:                                              ; preds = %279, %255
  br label %281

281:                                              ; preds = %280, %245
  br label %282

282:                                              ; preds = %281, %175, %105
  %283 = load i64, i64* %8, align 8
  %284 = add nsw i64 %283, 1
  store i64 %284, i64* %8, align 8
  br label %84

285:                                              ; preds = %84
  %286 = load i32, i32* %17, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %299, label %288

288:                                              ; preds = %285
  %289 = load i64, i64* %9, align 8
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 0
  store i64 %289, i64* %291, align 8
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 1
  store i64 0, i64* %293, align 8
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %295 = load i64, i64* %9, align 8
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 1
  %298 = call i32 @nonblank(%struct.TYPE_22__* %294, i64 %295, i64* %297)
  br label %299

299:                                              ; preds = %288, %285
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %301 = load i8*, i8** %19, align 8
  %302 = load i64, i64* %10, align 8
  %303 = call i32 @FREE_SPACEW(%struct.TYPE_22__* %300, i8* %301, i64 %302)
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = sub nsw i64 %307, %311
  %313 = add nsw i64 %312, 1
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = load i64, i64* @L_SHIFT, align 8
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %320, %313
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %318, align 4
  store i32 0, i32* %4, align 4
  br label %323

323:                                              ; preds = %299, %240, %41, %28
  %324 = load i32, i32* %4, align 4
  ret i32 %324
}

declare dso_local i32 @NEEDFILE(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i64 @O_VAL(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @msgq(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i64 @cut(%struct.TYPE_22__*, i32*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @GET_SPACE_RETW(%struct.TYPE_22__*, i8*, i64, i32) #1

declare dso_local i64 @db_get(%struct.TYPE_22__*, i64, i32, i8**, i64*) #1

declare dso_local i32 @ADD_SPACE_RETW(%struct.TYPE_22__*, i8*, i64, i64) #1

declare dso_local i32 @MEMCPY(i8*, i8*, i64) #1

declare dso_local i64 @db_set(%struct.TYPE_22__*, i64, i8*, i32) #1

declare dso_local i32 @FREE_SPACEW(%struct.TYPE_22__*, i8*, i64) #1

declare dso_local i32 @nonblank(%struct.TYPE_22__*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
