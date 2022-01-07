; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_fkLookupParent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_fkLookupParent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32* }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_24__* }

@SQLITE_DeferFKs = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@OE_Ignore = common dso_local global i32 0, align 4
@OP_FkIfZero = common dso_local global i32 0, align 4
@OP_IsNull = common dso_local global i32 0, align 4
@OP_SCopy = common dso_local global i32 0, align 4
@OP_MustBeInt = common dso_local global i32 0, align 4
@OP_Eq = common dso_local global i32 0, align 4
@SQLITE_NOTNULL = common dso_local global i32 0, align 4
@OP_OpenRead = common dso_local global i32 0, align 4
@OP_NotExists = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@OP_Ne = common dso_local global i32 0, align 4
@SQLITE_JUMPIFNULL = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_Found = common dso_local global i32 0, align 4
@SQLITE_CONSTRAINT_FOREIGNKEY = common dso_local global i32 0, align 4
@P4_STATIC = common dso_local global i32 0, align 4
@P5_ConstraintFK = common dso_local global i32 0, align 4
@OP_FkCounter = common dso_local global i32 0, align 4
@OP_Close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, i32, %struct.TYPE_24__*, %struct.TYPE_26__*, %struct.TYPE_27__*, i32*, i32, i32, i32)* @fkLookupParent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fkLookupParent(%struct.TYPE_25__* %0, i32 %1, %struct.TYPE_24__* %2, %struct.TYPE_26__* %3, %struct.TYPE_27__* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %13, align 8
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %33 = call i32* @sqlite3GetVdbe(%struct.TYPE_25__* %32)
  store i32* %33, i32** %20, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %21, align 4
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %39 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_25__* %38)
  store i32 %39, i32* %22, align 4
  %40 = load i32*, i32** %20, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %9
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SQLITE_DeferFKs, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @OE_Abort, align 4
  br label %68

66:                                               ; preds = %59, %54, %45, %9
  %67 = load i32, i32* @OE_Ignore, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = call i32 @sqlite3VdbeVerifyAbortable(i32* %40, i32 %69)
  %71 = load i32, i32* %17, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load i32*, i32** %20, align 8
  %75 = load i32, i32* @OP_FkIfZero, align 4
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %22, align 4
  %80 = call i32 @sqlite3VdbeAddOp2(i32* %74, i32 %75, i32 %78, i32 %79)
  %81 = load i32*, i32** %20, align 8
  %82 = call i32 @VdbeCoverage(i32* %81)
  br label %83

83:                                               ; preds = %73, %68
  store i32 0, i32* %19, align 4
  br label %84

