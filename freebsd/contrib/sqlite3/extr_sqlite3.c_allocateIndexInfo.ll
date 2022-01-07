; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_allocateIndexInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_allocateIndexInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_19__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.SrcList_item = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i64, i32 }
%struct.sqlite3_index_constraint = type { i32, i32, i32 }
%struct.sqlite3_index_orderby = type { i32, i32 }
%struct.sqlite3_index_constraint_usage = type { i32 }
%struct.HiddenIndexInfo = type { %struct.TYPE_24__*, %struct.TYPE_23__* }

@WO_EQUIV = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@WO_ISNULL = common dso_local global i32 0, align 4
@WO_IS = common dso_local global i32 0, align 4
@WO_ALL = common dso_local global i32 0, align 4
@TERM_VNULL = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@KEYINFO_ORDER_BIGNULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@JT_LEFT = common dso_local global i32 0, align 4
@EP_FromJoin = common dso_local global i32 0, align 4
@WO_EQ = common dso_local global i32 0, align 4
@WO_AUX = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_ISNULL = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_IS = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i32 0, align 4
@WO_LT = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LT = common dso_local global i32 0, align 4
@WO_LE = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LE = common dso_local global i32 0, align 4
@WO_GT = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GT = common dso_local global i32 0, align 4
@WO_GE = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GE = common dso_local global i32 0, align 4
@KEYINFO_ORDER_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_24__*, %struct.TYPE_23__*, i32, %struct.SrcList_item*, %struct.TYPE_25__*, i32*)* @allocateIndexInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @allocateIndexInfo(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, i32 %2, %struct.SrcList_item* %3, %struct.TYPE_25__* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.SrcList_item*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sqlite3_index_constraint*, align 8
  %18 = alloca %struct.sqlite3_index_orderby*, align 8
  %19 = alloca %struct.sqlite3_index_constraint_usage*, align 8
  %20 = alloca %struct.HiddenIndexInfo*, align 8
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_26__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.SrcList_item* %3, %struct.SrcList_item** %11, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %21, align 8
  br label %32

32:                                               ; preds = %114, %6
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %119

38:                                               ; preds = %32
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %43 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %114

47:                                               ; preds = %38
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %114

55:                                               ; preds = %47
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @WO_EQUIV, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @IsPowerOfTwo(i32 %61)
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @WO_IN, align 4
  %68 = and i32 %66, %67
  %69 = call i32 @testcase(i32 %68)
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @WO_ISNULL, align 4
  %74 = and i32 %72, %73
  %75 = call i32 @testcase(i32 %74)
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @WO_IS, align 4
  %80 = and i32 %78, %79
  %81 = call i32 @testcase(i32 %80)
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @WO_ALL, align 4
  %86 = and i32 %84, %85
  %87 = call i32 @testcase(i32 %86)
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @WO_EQUIV, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %55
  br label %114

96:                                               ; preds = %55
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @TERM_VNULL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %114

104:                                              ; preds = %96
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sge i32 %108, -1
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %104, %103, %95, %54, %46
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 1
  store %struct.TYPE_22__* %118, %struct.TYPE_22__** %21, align 8
  br label %32

119:                                              ; preds = %32
  store i32 0, i32* %22, align 4
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %121 = icmp ne %struct.TYPE_25__* %120, null
  br i1 %121, label %122, label %177

122:                                              ; preds = %119
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %25, align 4
  store i32 0, i32* %14, align 4
  br label %126

126:                                              ; preds = %167, %122
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %25, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %170

130:                                              ; preds = %126
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %137, align 8
  store %struct.TYPE_26__* %138, %struct.TYPE_26__** %26, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @TK_COLUMN, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %152, label %144

144:                                              ; preds = %130
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %149 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144, %130
  br label %170

153:                                              ; preds = %144
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @KEYINFO_ORDER_BIGNULL, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %153
  br label %170

166:                                              ; preds = %153
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %126

170:                                              ; preds = %165, %152, %126
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %25, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* %25, align 4
  store i32 %175, i32* %22, align 4
  br label %176

176:                                              ; preds = %174, %170
  br label %177

177:                                              ; preds = %176, %119
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %16, align 4
  %182 = sext i32 %181 to i64
  %183 = mul i64 16, %182
  %184 = add i64 20, %183
  %185 = load i32, i32* %22, align 4
  %186 = sext i32 %185 to i64
  %187 = mul i64 8, %186
  %188 = add i64 %184, %187
  %189 = add i64 %188, 16
  %190 = trunc i64 %189 to i32
  %191 = call %struct.TYPE_21__* @sqlite3DbMallocZero(i32 %180, i32 %190)
  store %struct.TYPE_21__* %191, %struct.TYPE_21__** %23, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %193 = icmp eq %struct.TYPE_21__* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %177
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %196 = call i32 @sqlite3ErrorMsg(%struct.TYPE_24__* %195, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %575

197:                                              ; preds = %177
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i64 1
  %200 = bitcast %struct.TYPE_21__* %199 to %struct.HiddenIndexInfo*
  store %struct.HiddenIndexInfo* %200, %struct.HiddenIndexInfo** %20, align 8
  %201 = load %struct.HiddenIndexInfo*, %struct.HiddenIndexInfo** %20, align 8
  %202 = getelementptr inbounds %struct.HiddenIndexInfo, %struct.HiddenIndexInfo* %201, i64 1
  %203 = bitcast %struct.HiddenIndexInfo* %202 to %struct.sqlite3_index_constraint*
  store %struct.sqlite3_index_constraint* %203, %struct.sqlite3_index_constraint** %17, align 8
  %204 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %204, i64 %206
  %208 = bitcast %struct.sqlite3_index_constraint* %207 to %struct.sqlite3_index_orderby*
  store %struct.sqlite3_index_orderby* %208, %struct.sqlite3_index_orderby** %18, align 8
  %209 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %210 = load i32, i32* %22, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %209, i64 %211
  %213 = bitcast %struct.sqlite3_index_orderby* %212 to %struct.sqlite3_index_constraint_usage*
  store %struct.sqlite3_index_constraint_usage* %213, %struct.sqlite3_index_constraint_usage** %19, align 8
  %214 = load i32, i32* %16, align 4
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 4
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* %22, align 4
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 4
  %220 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 2
  %223 = bitcast i32* %222 to %struct.sqlite3_index_constraint**
  store %struct.sqlite3_index_constraint* %220, %struct.sqlite3_index_constraint** %223, align 4
  %224 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 1
  %227 = bitcast i32* %226 to %struct.sqlite3_index_orderby**
  store %struct.sqlite3_index_orderby* %224, %struct.sqlite3_index_orderby** %227, align 4
  %228 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %19, align 8
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = bitcast i32* %230 to %struct.sqlite3_index_constraint_usage**
  store %struct.sqlite3_index_constraint_usage* %228, %struct.sqlite3_index_constraint_usage** %231, align 4
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %233 = load %struct.HiddenIndexInfo*, %struct.HiddenIndexInfo** %20, align 8
  %234 = getelementptr inbounds %struct.HiddenIndexInfo, %struct.HiddenIndexInfo* %233, i32 0, i32 1
  store %struct.TYPE_23__* %232, %struct.TYPE_23__** %234, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %236 = load %struct.HiddenIndexInfo*, %struct.HiddenIndexInfo** %20, align 8
  %237 = getelementptr inbounds %struct.HiddenIndexInfo, %struct.HiddenIndexInfo* %236, i32 0, i32 0
  store %struct.TYPE_24__* %235, %struct.TYPE_24__** %237, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %239, align 8
  store %struct.TYPE_22__* %240, %struct.TYPE_22__** %21, align 8
  br label %241

241:                                              ; preds = %526, %197
  %242 = load i32, i32* %14, align 4
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %531

247:                                              ; preds = %241
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %252 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %250, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %247
  br label %526

256:                                              ; preds = %247
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %10, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  br label %526

264:                                              ; preds = %256
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @WO_EQUIV, align 4
  %269 = xor i32 %268, -1
  %270 = and i32 %267, %269
  %271 = call i32 @IsPowerOfTwo(i32 %270)
  %272 = call i32 @assert(i32 %271)
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @WO_IN, align 4
  %277 = and i32 %275, %276
  %278 = call i32 @testcase(i32 %277)
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @WO_IS, align 4
  %283 = and i32 %281, %282
  %284 = call i32 @testcase(i32 %283)
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %286 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @WO_ISNULL, align 4
  %289 = and i32 %287, %288
  %290 = call i32 @testcase(i32 %289)
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @WO_ALL, align 4
  %295 = and i32 %293, %294
  %296 = call i32 @testcase(i32 %295)
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @WO_EQUIV, align 4
  %301 = xor i32 %300, -1
  %302 = and i32 %299, %301
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %264
  br label %526

305:                                              ; preds = %264
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @TERM_VNULL, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %305
  br label %526

313:                                              ; preds = %305
  %314 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %315 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @JT_LEFT, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %350

321:                                              ; preds = %313
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i32 0, i32 5
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %323, align 8
  %325 = load i32, i32* @EP_FromJoin, align 4
  %326 = call i32 @ExprHasProperty(%struct.TYPE_17__* %324, i32 %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %350, label %328

328:                                              ; preds = %321
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @WO_IS, align 4
  %333 = load i32, i32* @WO_ISNULL, align 4
  %334 = or i32 %332, %333
  %335 = and i32 %331, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %350

337:                                              ; preds = %328
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @WO_ISNULL, align 4
  %342 = and i32 %340, %341
  %343 = call i32 @testcase(i32 %342)
  %344 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @WO_IS, align 4
  %348 = and i32 %346, %347
  %349 = call i32 @testcase(i32 %348)
  br label %526

350:                                              ; preds = %328, %321, %313
  %351 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %352 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %351, i32 0, i32 6
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp sge i32 %354, -1
  %356 = zext i1 %355 to i32
  %357 = call i32 @assert(i32 %356)
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %359 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %358, i32 0, i32 6
  %360 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %363 = load i32, i32* %15, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %362, i64 %364
  %366 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %365, i32 0, i32 0
  store i32 %361, i32* %366, align 4
  %367 = load i32, i32* %14, align 4
  %368 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %369 = load i32, i32* %15, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %368, i64 %370
  %372 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %371, i32 0, i32 1
  store i32 %367, i32* %372, align 4
  %373 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @WO_ALL, align 4
  %377 = and i32 %375, %376
  store i32 %377, i32* %27, align 4
  %378 = load i32, i32* %27, align 4
  %379 = load i32, i32* @WO_IN, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %350
  %382 = load i32, i32* @WO_EQ, align 4
  store i32 %382, i32* %27, align 4
  br label %383

383:                                              ; preds = %381, %350
  %384 = load i32, i32* %27, align 4
  %385 = load i32, i32* @WO_AUX, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %387, label %396

387:                                              ; preds = %383
  %388 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %389 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %392 = load i32, i32* %15, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %391, i64 %393
  %395 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %394, i32 0, i32 2
  store i32 %390, i32* %395, align 4
  br label %523

396:                                              ; preds = %383
  %397 = load i32, i32* %27, align 4
  %398 = load i32, i32* @WO_ISNULL, align 4
  %399 = load i32, i32* @WO_IS, align 4
  %400 = or i32 %398, %399
  %401 = and i32 %397, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %422

403:                                              ; preds = %396
  %404 = load i32, i32* %27, align 4
  %405 = load i32, i32* @WO_ISNULL, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %407, label %414

407:                                              ; preds = %403
  %408 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_ISNULL, align 4
  %409 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %410 = load i32, i32* %15, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %409, i64 %411
  %413 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %412, i32 0, i32 2
  store i32 %408, i32* %413, align 4
  br label %421

414:                                              ; preds = %403
  %415 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_IS, align 4
  %416 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %417 = load i32, i32* %15, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %416, i64 %418
  %420 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %419, i32 0, i32 2
  store i32 %415, i32* %420, align 4
  br label %421

421:                                              ; preds = %414, %407
  br label %522

422:                                              ; preds = %396
  %423 = load i32, i32* %27, align 4
  %424 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %425 = load i32, i32* %15, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %424, i64 %426
  %428 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %427, i32 0, i32 2
  store i32 %423, i32* %428, align 4
  %429 = load i32, i32* @WO_EQ, align 4
  %430 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_EQ, align 4
  %431 = icmp eq i32 %429, %430
  %432 = zext i1 %431 to i32
  %433 = call i32 @assert(i32 %432)
  %434 = load i32, i32* @WO_LT, align 4
  %435 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LT, align 4
  %436 = icmp eq i32 %434, %435
  %437 = zext i1 %436 to i32
  %438 = call i32 @assert(i32 %437)
  %439 = load i32, i32* @WO_LE, align 4
  %440 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LE, align 4
  %441 = icmp eq i32 %439, %440
  %442 = zext i1 %441 to i32
  %443 = call i32 @assert(i32 %442)
  %444 = load i32, i32* @WO_GT, align 4
  %445 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GT, align 4
  %446 = icmp eq i32 %444, %445
  %447 = zext i1 %446 to i32
  %448 = call i32 @assert(i32 %447)
  %449 = load i32, i32* @WO_GE, align 4
  %450 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GE, align 4
  %451 = icmp eq i32 %449, %450
  %452 = zext i1 %451 to i32
  %453 = call i32 @assert(i32 %452)
  %454 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %455 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %454, i32 0, i32 2
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* @WO_IN, align 4
  %458 = load i32, i32* @WO_EQ, align 4
  %459 = or i32 %457, %458
  %460 = load i32, i32* @WO_LT, align 4
  %461 = or i32 %459, %460
  %462 = load i32, i32* @WO_LE, align 4
  %463 = or i32 %461, %462
  %464 = load i32, i32* @WO_GT, align 4
  %465 = or i32 %463, %464
  %466 = load i32, i32* @WO_GE, align 4
  %467 = or i32 %465, %466
  %468 = load i32, i32* @WO_AUX, align 4
  %469 = or i32 %467, %468
  %470 = and i32 %456, %469
  %471 = call i32 @assert(i32 %470)
  %472 = load i32, i32* %27, align 4
  %473 = load i32, i32* @WO_LT, align 4
  %474 = load i32, i32* @WO_LE, align 4
  %475 = or i32 %473, %474
  %476 = load i32, i32* @WO_GT, align 4
  %477 = or i32 %475, %476
  %478 = load i32, i32* @WO_GE, align 4
  %479 = or i32 %477, %478
  %480 = and i32 %472, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %521

482:                                              ; preds = %422
  %483 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %484 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %483, i32 0, i32 5
  %485 = load %struct.TYPE_17__*, %struct.TYPE_17__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  %488 = call i64 @sqlite3ExprIsVector(i32 %487)
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %521

490:                                              ; preds = %482
  %491 = load i32, i32* %14, align 4
  %492 = icmp slt i32 %491, 16
  br i1 %492, label %493, label %498

493:                                              ; preds = %490
  %494 = load i32, i32* %14, align 4
  %495 = shl i32 1, %494
  %496 = load i32, i32* %24, align 4
  %497 = or i32 %496, %495
  store i32 %497, i32* %24, align 4
  br label %498

498:                                              ; preds = %493, %490
  %499 = load i32, i32* %27, align 4
  %500 = load i32, i32* @WO_LT, align 4
  %501 = icmp eq i32 %499, %500
  br i1 %501, label %502, label %509

502:                                              ; preds = %498
  %503 = load i32, i32* @WO_LE, align 4
  %504 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %505 = load i32, i32* %15, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %504, i64 %506
  %508 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %507, i32 0, i32 2
  store i32 %503, i32* %508, align 4
  br label %509

509:                                              ; preds = %502, %498
  %510 = load i32, i32* %27, align 4
  %511 = load i32, i32* @WO_GT, align 4
  %512 = icmp eq i32 %510, %511
  br i1 %512, label %513, label %520

513:                                              ; preds = %509
  %514 = load i32, i32* @WO_GE, align 4
  %515 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %516 = load i32, i32* %15, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %515, i64 %517
  %519 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %518, i32 0, i32 2
  store i32 %514, i32* %519, align 4
  br label %520

520:                                              ; preds = %513, %509
  br label %521

521:                                              ; preds = %520, %482, %422
  br label %522

522:                                              ; preds = %521, %421
  br label %523

523:                                              ; preds = %522, %387
  %524 = load i32, i32* %15, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %15, align 4
  br label %526

526:                                              ; preds = %523, %337, %312, %304, %263, %255
  %527 = load i32, i32* %14, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %14, align 4
  %529 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %530 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %529, i32 1
  store %struct.TYPE_22__* %530, %struct.TYPE_22__** %21, align 8
  br label %241

531:                                              ; preds = %241
  store i32 0, i32* %14, align 4
  br label %532

532:                                              ; preds = %568, %531
  %533 = load i32, i32* %14, align 4
  %534 = load i32, i32* %22, align 4
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %536, label %571

536:                                              ; preds = %532
  %537 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %538 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %537, i32 0, i32 1
  %539 = load %struct.TYPE_20__*, %struct.TYPE_20__** %538, align 8
  %540 = load i32, i32* %14, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %539, i64 %541
  %543 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %542, i32 0, i32 1
  %544 = load %struct.TYPE_26__*, %struct.TYPE_26__** %543, align 8
  store %struct.TYPE_26__* %544, %struct.TYPE_26__** %28, align 8
  %545 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %546 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %545, i32 0, i32 2
  %547 = load i32, i32* %546, align 8
  %548 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %549 = load i32, i32* %14, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %548, i64 %550
  %552 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %551, i32 0, i32 1
  store i32 %547, i32* %552, align 4
  %553 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %554 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %553, i32 0, i32 1
  %555 = load %struct.TYPE_20__*, %struct.TYPE_20__** %554, align 8
  %556 = load i32, i32* %14, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %555, i64 %557
  %559 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = load i32, i32* @KEYINFO_ORDER_DESC, align 4
  %562 = and i32 %560, %561
  %563 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %564 = load i32, i32* %14, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %563, i64 %565
  %567 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %566, i32 0, i32 0
  store i32 %562, i32* %567, align 4
  br label %568

568:                                              ; preds = %536
  %569 = load i32, i32* %14, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %14, align 4
  br label %532

571:                                              ; preds = %532
  %572 = load i32, i32* %24, align 4
  %573 = load i32*, i32** %13, align 8
  store i32 %572, i32* %573, align 4
  %574 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %574, %struct.TYPE_21__** %7, align 8
  br label %575

575:                                              ; preds = %571, %194
  %576 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  ret %struct.TYPE_21__* %576
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IsPowerOfTwo(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_21__* @sqlite3DbMallocZero(i32, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @sqlite3ExprIsVector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
