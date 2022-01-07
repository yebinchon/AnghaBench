; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_windowAggStep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_windowAggStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32* }
%struct.TYPE_21__ = type { i64, i32, i32, i64, i32, i32, i32, i64, %struct.TYPE_19__*, i64, %struct.TYPE_23__*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32, i64 }
%struct.TYPE_22__ = type { i64, i32 }

@TK_UNBOUNDED = common dso_local global i64 0, align 8
@nth_valueName = common dso_local global i64 0, align 8
@OP_Column = common dso_local global i64 0, align 8
@SQLITE_FUNC_MINMAX = common dso_local global i32 0, align 4
@OP_IsNull = common dso_local global i32 0, align 4
@OP_AddImm = common dso_local global i32 0, align 4
@OP_SCopy = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i64 0, align 8
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_SeekGE = common dso_local global i32 0, align 4
@OP_Delete = common dso_local global i32 0, align 4
@first_valueName = common dso_local global i64 0, align 8
@noopStepFunc = common dso_local global i64 0, align 8
@OP_IfNot = common dso_local global i64 0, align 8
@SQLITE_FUNC_NEEDCOLL = common dso_local global i32 0, align 4
@OP_CollSeq = common dso_local global i32 0, align 4
@P4_COLLSEQ = common dso_local global i32 0, align 4
@OP_AggInverse = common dso_local global i64 0, align 8
@OP_AggStep = common dso_local global i64 0, align 8
@P4_FUNCDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32, i32)* @windowAggStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowAggStep(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_22__*, align 8
  %23 = alloca %struct.TYPE_22__*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32* @sqlite3GetVdbe(i32* %28)
  store i32* %29, i32** %12, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %30, %struct.TYPE_21__** %13, align 8
  br label %31

31:                                               ; preds = %453, %5
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %33 = icmp ne %struct.TYPE_21__* %32, null
  br i1 %33, label %34, label %457

34:                                               ; preds = %31
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 10
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  store %struct.TYPE_23__* %37, %struct.TYPE_23__** %14, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %46

43:                                               ; preds = %34
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %45 = call i32 @windowArgCount(%struct.TYPE_21__* %44)
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i32 [ 0, %42 ], [ %45, %43 ]
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TK_UNBOUNDED, align 8
  %55 = icmp ne i64 %53, %54
  br label %56

56:                                               ; preds = %50, %46
  %57 = phi i1 [ true, %46 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %62 = icmp eq %struct.TYPE_21__* %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %56
  %64 = load i32*, i32** %11, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %67 = call i64 @sqlite3WindowCompare(i32* %64, %struct.TYPE_21__* %65, %struct.TYPE_21__* %66, i32 0)
  %68 = icmp eq i64 %67, 0
  br label %69

69:                                               ; preds = %63, %56
  %70 = phi i1 [ true, %56 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  store i32 0, i32* %17, align 4
  br label %73

73:                                               ; preds = %115, %69
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %118

77:                                               ; preds = %73
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @nth_valueName, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80, %77
  %87 = load i32*, i32** %12, align 8
  %88 = load i64, i64* @OP_Column, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %95, %96
  %98 = call i32 @sqlite3VdbeAddOp3(i32* %87, i64 %88, i32 %89, i32 %94, i32 %97)
  br label %114

99:                                               ; preds = %80
  %100 = load i32*, i32** %12, align 8
  %101 = load i64, i64* @OP_Column, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %110, %111
  %113 = call i32 @sqlite3VdbeAddOp3(i32* %100, i64 %101, i32 %104, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %99, %86
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %17, align 4
  br label %73

118:                                              ; preds = %73
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %15, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %206

124:                                              ; preds = %118
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @SQLITE_FUNC_MINMAX, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %206

131:                                              ; preds = %124
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @TK_UNBOUNDED, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %206

137:                                              ; preds = %131
  %138 = load i32*, i32** %12, align 8
  %139 = load i32, i32* @OP_IsNull, align 4
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @sqlite3VdbeAddOp1(i32* %138, i32 %139, i32 %140)
  store i32 %141, i32* %18, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 @VdbeCoverage(i32* %142)
  %144 = load i32, i32* %9, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %181

146:                                              ; preds = %137
  %147 = load i32*, i32** %12, align 8
  %148 = load i32, i32* @OP_AddImm, align 4
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  %153 = call i32 @sqlite3VdbeAddOp2(i32* %147, i32 %148, i32 %152, i32 1)
  %154 = load i32*, i32** %12, align 8
  %155 = load i32, i32* @OP_SCopy, align 4
  %156 = load i32, i32* %15, align 4
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @sqlite3VdbeAddOp2(i32* %154, i32 %155, i32 %156, i32 %159)
  %161 = load i32*, i32** %12, align 8
  %162 = load i64, i64* @OP_MakeRecord, align 8
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 2
  %170 = call i32 @sqlite3VdbeAddOp3(i32* %161, i64 %162, i32 %165, i32 2, i32 %169)
  %171 = load i32*, i32** %12, align 8
  %172 = load i32, i32* @OP_IdxInsert, align 4
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 2
  %180 = call i32 @sqlite3VdbeAddOp2(i32* %171, i32 %172, i32 %175, i32 %179)
  br label %202

181:                                              ; preds = %137
  %182 = load i32*, i32** %12, align 8
  %183 = load i32, i32* @OP_SeekGE, align 4
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %15, align 4
  %188 = call i32 @sqlite3VdbeAddOp4Int(i32* %182, i32 %183, i32 %186, i32 0, i32 %187, i32 1)
  %189 = load i32*, i32** %12, align 8
  %190 = call i32 @VdbeCoverageNeverTaken(i32* %189)
  %191 = load i32*, i32** %12, align 8
  %192 = load i32, i32* @OP_Delete, align 4
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @sqlite3VdbeAddOp1(i32* %191, i32 %192, i32 %195)
  %197 = load i32*, i32** %12, align 8
  %198 = load i32*, i32** %12, align 8
  %199 = call i32 @sqlite3VdbeCurrentAddr(i32* %198)
  %200 = sub nsw i32 %199, 2
  %201 = call i32 @sqlite3VdbeJumpHere(i32* %197, i32 %200)
  br label %202

202:                                              ; preds = %181, %146
  %203 = load i32*, i32** %12, align 8
  %204 = load i32, i32* %18, align 4
  %205 = call i32 @sqlite3VdbeJumpHere(i32* %203, i32 %204)
  br label %452

206:                                              ; preds = %131, %124, %118
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %245

211:                                              ; preds = %206
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @nth_valueName, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %223, label %217

217:                                              ; preds = %211
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @first_valueName, align 8
  %222 = icmp eq i64 %220, %221
  br label %223

223:                                              ; preds = %217, %211
  %224 = phi i1 [ true, %211 ], [ %222, %217 ]
  %225 = zext i1 %224 to i32
  %226 = call i32 @assert(i32 %225)
  %227 = load i32, i32* %9, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %223
  %230 = load i32, i32* %9, align 4
  %231 = icmp eq i32 %230, 1
  br label %232

232:                                              ; preds = %229, %223
  %233 = phi i1 [ true, %223 ], [ %231, %229 ]
  %234 = zext i1 %233 to i32
  %235 = call i32 @assert(i32 %234)
  %236 = load i32*, i32** %12, align 8
  %237 = load i32, i32* @OP_AddImm, align 4
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %240, 1
  %242 = load i32, i32* %9, align 4
  %243 = sub nsw i32 %241, %242
  %244 = call i32 @sqlite3VdbeAddOp2(i32* %236, i32 %237, i32 %243, i32 1)
  br label %451

245:                                              ; preds = %206
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @noopStepFunc, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %450

251:                                              ; preds = %245
  store i32 0, i32* %19, align 4
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 9
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %319

256:                                              ; preds = %251
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 7
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %275, label %261

261:                                              ; preds = %256
  %262 = load i32, i32* %16, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %261
  %265 = load i32, i32* %16, align 4
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 8
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp eq i32 %265, %273
  br label %275

275:                                              ; preds = %264, %261, %256
  %276 = phi i1 [ true, %261 ], [ true, %256 ], [ %274, %264 ]
  %277 = zext i1 %276 to i32
  %278 = call i32 @assert(i32 %277)
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 7
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %294, label %283

283:                                              ; preds = %275
  %284 = load i32, i32* %16, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %294, label %286

286:                                              ; preds = %283
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 8
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %291, align 8
  %293 = icmp eq %struct.TYPE_16__* %292, null
  br label %294

294:                                              ; preds = %286, %283, %275
  %295 = phi i1 [ true, %283 ], [ true, %275 ], [ %293, %286 ]
  %296 = zext i1 %295 to i32
  %297 = call i32 @assert(i32 %296)
  %298 = load i32*, i32** %11, align 8
  %299 = call i32 @sqlite3GetTempReg(i32* %298)
  store i32 %299, i32* %20, align 4
  %300 = load i32*, i32** %12, align 8
  %301 = load i64, i64* @OP_Column, align 8
  %302 = load i32, i32* %8, align 4
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* %16, align 4
  %307 = add nsw i32 %305, %306
  %308 = load i32, i32* %20, align 4
  %309 = call i32 @sqlite3VdbeAddOp3(i32* %300, i64 %301, i32 %302, i32 %307, i32 %308)
  %310 = load i32*, i32** %12, align 8
  %311 = load i64, i64* @OP_IfNot, align 8
  %312 = load i32, i32* %20, align 4
  %313 = call i32 @sqlite3VdbeAddOp3(i32* %310, i64 %311, i32 %312, i32 0, i32 1)
  store i32 %313, i32* %19, align 4
  %314 = load i32*, i32** %12, align 8
  %315 = call i32 @VdbeCoverage(i32* %314)
  %316 = load i32*, i32** %11, align 8
  %317 = load i32, i32* %20, align 4
  %318 = call i32 @sqlite3ReleaseTempReg(i32* %316, i32 %317)
  br label %319

319:                                              ; preds = %294, %251
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 7
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %379

324:                                              ; preds = %319
  %325 = load i32*, i32** %12, align 8
  %326 = call i32 @sqlite3VdbeCurrentAddr(i32* %325)
  store i32 %326, i32* %21, align 4
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 8
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  store i32 %334, i32* %16, align 4
  %335 = load i32*, i32** %11, align 8
  %336 = load i32, i32* %16, align 4
  %337 = call i32 @sqlite3GetTempRange(i32* %335, i32 %336)
  store i32 %337, i32* %15, align 4
  %338 = load i32*, i32** %11, align 8
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 8
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %343, align 8
  %345 = load i32, i32* %15, align 4
  %346 = call i32 @sqlite3ExprCodeExprList(i32* %338, %struct.TYPE_16__* %344, i32 %345, i32 0, i32 0)
  %347 = load i32*, i32** %12, align 8
  %348 = call %struct.TYPE_22__* @sqlite3VdbeGetOp(i32* %347, i32 -1)
  store %struct.TYPE_22__* %348, %struct.TYPE_22__** %23, align 8
  %349 = load i32*, i32** %12, align 8
  %350 = load i32, i32* %21, align 4
  %351 = call %struct.TYPE_22__* @sqlite3VdbeGetOp(i32* %349, i32 %350)
  store %struct.TYPE_22__* %351, %struct.TYPE_22__** %22, align 8
  br label %352

352:                                              ; preds = %375, %324
  %353 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %354 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %355 = icmp ule %struct.TYPE_22__* %353, %354
  br i1 %355, label %356, label %378

356:                                              ; preds = %352
  %357 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %358 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @OP_Column, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %374

362:                                              ; preds = %356
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %364 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 4
  %369 = icmp eq i32 %365, %368
  br i1 %369, label %370, label %374

370:                                              ; preds = %362
  %371 = load i32, i32* %8, align 4
  %372 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %373 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %372, i32 0, i32 1
  store i32 %371, i32* %373, align 8
  br label %374

374:                                              ; preds = %370, %362, %356
  br label %375

375:                                              ; preds = %374
  %376 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %377 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %376, i32 1
  store %struct.TYPE_22__* %377, %struct.TYPE_22__** %22, align 8
  br label %352

378:                                              ; preds = %352
  br label %379

379:                                              ; preds = %378, %319
  %380 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @SQLITE_FUNC_NEEDCOLL, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %410

386:                                              ; preds = %379
  %387 = load i32, i32* %16, align 4
  %388 = icmp sgt i32 %387, 0
  %389 = zext i1 %388 to i32
  %390 = call i32 @assert(i32 %389)
  %391 = load i32*, i32** %11, align 8
  %392 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %393 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %392, i32 0, i32 8
  %394 = load %struct.TYPE_19__*, %struct.TYPE_19__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 0
  %397 = load %struct.TYPE_16__*, %struct.TYPE_16__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %397, i32 0, i32 1
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %399, i64 0
  %401 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = call i32* @sqlite3ExprNNCollSeq(i32* %391, i32 %402)
  store i32* %403, i32** %24, align 8
  %404 = load i32*, i32** %12, align 8
  %405 = load i32, i32* @OP_CollSeq, align 4
  %406 = load i32*, i32** %24, align 8
  %407 = bitcast i32* %406 to i8*
  %408 = load i32, i32* @P4_COLLSEQ, align 4
  %409 = call i32 @sqlite3VdbeAddOp4(i32* %404, i32 %405, i32 0, i32 0, i32 0, i8* %407, i32 %408)
  br label %410

410:                                              ; preds = %386, %379
  %411 = load i32*, i32** %12, align 8
  %412 = load i32, i32* %9, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %410
  %415 = load i64, i64* @OP_AggInverse, align 8
  br label %418

416:                                              ; preds = %410
  %417 = load i64, i64* @OP_AggStep, align 8
  br label %418

418:                                              ; preds = %416, %414
  %419 = phi i64 [ %415, %414 ], [ %417, %416 ]
  %420 = load i32, i32* %9, align 4
  %421 = load i32, i32* %15, align 4
  %422 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %423 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %422, i32 0, i32 6
  %424 = load i32, i32* %423, align 8
  %425 = call i32 @sqlite3VdbeAddOp3(i32* %411, i64 %419, i32 %420, i32 %421, i32 %424)
  %426 = load i32*, i32** %12, align 8
  %427 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %428 = load i32, i32* @P4_FUNCDEF, align 4
  %429 = call i32 @sqlite3VdbeAppendP4(i32* %426, %struct.TYPE_23__* %427, i32 %428)
  %430 = load i32*, i32** %12, align 8
  %431 = load i32, i32* %16, align 4
  %432 = call i32 @sqlite3VdbeChangeP5(i32* %430, i32 %431)
  %433 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %434 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %433, i32 0, i32 7
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %442

437:                                              ; preds = %418
  %438 = load i32*, i32** %11, align 8
  %439 = load i32, i32* %15, align 4
  %440 = load i32, i32* %16, align 4
  %441 = call i32 @sqlite3ReleaseTempRange(i32* %438, i32 %439, i32 %440)
  br label %442

442:                                              ; preds = %437, %418
  %443 = load i32, i32* %19, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %449

445:                                              ; preds = %442
  %446 = load i32*, i32** %12, align 8
  %447 = load i32, i32* %19, align 4
  %448 = call i32 @sqlite3VdbeJumpHere(i32* %446, i32 %447)
  br label %449

449:                                              ; preds = %445, %442
  br label %450

450:                                              ; preds = %449, %245
  br label %451

451:                                              ; preds = %450, %232
  br label %452

452:                                              ; preds = %451, %202
  br label %453

453:                                              ; preds = %452
  %454 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %455 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %454, i32 0, i32 11
  %456 = load %struct.TYPE_21__*, %struct.TYPE_21__** %455, align 8
  store %struct.TYPE_21__* %456, %struct.TYPE_21__** %13, align 8
  br label %31

457:                                              ; preds = %31
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(i32*) #1

declare dso_local i32 @windowArgCount(%struct.TYPE_21__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3WindowCompare(i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverageNeverTaken(i32*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3GetTempReg(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(i32*, i32) #1

declare dso_local i32 @sqlite3GetTempRange(i32*, i32) #1

declare dso_local i32 @sqlite3ExprCodeExprList(i32*, %struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_22__* @sqlite3VdbeGetOp(i32*, i32) #1

declare dso_local i32* @sqlite3ExprNNCollSeq(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
