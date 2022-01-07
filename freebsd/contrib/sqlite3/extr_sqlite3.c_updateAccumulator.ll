; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_updateAccumulator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_updateAccumulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_27__*, i32* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_30__ = type { i32, i32, i32, %struct.AggInfo_col*, %struct.AggInfo_func* }
%struct.AggInfo_col = type { i32, i32 }
%struct.AggInfo_func = type { i64, %struct.TYPE_22__*, i32, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_26__, %struct.TYPE_23__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_23__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32 }

@EP_xIsSelect = common dso_local global i32 0, align 4
@EP_WinFunc = common dso_local global i32 0, align 4
@SQLITE_FUNC_NEEDCOLL = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@SQLITE_JUMPIFNULL = common dso_local global i32 0, align 4
@SQLITE_ECEL_DUP = common dso_local global i32 0, align 4
@OP_CollSeq = common dso_local global i32 0, align 4
@P4_COLLSEQ = common dso_local global i32 0, align 4
@OP_AggStep = common dso_local global i32 0, align 4
@P4_FUNCDEF = common dso_local global i32 0, align 4
@OP_If = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, i32, %struct.TYPE_30__*)* @updateAccumulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateAccumulator(%struct.TYPE_28__* %0, i32 %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.AggInfo_func*, align 8
  %12 = alloca %struct.AggInfo_col*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.ExprList_item*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %6, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  store i32 0, i32* %8, align 4
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 4
  %28 = load %struct.AggInfo_func*, %struct.AggInfo_func** %27, align 8
  store %struct.AggInfo_func* %28, %struct.AggInfo_func** %11, align 8
  br label %29

29:                                               ; preds = %247, %3
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %252

35:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  %36 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %37 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %36, i32 0, i32 3
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %40, align 8
  store %struct.TYPE_29__* %41, %struct.TYPE_29__** %16, align 8
  %42 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %43 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %42, i32 0, i32 3
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %43, align 8
  %45 = load i32, i32* @EP_xIsSelect, align 4
  %46 = call i64 @ExprHasProperty(%struct.TYPE_24__* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %52 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %51, i32 0, i32 3
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  %54 = call i32 @IsWindowFunc(%struct.TYPE_24__* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %60 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %59, i32 0, i32 3
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %60, align 8
  %62 = load i32, i32* @EP_WinFunc, align 4
  %63 = call i64 @ExprHasProperty(%struct.TYPE_24__* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %109

65:                                               ; preds = %35
  %66 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %67 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %66, i32 0, i32 3
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %17, align 8
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %65
  %79 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %80 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %79, i32 0, i32 1
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SQLITE_FUNC_NEEDCOLL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %78
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* @OP_Copy, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @sqlite3VdbeAddOp2(i32* %96, i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %78, %65
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %103 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_28__* %102)
  store i32 %103, i32* %14, align 4
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %105 = load i32*, i32** %17, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  %108 = call i32 @sqlite3ExprIfFalse(%struct.TYPE_28__* %104, i32* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %101, %35
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %111 = icmp ne %struct.TYPE_29__* %110, null
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %13, align 4
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @sqlite3GetTempRange(%struct.TYPE_28__* %116, i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* @SQLITE_ECEL_DUP, align 4
  %123 = call i32 @sqlite3ExprCodeExprList(%struct.TYPE_28__* %119, %struct.TYPE_29__* %120, i32 %121, i32 0, i32 %122)
  br label %125

124:                                              ; preds = %109
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %125

125:                                              ; preds = %124, %112
  %126 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %127 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sge i64 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %125
  %131 = load i32, i32* %14, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %135 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_28__* %134)
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32, i32* %13, align 4
  %138 = icmp eq i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @testcase(i32 %139)
  %141 = load i32, i32* %13, align 4
  %142 = icmp sgt i32 %141, 1
  %143 = zext i1 %142 to i32
  %144 = call i32 @testcase(i32 %143)
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %146 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %147 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @codeDistinct(%struct.TYPE_28__* %145, i64 %148, i32 %149, i32 1, i32 %150)
  br label %152

152:                                              ; preds = %136, %125
  %153 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %154 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %153, i32 0, i32 1
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SQLITE_FUNC_NEEDCOLL, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %219

161:                                              ; preds = %152
  store i32* null, i32** %18, align 8
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %163 = icmp ne %struct.TYPE_29__* %162, null
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  store i32 0, i32* %20, align 4
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 1
  %168 = load %struct.ExprList_item*, %struct.ExprList_item** %167, align 8
  store %struct.ExprList_item* %168, %struct.ExprList_item** %19, align 8
  br label %169

169:                                              ; preds = %184, %161
  %170 = load i32*, i32** %18, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp slt i32 %173, %174
  br label %176

176:                                              ; preds = %172, %169
  %177 = phi i1 [ false, %169 ], [ %175, %172 ]
  br i1 %177, label %178, label %189

178:                                              ; preds = %176
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %180 = load %struct.ExprList_item*, %struct.ExprList_item** %19, align 8
  %181 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32* @sqlite3ExprCollSeq(%struct.TYPE_28__* %179, i32 %182)
  store i32* %183, i32** %18, align 8
  br label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %20, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %20, align 4
  %187 = load %struct.ExprList_item*, %struct.ExprList_item** %19, align 8
  %188 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %187, i32 1
  store %struct.ExprList_item* %188, %struct.ExprList_item** %19, align 8
  br label %169

189:                                              ; preds = %176
  %190 = load i32*, i32** %18, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %198, label %192

192:                                              ; preds = %189
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  store i32* %197, i32** %18, align 8
  br label %198

198:                                              ; preds = %192, %189
  %199 = load i32, i32* %9, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 8
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %206, %201, %198
  %212 = load i32*, i32** %7, align 8
  %213 = load i32, i32* @OP_CollSeq, align 4
  %214 = load i32, i32* %9, align 4
  %215 = load i32*, i32** %18, align 8
  %216 = bitcast i32* %215 to i8*
  %217 = load i32, i32* @P4_COLLSEQ, align 4
  %218 = call i32 @sqlite3VdbeAddOp4(i32* %212, i32 %213, i32 %214, i32 0, i32 0, i8* %216, i32 %217)
  br label %219

219:                                              ; preds = %211, %152
  %220 = load i32*, i32** %7, align 8
  %221 = load i32, i32* @OP_AggStep, align 4
  %222 = load i32, i32* %15, align 4
  %223 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %224 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @sqlite3VdbeAddOp3(i32* %220, i32 %221, i32 0, i32 %222, i32 %225)
  %227 = load i32*, i32** %7, align 8
  %228 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %229 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %228, i32 0, i32 1
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %229, align 8
  %231 = load i32, i32* @P4_FUNCDEF, align 4
  %232 = call i32 @sqlite3VdbeAppendP4(i32* %227, %struct.TYPE_22__* %230, i32 %231)
  %233 = load i32*, i32** %7, align 8
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @sqlite3VdbeChangeP5(i32* %233, i32 %234)
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %13, align 4
  %239 = call i32 @sqlite3ReleaseTempRange(%struct.TYPE_28__* %236, i32 %237, i32 %238)
  %240 = load i32, i32* %14, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %219
  %243 = load i32*, i32** %7, align 8
  %244 = load i32, i32* %14, align 4
  %245 = call i32 @sqlite3VdbeResolveLabel(i32* %243, i32 %244)
  br label %246

246:                                              ; preds = %242, %219
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %8, align 4
  %250 = load %struct.AggInfo_func*, %struct.AggInfo_func** %11, align 8
  %251 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %250, i32 1
  store %struct.AggInfo_func* %251, %struct.AggInfo_func** %11, align 8
  br label %29

252:                                              ; preds = %29
  %253 = load i32, i32* %9, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %252
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = load i32, i32* %5, align 4
  store i32 %261, i32* %9, align 4
  br label %262

262:                                              ; preds = %260, %255, %252
  %263 = load i32, i32* %9, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %262
  %266 = load i32*, i32** %7, align 8
  %267 = load i32, i32* @OP_If, align 4
  %268 = load i32, i32* %9, align 4
  %269 = call i32 @sqlite3VdbeAddOp1(i32* %266, i32 %267, i32 %268)
  store i32 %269, i32* %10, align 4
  %270 = load i32*, i32** %7, align 8
  %271 = call i32 @VdbeCoverage(i32* %270)
  br label %272

272:                                              ; preds = %265, %262
  store i32 0, i32* %8, align 4
  %273 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %273, i32 0, i32 3
  %275 = load %struct.AggInfo_col*, %struct.AggInfo_col** %274, align 8
  store %struct.AggInfo_col* %275, %struct.AggInfo_col** %12, align 8
  br label %276

276:                                              ; preds = %291, %272
  %277 = load i32, i32* %8, align 4
  %278 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = icmp slt i32 %277, %280
  br i1 %281, label %282, label %296

282:                                              ; preds = %276
  %283 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %284 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %285 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %288 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @sqlite3ExprCode(%struct.TYPE_28__* %283, i32 %286, i32 %289)
  br label %291

291:                                              ; preds = %282
  %292 = load i32, i32* %8, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %8, align 4
  %294 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %295 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %294, i32 1
  store %struct.AggInfo_col* %295, %struct.AggInfo_col** %12, align 8
  br label %276

296:                                              ; preds = %276
  %297 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %297, i32 0, i32 0
  store i32 0, i32* %298, align 8
  %299 = load i32, i32* %10, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %296
  %302 = load i32*, i32** %7, align 8
  %303 = load i32, i32* %10, align 4
  %304 = call i32 @sqlite3VdbeJumpHere(i32* %302, i32 %303)
  br label %305

305:                                              ; preds = %301, %296
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @IsWindowFunc(%struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3ExprIfFalse(%struct.TYPE_28__*, i32*, i32, i32) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @sqlite3ExprCodeExprList(%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @codeDistinct(%struct.TYPE_28__*, i64, i32, i32, i32) #1

declare dso_local i32* @sqlite3ExprCollSeq(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