84:                                               ; preds = %106, %83
  %85 = load i32, i32* %19, align 4
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %84
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %95, %96
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %23, align 4
  %99 = load i32*, i32** %20, align 8
  %100 = load i32, i32* @OP_IsNull, align 4
  %101 = load i32, i32* %23, align 4
  %102 = load i32, i32* %22, align 4
  %103 = call i32 @sqlite3VdbeAddOp2(i32* %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32*, i32** %20, align 8
  %105 = call i32 @VdbeCoverage(i32* %104)
  br label %106

106:                                              ; preds = %90
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %19, align 4
  br label %84

109:                                              ; preds = %84
  %110 = load i32, i32* %18, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %344

112:                                              ; preds = %109
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %114 = icmp eq %struct.TYPE_26__* %113, null
  br i1 %114, label %115, label %182

115:                                              ; preds = %112
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %117 = call i32 @sqlite3GetTempReg(%struct.TYPE_25__* %116)
  store i32 %117, i32* %25, align 4
  %118 = load i32*, i32** %20, align 8
  %119 = load i32, i32* @OP_SCopy, align 4
  %120 = load i32*, i32** %15, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* %25, align 4
  %127 = call i32 @sqlite3VdbeAddOp2(i32* %118, i32 %119, i32 %125, i32 %126)
  %128 = load i32*, i32** %20, align 8
  %129 = load i32, i32* @OP_MustBeInt, align 4
  %130 = load i32, i32* %25, align 4
  %131 = call i32 @sqlite3VdbeAddOp2(i32* %128, i32 %129, i32 %130, i32 0)
  store i32 %131, i32* %24, align 4
  %132 = load i32*, i32** %20, align 8
  %133 = call i32 @VdbeCoverage(i32* %132)
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %136, align 8
  %138 = icmp eq %struct.TYPE_24__* %134, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %115
  %140 = load i32, i32* %17, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %154

142:                                              ; preds = %139
  %143 = load i32*, i32** %20, align 8
  %144 = load i32, i32* @OP_Eq, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %22, align 4
  %147 = load i32, i32* %25, align 4
  %148 = call i32 @sqlite3VdbeAddOp3(i32* %143, i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i32*, i32** %20, align 8
  %150 = call i32 @VdbeCoverage(i32* %149)
  %151 = load i32*, i32** %20, align 8
  %152 = load i32, i32* @SQLITE_NOTNULL, align 4
  %153 = call i32 @sqlite3VdbeChangeP5(i32* %151, i32 %152)
  br label %154

154:                                              ; preds = %142, %139, %115
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %156 = load i32, i32* %21, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %159 = load i32, i32* @OP_OpenRead, align 4
  %160 = call i32 @sqlite3OpenTable(%struct.TYPE_25__* %155, i32 %156, i32 %157, %struct.TYPE_24__* %158, i32 %159)
  %161 = load i32*, i32** %20, align 8
  %162 = load i32, i32* @OP_NotExists, align 4
  %163 = load i32, i32* %21, align 4
  %164 = load i32, i32* %25, align 4
  %165 = call i32 @sqlite3VdbeAddOp3(i32* %161, i32 %162, i32 %163, i32 0, i32 %164)
  %166 = load i32*, i32** %20, align 8
  %167 = call i32 @VdbeCoverage(i32* %166)
  %168 = load i32*, i32** %20, align 8
  %169 = load i32, i32* %22, align 4
  %170 = call i32 @sqlite3VdbeGoto(i32* %168, i32 %169)
  %171 = load i32*, i32** %20, align 8
  %172 = load i32*, i32** %20, align 8
  %173 = call i32 @sqlite3VdbeCurrentAddr(i32* %172)
  %174 = sub nsw i32 %173, 2
  %175 = call i32 @sqlite3VdbeJumpHere(i32* %171, i32 %174)
  %176 = load i32*, i32** %20, align 8
  %177 = load i32, i32* %24, align 4
  %178 = call i32 @sqlite3VdbeJumpHere(i32* %176, i32 %177)
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %180 = load i32, i32* %25, align 4
  %181 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_25__* %179, i32 %180)
  br label %343

182:                                              ; preds = %112
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %26, align 4
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %187 = load i32, i32* %26, align 4
  %188 = call i32 @sqlite3GetTempRange(%struct.TYPE_25__* %186, i32 %187)
  store i32 %188, i32* %27, align 4
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %190 = call i32 @sqlite3GetTempReg(%struct.TYPE_25__* %189)
  store i32 %190, i32* %28, align 4
  %191 = load i32*, i32** %20, align 8
  %192 = load i32, i32* @OP_OpenRead, align 4
  %193 = load i32, i32* %21, align 4
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @sqlite3VdbeAddOp3(i32* %191, i32 %192, i32 %193, i32 %196, i32 %197)
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %201 = call i32 @sqlite3VdbeSetP4KeyInfo(%struct.TYPE_25__* %199, %struct.TYPE_26__* %200)
  store i32 0, i32* %19, align 4
  br label %202

202:                                              ; preds = %221, %182
  %203 = load i32, i32* %19, align 4
  %204 = load i32, i32* %26, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %224

206:                                              ; preds = %202
  %207 = load i32*, i32** %20, align 8
  %208 = load i32, i32* @OP_Copy, align 4
  %209 = load i32*, i32** %15, align 8
  %210 = load i32, i32* %19, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 1
  %215 = load i32, i32* %16, align 4
  %216 = add nsw i32 %214, %215
  %217 = load i32, i32* %27, align 4
  %218 = load i32, i32* %19, align 4
  %219 = add nsw i32 %217, %218
  %220 = call i32 @sqlite3VdbeAddOp2(i32* %207, i32 %208, i32 %216, i32 %219)
  br label %221

221:                                              ; preds = %206
  %222 = load i32, i32* %19, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %19, align 4
  br label %202

224:                                              ; preds = %202
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %227, align 8
  %229 = icmp eq %struct.TYPE_24__* %225, %228
  br i1 %229, label %230, label %315

230:                                              ; preds = %224
  %231 = load i32, i32* %17, align 4
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %315

233:                                              ; preds = %230
  %234 = load i32*, i32** %20, align 8
  %235 = call i32 @sqlite3VdbeCurrentAddr(i32* %234)
  %236 = load i32, i32* %26, align 4
  %237 = add nsw i32 %235, %236
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %29, align 4
  store i32 0, i32* %19, align 4
  br label %239

239:                                              ; preds = %308, %233
  %240 = load i32, i32* %19, align 4
  %241 = load i32, i32* %26, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %311

243:                                              ; preds = %239
  %244 = load i32*, i32** %15, align 8
  %245 = load i32, i32* %19, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  %250 = load i32, i32* %16, align 4
  %251 = add nsw i32 %249, %250
  store i32 %251, i32* %30, align 4
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %19, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, 1
  %260 = load i32, i32* %16, align 4
  %261 = add nsw i32 %259, %260
  store i32 %261, i32* %31, align 4
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %19, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = icmp sge i32 %268, 0
  %270 = zext i1 %269 to i32
  %271 = call i32 @assert(i32 %270)
  %272 = load i32*, i32** %15, align 8
  %273 = load i32, i32* %19, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %276, %279
  %281 = zext i1 %280 to i32
  %282 = call i32 @assert(i32 %281)
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %19, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %289, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %243
  %295 = load i32, i32* %16, align 4
  store i32 %295, i32* %31, align 4
  br label %296

296:                                              ; preds = %294, %243
  %297 = load i32*, i32** %20, align 8
  %298 = load i32, i32* @OP_Ne, align 4
  %299 = load i32, i32* %30, align 4
  %300 = load i32, i32* %29, align 4
  %301 = load i32, i32* %31, align 4
  %302 = call i32 @sqlite3VdbeAddOp3(i32* %297, i32 %298, i32 %299, i32 %300, i32 %301)
  %303 = load i32*, i32** %20, align 8
  %304 = call i32 @VdbeCoverage(i32* %303)
  %305 = load i32*, i32** %20, align 8
  %306 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  %307 = call i32 @sqlite3VdbeChangeP5(i32* %305, i32 %306)
  br label %308

308:                                              ; preds = %296
  %309 = load i32, i32* %19, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %19, align 4
  br label %239

311:                                              ; preds = %239
  %312 = load i32*, i32** %20, align 8
  %313 = load i32, i32* %22, align 4
  %314 = call i32 @sqlite3VdbeGoto(i32* %312, i32 %313)
  br label %315

315:                                              ; preds = %311, %230, %224
  %316 = load i32*, i32** %20, align 8
  %317 = load i32, i32* @OP_MakeRecord, align 4
  %318 = load i32, i32* %27, align 4
  %319 = load i32, i32* %26, align 4
  %320 = load i32, i32* %28, align 4
  %321 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %321, i32 0, i32 3
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %322, align 8
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %325 = call i32 @sqlite3IndexAffinityStr(%struct.TYPE_23__* %323, %struct.TYPE_26__* %324)
  %326 = load i32, i32* %26, align 4
  %327 = call i32 @sqlite3VdbeAddOp4(i32* %316, i32 %317, i32 %318, i32 %319, i32 %320, i32 %325, i32 %326)
  %328 = load i32*, i32** %20, align 8
  %329 = load i32, i32* @OP_Found, align 4
  %330 = load i32, i32* %21, align 4
  %331 = load i32, i32* %22, align 4
  %332 = load i32, i32* %28, align 4
  %333 = call i32 @sqlite3VdbeAddOp4Int(i32* %328, i32 %329, i32 %330, i32 %331, i32 %332, i32 0)
  %334 = load i32*, i32** %20, align 8
  %335 = call i32 @VdbeCoverage(i32* %334)
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %337 = load i32, i32* %28, align 4
  %338 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_25__* %336, i32 %337)
  %339 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %340 = load i32, i32* %27, align 4
  %341 = load i32, i32* %26, align 4
  %342 = call i32 @sqlite3ReleaseTempRange(%struct.TYPE_25__* %339, i32 %340, i32 %341)
  br label %343

