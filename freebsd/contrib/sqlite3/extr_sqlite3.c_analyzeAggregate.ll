; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_analyzeAggregate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_analyzeAggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_27__, %struct.TYPE_33__*, %struct.TYPE_34__* }
%struct.TYPE_27__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, %struct.AggInfo_func*, i32, %struct.TYPE_23__*, %struct.AggInfo_col* }
%struct.AggInfo_func = type { i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { %struct.TYPE_24__* }
%struct.AggInfo_col = type { i32, %struct.TYPE_24__*, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i32 }
%struct.TYPE_34__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_25__*, i8*, %struct.TYPE_31__, %struct.TYPE_29__, i32, i32, i32, %struct.TYPE_28__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32 }

@NC_UAggInfo = common dso_local global i32 0, align 4
@EP_TokenOnly = common dso_local global i32 0, align 4
@EP_Reduced = common dso_local global i32 0, align 4
@EP_NoReduce = common dso_local global i32 0, align 4
@WRC_Prune = common dso_local global i32 0, align 4
@NC_InAggFunc = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@EP_IntValue = common dso_local global i32 0, align 4
@EP_Distinct = common dso_local global i32 0, align 4
@WRC_Continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_24__*)* @analyzeAggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analyzeAggregate(%struct.TYPE_32__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.SrcList_item*, align 8
  %12 = alloca %struct.AggInfo_col*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.ExprList_item*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca %struct.AggInfo_func*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %21 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %7, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  store %struct.TYPE_34__* %27, %struct.TYPE_34__** %8, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %29, align 8
  store %struct.TYPE_33__* %30, %struct.TYPE_33__** %9, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %33, align 8
  store %struct.TYPE_25__* %34, %struct.TYPE_25__** %10, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NC_UAggInfo, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %413 [
    i32 130, label %44
    i32 128, label %44
    i32 129, label %258
  ]

44:                                               ; preds = %2, %2
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 130
  %49 = zext i1 %48 to i32
  %50 = call i32 @testcase(i32 %49)
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 128
  %55 = zext i1 %54 to i32
  %56 = call i32 @testcase(i32 %55)
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %58 = icmp ne %struct.TYPE_33__* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @ALWAYS(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %256

62:                                               ; preds = %44
  %63 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %63, i32 0, i32 1
  %65 = load %struct.SrcList_item*, %struct.SrcList_item** %64, align 8
  store %struct.SrcList_item* %65, %struct.SrcList_item** %11, align 8
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %250, %62
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %255

72:                                               ; preds = %66
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %74 = load i32, i32* @EP_TokenOnly, align 4
  %75 = load i32, i32* @EP_Reduced, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @ExprHasProperty(%struct.TYPE_24__* %73, i32 %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %86 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %249

89:                                               ; preds = %72
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 5
  %92 = load %struct.AggInfo_col*, %struct.AggInfo_col** %91, align 8
  store %struct.AggInfo_col* %92, %struct.AggInfo_col** %12, align 8
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %117, %89
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %93
  %100 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %101 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %99
  %108 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %109 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %122

116:                                              ; preds = %107, %99
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  %120 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %121 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %120, i32 1
  store %struct.AggInfo_col* %121, %struct.AggInfo_col** %12, align 8
  br label %93

122:                                              ; preds = %115, %93
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sge i32 %123, %126
  br i1 %127, label %128, label %235

128:                                              ; preds = %122
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %133 = call i32 @addAggInfoColumn(i32 %131, %struct.TYPE_25__* %132)
  store i32 %133, i32* %13, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %235

135:                                              ; preds = %128
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 5
  %138 = load %struct.AggInfo_col*, %struct.AggInfo_col** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %138, i64 %140
  store %struct.AggInfo_col* %141, %struct.AggInfo_col** %12, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 9
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %147 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 4
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %152 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %157 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %163 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %165 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %164, i32 0, i32 0
  store i32 -1, i32* %165, align 8
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %167 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %168 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %167, i32 0, i32 1
  store %struct.TYPE_24__* %166, %struct.TYPE_24__** %168, align 8
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 4
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %170, align 8
  %172 = icmp ne %struct.TYPE_23__* %171, null
  br i1 %172, label %173, label %222

173:                                              ; preds = %135
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %175, align 8
  store %struct.TYPE_23__* %176, %struct.TYPE_23__** %16, align 8
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 1
  %179 = load %struct.ExprList_item*, %struct.ExprList_item** %178, align 8
  store %struct.ExprList_item* %179, %struct.ExprList_item** %17, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %183

183:                                              ; preds = %216, %173
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %15, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %221

187:                                              ; preds = %183
  %188 = load %struct.ExprList_item*, %struct.ExprList_item** %17, align 8
  %189 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %188, i32 0, i32 0
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %189, align 8
  store %struct.TYPE_24__* %190, %struct.TYPE_24__** %18, align 8
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 128
  br i1 %194, label %195, label %215

195:                                              ; preds = %187
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 8
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %198, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %195
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %206, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %203
  %212 = load i32, i32* %14, align 4
  %213 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %214 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  br label %221

215:                                              ; preds = %203, %195, %187
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  %219 = load %struct.ExprList_item*, %struct.ExprList_item** %17, align 8
  %220 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %219, i32 1
  store %struct.ExprList_item* %220, %struct.ExprList_item** %17, align 8
  br label %183

221:                                              ; preds = %211, %183
  br label %222

222:                                              ; preds = %221, %135
  %223 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %224 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %222
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 8
  %232 = load %struct.AggInfo_col*, %struct.AggInfo_col** %12, align 8
  %233 = getelementptr inbounds %struct.AggInfo_col, %struct.AggInfo_col* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 8
  br label %234

234:                                              ; preds = %227, %222
  br label %235

235:                                              ; preds = %234, %128, %122
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %237 = load i32, i32* @EP_NoReduce, align 4
  %238 = call i32 @ExprSetVVAProperty(%struct.TYPE_24__* %236, i32 %237)
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 2
  store %struct.TYPE_25__* %239, %struct.TYPE_25__** %241, align 8
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 0
  store i32 130, i32* %243, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = inttoptr i64 %245 to i8*
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 3
  store i8* %246, i8** %248, align 8
  br label %255

249:                                              ; preds = %72
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %6, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %6, align 4
  %253 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %254 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %253, i32 1
  store %struct.SrcList_item* %254, %struct.SrcList_item** %11, align 8
  br label %66

255:                                              ; preds = %235, %66
  br label %256

256:                                              ; preds = %255, %44
  %257 = load i32, i32* @WRC_Prune, align 4
  store i32 %257, i32* %3, align 4
  br label %415

258:                                              ; preds = %2
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @NC_InAggFunc, align 4
  %263 = and i32 %261, %262
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %411

265:                                              ; preds = %258
  %266 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %268, %271
  br i1 %272, label %273, label %411

273:                                              ; preds = %265
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 2
  %276 = load %struct.AggInfo_func*, %struct.AggInfo_func** %275, align 8
  store %struct.AggInfo_func* %276, %struct.AggInfo_func** %19, align 8
  store i32 0, i32* %6, align 4
  br label %277

277:                                              ; preds = %292, %273
  %278 = load i32, i32* %6, align 4
  %279 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp slt i32 %278, %281
  br i1 %282, label %283, label %297

283:                                              ; preds = %277
  %284 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %285 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %284, i32 0, i32 3
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %285, align 8
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %288 = call i32 @sqlite3ExprCompare(i32 0, %struct.TYPE_24__* %286, %struct.TYPE_24__* %287, i32 -1)
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  br label %297

291:                                              ; preds = %283
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %6, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %6, align 4
  %295 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %296 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %295, i32 1
  store %struct.AggInfo_func* %296, %struct.AggInfo_func** %19, align 8
  br label %277

297:                                              ; preds = %290, %277
  %298 = load i32, i32* %6, align 4
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = icmp sge i32 %298, %301
  br i1 %302, label %303, label %389

303:                                              ; preds = %297
  %304 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @ENC(i32 %306)
  store i32 %307, i32* %20, align 4
  %308 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %312 = call i32 @addAggInfoFunc(i32 %310, %struct.TYPE_25__* %311)
  store i32 %312, i32* %6, align 4
  %313 = load i32, i32* %6, align 4
  %314 = icmp sge i32 %313, 0
  br i1 %314, label %315, label %388

315:                                              ; preds = %303
  %316 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %317 = load i32, i32* @EP_xIsSelect, align 4
  %318 = call i32 @ExprHasProperty(%struct.TYPE_24__* %316, i32 %317)
  %319 = icmp ne i32 %318, 0
  %320 = xor i1 %319, true
  %321 = zext i1 %320 to i32
  %322 = call i32 @assert(i32 %321)
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 2
  %325 = load %struct.AggInfo_func*, %struct.AggInfo_func** %324, align 8
  %326 = load i32, i32* %6, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %325, i64 %327
  store %struct.AggInfo_func* %328, %struct.AggInfo_func** %19, align 8
  %329 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %330 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %331 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %330, i32 0, i32 3
  store %struct.TYPE_24__* %329, %struct.TYPE_24__** %331, align 8
  %332 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %333, align 4
  %336 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %337 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %336, i32 0, i32 2
  store i32 %335, i32* %337, align 8
  %338 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %339 = load i32, i32* @EP_IntValue, align 4
  %340 = call i32 @ExprHasProperty(%struct.TYPE_24__* %338, i32 %339)
  %341 = icmp ne i32 %340, 0
  %342 = xor i1 %341, true
  %343 = zext i1 %342 to i32
  %344 = call i32 @assert(i32 %343)
  %345 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %352, i32 0, i32 4
  %354 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_30__*, %struct.TYPE_30__** %354, align 8
  %356 = icmp ne %struct.TYPE_30__* %355, null
  br i1 %356, label %357, label %364

357:                                              ; preds = %315
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 4
  %360 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %359, i32 0, i32 0
  %361 = load %struct.TYPE_30__*, %struct.TYPE_30__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  br label %365

364:                                              ; preds = %315
  br label %365

365:                                              ; preds = %364, %357
  %366 = phi i32 [ %363, %357 ], [ 0, %364 ]
  %367 = load i32, i32* %20, align 4
  %368 = call i32 @sqlite3FindFunction(i32 %347, i32 %351, i32 %366, i32 %367, i32 0)
  %369 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %370 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %369, i32 0, i32 1
  store i32 %368, i32* %370, align 4
  %371 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* @EP_Distinct, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %365
  %378 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %379, align 4
  %382 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %383 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %382, i32 0, i32 0
  store i32 %380, i32* %383, align 8
  br label %387

384:                                              ; preds = %365
  %385 = load %struct.AggInfo_func*, %struct.AggInfo_func** %19, align 8
  %386 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %385, i32 0, i32 0
  store i32 -1, i32* %386, align 8
  br label %387

387:                                              ; preds = %384, %377
  br label %388

388:                                              ; preds = %387, %303
  br label %389

389:                                              ; preds = %388, %297
  %390 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %391 = load i32, i32* @EP_TokenOnly, align 4
  %392 = load i32, i32* @EP_Reduced, align 4
  %393 = or i32 %391, %392
  %394 = call i32 @ExprHasProperty(%struct.TYPE_24__* %390, i32 %393)
  %395 = icmp ne i32 %394, 0
  %396 = xor i1 %395, true
  %397 = zext i1 %396 to i32
  %398 = call i32 @assert(i32 %397)
  %399 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %400 = load i32, i32* @EP_NoReduce, align 4
  %401 = call i32 @ExprSetVVAProperty(%struct.TYPE_24__* %399, i32 %400)
  %402 = load i32, i32* %6, align 4
  %403 = sext i32 %402 to i64
  %404 = inttoptr i64 %403 to i8*
  %405 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %405, i32 0, i32 3
  store i8* %404, i8** %406, align 8
  %407 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %408 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %408, i32 0, i32 2
  store %struct.TYPE_25__* %407, %struct.TYPE_25__** %409, align 8
  %410 = load i32, i32* @WRC_Prune, align 4
  store i32 %410, i32* %3, align 4
  br label %415

411:                                              ; preds = %265, %258
  %412 = load i32, i32* @WRC_Continue, align 4
  store i32 %412, i32* %3, align 4
  br label %415

413:                                              ; preds = %2
  %414 = load i32, i32* @WRC_Continue, align 4
  store i32 %414, i32* %3, align 4
  br label %415

415:                                              ; preds = %413, %411, %389, %256
  %416 = load i32, i32* %3, align 4
  ret i32 %416
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @ALWAYS(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @addAggInfoColumn(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @ExprSetVVAProperty(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3ExprCompare(i32, %struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ENC(i32) #1

declare dso_local i32 @addAggInfoFunc(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3FindFunction(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
