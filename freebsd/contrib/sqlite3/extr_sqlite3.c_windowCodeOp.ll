; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_windowCodeOp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_windowCodeOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, i32*, %struct.TYPE_18__*, i32* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i64, i64, i64, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@TK_ROWS = common dso_local global i64 0, align 8
@TK_UNBOUNDED = common dso_local global i64 0, align 8
@TK_RANGE = common dso_local global i64 0, align 8
@WINDOW_AGGSTEP = common dso_local global i32 0, align 4
@TK_FOLLOWING = common dso_local global i64 0, align 8
@OP_Le = common dso_local global i32 0, align 4
@OP_Ge = common dso_local global i32 0, align 4
@OP_Gt = common dso_local global i32 0, align 4
@OP_IfPos = common dso_local global i32 0, align 4
@OP_Rowid = common dso_local global i32 0, align 4
@TK_PRECEDING = common dso_local global i64 0, align 8
@OP_AddImm = common dso_local global i32 0, align 4
@OP_Delete = common dso_local global i32 0, align 4
@OPFLAG_SAVEPOSITION = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i32, i32)* @windowCodeOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @windowCodeOp(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %13, align 8
  store i32 0, i32* %14, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TK_ROWS, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %17, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @sqlite3VdbeMakeLabel(i32* %39)
  store i32 %40, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 129
  br i1 %42, label %43, label %59

43:                                               ; preds = %4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TK_UNBOUNDED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ false, %49 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  store i32 0, i32* %5, align 4
  br label %415

59:                                               ; preds = %43, %4
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %142

62:                                               ; preds = %59
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TK_RANGE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %133

68:                                               ; preds = %62
  %69 = load i32*, i32** %15, align 8
  %70 = call i32 @sqlite3VdbeCurrentAddr(i32* %69)
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 129
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @WINDOW_AGGSTEP, align 4
  %76 = icmp eq i32 %74, %75
  br label %77

77:                                               ; preds = %73, %68
  %78 = phi i1 [ true, %68 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 129
  br i1 %82, label %83, label %118

83:                                               ; preds = %77
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TK_FOLLOWING, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %83
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %91 = load i32, i32* @OP_Le, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @windowCodeRangeTest(%struct.TYPE_17__* %90, i32 %91, i32 %95, i32 %96, i32 %100, i32 %101)
  br label %117

103:                                              ; preds = %83
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %105 = load i32, i32* @OP_Ge, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @windowCodeRangeTest(%struct.TYPE_17__* %104, i32 %105, i32 %109, i32 %110, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %103, %89
  br label %132

118:                                              ; preds = %77
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %120 = load i32, i32* @OP_Gt, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @windowCodeRangeTest(%struct.TYPE_17__* %119, i32 %120, i32 %124, i32 %125, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %118, %117
  br label %141

133:                                              ; preds = %62
  %134 = load i32*, i32** %15, align 8
  %135 = load i32, i32* @OP_IfPos, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %18, align 4
  %138 = call i32 @sqlite3VdbeAddOp3(i32* %134, i32 %135, i32 %136, i32 %137, i32 1)
  %139 = load i32*, i32** %15, align 8
  %140 = call i32 @VdbeCoverage(i32* %139)
  br label %141

141:                                              ; preds = %133, %132
  br label %142

142:                                              ; preds = %141, %59
  %143 = load i32, i32* %7, align 4
  %144 = icmp eq i32 %143, 128
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %152 = call i32 @windowAggFinal(%struct.TYPE_17__* %151, i32 0)
  br label %153

153:                                              ; preds = %150, %145, %142
  %154 = load i32*, i32** %15, align 8
  %155 = call i32 @sqlite3VdbeCurrentAddr(i32* %154)
  store i32 %155, i32* %16, align 4
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %158, %161
  br i1 %162, label %163, label %225

163:                                              ; preds = %153
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %225

166:                                              ; preds = %163
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @TK_RANGE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %225

172:                                              ; preds = %166
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, 129
  br i1 %174, label %175, label %225

175:                                              ; preds = %172
  %176 = load i32*, i32** %12, align 8
  %177 = call i32 @sqlite3GetTempReg(i32* %176)
  store i32 %177, i32* %20, align 4
  %178 = load i32*, i32** %12, align 8
  %179 = call i32 @sqlite3GetTempReg(i32* %178)
  store i32 %179, i32* %21, align 4
  %180 = load i32*, i32** %15, align 8
  %181 = load i32, i32* @OP_Rowid, align 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %20, align 4
  %187 = call i32 @sqlite3VdbeAddOp2(i32* %180, i32 %181, i32 %185, i32 %186)
  %188 = load i32*, i32** %15, align 8
  %189 = load i32, i32* @OP_Rowid, align 4
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %21, align 4
  %195 = call i32 @sqlite3VdbeAddOp2(i32* %188, i32 %189, i32 %193, i32 %194)
  %196 = load i32*, i32** %15, align 8
  %197 = load i32, i32* @OP_Ge, align 4
  %198 = load i32, i32* %21, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* %20, align 4
  %201 = call i32 @sqlite3VdbeAddOp3(i32* %196, i32 %197, i32 %198, i32 %199, i32 %200)
  %202 = load i32*, i32** %15, align 8
  %203 = call i32 @VdbeCoverage(i32* %202)
  %204 = load i32*, i32** %12, align 8
  %205 = load i32, i32* %20, align 4
  %206 = call i32 @sqlite3ReleaseTempReg(i32* %204, i32 %205)
  %207 = load i32*, i32** %12, align 8
  %208 = load i32, i32* %21, align 4
  %209 = call i32 @sqlite3ReleaseTempReg(i32* %207, i32 %208)
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @TK_PRECEDING, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %221, label %215

215:                                              ; preds = %175
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @TK_FOLLOWING, align 8
  %220 = icmp eq i64 %218, %219
  br label %221

221:                                              ; preds = %215, %175
  %222 = phi i1 [ true, %175 ], [ %220, %215 ]
  %223 = zext i1 %222 to i32
  %224 = call i32 @assert(i32 %223)
  br label %225

225:                                              ; preds = %221, %172, %166, %163, %153
  %226 = load i32, i32* %7, align 4
  switch i32 %226, label %272 [
    i32 128, label %227
    i32 129, label %238
  ]

227:                                              ; preds = %225
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  store i32 %231, i32* %10, align 4
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %11, align 4
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %237 = call i32 @windowReturnOneRow(%struct.TYPE_17__* %236)
  br label %310

238:                                              ; preds = %225
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  store i32 %242, i32* %10, align 4
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %11, align 4
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %238
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @assert(i32 %254)
  %256 = load i32*, i32** %15, align 8
  %257 = load i32, i32* @OP_AddImm, align 4
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = trunc i64 %260 to i32
  %262 = call i32 @sqlite3VdbeAddOp2(i32* %256, i32 %257, i32 %261, i32 1)
  br label %271

263:                                              ; preds = %238
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %266 = load i32, i32* %10, align 4
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @windowAggStep(%struct.TYPE_17__* %264, %struct.TYPE_18__* %265, i32 %266, i32 1, i32 %269)
  br label %271

271:                                              ; preds = %263, %251
  br label %310

272:                                              ; preds = %225
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* @WINDOW_AGGSTEP, align 4
  %275 = icmp eq i32 %273, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 @assert(i32 %276)
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  store i32 %281, i32* %10, align 4
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %11, align 4
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %301

290:                                              ; preds = %272
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @assert(i32 %293)
  %295 = load i32*, i32** %15, align 8
  %296 = load i32, i32* @OP_AddImm, align 4
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @sqlite3VdbeAddOp2(i32* %295, i32 %296, i32 %299, i32 1)
  br label %309

301:                                              ; preds = %272
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %304 = load i32, i32* %10, align 4
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @windowAggStep(%struct.TYPE_17__* %302, %struct.TYPE_18__* %303, i32 %304, i32 0, i32 %307)
  br label %309

309:                                              ; preds = %301, %290
  br label %310

310:                                              ; preds = %309, %271, %227
  %311 = load i32, i32* %7, align 4
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp eq i32 %311, %314
  br i1 %315, label %316, label %324

316:                                              ; preds = %310
  %317 = load i32*, i32** %15, align 8
  %318 = load i32, i32* @OP_Delete, align 4
  %319 = load i32, i32* %10, align 4
  %320 = call i32 @sqlite3VdbeAddOp1(i32* %317, i32 %318, i32 %319)
  %321 = load i32*, i32** %15, align 8
  %322 = load i32, i32* @OPFLAG_SAVEPOSITION, align 4
  %323 = call i32 @sqlite3VdbeChangeP5(i32* %321, i32 %322)
  br label %324

324:                                              ; preds = %316, %310
  %325 = load i32, i32* %9, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %340

327:                                              ; preds = %324
  %328 = load i32*, i32** %15, align 8
  %329 = load i32, i32* @OP_Next, align 4
  %330 = load i32, i32* %10, align 4
  %331 = load i32*, i32** %15, align 8
  %332 = call i32 @sqlite3VdbeCurrentAddr(i32* %331)
  %333 = add nsw i32 %332, 2
  %334 = call i32 @sqlite3VdbeAddOp2(i32* %328, i32 %329, i32 %330, i32 %333)
  %335 = load i32*, i32** %15, align 8
  %336 = call i32 @VdbeCoverage(i32* %335)
  %337 = load i32*, i32** %15, align 8
  %338 = load i32, i32* @OP_Goto, align 4
  %339 = call i32 @sqlite3VdbeAddOp0(i32* %337, i32 %338)
  store i32 %339, i32* %14, align 4
  br label %360

340:                                              ; preds = %324
  %341 = load i32*, i32** %15, align 8
  %342 = load i32, i32* @OP_Next, align 4
  %343 = load i32, i32* %10, align 4
  %344 = load i32*, i32** %15, align 8
  %345 = call i32 @sqlite3VdbeCurrentAddr(i32* %344)
  %346 = add nsw i32 %345, 1
  %347 = load i32, i32* %17, align 4
  %348 = add nsw i32 %346, %347
  %349 = call i32 @sqlite3VdbeAddOp2(i32* %341, i32 %342, i32 %343, i32 %348)
  %350 = load i32*, i32** %15, align 8
  %351 = call i32 @VdbeCoverage(i32* %350)
  %352 = load i32, i32* %17, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %340
  %355 = load i32*, i32** %15, align 8
  %356 = load i32, i32* @OP_Goto, align 4
  %357 = load i32, i32* %18, align 4
  %358 = call i32 @sqlite3VdbeAddOp2(i32* %355, i32 %356, i32 0, i32 %357)
  br label %359

359:                                              ; preds = %354, %340
  br label %360

360:                                              ; preds = %359, %327
  %361 = load i32, i32* %17, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %402

363:                                              ; preds = %360
  %364 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %365 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %364, i32 0, i32 5
  %366 = load %struct.TYPE_19__*, %struct.TYPE_19__** %365, align 8
  %367 = icmp ne %struct.TYPE_19__* %366, null
  br i1 %367, label %368, label %374

368:                                              ; preds = %363
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i32 0, i32 5
  %371 = load %struct.TYPE_19__*, %struct.TYPE_19__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  br label %375

374:                                              ; preds = %363
  br label %375

375:                                              ; preds = %374, %368
  %376 = phi i32 [ %373, %368 ], [ 0, %374 ]
  store i32 %376, i32* %22, align 4
  %377 = load i32, i32* %22, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %375
  %380 = load i32*, i32** %12, align 8
  %381 = load i32, i32* %22, align 4
  %382 = call i32 @sqlite3GetTempRange(i32* %380, i32 %381)
  br label %384

383:                                              ; preds = %375
  br label %384

384:                                              ; preds = %383, %379
  %385 = phi i32 [ %382, %379 ], [ 0, %383 ]
  store i32 %385, i32* %23, align 4
  %386 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %387 = load i32, i32* %10, align 4
  %388 = load i32, i32* %23, align 4
  %389 = call i32 @windowReadPeerValues(%struct.TYPE_17__* %386, i32 %387, i32 %388)
  %390 = load i32*, i32** %12, align 8
  %391 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %392 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %391, i32 0, i32 5
  %393 = load %struct.TYPE_19__*, %struct.TYPE_19__** %392, align 8
  %394 = load i32, i32* %23, align 4
  %395 = load i32, i32* %11, align 4
  %396 = load i32, i32* %16, align 4
  %397 = call i32 @windowIfNewPeer(i32* %390, %struct.TYPE_19__* %393, i32 %394, i32 %395, i32 %396)
  %398 = load i32*, i32** %12, align 8
  %399 = load i32, i32* %23, align 4
  %400 = load i32, i32* %22, align 4
  %401 = call i32 @sqlite3ReleaseTempRange(i32* %398, i32 %399, i32 %400)
  br label %402

402:                                              ; preds = %384, %360
  %403 = load i32, i32* %19, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %410

405:                                              ; preds = %402
  %406 = load i32*, i32** %15, align 8
  %407 = load i32, i32* @OP_Goto, align 4
  %408 = load i32, i32* %19, align 4
  %409 = call i32 @sqlite3VdbeAddOp2(i32* %406, i32 %407, i32 0, i32 %408)
  br label %410

410:                                              ; preds = %405, %402
  %411 = load i32*, i32** %15, align 8
  %412 = load i32, i32* %18, align 4
  %413 = call i32 @sqlite3VdbeResolveLabel(i32* %411, i32 %412)
  %414 = load i32, i32* %14, align 4
  store i32 %414, i32* %5, align 4
  br label %415

415:                                              ; preds = %410, %55
  %416 = load i32, i32* %5, align 4
  ret i32 %416
}

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @windowCodeRangeTest(%struct.TYPE_17__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @windowAggFinal(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @sqlite3GetTempReg(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(i32*, i32) #1

declare dso_local i32 @windowReturnOneRow(%struct.TYPE_17__*) #1

declare dso_local i32 @windowAggStep(%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @sqlite3GetTempRange(i32*, i32) #1

declare dso_local i32 @windowReadPeerValues(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @windowIfNewPeer(i32*, %struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
