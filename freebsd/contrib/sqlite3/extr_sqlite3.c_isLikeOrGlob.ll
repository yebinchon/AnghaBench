; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_isLikeOrGlob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_isLikeOrGlob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32*, i32*, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_32__* }

@TK_VARIABLE = common dso_local global i32 0, align 4
@SQLITE_EnableQPSG = common dso_local global i32 0, align 4
@SQLITE_AFF_BLOB = common dso_local global i32 0, align 4
@SQLITE_TEXT = common dso_local global i64 0, align 8
@TK_REGISTER = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@SQLITE_AFF_TEXT = common dso_local global i64 0, align 8
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, %struct.TYPE_32__*, %struct.TYPE_32__**, i32*, i32*)* @isLikeOrGlob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isLikeOrGlob(%struct.TYPE_30__* %0, %struct.TYPE_32__* %1, %struct.TYPE_32__** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_32__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca %struct.TYPE_31__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca [4 x i64], align 16
  %19 = alloca %struct.TYPE_29__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_32__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca double, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %8, align 8
  store %struct.TYPE_32__** %2, %struct.TYPE_32__*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64* null, i64** %12, align 8
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %34, align 8
  store %struct.TYPE_29__* %35, %struct.TYPE_29__** %19, align 8
  store i32* null, i32** %20, align 8
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %40 = bitcast i64* %39 to i8*
  %41 = call i32 @sqlite3IsLikeFunction(%struct.TYPE_29__* %36, %struct.TYPE_32__* %37, i32* %38, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %387

44:                                               ; preds = %5
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %47, align 8
  store %struct.TYPE_31__* %48, %struct.TYPE_31__** %15, align 8
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %53, align 8
  store %struct.TYPE_32__* %54, %struct.TYPE_32__** %14, align 8
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %59, align 8
  %61 = call %struct.TYPE_32__* @sqlite3ExprSkipCollate(%struct.TYPE_32__* %60)
  store %struct.TYPE_32__* %61, %struct.TYPE_32__** %13, align 8
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %21, align 4
  %65 = load i32, i32* %21, align 4
  %66 = load i32, i32* @TK_VARIABLE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %117

68:                                               ; preds = %44
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SQLITE_EnableQPSG, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %117

75:                                               ; preds = %68
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %23, align 8
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %24, align 4
  %82 = load i32*, i32** %23, align 8
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* @SQLITE_AFF_BLOB, align 4
  %85 = call i32* @sqlite3VdbeGetBoundValue(i32* %82, i32 %83, i32 %84)
  store i32* %85, i32** %20, align 8
  %86 = load i32*, i32** %20, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %75
  %89 = load i32*, i32** %20, align 8
  %90 = call i64 @sqlite3_value_type(i32* %89)
  %91 = load i64, i64* @SQLITE_TEXT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32*, i32** %20, align 8
  %95 = call i64* @sqlite3_value_text(i32* %94)
  store i64* %95, i64** %12, align 8
  br label %96

96:                                               ; preds = %93, %88, %75
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %24, align 4
  %101 = call i32 @sqlite3VdbeSetVarmask(i32* %99, i32 %100)
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @TK_VARIABLE, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %96
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @TK_REGISTER, align 4
  %112 = icmp eq i32 %110, %111
  br label %113

113:                                              ; preds = %107, %96
  %114 = phi i1 [ true, %96 ], [ %112, %107 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  br label %128

117:                                              ; preds = %68, %44
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* @TK_STRING, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = bitcast i8* %125 to i64*
  store i64* %126, i64** %12, align 8
  br label %127

127:                                              ; preds = %121, %117
  br label %128

128:                                              ; preds = %127, %113
  %129 = load i64*, i64** %12, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %131, label %380

131:                                              ; preds = %128
  store i32 0, i32* %17, align 4
  br label %132

132:                                              ; preds = %173, %131
  %133 = load i64*, i64** %12, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %16, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %132
  %140 = load i64, i64* %16, align 8
  %141 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %142 = load i64, i64* %141, align 16
  %143 = icmp ne i64 %140, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load i64, i64* %16, align 8
  %146 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %145, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load i64, i64* %16, align 8
  %151 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 2
  %152 = load i64, i64* %151, align 16
  %153 = icmp ne i64 %150, %152
  br label %154

154:                                              ; preds = %149, %144, %139, %132
  %155 = phi i1 [ false, %144 ], [ false, %139 ], [ false, %132 ], [ %153, %149 ]
  br i1 %155, label %156, label %174

156:                                              ; preds = %154
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %17, align 4
  %159 = load i64, i64* %16, align 8
  %160 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %159, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %156
  %164 = load i64*, i64** %12, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %163
  %171 = load i32, i32* %17, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %17, align 4
  br label %173

173:                                              ; preds = %170, %163, %156
  br label %132

174:                                              ; preds = %154
  %175 = load i32, i32* %17, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %378

177:                                              ; preds = %174
  %178 = load i64*, i64** %12, align 8
  %179 = load i32, i32* %17, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %178, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 255, %183
  br i1 %184, label %185, label %378

185:                                              ; preds = %177
  %186 = load i32, i32* %17, align 4
  %187 = icmp sgt i32 %186, 1
  br i1 %187, label %195, label %188

188:                                              ; preds = %185
  %189 = load i64*, i64** %12, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %191, %193
  br i1 %194, label %195, label %378

195:                                              ; preds = %188, %185
  %196 = load i64, i64* %16, align 8
  %197 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %198 = load i64, i64* %197, align 16
  %199 = icmp eq i64 %196, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %195
  %201 = load i64*, i64** %12, align 8
  %202 = load i32, i32* %17, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %201, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %206, 0
  br label %208

208:                                              ; preds = %200, %195
  %209 = phi i1 [ false, %195 ], [ %207, %200 ]
  %210 = zext i1 %209 to i32
  %211 = load i32*, i32** %10, align 8
  store i32 %210, i32* %211, align 4
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %213 = load i32, i32* @TK_STRING, align 4
  %214 = load i64*, i64** %12, align 8
  %215 = bitcast i64* %214 to i8*
  %216 = call %struct.TYPE_32__* @sqlite3Expr(%struct.TYPE_29__* %212, i32 %213, i8* %215)
  store %struct.TYPE_32__* %216, %struct.TYPE_32__** %25, align 8
  %217 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %218 = icmp ne %struct.TYPE_32__* %217, null
  br i1 %218, label %219, label %334

219:                                              ; preds = %208
  %220 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %221 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  store i8* %223, i8** %28, align 8
  %224 = load i8*, i8** %28, align 8
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  store i8 0, i8* %227, align 1
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  br label %228

228:                                              ; preds = %256, %219
  %229 = load i32, i32* %26, align 4
  %230 = load i32, i32* %17, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %259

232:                                              ; preds = %228
  %233 = load i8*, i8** %28, align 8
  %234 = load i32, i32* %26, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i64
  %239 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 3
  %240 = load i64, i64* %239, align 8
  %241 = icmp eq i64 %238, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %232
  %243 = load i32, i32* %26, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %26, align 4
  br label %245

245:                                              ; preds = %242, %232
  %246 = load i8*, i8** %28, align 8
  %247 = load i32, i32* %26, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = load i8*, i8** %28, align 8
  %252 = load i32, i32* %27, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %27, align 4
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i8, i8* %251, i64 %254
  store i8 %250, i8* %255, align 1
  br label %256

256:                                              ; preds = %245
  %257 = load i32, i32* %26, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %26, align 4
  br label %228

259:                                              ; preds = %228
  %260 = load i8*, i8** %28, align 8
  %261 = load i32, i32* %27, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  store i8 0, i8* %263, align 1
  %264 = load i32, i32* %27, align 4
  %265 = icmp sgt i32 %264, 0
  %266 = zext i1 %265 to i32
  %267 = call i32 @assert(i32 %266)
  %268 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  %272 = load i64, i64* @TK_COLUMN, align 8
  %273 = icmp ne i64 %271, %272
  br i1 %273, label %286, label %274

274:                                              ; preds = %259
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %276 = call i64 @sqlite3ExprAffinity(%struct.TYPE_32__* %275)
  %277 = load i64, i64* @SQLITE_AFF_TEXT, align 8
  %278 = icmp ne i64 %276, %277
  br i1 %278, label %286, label %279

279:                                              ; preds = %274
  %280 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %281 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i64 @IsVirtual(i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %333

286:                                              ; preds = %279, %274, %259
  %287 = load i8*, i8** %28, align 8
  %288 = load i32, i32* %27, align 4
  %289 = load i32, i32* @SQLITE_UTF8, align 4
  %290 = call i32 @sqlite3AtoF(i8* %287, double* %30, i32 %288, i32 %289)
  store i32 %290, i32* %29, align 4
  %291 = load i32, i32* %29, align 4
  %292 = icmp sle i32 %291, 0
  br i1 %292, label %293, label %323

293:                                              ; preds = %286
  %294 = load i32, i32* %27, align 4
  %295 = icmp eq i32 %294, 1
  br i1 %295, label %296, label %303

296:                                              ; preds = %293
  %297 = load i8*, i8** %28, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 0
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp eq i32 %300, 45
  br i1 %301, label %302, label %303

302:                                              ; preds = %296
  store i32 1, i32* %29, align 4
  br label %322

303:                                              ; preds = %296, %293
  %304 = load i8*, i8** %28, align 8
  %305 = load i32, i32* %27, align 4
  %306 = sub nsw i32 %305, 1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8, i8* %304, i64 %307
  %309 = load i8, i8* %308, align 1
  %310 = add i8 %309, 1
  store i8 %310, i8* %308, align 1
  %311 = load i8*, i8** %28, align 8
  %312 = load i32, i32* %27, align 4
  %313 = load i32, i32* @SQLITE_UTF8, align 4
  %314 = call i32 @sqlite3AtoF(i8* %311, double* %30, i32 %312, i32 %313)
  store i32 %314, i32* %29, align 4
  %315 = load i8*, i8** %28, align 8
  %316 = load i32, i32* %27, align 4
  %317 = sub nsw i32 %316, 1
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %315, i64 %318
  %320 = load i8, i8* %319, align 1
  %321 = add i8 %320, -1
  store i8 %321, i8* %319, align 1
  br label %322

322:                                              ; preds = %303, %302
  br label %323

323:                                              ; preds = %322, %286
  %324 = load i32, i32* %29, align 4
  %325 = icmp sgt i32 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %323
  %327 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %328 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %329 = call i32 @sqlite3ExprDelete(%struct.TYPE_29__* %327, %struct.TYPE_32__* %328)
  %330 = load i32*, i32** %20, align 8
  %331 = call i32 @sqlite3ValueFree(i32* %330)
  store i32 0, i32* %6, align 4
  br label %387

332:                                              ; preds = %323
  br label %333

333:                                              ; preds = %332, %279
  br label %334

334:                                              ; preds = %333, %208
  %335 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %336 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %9, align 8
  store %struct.TYPE_32__* %335, %struct.TYPE_32__** %336, align 8
  %337 = load i32, i32* %21, align 4
  %338 = load i32, i32* @TK_VARIABLE, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %377

340:                                              ; preds = %334
  %341 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  store i32* %343, i32** %31, align 8
  %344 = load i32*, i32** %31, align 8
  %345 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %346 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @sqlite3VdbeSetVarmask(i32* %344, i32 %347)
  %349 = load i32*, i32** %10, align 8
  %350 = load i32, i32* %349, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %376

352:                                              ; preds = %340
  %353 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %354 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %354, i32 0, i32 0
  %356 = load i8*, i8** %355, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 1
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %376

361:                                              ; preds = %352
  %362 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %363 = call i32 @sqlite3GetTempReg(%struct.TYPE_30__* %362)
  store i32 %363, i32* %32, align 4
  %364 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %365 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %366 = load i32, i32* %32, align 4
  %367 = call i32 @sqlite3ExprCodeTarget(%struct.TYPE_30__* %364, %struct.TYPE_32__* %365, i32 %366)
  %368 = load i32*, i32** %31, align 8
  %369 = load i32*, i32** %31, align 8
  %370 = call i64 @sqlite3VdbeCurrentAddr(i32* %369)
  %371 = sub nsw i64 %370, 1
  %372 = call i32 @sqlite3VdbeChangeP3(i32* %368, i64 %371, i32 0)
  %373 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %374 = load i32, i32* %32, align 4
  %375 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_30__* %373, i32 %374)
  br label %376

376:                                              ; preds = %361, %352, %340
  br label %377

377:                                              ; preds = %376, %334
  br label %379

378:                                              ; preds = %188, %177, %174
  store i64* null, i64** %12, align 8
  br label %379

379:                                              ; preds = %378, %377
  br label %380

380:                                              ; preds = %379, %128
  %381 = load i64*, i64** %12, align 8
  %382 = icmp ne i64* %381, null
  %383 = zext i1 %382 to i32
  store i32 %383, i32* %22, align 4
  %384 = load i32*, i32** %20, align 8
  %385 = call i32 @sqlite3ValueFree(i32* %384)
  %386 = load i32, i32* %22, align 4
  store i32 %386, i32* %6, align 4
  br label %387

387:                                              ; preds = %380, %326, %43
  %388 = load i32, i32* %6, align 4
  ret i32 %388
}

declare dso_local i32 @sqlite3IsLikeFunction(%struct.TYPE_29__*, %struct.TYPE_32__*, i32*, i8*) #1

declare dso_local %struct.TYPE_32__* @sqlite3ExprSkipCollate(%struct.TYPE_32__*) #1

declare dso_local i32* @sqlite3VdbeGetBoundValue(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i64* @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3VdbeSetVarmask(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_32__* @sqlite3Expr(%struct.TYPE_29__*, i32, i8*) #1

declare dso_local i64 @sqlite3ExprAffinity(%struct.TYPE_32__*) #1

declare dso_local i64 @IsVirtual(i32) #1

declare dso_local i32 @sqlite3AtoF(i8*, double*, i32, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_29__*, %struct.TYPE_32__*) #1

declare dso_local i32 @sqlite3ValueFree(i32*) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_30__*) #1

declare dso_local i32 @sqlite3ExprCodeTarget(%struct.TYPE_30__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP3(i32*, i64, i32) #1

declare dso_local i64 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_30__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
