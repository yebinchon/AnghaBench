; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_windowFullScan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_windowFullScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"windowFullScan begin\00", align 1
@OP_Rowid = common dso_local global i32 0, align 4
@OP_Null = common dso_local global i32 0, align 4
@OP_SeekGE = common dso_local global i32 0, align 4
@OP_Gt = common dso_local global i32 0, align 4
@TK_CURRENT = common dso_local global i64 0, align 8
@OP_Eq = common dso_local global i32 0, align 4
@TK_NO = common dso_local global i64 0, align 8
@TK_TIES = common dso_local global i64 0, align 8
@OP_Compare = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@OP_Jump = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"windowFullScan end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @windowFullScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowFullScan(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %4, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %5, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @VdbeModuleComment(i32* bitcast ([21 x i8]* @.str to i32*))
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %15, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = icmp ne %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  br label %48

47:                                               ; preds = %1
  br label %48

48:                                               ; preds = %47, %41
  %49 = phi i32 [ %46, %41 ], [ 0, %47 ]
  store i32 %49, i32* %11, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @sqlite3VdbeMakeLabel(i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @sqlite3VdbeMakeLabel(i32* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @sqlite3GetTempReg(i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @sqlite3GetTempReg(i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %48
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @sqlite3GetTempRange(i32* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @sqlite3GetTempRange(i32* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %60, %48
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @OP_Rowid, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @sqlite3VdbeAddOp2(i32* %68, i32 %69, i32 %72, i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @windowReadPeerValues(%struct.TYPE_9__* %75, i32 %78, i32 %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %3, align 8
  br label %82

82:                                               ; preds = %92, %67
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = icmp ne %struct.TYPE_10__* %83, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @OP_Null, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @sqlite3VdbeAddOp2(i32* %86, i32 %87, i32 0, i32 %90)
  br label %92

92:                                               ; preds = %85
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 7
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %3, align 8
  br label %82

96:                                               ; preds = %82
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* @OP_SeekGE, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @sqlite3VdbeAddOp3(i32* %97, i32 %98, i32 %99, i32 %100, i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @VdbeCoverage(i32* %105)
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @sqlite3VdbeCurrentAddr(i32* %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* @OP_Rowid, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @sqlite3VdbeAddOp2(i32* %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* @OP_Gt, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @sqlite3VdbeAddOp3(i32* %114, i32 %115, i32 %118, i32 %119, i32 %120)
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @VdbeCoverageNeverNull(i32* %122)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TK_CURRENT, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %96
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* @OP_Eq, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @sqlite3VdbeAddOp3(i32* %130, i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @VdbeCoverageNeverNull(i32* %136)
  br label %213

138:                                              ; preds = %96
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @TK_NO, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %212

144:                                              ; preds = %138
  store i32 0, i32* %17, align 4
  store i32* null, i32** %18, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 6
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = icmp ne %struct.TYPE_11__* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32*, i32** %4, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 6
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = call i32* @sqlite3KeyInfoFromExprList(i32* %150, %struct.TYPE_11__* %153, i32 0, i32 0)
  store i32* %154, i32** %18, align 8
  br label %155

155:                                              ; preds = %149, %144
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @TK_TIES, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %155
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* @OP_Eq, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @sqlite3VdbeAddOp3(i32* %162, i32 %163, i32 %164, i32 0, i32 %165)
  store i32 %166, i32* %17, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = call i32 @VdbeCoverageNeverNull(i32* %167)
  br label %169

169:                                              ; preds = %161, %155
  %170 = load i32*, i32** %18, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %199

172:                                              ; preds = %169
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @windowReadPeerValues(%struct.TYPE_9__* %173, i32 %174, i32 %175)
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* @OP_Compare, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @sqlite3VdbeAddOp3(i32* %177, i32 %178, i32 %179, i32 %180, i32 %181)
  %183 = load i32*, i32** %6, align 8
  %184 = load i32*, i32** %18, align 8
  %185 = bitcast i32* %184 to i8*
  %186 = load i32, i32* @P4_KEYINFO, align 4
  %187 = call i32 @sqlite3VdbeAppendP4(i32* %183, i8* %185, i32 %186)
  %188 = load i32*, i32** %6, align 8
  %189 = call i32 @sqlite3VdbeCurrentAddr(i32* %188)
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %16, align 4
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* @OP_Jump, align 4
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %16, align 4
  %196 = call i32 @sqlite3VdbeAddOp3(i32* %191, i32 %192, i32 %193, i32 %194, i32 %195)
  %197 = load i32*, i32** %6, align 8
  %198 = call i32 @VdbeCoverageEqNe(i32* %197)
  br label %204

199:                                              ; preds = %169
  %200 = load i32*, i32** %6, align 8
  %201 = load i32, i32* @OP_Goto, align 4
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @sqlite3VdbeAddOp2(i32* %200, i32 %201, i32 0, i32 %202)
  br label %204

204:                                              ; preds = %199, %172
  %205 = load i32, i32* %17, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* %17, align 4
  %210 = call i32 @sqlite3VdbeJumpHere(i32* %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %204
  br label %212

212:                                              ; preds = %211, %138
  br label %213

213:                                              ; preds = %212, %129
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %216 = load i32, i32* %15, align 4
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @windowAggStep(%struct.TYPE_9__* %214, %struct.TYPE_10__* %215, i32 %216, i32 0, i32 %219)
  %221 = load i32*, i32** %6, align 8
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @sqlite3VdbeResolveLabel(i32* %221, i32 %222)
  %224 = load i32*, i32** %6, align 8
  %225 = load i32, i32* @OP_Next, align 4
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* %14, align 4
  %228 = call i32 @sqlite3VdbeAddOp2(i32* %224, i32 %225, i32 %226, i32 %227)
  %229 = load i32*, i32** %6, align 8
  %230 = call i32 @VdbeCoverage(i32* %229)
  %231 = load i32*, i32** %6, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sub nsw i32 %232, 1
  %234 = call i32 @sqlite3VdbeJumpHere(i32* %231, i32 %233)
  %235 = load i32*, i32** %6, align 8
  %236 = load i32, i32* %14, align 4
  %237 = add nsw i32 %236, 1
  %238 = call i32 @sqlite3VdbeJumpHere(i32* %235, i32 %237)
  %239 = load i32*, i32** %4, align 8
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @sqlite3ReleaseTempReg(i32* %239, i32 %240)
  %242 = load i32*, i32** %4, align 8
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @sqlite3ReleaseTempReg(i32* %242, i32 %243)
  %245 = load i32, i32* %11, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %213
  %248 = load i32*, i32** %4, align 8
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %11, align 4
  %251 = call i32 @sqlite3ReleaseTempRange(i32* %248, i32 %249, i32 %250)
  %252 = load i32*, i32** %4, align 8
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* %11, align 4
  %255 = call i32 @sqlite3ReleaseTempRange(i32* %252, i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %247, %213
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %258 = call i32 @windowAggFinal(%struct.TYPE_9__* %257, i32 1)
  %259 = load i32*, i32** %6, align 8
  %260 = call i32 @VdbeModuleComment(i32* bitcast ([19 x i8]* @.str.1 to i32*))
  ret void
}

declare dso_local i32 @VdbeModuleComment(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3GetTempReg(i32*) #1

declare dso_local i32 @sqlite3GetTempRange(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @windowReadPeerValues(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @VdbeCoverageNeverNull(i32*) #1

declare dso_local i32* @sqlite3KeyInfoFromExprList(i32*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, i8*, i32) #1

declare dso_local i32 @VdbeCoverageEqNe(i32*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @windowAggStep(%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(i32*, i32, i32) #1

declare dso_local i32 @windowAggFinal(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
