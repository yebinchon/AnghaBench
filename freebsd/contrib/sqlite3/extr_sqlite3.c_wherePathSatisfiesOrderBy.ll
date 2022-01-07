; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_wherePathSatisfiesOrderBy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_wherePathSatisfiesOrderBy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i32, %struct.TYPE_46__*, i32, %struct.TYPE_49__* }
%struct.TYPE_46__ = type { i32* }
%struct.TYPE_49__ = type { %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_42__ = type { i32, %struct.TYPE_55__* }
%struct.TYPE_55__ = type { i32, %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i64, i32, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_39__** }
%struct.TYPE_39__ = type { i32, i32, i64, i32, i32, %struct.TYPE_54__, %struct.TYPE_37__** }
%struct.TYPE_54__ = type { %struct.TYPE_53__, %struct.TYPE_45__ }
%struct.TYPE_53__ = type { i32, i32, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32, i32, i32*, i32*, i32*, %struct.TYPE_52__*, %struct.TYPE_48__*, i64 }
%struct.TYPE_52__ = type { %struct.TYPE_51__* }
%struct.TYPE_51__ = type { %struct.TYPE_43__* }
%struct.TYPE_48__ = type { i32, %struct.TYPE_50__* }
%struct.TYPE_50__ = type { i64 }
%struct.TYPE_45__ = type { i64 }
%struct.TYPE_37__ = type { i32, %struct.TYPE_43__* }
%struct.TYPE_44__ = type { i32 }

@SQLITE_OrderByIdxJoin = common dso_local global i32 0, align 4
@BMS = common dso_local global i32 0, align 4
@WO_EQ = common dso_local global i32 0, align 4
@WO_IS = common dso_local global i32 0, align 4
@WO_ISNULL = common dso_local global i32 0, align 4
@WHERE_ORDERBY_LIMIT = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
@WHERE_DISTINCTBY = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@TK_IS = common dso_local global i64 0, align 8
@WHERE_ONEROW = common dso_local global i32 0, align 4
@WHERE_IPK = common dso_local global i32 0, align 4
@XN_ROWID = common dso_local global i32 0, align 4
@WHERE_SKIPSCAN = common dso_local global i32 0, align 4
@KEYINFO_ORDER_DESC = common dso_local global i32 0, align 4
@WHERE_GROUPBY = common dso_local global i32 0, align 4
@KEYINFO_ORDER_BIGNULL = common dso_local global i32 0, align 4
@WHERE_BIGNULL_SORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_40__*, %struct.TYPE_42__*, %struct.TYPE_38__*, i32, i32, %struct.TYPE_39__*, i32*)* @wherePathSatisfiesOrderBy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wherePathSatisfiesOrderBy(%struct.TYPE_40__* %0, %struct.TYPE_42__* %1, %struct.TYPE_38__* %2, i32 %3, i32 %4, %struct.TYPE_39__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_40__*, align 8
  %10 = alloca %struct.TYPE_42__*, align 8
  %11 = alloca %struct.TYPE_38__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_39__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
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
  %31 = alloca %struct.TYPE_39__*, align 8
  %32 = alloca %struct.TYPE_37__*, align 8
  %33 = alloca %struct.TYPE_43__*, align 8
  %34 = alloca %struct.TYPE_44__*, align 8
  %35 = alloca %struct.TYPE_41__*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.TYPE_43__*, align 8
  %44 = alloca %struct.TYPE_43__*, align 8
  %45 = alloca %struct.TYPE_43__*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %9, align 8
  store %struct.TYPE_42__* %1, %struct.TYPE_42__** %10, align 8
  store %struct.TYPE_38__* %2, %struct.TYPE_38__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_39__* %5, %struct.TYPE_39__** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %31, align 8
  %48 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_46__*, %struct.TYPE_46__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %36, align 8
  store i32 0, i32* %37, align 4
  %53 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %54 = icmp ne %struct.TYPE_42__* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %7
  %60 = load i32*, i32** %36, align 8
  %61 = load i32, i32* @SQLITE_OrderByIdxJoin, align 4
  %62 = call i64 @OptimizationDisabled(i32* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %951

65:                                               ; preds = %59, %7
  %66 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %25, align 4
  %69 = load i32, i32* %25, align 4
  %70 = load i32, i32* @BMS, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp eq i32 %69, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @testcase(i32 %73)
  %75 = load i32, i32* %25, align 4
  %76 = load i32, i32* @BMS, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %951

80:                                               ; preds = %65
  store i32 1, i32* %19, align 4
  %81 = load i32, i32* %25, align 4
  %82 = call i32 @MASKBIT(i32 %81)
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %38, align 4
  store i32 0, i32* %39, align 4
  store i32 0, i32* %40, align 4
  %84 = load i32, i32* @WO_EQ, align 4
  %85 = load i32, i32* @WO_IS, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @WO_ISNULL, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @WHERE_ORDERBY_LIMIT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %80
  %94 = load i32, i32* @WO_IN, align 4
  %95 = load i32, i32* %22, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %22, align 4
  br label %97

97:                                               ; preds = %93, %80
  store i32 0, i32* %26, align 4
  br label %98

98:                                               ; preds = %916, %97
  %99 = load i32, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i32, i32* %37, align 4
  %103 = load i32, i32* %38, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* %26, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp sle i32 %106, %107
  br label %109

109:                                              ; preds = %105, %101, %98
  %110 = phi i1 [ false, %101 ], [ false, %98 ], [ %108, %105 ]
  br i1 %110, label %111, label %919

111:                                              ; preds = %109
  %112 = load i32, i32* %26, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %116 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %40, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %40, align 4
  br label %120

120:                                              ; preds = %114, %111
  %121 = load i32, i32* %26, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %120
  %125 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %126, align 8
  %128 = load i32, i32* %26, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %127, i64 %129
  %131 = load %struct.TYPE_39__*, %struct.TYPE_39__** %130, align 8
  store %struct.TYPE_39__* %131, %struct.TYPE_39__** %31, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @WHERE_ORDERBY_LIMIT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  br label %916

137:                                              ; preds = %124
  br label %140

138:                                              ; preds = %120
  %139 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  store %struct.TYPE_39__* %139, %struct.TYPE_39__** %31, align 8
  br label %140

140:                                              ; preds = %138, %137
  %141 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %142 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %140
  %148 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %149 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i32, i32* %38, align 4
  store i32 %155, i32* %37, align 4
  br label %156

156:                                              ; preds = %154, %147
  br label %919

157:                                              ; preds = %140
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* @WHERE_DISTINCTBY, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %164 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  br label %167

167:                                              ; preds = %162, %157
  br label %168

168:                                              ; preds = %167
  %169 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_49__*, %struct.TYPE_49__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_47__*, %struct.TYPE_47__** %172, align 8
  %174 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %175 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %173, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %29, align 4
  store i32 0, i32* %27, align 4
  br label %180

180:                                              ; preds = %316, %168
  %181 = load i32, i32* %27, align 4
  %182 = load i32, i32* %25, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %319

184:                                              ; preds = %180
  %185 = load i32, i32* %27, align 4
  %186 = call i32 @MASKBIT(i32 %185)
  %187 = load i32, i32* %37, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %316

191:                                              ; preds = %184
  %192 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_55__*, %struct.TYPE_55__** %193, align 8
  %195 = load i32, i32* %27, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_43__*, %struct.TYPE_43__** %198, align 8
  %200 = call %struct.TYPE_43__* @sqlite3ExprSkipCollateAndLikely(%struct.TYPE_43__* %199)
  store %struct.TYPE_43__* %200, %struct.TYPE_43__** %33, align 8
  %201 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %202 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @TK_COLUMN, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %191
  br label %316

207:                                              ; preds = %191
  %208 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %209 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %29, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  br label %316

214:                                              ; preds = %207
  %215 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %215, i32 0, i32 2
  %217 = load i32, i32* %29, align 4
  %218 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %219 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %40, align 4
  %222 = xor i32 %221, -1
  %223 = load i32, i32* %22, align 4
  %224 = call %struct.TYPE_37__* @sqlite3WhereFindTerm(i32* %216, i32 %217, i32 %220, i32 %222, i32 %223, i32 0)
  store %struct.TYPE_37__* %224, %struct.TYPE_37__** %32, align 8
  %225 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %226 = icmp eq %struct.TYPE_37__* %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %214
  br label %316

228:                                              ; preds = %214
  %229 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %230 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @WO_IN, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %269

234:                                              ; preds = %228
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* @WHERE_ORDERBY_LIMIT, align 4
  %237 = and i32 %235, %236
  %238 = call i32 @assert(i32 %237)
  store i32 0, i32* %28, align 4
  br label %239

239:                                              ; preds = %258, %234
  %240 = load i32, i32* %28, align 4
  %241 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %242 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = icmp slt i32 %240, %243
  br i1 %244, label %245, label %255

245:                                              ; preds = %239
  %246 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %247 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %248 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %247, i32 0, i32 6
  %249 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %248, align 8
  %250 = load i32, i32* %28, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %249, i64 %251
  %253 = load %struct.TYPE_37__*, %struct.TYPE_37__** %252, align 8
  %254 = icmp ne %struct.TYPE_37__* %246, %253
  br label %255

255:                                              ; preds = %245, %239
  %256 = phi i1 [ false, %239 ], [ %254, %245 ]
  br i1 %256, label %257, label %261

257:                                              ; preds = %255
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %28, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %28, align 4
  br label %239

261:                                              ; preds = %255
  %262 = load i32, i32* %28, align 4
  %263 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %264 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = icmp sge i32 %262, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  br label %316

268:                                              ; preds = %261
  br label %269

269:                                              ; preds = %268, %228
  %270 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %271 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @WO_EQ, align 4
  %274 = load i32, i32* @WO_IS, align 4
  %275 = or i32 %273, %274
  %276 = and i32 %272, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %311

278:                                              ; preds = %269
  %279 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %280 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = icmp sge i32 %281, 0
  br i1 %282, label %283, label %311

283:                                              ; preds = %278
  %284 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_46__*, %struct.TYPE_46__** %285, align 8
  %287 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_55__*, %struct.TYPE_55__** %288, align 8
  %290 = load i32, i32* %27, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_43__*, %struct.TYPE_43__** %293, align 8
  %295 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %296 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_43__*, %struct.TYPE_43__** %296, align 8
  %298 = call i64 @sqlite3ExprCollSeqMatch(%struct.TYPE_46__* %286, %struct.TYPE_43__* %294, %struct.TYPE_43__* %297)
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %283
  br label %316

301:                                              ; preds = %283
  %302 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %303 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_43__*, %struct.TYPE_43__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @TK_IS, align 8
  %308 = icmp eq i64 %306, %307
  %309 = zext i1 %308 to i32
  %310 = call i32 @testcase(i32 %309)
  br label %311

311:                                              ; preds = %301, %278, %269
  %312 = load i32, i32* %27, align 4
  %313 = call i32 @MASKBIT(i32 %312)
  %314 = load i32, i32* %37, align 4
  %315 = or i32 %314, %313
  store i32 %315, i32* %37, align 4
  br label %316

316:                                              ; preds = %311, %300, %267, %227, %213, %206, %190
  %317 = load i32, i32* %27, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %27, align 4
  br label %180

319:                                              ; preds = %180
  %320 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %321 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @WHERE_ONEROW, align 4
  %324 = and i32 %322, %323
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %859

326:                                              ; preds = %319
  %327 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %328 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @WHERE_IPK, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %326
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %35, align 8
  store i32 0, i32* %23, align 4
  store i32 1, i32* %24, align 4
  br label %404

334:                                              ; preds = %326
  %335 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %336 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %335, i32 0, i32 5
  %337 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %337, i32 0, i32 2
  %339 = load %struct.TYPE_41__*, %struct.TYPE_41__** %338, align 8
  store %struct.TYPE_41__* %339, %struct.TYPE_41__** %35, align 8
  %340 = icmp eq %struct.TYPE_41__* %339, null
  br i1 %340, label %346, label %341

341:                                              ; preds = %334
  %342 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %343 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %342, i32 0, i32 7
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %341, %334
  store i32 0, i32* %8, align 4
  br label %951

347:                                              ; preds = %341
  %348 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %349 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  store i32 %350, i32* %23, align 4
  %351 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %352 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* %24, align 4
  %354 = load i32, i32* %24, align 4
  %355 = load i32, i32* %23, align 4
  %356 = add nsw i32 %355, 1
  %357 = icmp eq i32 %354, %356
  br i1 %357, label %365, label %358

358:                                              ; preds = %347
  %359 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %360 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %359, i32 0, i32 6
  %361 = load %struct.TYPE_48__*, %struct.TYPE_48__** %360, align 8
  %362 = call i32 @HasRowid(%struct.TYPE_48__* %361)
  %363 = icmp ne i32 %362, 0
  %364 = xor i1 %363, true
  br label %365

365:                                              ; preds = %358, %347
  %366 = phi i1 [ true, %347 ], [ %364, %358 ]
  %367 = zext i1 %366 to i32
  %368 = call i32 @assert(i32 %367)
  %369 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %370 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %369, i32 0, i32 2
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %24, align 4
  %373 = sub nsw i32 %372, 1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %371, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @XN_ROWID, align 4
  %378 = icmp eq i32 %376, %377
  br i1 %378, label %386, label %379

379:                                              ; preds = %365
  %380 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %381 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %380, i32 0, i32 6
  %382 = load %struct.TYPE_48__*, %struct.TYPE_48__** %381, align 8
  %383 = call i32 @HasRowid(%struct.TYPE_48__* %382)
  %384 = icmp ne i32 %383, 0
  %385 = xor i1 %384, true
  br label %386

386:                                              ; preds = %379, %365
  %387 = phi i1 [ true, %365 ], [ %385, %379 ]
  %388 = zext i1 %387 to i32
  %389 = call i32 @assert(i32 %388)
  %390 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %391 = call i64 @IsUniqueIndex(%struct.TYPE_41__* %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %400

393:                                              ; preds = %386
  %394 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %395 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* @WHERE_SKIPSCAN, align 4
  %398 = and i32 %396, %397
  %399 = icmp eq i32 %398, 0
  br label %400

400:                                              ; preds = %393, %386
  %401 = phi i1 [ false, %386 ], [ %399, %393 ]
  %402 = zext i1 %401 to i32
  store i32 %402, i32* %19, align 4
  br label %403

403:                                              ; preds = %400
  br label %404

404:                                              ; preds = %403, %333
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %28, align 4
  br label %405

405:                                              ; preds = %847, %404
  %406 = load i32, i32* %28, align 4
  %407 = load i32, i32* %24, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %850

409:                                              ; preds = %405
  store i32 1, i32* %41, align 4
  %410 = load i32, i32* %28, align 4
  %411 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %412 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %411, i32 0, i32 5
  %413 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = icmp sge i32 %410, %415
  br i1 %416, label %434, label %417

417:                                              ; preds = %409
  %418 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %419 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %418, i32 0, i32 6
  %420 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %419, align 8
  %421 = load i32, i32* %28, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %420, i64 %422
  %424 = load %struct.TYPE_37__*, %struct.TYPE_37__** %423, align 8
  %425 = icmp eq %struct.TYPE_37__* %424, null
  %426 = zext i1 %425 to i32
  %427 = load i32, i32* %28, align 4
  %428 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %429 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %428, i32 0, i32 4
  %430 = load i32, i32* %429, align 4
  %431 = icmp slt i32 %427, %430
  %432 = zext i1 %431 to i32
  %433 = icmp eq i32 %426, %432
  br label %434

434:                                              ; preds = %417, %409
  %435 = phi i1 [ true, %409 ], [ %433, %417 ]
  %436 = zext i1 %435 to i32
  %437 = call i32 @assert(i32 %436)
  %438 = load i32, i32* %28, align 4
  %439 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %440 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %439, i32 0, i32 5
  %441 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = icmp slt i32 %438, %443
  br i1 %444, label %445, label %542

445:                                              ; preds = %434
  %446 = load i32, i32* %28, align 4
  %447 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %448 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %447, i32 0, i32 4
  %449 = load i32, i32* %448, align 4
  %450 = icmp sge i32 %446, %449
  br i1 %450, label %451, label %542

451:                                              ; preds = %445
  %452 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %453 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %452, i32 0, i32 6
  %454 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %453, align 8
  %455 = load i32, i32* %28, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %454, i64 %456
  %458 = load %struct.TYPE_37__*, %struct.TYPE_37__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  store i32 %460, i32* %42, align 4
  %461 = load i32, i32* %42, align 4
  %462 = load i32, i32* %22, align 4
  %463 = and i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %484

465:                                              ; preds = %451
  %466 = load i32, i32* %42, align 4
  %467 = load i32, i32* @WO_ISNULL, align 4
  %468 = load i32, i32* @WO_IS, align 4
  %469 = or i32 %467, %468
  %470 = and i32 %466, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %483

472:                                              ; preds = %465
  %473 = load i32, i32* %42, align 4
  %474 = load i32, i32* @WO_ISNULL, align 4
  %475 = and i32 %473, %474
  %476 = call i32 @testcase(i32 %475)
  %477 = load i32, i32* %42, align 4
  %478 = load i32, i32* @WO_IS, align 4
  %479 = and i32 %477, %478
  %480 = call i32 @testcase(i32 %479)
  %481 = load i32, i32* %19, align 4
  %482 = call i32 @testcase(i32 %481)
  store i32 0, i32* %19, align 4
  br label %483

483:                                              ; preds = %472, %465
  br label %847

484:                                              ; preds = %451
  %485 = load i32, i32* %42, align 4
  %486 = load i32, i32* @WO_IN, align 4
  %487 = and i32 %485, %486
  %488 = call i64 @ALWAYS(i32 %487)
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %540

490:                                              ; preds = %484
  %491 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %492 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %491, i32 0, i32 6
  %493 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %492, align 8
  %494 = load i32, i32* %28, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %493, i64 %495
  %497 = load %struct.TYPE_37__*, %struct.TYPE_37__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %497, i32 0, i32 1
  %499 = load %struct.TYPE_43__*, %struct.TYPE_43__** %498, align 8
  store %struct.TYPE_43__* %499, %struct.TYPE_43__** %43, align 8
  %500 = load i32, i32* %28, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %27, align 4
  br label %502

502:                                              ; preds = %536, %490
  %503 = load i32, i32* %27, align 4
  %504 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %505 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %504, i32 0, i32 5
  %506 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = icmp slt i32 %503, %508
  br i1 %509, label %510, label %539

510:                                              ; preds = %502
  %511 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %512 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %511, i32 0, i32 6
  %513 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %512, align 8
  %514 = load i32, i32* %27, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %513, i64 %515
  %517 = load %struct.TYPE_37__*, %struct.TYPE_37__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %517, i32 0, i32 1
  %519 = load %struct.TYPE_43__*, %struct.TYPE_43__** %518, align 8
  %520 = load %struct.TYPE_43__*, %struct.TYPE_43__** %43, align 8
  %521 = icmp eq %struct.TYPE_43__* %519, %520
  br i1 %521, label %522, label %535

522:                                              ; preds = %510
  %523 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %524 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %523, i32 0, i32 6
  %525 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %524, align 8
  %526 = load i32, i32* %27, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %525, i64 %527
  %529 = load %struct.TYPE_37__*, %struct.TYPE_37__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = load i32, i32* @WO_IN, align 4
  %533 = and i32 %531, %532
  %534 = call i32 @assert(i32 %533)
  store i32 0, i32* %41, align 4
  br label %539

535:                                              ; preds = %510
  br label %536

536:                                              ; preds = %535
  %537 = load i32, i32* %27, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %27, align 4
  br label %502

539:                                              ; preds = %522, %502
  br label %540

540:                                              ; preds = %539, %484
  br label %541

541:                                              ; preds = %540
  br label %542

542:                                              ; preds = %541, %445, %434
  %543 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %544 = icmp ne %struct.TYPE_41__* %543, null
  br i1 %544, label %545, label %572

545:                                              ; preds = %542
  %546 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %547 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %546, i32 0, i32 2
  %548 = load i32*, i32** %547, align 8
  %549 = load i32, i32* %28, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  %552 = load i32, i32* %551, align 4
  store i32 %552, i32* %30, align 4
  %553 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %554 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %553, i32 0, i32 3
  %555 = load i32*, i32** %554, align 8
  %556 = load i32, i32* %28, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i32, i32* %555, i64 %557
  %559 = load i32, i32* %558, align 4
  %560 = load i32, i32* @KEYINFO_ORDER_DESC, align 4
  %561 = and i32 %559, %560
  store i32 %561, i32* %18, align 4
  %562 = load i32, i32* %30, align 4
  %563 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %564 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %563, i32 0, i32 6
  %565 = load %struct.TYPE_48__*, %struct.TYPE_48__** %564, align 8
  %566 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = icmp eq i32 %562, %567
  br i1 %568, label %569, label %571

569:                                              ; preds = %545
  %570 = load i32, i32* @XN_ROWID, align 4
  store i32 %570, i32* %30, align 4
  br label %571

571:                                              ; preds = %569, %545
  br label %574

572:                                              ; preds = %542
  %573 = load i32, i32* @XN_ROWID, align 4
  store i32 %573, i32* %30, align 4
  store i32 0, i32* %18, align 4
  br label %574

574:                                              ; preds = %572, %571
  %575 = load i32, i32* %19, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %601

577:                                              ; preds = %574
  %578 = load i32, i32* %30, align 4
  %579 = icmp sge i32 %578, 0
  br i1 %579, label %580, label %601

580:                                              ; preds = %577
  %581 = load i32, i32* %28, align 4
  %582 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %583 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %582, i32 0, i32 5
  %584 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %584, i32 0, i32 1
  %586 = load i32, i32* %585, align 4
  %587 = icmp sge i32 %581, %586
  br i1 %587, label %588, label %601

588:                                              ; preds = %580
  %589 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %590 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %589, i32 0, i32 6
  %591 = load %struct.TYPE_48__*, %struct.TYPE_48__** %590, align 8
  %592 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %591, i32 0, i32 1
  %593 = load %struct.TYPE_50__*, %struct.TYPE_50__** %592, align 8
  %594 = load i32, i32* %30, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %593, i64 %595
  %597 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %596, i32 0, i32 0
  %598 = load i64, i64* %597, align 8
  %599 = icmp eq i64 %598, 0
  br i1 %599, label %600, label %601

600:                                              ; preds = %588
  store i32 0, i32* %19, align 4
  br label %601

601:                                              ; preds = %600, %588, %580, %577, %574
  store i32 0, i32* %21, align 4
  store i32 0, i32* %27, align 4
  br label %602

602:                                              ; preds = %731, %601
  %603 = load i32, i32* %41, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %609

605:                                              ; preds = %602
  %606 = load i32, i32* %27, align 4
  %607 = load i32, i32* %25, align 4
  %608 = icmp slt i32 %606, %607
  br label %609

609:                                              ; preds = %605, %602
  %610 = phi i1 [ false, %602 ], [ %608, %605 ]
  br i1 %610, label %611, label %734

611:                                              ; preds = %609
  %612 = load i32, i32* %27, align 4
  %613 = call i32 @MASKBIT(i32 %612)
  %614 = load i32, i32* %37, align 4
  %615 = and i32 %613, %614
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %618

617:                                              ; preds = %611
  br label %731

618:                                              ; preds = %611
  %619 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %620 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %619, i32 0, i32 1
  %621 = load %struct.TYPE_55__*, %struct.TYPE_55__** %620, align 8
  %622 = load i32, i32* %27, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %621, i64 %623
  %625 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %624, i32 0, i32 1
  %626 = load %struct.TYPE_43__*, %struct.TYPE_43__** %625, align 8
  %627 = call %struct.TYPE_43__* @sqlite3ExprSkipCollateAndLikely(%struct.TYPE_43__* %626)
  store %struct.TYPE_43__* %627, %struct.TYPE_43__** %33, align 8
  %628 = load i32, i32* %12, align 4
  %629 = load i32, i32* @WHERE_GROUPBY, align 4
  %630 = and i32 %628, %629
  %631 = call i32 @testcase(i32 %630)
  %632 = load i32, i32* %12, align 4
  %633 = load i32, i32* @WHERE_DISTINCTBY, align 4
  %634 = and i32 %632, %633
  %635 = call i32 @testcase(i32 %634)
  %636 = load i32, i32* %12, align 4
  %637 = load i32, i32* @WHERE_GROUPBY, align 4
  %638 = load i32, i32* @WHERE_DISTINCTBY, align 4
  %639 = or i32 %637, %638
  %640 = and i32 %636, %639
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %642, label %643

642:                                              ; preds = %618
  store i32 0, i32* %41, align 4
  br label %643

643:                                              ; preds = %642, %618
  %644 = load i32, i32* %30, align 4
  %645 = load i32, i32* @XN_ROWID, align 4
  %646 = icmp sge i32 %644, %645
  br i1 %646, label %647, label %669

647:                                              ; preds = %643
  %648 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %649 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %648, i32 0, i32 0
  %650 = load i64, i64* %649, align 8
  %651 = load i64, i64* @TK_COLUMN, align 8
  %652 = icmp ne i64 %650, %651
  br i1 %652, label %653, label %654

653:                                              ; preds = %647
  br label %731

654:                                              ; preds = %647
  %655 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %656 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %655, i32 0, i32 1
  %657 = load i32, i32* %656, align 8
  %658 = load i32, i32* %29, align 4
  %659 = icmp ne i32 %657, %658
  br i1 %659, label %660, label %661

660:                                              ; preds = %654
  br label %731

661:                                              ; preds = %654
  %662 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %663 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %662, i32 0, i32 2
  %664 = load i32, i32* %663, align 4
  %665 = load i32, i32* %30, align 4
  %666 = icmp ne i32 %664, %665
  br i1 %666, label %667, label %668

667:                                              ; preds = %661
  br label %731

668:                                              ; preds = %661
  br label %687

669:                                              ; preds = %643
  %670 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %671 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %670, i32 0, i32 5
  %672 = load %struct.TYPE_52__*, %struct.TYPE_52__** %671, align 8
  %673 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %672, i32 0, i32 0
  %674 = load %struct.TYPE_51__*, %struct.TYPE_51__** %673, align 8
  %675 = load i32, i32* %28, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %674, i64 %676
  %678 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %677, i32 0, i32 0
  %679 = load %struct.TYPE_43__*, %struct.TYPE_43__** %678, align 8
  store %struct.TYPE_43__* %679, %struct.TYPE_43__** %44, align 8
  %680 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %681 = load %struct.TYPE_43__*, %struct.TYPE_43__** %44, align 8
  %682 = load i32, i32* %29, align 4
  %683 = call i64 @sqlite3ExprCompareSkip(%struct.TYPE_43__* %680, %struct.TYPE_43__* %681, i32 %682)
  %684 = icmp ne i64 %683, 0
  br i1 %684, label %685, label %686

685:                                              ; preds = %669
  br label %731

686:                                              ; preds = %669
  br label %687

687:                                              ; preds = %686, %668
  %688 = load i32, i32* %30, align 4
  %689 = load i32, i32* @XN_ROWID, align 4
  %690 = icmp ne i32 %688, %689
  br i1 %690, label %691, label %718

691:                                              ; preds = %687
  %692 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %693 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %692, i32 0, i32 1
  %694 = load %struct.TYPE_46__*, %struct.TYPE_46__** %693, align 8
  %695 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %696 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %695, i32 0, i32 1
  %697 = load %struct.TYPE_55__*, %struct.TYPE_55__** %696, align 8
  %698 = load i32, i32* %27, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %697, i64 %699
  %701 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %700, i32 0, i32 1
  %702 = load %struct.TYPE_43__*, %struct.TYPE_43__** %701, align 8
  %703 = call %struct.TYPE_44__* @sqlite3ExprNNCollSeq(%struct.TYPE_46__* %694, %struct.TYPE_43__* %702)
  store %struct.TYPE_44__* %703, %struct.TYPE_44__** %34, align 8
  %704 = load %struct.TYPE_44__*, %struct.TYPE_44__** %34, align 8
  %705 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %704, i32 0, i32 0
  %706 = load i32, i32* %705, align 4
  %707 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %708 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %707, i32 0, i32 4
  %709 = load i32*, i32** %708, align 8
  %710 = load i32, i32* %28, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds i32, i32* %709, i64 %711
  %713 = load i32, i32* %712, align 4
  %714 = call i64 @sqlite3StrICmp(i32 %706, i32 %713)
  %715 = icmp ne i64 %714, 0
  br i1 %715, label %716, label %717

716:                                              ; preds = %691
  br label %731

717:                                              ; preds = %691
  br label %718

718:                                              ; preds = %717, %687
  %719 = load i32, i32* %12, align 4
  %720 = load i32, i32* @WHERE_DISTINCTBY, align 4
  %721 = and i32 %719, %720
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %723, label %730

723:                                              ; preds = %718
  %724 = load i32, i32* %28, align 4
  %725 = add nsw i32 %724, 1
  %726 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %727 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %726, i32 0, i32 5
  %728 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %727, i32 0, i32 0
  %729 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %728, i32 0, i32 0
  store i32 %725, i32* %729, align 8
  br label %730

730:                                              ; preds = %723, %718
  store i32 1, i32* %21, align 4
  br label %734

731:                                              ; preds = %716, %685, %667, %660, %653, %617
  %732 = load i32, i32* %27, align 4
  %733 = add nsw i32 %732, 1
  store i32 %733, i32* %27, align 4
  br label %602

734:                                              ; preds = %730, %609
  %735 = load i32, i32* %21, align 4
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %785

737:                                              ; preds = %734
  %738 = load i32, i32* %12, align 4
  %739 = load i32, i32* @WHERE_GROUPBY, align 4
  %740 = and i32 %738, %739
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %742, label %785

742:                                              ; preds = %737
  %743 = load i32, i32* %16, align 4
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %745, label %762

745:                                              ; preds = %742
  %746 = load i32, i32* %17, align 4
  %747 = load i32, i32* %18, align 4
  %748 = xor i32 %746, %747
  %749 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %750 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %749, i32 0, i32 1
  %751 = load %struct.TYPE_55__*, %struct.TYPE_55__** %750, align 8
  %752 = load i32, i32* %27, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %751, i64 %753
  %755 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %754, i32 0, i32 0
  %756 = load i32, i32* %755, align 8
  %757 = load i32, i32* @KEYINFO_ORDER_DESC, align 4
  %758 = and i32 %756, %757
  %759 = icmp ne i32 %748, %758
  br i1 %759, label %760, label %761

760:                                              ; preds = %745
  store i32 0, i32* %21, align 4
  br label %761

761:                                              ; preds = %760, %745
  br label %784

762:                                              ; preds = %742
  %763 = load i32, i32* %18, align 4
  %764 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %765 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %764, i32 0, i32 1
  %766 = load %struct.TYPE_55__*, %struct.TYPE_55__** %765, align 8
  %767 = load i32, i32* %27, align 4
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %766, i64 %768
  %770 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %769, i32 0, i32 0
  %771 = load i32, i32* %770, align 8
  %772 = load i32, i32* @KEYINFO_ORDER_DESC, align 4
  %773 = and i32 %771, %772
  %774 = xor i32 %763, %773
  store i32 %774, i32* %17, align 4
  %775 = load i32, i32* %17, align 4
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %783

777:                                              ; preds = %762
  %778 = load i32, i32* %26, align 4
  %779 = call i32 @MASKBIT(i32 %778)
  %780 = load i32*, i32** %15, align 8
  %781 = load i32, i32* %780, align 4
  %782 = or i32 %781, %779
  store i32 %782, i32* %780, align 4
  br label %783

783:                                              ; preds = %777, %762
  store i32 1, i32* %16, align 4
  br label %784

784:                                              ; preds = %783, %761
  br label %785

785:                                              ; preds = %784, %737, %734
  %786 = load i32, i32* %21, align 4
  %787 = icmp ne i32 %786, 0
  br i1 %787, label %788, label %816

788:                                              ; preds = %785
  %789 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %790 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %789, i32 0, i32 1
  %791 = load %struct.TYPE_55__*, %struct.TYPE_55__** %790, align 8
  %792 = load i32, i32* %27, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %791, i64 %793
  %795 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %794, i32 0, i32 0
  %796 = load i32, i32* %795, align 8
  %797 = load i32, i32* @KEYINFO_ORDER_BIGNULL, align 4
  %798 = and i32 %796, %797
  %799 = icmp ne i32 %798, 0
  br i1 %799, label %800, label %816

800:                                              ; preds = %788
  %801 = load i32, i32* %28, align 4
  %802 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %803 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %802, i32 0, i32 5
  %804 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %803, i32 0, i32 0
  %805 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %804, i32 0, i32 1
  %806 = load i32, i32* %805, align 4
  %807 = icmp eq i32 %801, %806
  br i1 %807, label %808, label %814

808:                                              ; preds = %800
  %809 = load i32, i32* @WHERE_BIGNULL_SORT, align 4
  %810 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %811 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %810, i32 0, i32 1
  %812 = load i32, i32* %811, align 4
  %813 = or i32 %812, %809
  store i32 %813, i32* %811, align 4
  br label %815

814:                                              ; preds = %800
  store i32 0, i32* %21, align 4
  br label %815

815:                                              ; preds = %814, %808
  br label %816

816:                                              ; preds = %815, %788, %785
  %817 = load i32, i32* %21, align 4
  %818 = icmp ne i32 %817, 0
  br i1 %818, label %819, label %833

819:                                              ; preds = %816
  %820 = load i32, i32* %30, align 4
  %821 = load i32, i32* @XN_ROWID, align 4
  %822 = icmp eq i32 %820, %821
  br i1 %822, label %823, label %828

823:                                              ; preds = %819
  %824 = load i32, i32* %20, align 4
  %825 = icmp eq i32 %824, 0
  %826 = zext i1 %825 to i32
  %827 = call i32 @testcase(i32 %826)
  store i32 1, i32* %20, align 4
  br label %828

828:                                              ; preds = %823, %819
  %829 = load i32, i32* %27, align 4
  %830 = call i32 @MASKBIT(i32 %829)
  %831 = load i32, i32* %37, align 4
  %832 = or i32 %831, %830
  store i32 %832, i32* %37, align 4
  br label %846

833:                                              ; preds = %816
  %834 = load i32, i32* %28, align 4
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %840, label %836

836:                                              ; preds = %833
  %837 = load i32, i32* %28, align 4
  %838 = load i32, i32* %23, align 4
  %839 = icmp slt i32 %837, %838
  br i1 %839, label %840, label %845

840:                                              ; preds = %836, %833
  %841 = load i32, i32* %19, align 4
  %842 = icmp ne i32 %841, 0
  %843 = zext i1 %842 to i32
  %844 = call i32 @testcase(i32 %843)
  store i32 0, i32* %19, align 4
  br label %845

845:                                              ; preds = %840, %836
  br label %850

846:                                              ; preds = %828
  br label %847

847:                                              ; preds = %846, %483
  %848 = load i32, i32* %28, align 4
  %849 = add nsw i32 %848, 1
  store i32 %849, i32* %28, align 4
  br label %405

850:                                              ; preds = %845, %405
  %851 = load i32, i32* %20, align 4
  %852 = icmp ne i32 %851, 0
  br i1 %852, label %853, label %858

853:                                              ; preds = %850
  %854 = load i32, i32* %19, align 4
  %855 = icmp eq i32 %854, 0
  %856 = zext i1 %855 to i32
  %857 = call i32 @testcase(i32 %856)
  store i32 1, i32* %19, align 4
  br label %858

858:                                              ; preds = %853, %850
  br label %859

859:                                              ; preds = %858, %319
  %860 = load i32, i32* %19, align 4
  %861 = icmp ne i32 %860, 0
  br i1 %861, label %862, label %915

862:                                              ; preds = %859
  %863 = load %struct.TYPE_39__*, %struct.TYPE_39__** %31, align 8
  %864 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %863, i32 0, i32 0
  %865 = load i32, i32* %864, align 8
  %866 = load i32, i32* %39, align 4
  %867 = or i32 %866, %865
  store i32 %867, i32* %39, align 4
  store i32 0, i32* %27, align 4
  br label %868

868:                                              ; preds = %911, %862
  %869 = load i32, i32* %27, align 4
  %870 = load i32, i32* %25, align 4
  %871 = icmp slt i32 %869, %870
  br i1 %871, label %872, label %914

872:                                              ; preds = %868
  %873 = load i32, i32* %27, align 4
  %874 = call i32 @MASKBIT(i32 %873)
  %875 = load i32, i32* %37, align 4
  %876 = and i32 %874, %875
  %877 = icmp ne i32 %876, 0
  br i1 %877, label %878, label %879

878:                                              ; preds = %872
  br label %911

879:                                              ; preds = %872
  %880 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %881 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %880, i32 0, i32 1
  %882 = load %struct.TYPE_55__*, %struct.TYPE_55__** %881, align 8
  %883 = load i32, i32* %27, align 4
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %882, i64 %884
  %886 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %885, i32 0, i32 1
  %887 = load %struct.TYPE_43__*, %struct.TYPE_43__** %886, align 8
  store %struct.TYPE_43__* %887, %struct.TYPE_43__** %45, align 8
  %888 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %889 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %888, i32 0, i32 0
  %890 = load %struct.TYPE_43__*, %struct.TYPE_43__** %45, align 8
  %891 = call i32 @sqlite3WhereExprUsage(i32* %889, %struct.TYPE_43__* %890)
  store i32 %891, i32* %46, align 4
  %892 = load i32, i32* %46, align 4
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %899

894:                                              ; preds = %879
  %895 = load %struct.TYPE_43__*, %struct.TYPE_43__** %45, align 8
  %896 = call i32 @sqlite3ExprIsConstant(%struct.TYPE_43__* %895)
  %897 = icmp ne i32 %896, 0
  br i1 %897, label %899, label %898

898:                                              ; preds = %894
  br label %911

899:                                              ; preds = %894, %879
  %900 = load i32, i32* %46, align 4
  %901 = load i32, i32* %39, align 4
  %902 = xor i32 %901, -1
  %903 = and i32 %900, %902
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %905, label %910

905:                                              ; preds = %899
  %906 = load i32, i32* %27, align 4
  %907 = call i32 @MASKBIT(i32 %906)
  %908 = load i32, i32* %37, align 4
  %909 = or i32 %908, %907
  store i32 %909, i32* %37, align 4
  br label %910

910:                                              ; preds = %905, %899
  br label %911

911:                                              ; preds = %910, %898, %878
  %912 = load i32, i32* %27, align 4
  %913 = add nsw i32 %912, 1
  store i32 %913, i32* %27, align 4
  br label %868

914:                                              ; preds = %868
  br label %915

915:                                              ; preds = %914, %859
  br label %916

916:                                              ; preds = %915, %136
  %917 = load i32, i32* %26, align 4
  %918 = add nsw i32 %917, 1
  store i32 %918, i32* %26, align 4
  br label %98

919:                                              ; preds = %156, %109
  %920 = load i32, i32* %37, align 4
  %921 = load i32, i32* %38, align 4
  %922 = icmp eq i32 %920, %921
  br i1 %922, label %923, label %925

923:                                              ; preds = %919
  %924 = load i32, i32* %25, align 4
  store i32 %924, i32* %8, align 4
  br label %951

925:                                              ; preds = %919
  %926 = load i32, i32* %19, align 4
  %927 = icmp ne i32 %926, 0
  br i1 %927, label %950, label %928

928:                                              ; preds = %925
  %929 = load i32, i32* %25, align 4
  %930 = sub nsw i32 %929, 1
  store i32 %930, i32* %27, align 4
  br label %931

931:                                              ; preds = %946, %928
  %932 = load i32, i32* %27, align 4
  %933 = icmp sgt i32 %932, 0
  br i1 %933, label %934, label %949

934:                                              ; preds = %931
  %935 = load i32, i32* %27, align 4
  %936 = call i32 @MASKBIT(i32 %935)
  %937 = sub nsw i32 %936, 1
  store i32 %937, i32* %47, align 4
  %938 = load i32, i32* %37, align 4
  %939 = load i32, i32* %47, align 4
  %940 = and i32 %938, %939
  %941 = load i32, i32* %47, align 4
  %942 = icmp eq i32 %940, %941
  br i1 %942, label %943, label %945

943:                                              ; preds = %934
  %944 = load i32, i32* %27, align 4
  store i32 %944, i32* %8, align 4
  br label %951

945:                                              ; preds = %934
  br label %946

946:                                              ; preds = %945
  %947 = load i32, i32* %27, align 4
  %948 = add nsw i32 %947, -1
  store i32 %948, i32* %27, align 4
  br label %931

949:                                              ; preds = %931
  store i32 0, i32* %8, align 4
  br label %951

950:                                              ; preds = %925
  store i32 -1, i32* %8, align 4
  br label %951

951:                                              ; preds = %950, %949, %943, %923, %346, %79, %64
  %952 = load i32, i32* %8, align 4
  ret i32 %952
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @OptimizationDisabled(i32*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @MASKBIT(i32) #1

declare dso_local %struct.TYPE_43__* @sqlite3ExprSkipCollateAndLikely(%struct.TYPE_43__*) #1

declare dso_local %struct.TYPE_37__* @sqlite3WhereFindTerm(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @sqlite3ExprCollSeqMatch(%struct.TYPE_46__*, %struct.TYPE_43__*, %struct.TYPE_43__*) #1

declare dso_local i32 @HasRowid(%struct.TYPE_48__*) #1

declare dso_local i64 @IsUniqueIndex(%struct.TYPE_41__*) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i64 @sqlite3ExprCompareSkip(%struct.TYPE_43__*, %struct.TYPE_43__*, i32) #1

declare dso_local %struct.TYPE_44__* @sqlite3ExprNNCollSeq(%struct.TYPE_46__*, %struct.TYPE_43__*) #1

declare dso_local i64 @sqlite3StrICmp(i32, i32) #1

declare dso_local i32 @sqlite3WhereExprUsage(i32*, %struct.TYPE_43__*) #1

declare dso_local i32 @sqlite3ExprIsConstant(%struct.TYPE_43__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
