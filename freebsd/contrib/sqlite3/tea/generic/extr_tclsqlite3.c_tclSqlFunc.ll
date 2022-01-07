; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/tea/generic/extr_tclsqlite3.c_tclSqlFunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/tea/generic/extr_tclsqlite3.c_tclSqlFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, i32, %struct.TYPE_26__*, %struct.TYPE_28__* }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_28__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i8* }

@TCL_EVAL_DIRECT = common dso_local global i32 0, align 4
@TCL_RETURN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"bytearray\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"wideInt\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@SQLITE_TEXT = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @tclSqlFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tclSqlFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_28__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_28__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.TYPE_29__* @sqlite3_user_data(i32* %27)
  store %struct.TYPE_29__* %28, %struct.TYPE_29__** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %3
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %33, align 8
  store %struct.TYPE_28__* %34, %struct.TYPE_28__** %8, align 8
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %36 = call i32 @Tcl_IncrRefCount(%struct.TYPE_28__* %35)
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %41 = call i32 @Tcl_EvalObjEx(i32 %39, %struct.TYPE_28__* %40, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %43 = call i32 @Tcl_DecrRefCount(%struct.TYPE_28__* %42)
  br label %159

44:                                               ; preds = %3
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %49, align 8
  %51 = call i64 @Tcl_ListObjGetElements(i32 %47, %struct.TYPE_28__* %50, i32* %12, %struct.TYPE_28__*** %11)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @Tcl_GetStringResult(i32 %57)
  %59 = call i32 @sqlite3_result_error(i32* %54, i32 %58, i32 -1)
  br label %292

60:                                               ; preds = %44
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %63 = call %struct.TYPE_28__* @Tcl_NewListObj(i32 %61, %struct.TYPE_28__** %62)
  store %struct.TYPE_28__* %63, %struct.TYPE_28__** %8, align 8
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %65 = call i32 @Tcl_IncrRefCount(%struct.TYPE_28__* %64)
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %139, %60
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %142

70:                                               ; preds = %66
  %71 = load i32**, i32*** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %13, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @sqlite3_value_type(i32* %76)
  switch i32 %77, label %112 [
    i32 131, label %78
    i32 129, label %85
    i32 130, label %100
    i32 128, label %105
  ]

78:                                               ; preds = %70
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @sqlite3_value_bytes(i32* %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @sqlite3_value_blob(i32* %81)
  %83 = load i32, i32* %15, align 4
  %84 = call %struct.TYPE_28__* @Tcl_NewByteArrayObj(i32 %82, i32 %83)
  store %struct.TYPE_28__* %84, %struct.TYPE_28__** %14, align 8
  br label %120

85:                                               ; preds = %70
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 @sqlite3_value_int64(i32* %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp sge i32 %88, -2147483647
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* %16, align 4
  %92 = icmp sle i32 %91, 2147483647
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = call %struct.TYPE_28__* @Tcl_NewIntObj(i32 %94)
  store %struct.TYPE_28__* %95, %struct.TYPE_28__** %14, align 8
  br label %99

96:                                               ; preds = %90, %85
  %97 = load i32, i32* %16, align 4
  %98 = call %struct.TYPE_28__* @Tcl_NewWideIntObj(i32 %97)
  store %struct.TYPE_28__* %98, %struct.TYPE_28__** %14, align 8
  br label %99

99:                                               ; preds = %96, %93
  br label %120

100:                                              ; preds = %70
  %101 = load i32*, i32** %13, align 8
  %102 = call double @sqlite3_value_double(i32* %101)
  store double %102, double* %17, align 8
  %103 = load double, double* %17, align 8
  %104 = call %struct.TYPE_28__* @Tcl_NewDoubleObj(double %103)
  store %struct.TYPE_28__* %104, %struct.TYPE_28__** %14, align 8
  br label %120

105:                                              ; preds = %70
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call %struct.TYPE_28__* @Tcl_NewStringObj(i8* %110, i32 -1)
  store %struct.TYPE_28__* %111, %struct.TYPE_28__** %14, align 8
  br label %120

112:                                              ; preds = %70
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @sqlite3_value_bytes(i32* %113)
  store i32 %114, i32* %18, align 4
  %115 = load i32*, i32** %13, align 8
  %116 = call i64 @sqlite3_value_text(i32* %115)
  %117 = inttoptr i64 %116 to i8*
  %118 = load i32, i32* %18, align 4
  %119 = call %struct.TYPE_28__* @Tcl_NewStringObj(i8* %117, i32 %118)
  store %struct.TYPE_28__* %119, %struct.TYPE_28__** %14, align 8
  br label %120

120:                                              ; preds = %112, %105, %100, %99, %78
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %126 = call i32 @Tcl_ListObjAppendElement(i32 %123, %struct.TYPE_28__* %124, %struct.TYPE_28__* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %120
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %131 = call i32 @Tcl_DecrRefCount(%struct.TYPE_28__* %130)
  %132 = load i32*, i32** %4, align 8
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @Tcl_GetStringResult(i32 %135)
  %137 = call i32 @sqlite3_result_error(i32* %132, i32 %136, i32 -1)
  br label %292

138:                                              ; preds = %120
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %66

142:                                              ; preds = %66
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %149 = call i32 @Tcl_GetString(%struct.TYPE_28__* %148)
  br label %150

150:                                              ; preds = %147, %142
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %155 = load i32, i32* @TCL_EVAL_DIRECT, align 4
  %156 = call i32 @Tcl_EvalObjEx(i32 %153, %struct.TYPE_28__* %154, i32 %155)
  store i32 %156, i32* %10, align 4
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %158 = call i32 @Tcl_DecrRefCount(%struct.TYPE_28__* %157)
  br label %159

159:                                              ; preds = %150, %31
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @TCL_RETURN, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load i32*, i32** %4, align 8
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @Tcl_GetStringResult(i32 %170)
  %172 = call i32 @sqlite3_result_error(i32* %167, i32 %171, i32 -1)
  br label %292

173:                                              ; preds = %162, %159
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call %struct.TYPE_28__* @Tcl_GetObjResult(i32 %176)
  store %struct.TYPE_28__* %177, %struct.TYPE_28__** %19, align 8
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %179, align 8
  %181 = icmp ne %struct.TYPE_27__* %180, null
  br i1 %181, label %182, label %188

182:                                              ; preds = %173
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  br label %189

188:                                              ; preds = %173
  br label %189

189:                                              ; preds = %188, %182
  %190 = phi i8* [ %187, %182 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %188 ]
  store i8* %190, i8** %22, align 8
  %191 = load i8*, i8** %22, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 0
  %193 = load i8, i8* %192, align 1
  store i8 %193, i8* %23, align 1
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  store i32 %196, i32* %24, align 4
  %197 = load i32, i32* %24, align 4
  %198 = icmp eq i32 %197, 128
  br i1 %198, label %199, label %252

199:                                              ; preds = %189
  %200 = load i8, i8* %23, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 98
  br i1 %202, label %203, label %213

203:                                              ; preds = %199
  %204 = load i8*, i8** %22, align 8
  %205 = call i64 @strcmp(i8* %204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  store i32 131, i32* %24, align 4
  br label %251

213:                                              ; preds = %207, %203, %199
  %214 = load i8, i8* %23, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 98
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = load i8*, i8** %22, align 8
  %219 = call i64 @strcmp(i8* %218, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %237, label %221

221:                                              ; preds = %217, %213
  %222 = load i8, i8* %23, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 119
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load i8*, i8** %22, align 8
  %227 = call i64 @strcmp(i8* %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %225, %221
  %230 = load i8, i8* %23, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 105
  br i1 %232, label %233, label %238

233:                                              ; preds = %229
  %234 = load i8*, i8** %22, align 8
  %235 = call i64 @strcmp(i8* %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %233, %225, %217
  store i32 129, i32* %24, align 4
  br label %250

238:                                              ; preds = %233, %229
  %239 = load i8, i8* %23, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %240, 100
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  %243 = load i8*, i8** %22, align 8
  %244 = call i64 @strcmp(i8* %243, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  store i32 130, i32* %24, align 4
  br label %249

247:                                              ; preds = %242, %238
  %248 = load i32, i32* @SQLITE_TEXT, align 4
  store i32 %248, i32* %24, align 4
  br label %249

249:                                              ; preds = %247, %246
  br label %250

250:                                              ; preds = %249, %237
  br label %251

251:                                              ; preds = %250, %212
  br label %252

252:                                              ; preds = %251, %189
  %253 = load i32, i32* %24, align 4
  switch i32 %253, label %282 [
    i32 131, label %254
    i32 129, label %262
    i32 130, label %272
  ]

254:                                              ; preds = %252
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %256 = call i8* @Tcl_GetByteArrayFromObj(%struct.TYPE_28__* %255, i32* %20)
  store i8* %256, i8** %21, align 8
  %257 = load i32*, i32** %4, align 8
  %258 = load i8*, i8** %21, align 8
  %259 = load i32, i32* %20, align 4
  %260 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %261 = call i32 @sqlite3_result_blob(i32* %257, i8* %258, i32 %259, i32 %260)
  br label %291

262:                                              ; preds = %252
  %263 = load i32, i32* @TCL_OK, align 4
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %265 = call i32 @Tcl_GetWideIntFromObj(i32 0, %struct.TYPE_28__* %264, i32* %25)
  %266 = icmp eq i32 %263, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %262
  %268 = load i32*, i32** %4, align 8
  %269 = load i32, i32* %25, align 4
  %270 = call i32 @sqlite3_result_int64(i32* %268, i32 %269)
  br label %291

271:                                              ; preds = %262
  br label %272

272:                                              ; preds = %252, %271
  %273 = load i32, i32* @TCL_OK, align 4
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %275 = call i32 @Tcl_GetDoubleFromObj(i32 0, %struct.TYPE_28__* %274, double* %26)
  %276 = icmp eq i32 %273, %275
  br i1 %276, label %277, label %281

277:                                              ; preds = %272
  %278 = load i32*, i32** %4, align 8
  %279 = load double, double* %26, align 8
  %280 = call i32 @sqlite3_result_double(i32* %278, double %279)
  br label %291

281:                                              ; preds = %272
  br label %282

282:                                              ; preds = %252, %281
  %283 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %284 = call i64 @Tcl_GetStringFromObj(%struct.TYPE_28__* %283, i32* %20)
  %285 = inttoptr i64 %284 to i8*
  store i8* %285, i8** %21, align 8
  %286 = load i32*, i32** %4, align 8
  %287 = load i8*, i8** %21, align 8
  %288 = load i32, i32* %20, align 4
  %289 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %290 = call i32 @sqlite3_result_text(i32* %286, i8* %287, i32 %288, i32 %289)
  br label %291

291:                                              ; preds = %282, %277, %267, %254
  br label %292

292:                                              ; preds = %53, %129, %291, %166
  ret void
}

declare dso_local %struct.TYPE_29__* @sqlite3_user_data(i32*) #1

declare dso_local i32 @Tcl_IncrRefCount(%struct.TYPE_28__*) #1

declare dso_local i32 @Tcl_EvalObjEx(i32, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @Tcl_DecrRefCount(%struct.TYPE_28__*) #1

declare dso_local i64 @Tcl_ListObjGetElements(i32, %struct.TYPE_28__*, i32*, %struct.TYPE_28__***) #1

declare dso_local i32 @sqlite3_result_error(i32*, i32, i32) #1

declare dso_local i32 @Tcl_GetStringResult(i32) #1

declare dso_local %struct.TYPE_28__* @Tcl_NewListObj(i32, %struct.TYPE_28__**) #1

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local %struct.TYPE_28__* @Tcl_NewByteArrayObj(i32, i32) #1

declare dso_local i32 @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local %struct.TYPE_28__* @Tcl_NewIntObj(i32) #1

declare dso_local %struct.TYPE_28__* @Tcl_NewWideIntObj(i32) #1

declare dso_local double @sqlite3_value_double(i32*) #1

declare dso_local %struct.TYPE_28__* @Tcl_NewDoubleObj(double) #1

declare dso_local %struct.TYPE_28__* @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @Tcl_ListObjAppendElement(i32, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @Tcl_GetString(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_28__* @Tcl_GetObjResult(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @Tcl_GetByteArrayFromObj(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i32, i32) #1

declare dso_local i32 @Tcl_GetWideIntFromObj(i32, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local i32 @Tcl_GetDoubleFromObj(i32, %struct.TYPE_28__*, double*) #1

declare dso_local i32 @sqlite3_result_double(i32*, double) #1

declare dso_local i64 @Tcl_GetStringFromObj(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