343:                                              ; preds = %315, %154
  br label %344

344:                                              ; preds = %343, %109
  %345 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %346 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %379, label %349

349:                                              ; preds = %344
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %351 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %350, i32 0, i32 3
  %352 = load %struct.TYPE_23__*, %struct.TYPE_23__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @SQLITE_DeferFKs, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %379, label %358

358:                                              ; preds = %349
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %360 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %379, label %363

363:                                              ; preds = %358
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %379, label %368

368:                                              ; preds = %363
  %369 = load i32, i32* %17, align 4
  %370 = icmp eq i32 %369, 1
  %371 = zext i1 %370 to i32
  %372 = call i32 @assert(i32 %371)
  %373 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %374 = load i32, i32* @SQLITE_CONSTRAINT_FOREIGNKEY, align 4
  %375 = load i32, i32* @OE_Abort, align 4
  %376 = load i32, i32* @P4_STATIC, align 4
  %377 = load i32, i32* @P5_ConstraintFK, align 4
  %378 = call i32 @sqlite3HaltConstraint(%struct.TYPE_25__* %373, i32 %374, i32 %375, i32 0, i32 %376, i32 %377)
  br label %398

379:                                              ; preds = %363, %358, %349, %344
  %380 = load i32, i32* %17, align 4
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %390

382:                                              ; preds = %379
  %383 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %384 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %382
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %389 = call i32 @sqlite3MayAbort(%struct.TYPE_25__* %388)
  br label %390

390:                                              ; preds = %387, %382, %379
  %391 = load i32*, i32** %20, align 8
  %392 = load i32, i32* @OP_FkCounter, align 4
  %393 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %394 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* %17, align 4
  %397 = call i32 @sqlite3VdbeAddOp2(i32* %391, i32 %392, i32 %395, i32 %396)
  br label %398

398:                                              ; preds = %390, %368
  %399 = load i32*, i32** %20, align 8
  %400 = load i32, i32* %22, align 4
  %401 = call i32 @sqlite3VdbeResolveLabel(i32* %399, i32 %400)
  %402 = load i32*, i32** %20, align 8
  %403 = load i32, i32* @OP_Close, align 4
  %404 = load i32, i32* %21, align 4
  %405 = call i32 @sqlite3VdbeAddOp1(i32* %402, i32 %403, i32 %404)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3VdbeVerifyAbortable(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3OpenTable(%struct.TYPE_25__*, i32, i32, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3VdbeSetP4KeyInfo(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3IndexAffinityStr(%struct.TYPE_23__*, %struct.TYPE_26__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @sqlite3HaltConstraint(%struct.TYPE_25__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3MayAbort(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
