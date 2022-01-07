; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_substExpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_substExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i64, i64, %struct.TYPE_30__*, i64, %struct.TYPE_32__* }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_32__ = type { i64, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i64, i64, i64, i64, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_37__*, %struct.TYPE_37__* }
%struct.TYPE_34__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, i32, %struct.TYPE_37__* }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_38__ = type { i8* }

@EP_FromJoin = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@TK_NULL = common dso_local global i64 0, align 8
@TK_IF_NULL_ROW = common dso_local global i64 0, align 8
@EP_Subquery = common dso_local global i32 0, align 4
@EP_CanBeNull = common dso_local global i32 0, align 4
@TK_COLLATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"BINARY\00", align 1
@EP_Collate = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@EP_WinFunc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_37__* (%struct.TYPE_36__*, %struct.TYPE_37__*)* @substExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_37__* @substExpr(%struct.TYPE_36__* %0, %struct.TYPE_37__* %1) #0 {
  %3 = alloca %struct.TYPE_37__*, align 8
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca %struct.TYPE_37__*, align 8
  %8 = alloca %struct.TYPE_37__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_38__*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %4, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %5, align 8
  %12 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %13 = icmp eq %struct.TYPE_37__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %3, align 8
  br label %293

15:                                               ; preds = %2
  %16 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %17 = load i32, i32* @EP_FromJoin, align 4
  %18 = call i64 @ExprHasProperty(%struct.TYPE_37__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %20, %15
  %35 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TK_COLUMN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %210

40:                                               ; preds = %34
  %41 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %210

48:                                               ; preds = %40
  %49 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i64, i64* @TK_NULL, align 8
  %55 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %209

57:                                               ; preds = %48
  %58 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %61, align 8
  %63 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_37__*, %struct.TYPE_37__** %67, align 8
  store %struct.TYPE_37__* %68, %struct.TYPE_37__** %7, align 8
  %69 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %70, align 8
  %72 = icmp ne %struct.TYPE_32__* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %57
  %74 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %76, %81
  br label %83

83:                                               ; preds = %73, %57
  %84 = phi i1 [ false, %57 ], [ %82, %73 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %88, align 8
  %90 = icmp eq %struct.TYPE_37__* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %94 = call i64 @sqlite3ExprIsVector(%struct.TYPE_37__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %83
  %97 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %98, align 8
  %100 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %101 = call i32 @sqlite3VectorErrorMsg(%struct.TYPE_30__* %99, %struct.TYPE_37__* %100)
  br label %208

102:                                              ; preds = %83
  %103 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  store i32* %107, i32** %9, align 8
  %108 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %102
  %113 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TK_COLUMN, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %112
  %119 = call i32 @memset(%struct.TYPE_37__* %8, i32 0, i32 64)
  %120 = load i64, i64* @TK_IF_NULL_ROW, align 8
  %121 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 1
  store i64 %120, i64* %121, align 8
  %122 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 7
  store %struct.TYPE_37__* %122, %struct.TYPE_37__** %123, align 8
  %124 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 2
  store i64 %126, i64* %127, align 8
  store %struct.TYPE_37__* %8, %struct.TYPE_37__** %7, align 8
  br label %128

128:                                              ; preds = %118, %112, %102
  %129 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %130 = load i32, i32* @EP_Subquery, align 4
  %131 = call i64 @ExprHasProperty(%struct.TYPE_37__* %129, i32 %130)
  %132 = call i32 @testcase(i64 %131)
  %133 = load i32*, i32** %9, align 8
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %135 = call %struct.TYPE_37__* @sqlite3ExprDup(i32* %133, %struct.TYPE_37__* %134, i32 0)
  store %struct.TYPE_37__* %135, %struct.TYPE_37__** %6, align 8
  %136 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %137 = icmp ne %struct.TYPE_37__* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %128
  %139 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %145 = load i32, i32* @EP_CanBeNull, align 4
  %146 = call i32 @ExprSetProperty(%struct.TYPE_37__* %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %138, %128
  %148 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %149 = icmp ne %struct.TYPE_37__* %148, null
  br i1 %149, label %150, label %164

150:                                              ; preds = %147
  %151 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %152 = load i32, i32* @EP_FromJoin, align 4
  %153 = call i64 @ExprHasProperty(%struct.TYPE_37__* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %162 = load i32, i32* @EP_FromJoin, align 4
  %163 = call i32 @ExprSetProperty(%struct.TYPE_37__* %161, i32 %162)
  br label %164

164:                                              ; preds = %155, %150, %147
  %165 = load i32*, i32** %9, align 8
  %166 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %167 = call i32 @sqlite3ExprDelete(i32* %165, %struct.TYPE_37__* %166)
  %168 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  store %struct.TYPE_37__* %168, %struct.TYPE_37__** %5, align 8
  %169 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %170 = icmp ne %struct.TYPE_37__* %169, null
  br i1 %170, label %171, label %207

171:                                              ; preds = %164
  %172 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @TK_COLUMN, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %203

177:                                              ; preds = %171
  %178 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @TK_COLLATE, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %203

183:                                              ; preds = %177
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_30__*, %struct.TYPE_30__** %185, align 8
  %187 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %188 = call %struct.TYPE_38__* @sqlite3ExprCollSeq(%struct.TYPE_30__* %186, %struct.TYPE_37__* %187)
  store %struct.TYPE_38__* %188, %struct.TYPE_38__** %10, align 8
  %189 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %190, align 8
  %192 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %193 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %194 = icmp ne %struct.TYPE_38__* %193, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %183
  %196 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  br label %200

199:                                              ; preds = %183
  br label %200

200:                                              ; preds = %199, %195
  %201 = phi i8* [ %198, %195 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %199 ]
  %202 = call %struct.TYPE_37__* @sqlite3ExprAddCollateString(%struct.TYPE_30__* %191, %struct.TYPE_37__* %192, i8* %201)
  store %struct.TYPE_37__* %202, %struct.TYPE_37__** %5, align 8
  br label %203

203:                                              ; preds = %200, %177, %171
  %204 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %205 = load i32, i32* @EP_Collate, align 4
  %206 = call i32 @ExprClearProperty(%struct.TYPE_37__* %204, i32 %205)
  br label %207

207:                                              ; preds = %203, %164
  br label %208

208:                                              ; preds = %207, %96
  br label %209

209:                                              ; preds = %208, %53
  br label %291

210:                                              ; preds = %40, %34
  %211 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @TK_IF_NULL_ROW, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %230

216:                                              ; preds = %210
  %217 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp eq i64 %219, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %216
  %225 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %228, i32 0, i32 2
  store i64 %227, i64* %229, align 8
  br label %230

230:                                              ; preds = %224, %216, %210
  %231 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %232 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %232, i32 0, i32 7
  %234 = load %struct.TYPE_37__*, %struct.TYPE_37__** %233, align 8
  %235 = call %struct.TYPE_37__* @substExpr(%struct.TYPE_36__* %231, %struct.TYPE_37__* %234)
  %236 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %236, i32 0, i32 7
  store %struct.TYPE_37__* %235, %struct.TYPE_37__** %237, align 8
  %238 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %239 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %239, i32 0, i32 6
  %241 = load %struct.TYPE_37__*, %struct.TYPE_37__** %240, align 8
  %242 = call %struct.TYPE_37__* @substExpr(%struct.TYPE_36__* %238, %struct.TYPE_37__* %241)
  %243 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %243, i32 0, i32 6
  store %struct.TYPE_37__* %242, %struct.TYPE_37__** %244, align 8
  %245 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %246 = load i32, i32* @EP_xIsSelect, align 4
  %247 = call i64 @ExprHasProperty(%struct.TYPE_37__* %245, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %230
  %250 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %251 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @substSelect(%struct.TYPE_36__* %250, i32 %254, i32 1)
  br label %263

256:                                              ; preds = %230
  %257 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %258 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %258, i32 0, i32 5
  %260 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @substExprList(%struct.TYPE_36__* %257, i32 %261)
  br label %263

263:                                              ; preds = %256, %249
  %264 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %265 = load i32, i32* @EP_WinFunc, align 4
  %266 = call i64 @ExprHasProperty(%struct.TYPE_37__* %264, i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %290

268:                                              ; preds = %263
  %269 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_35__*, %struct.TYPE_35__** %271, align 8
  store %struct.TYPE_35__* %272, %struct.TYPE_35__** %11, align 8
  %273 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %274 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_37__*, %struct.TYPE_37__** %275, align 8
  %277 = call %struct.TYPE_37__* @substExpr(%struct.TYPE_36__* %273, %struct.TYPE_37__* %276)
  %278 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %278, i32 0, i32 2
  store %struct.TYPE_37__* %277, %struct.TYPE_37__** %279, align 8
  %280 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %281 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @substExprList(%struct.TYPE_36__* %280, i32 %283)
  %285 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %286 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %287 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @substExprList(%struct.TYPE_36__* %285, i32 %288)
  br label %290

290:                                              ; preds = %268, %263
  br label %291

291:                                              ; preds = %290, %209
  %292 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  store %struct.TYPE_37__* %292, %struct.TYPE_37__** %3, align 8
  br label %293

293:                                              ; preds = %291, %14
  %294 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  ret %struct.TYPE_37__* %294
}

declare dso_local i64 @ExprHasProperty(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3ExprIsVector(%struct.TYPE_37__*) #1

declare dso_local i32 @sqlite3VectorErrorMsg(%struct.TYPE_30__*, %struct.TYPE_37__*) #1

declare dso_local i32 @memset(%struct.TYPE_37__*, i32, i32) #1

declare dso_local i32 @testcase(i64) #1

declare dso_local %struct.TYPE_37__* @sqlite3ExprDup(i32*, %struct.TYPE_37__*, i32) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(i32*, %struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_38__* @sqlite3ExprCollSeq(%struct.TYPE_30__*, %struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_37__* @sqlite3ExprAddCollateString(%struct.TYPE_30__*, %struct.TYPE_37__*, i8*) #1

declare dso_local i32 @ExprClearProperty(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @substSelect(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @substExprList(%struct.TYPE_36__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
