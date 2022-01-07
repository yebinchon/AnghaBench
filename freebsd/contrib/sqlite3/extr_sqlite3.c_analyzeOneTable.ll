; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_analyzeOneTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_analyzeOneTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i8*, i8*, i32*, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i64, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_37__ = type { i8*, i32, i32, %struct.TYPE_35__*, %struct.TYPE_39__*, i32, i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_39__ = type { i64, i32, i32, i8*, i32, i64*, i32, i32*, i32, i64, %struct.TYPE_39__* }

@.str = private unnamed_addr constant [10 x i8] c"sqlite\\_%\00", align 1
@SQLITE_ANALYZE = common dso_local global i32 0, align 4
@OP_OpenRead = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Analysis for %s.%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OP_Integer = common dso_local global i32 0, align 4
@OP_Function0 = common dso_local global i32 0, align 4
@statInitFuncdef = common dso_local global i32 0, align 4
@P4_FUNCDEF = common dso_local global i32 0, align 4
@IsStat4 = common dso_local global i64 0, align 8
@OP_Rewind = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@OP_NotNull = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_Ne = common dso_local global i32 0, align 4
@P4_COLLSEQ = common dso_local global i32 0, align 4
@SQLITE_NULLEQ = common dso_local global i64 0, align 8
@statPushFuncdef = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@STAT_GET_STAT1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"BBB\00", align 1
@SQLITE_AFF_TEXT = common dso_local global i8 0, align 1
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@OPFLAG_APPEND = common dso_local global i64 0, align 8
@OP_Count = common dso_local global i32 0, align 4
@OP_IfNot = common dso_local global i32 0, align 4
@OP_Null = common dso_local global i32 0, align 4
@OP_IdxRowid = common dso_local global i32 0, align 4
@OP_IsNull = common dso_local global i32 0, align 4
@OP_Noop = common dso_local global i32 0, align 4
@OP_NotExists = common dso_local global i32 0, align 4
@OP_NotFound = common dso_local global i32 0, align 4
@P4_DYNBLOB = common dso_local global i32 0, align 4
@P4_TABLE = common dso_local global i32 0, align 4
@STAT_GET_NDLT = common dso_local global i32 0, align 4
@STAT_GET_NEQ = common dso_local global i32 0, align 4
@STAT_GET_NLT = common dso_local global i32 0, align 4
@STAT_GET_ROWID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_38__*, %struct.TYPE_37__*, %struct.TYPE_39__*, i32, i32, i32)* @analyzeOneTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyzeOneTable(%struct.TYPE_38__* %0, %struct.TYPE_37__* %1, %struct.TYPE_39__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca %struct.TYPE_39__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_36__*, align 8
  %14 = alloca %struct.TYPE_39__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
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
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32*, align 8
  %37 = alloca i8*, align 8
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %7, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %8, align 8
  store %struct.TYPE_39__* %2, %struct.TYPE_39__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %38 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_36__*, %struct.TYPE_36__** %39, align 8
  store %struct.TYPE_36__* %40, %struct.TYPE_36__** %13, align 8
  store i32 -1, i32* %19, align 4
  store i32 1, i32* %21, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  store i32 %41, i32* %22, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  store i32 %43, i32* %23, align 4
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  store i32 %45, i32* %24, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  store i32 %47, i32* %25, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  store i32 %49, i32* %26, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  store i32 %51, i32* %27, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  store i32 %53, i32* %28, align 4
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %29, align 4
  %56 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i8* @MAX(i8* %58, i32 %59)
  %61 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %64 = call i32* @sqlite3GetVdbe(%struct.TYPE_38__* %63)
  store i32* %64, i32** %17, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %6
  %68 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %69 = icmp eq %struct.TYPE_37__* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i64 @NEVER(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67, %6
  br label %544

74:                                               ; preds = %67
  %75 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %544

80:                                               ; preds = %74
  %81 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @sqlite3_strlike(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %83, i8 signext 92)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %544

87:                                               ; preds = %80
  %88 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %89 = call i32 @sqlite3BtreeHoldsAllMutexes(%struct.TYPE_36__* %88)
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %92 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_36__* %91, i32 %94)
  store i32 %95, i32* %20, align 4
  %96 = load i32, i32* %20, align 4
  %97 = icmp sge i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %101 = load i32, i32* %20, align 4
  %102 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_36__* %100, i32 %101, i32 0)
  %103 = call i32 @assert(i32 %102)
  %104 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %105 = load i32, i32* @SQLITE_ANALYZE, align 4
  %106 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_34__*, %struct.TYPE_34__** %110, align 8
  %112 = load i32, i32* %20, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @sqlite3AuthCheck(%struct.TYPE_38__* %104, i32 %105, i8* %108, i32 0, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %87
  br label %544

120:                                              ; preds = %87
  %121 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %122 = load i32, i32* %20, align 4
  %123 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @sqlite3TableLock(%struct.TYPE_38__* %121, i32 %122, i32 %125, i32 0, i8* %128)
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  store i32 %130, i32* %16, align 4
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  store i32 %132, i32* %15, align 4
  %134 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i8* @MAX(i8* %136, i32 %137)
  %139 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %20, align 4
  %144 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %145 = load i32, i32* @OP_OpenRead, align 4
  %146 = call i32 @sqlite3OpenTable(%struct.TYPE_38__* %141, i32 %142, i32 %143, %struct.TYPE_37__* %144, i32 %145)
  %147 = load i32*, i32** %17, align 8
  %148 = load i32, i32* %26, align 4
  %149 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @sqlite3VdbeLoadString(i32* %147, i32 %148, i8* %151)
  %153 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_39__*, %struct.TYPE_39__** %154, align 8
  store %struct.TYPE_39__* %155, %struct.TYPE_39__** %14, align 8
  br label %156

156:                                              ; preds = %483, %120
  %157 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %158 = icmp ne %struct.TYPE_39__* %157, null
  br i1 %158, label %159, label %487

159:                                              ; preds = %156
  %160 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %161 = icmp ne %struct.TYPE_39__* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %164 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %165 = icmp ne %struct.TYPE_39__* %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %483

167:                                              ; preds = %162, %159
  %168 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  store i32 0, i32* %21, align 4
  br label %173

173:                                              ; preds = %172, %167
  %174 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %175 = call i64 @HasRowid(%struct.TYPE_37__* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %190, label %177

177:                                              ; preds = %173
  %178 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %179 = call i64 @IsPrimaryKeyIndex(%struct.TYPE_39__* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  store i32 %184, i32* %30, align 4
  %185 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  store i8* %187, i8** %33, align 8
  %188 = load i32, i32* %30, align 4
  %189 = sub nsw i32 %188, 1
  store i32 %189, i32* %34, align 4
  br label %211

190:                                              ; preds = %177, %173
  %191 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %30, align 4
  %194 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %194, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  store i8* %196, i8** %33, align 8
  %197 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %197, i32 0, i32 9
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %190
  %202 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = sub nsw i32 %204, 1
  br label %209

206:                                              ; preds = %190
  %207 = load i32, i32* %30, align 4
  %208 = sub nsw i32 %207, 1
  br label %209

209:                                              ; preds = %206, %201
  %210 = phi i32 [ %205, %201 ], [ %208, %206 ]
  store i32 %210, i32* %34, align 4
  br label %211

211:                                              ; preds = %209, %181
  %212 = load i32*, i32** %17, align 8
  %213 = load i32, i32* %27, align 4
  %214 = load i8*, i8** %33, align 8
  %215 = call i32 @sqlite3VdbeLoadString(i32* %212, i32 %213, i8* %214)
  %216 = load i32*, i32** %17, align 8
  %217 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = load i8*, i8** %33, align 8
  %221 = bitcast i8* %220 to i32*
  %222 = call i32 @VdbeComment(i32* %221)
  %223 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = load i32, i32* %29, align 4
  %227 = load i32, i32* %34, align 4
  %228 = add nsw i32 %226, %227
  %229 = call i8* @MAX(i8* %225, i32 %228)
  %230 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %230, i32 0, i32 0
  store i8* %229, i8** %231, align 8
  %232 = load i32, i32* %20, align 4
  %233 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %234 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_36__* %233, i32 %236)
  %238 = icmp eq i32 %232, %237
  %239 = zext i1 %238 to i32
  %240 = call i32 @assert(i32 %239)
  %241 = load i32*, i32** %17, align 8
  %242 = load i32, i32* @OP_OpenRead, align 4
  %243 = load i32, i32* %15, align 4
  %244 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %245 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %20, align 4
  %248 = call i32 @sqlite3VdbeAddOp3(i32* %241, i32 %242, i32 %243, i32 %246, i32 %247)
  %249 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %250 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %251 = call i32 @sqlite3VdbeSetP4KeyInfo(%struct.TYPE_38__* %249, %struct.TYPE_39__* %250)
  %252 = load i32*, i32** %17, align 8
  %253 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %253, i32 0, i32 3
  %255 = load i8*, i8** %254, align 8
  %256 = bitcast i8* %255 to i32*
  %257 = call i32 @VdbeComment(i32* %256)
  %258 = load i32*, i32** %17, align 8
  %259 = load i32, i32* @OP_Integer, align 4
  %260 = load i32, i32* %30, align 4
  %261 = load i32, i32* %23, align 4
  %262 = add nsw i32 %261, 1
  %263 = call i32 @sqlite3VdbeAddOp2(i32* %258, i32 %259, i32 %260, i32 %262)
  %264 = load i32*, i32** %17, align 8
  %265 = load i32, i32* @OP_Integer, align 4
  %266 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* %23, align 4
  %270 = add nsw i32 %269, 2
  %271 = call i32 @sqlite3VdbeAddOp2(i32* %264, i32 %265, i32 %268, i32 %270)
  %272 = load i32*, i32** %17, align 8
  %273 = load i32, i32* @OP_Function0, align 4
  %274 = load i32, i32* %23, align 4
  %275 = add nsw i32 %274, 1
  %276 = load i32, i32* %23, align 4
  %277 = load i32, i32* @P4_FUNCDEF, align 4
  %278 = call i32 @sqlite3VdbeAddOp4(i32* %272, i32 %273, i32 0, i32 %275, i32 %276, i8* bitcast (i32* @statInitFuncdef to i8*), i32 %277)
  %279 = load i32*, i32** %17, align 8
  %280 = load i64, i64* @IsStat4, align 8
  %281 = add nsw i64 2, %280
  %282 = call i32 @sqlite3VdbeChangeP5(i32* %279, i64 %281)
  %283 = load i32*, i32** %17, align 8
  %284 = load i32, i32* @OP_Rewind, align 4
  %285 = load i32, i32* %15, align 4
  %286 = call i32 @sqlite3VdbeAddOp1(i32* %283, i32 %284, i32 %285)
  store i32 %286, i32* %31, align 4
  %287 = load i32*, i32** %17, align 8
  %288 = call i32 @VdbeCoverage(i32* %287)
  %289 = load i32*, i32** %17, align 8
  %290 = load i32, i32* @OP_Integer, align 4
  %291 = load i32, i32* %24, align 4
  %292 = call i32 @sqlite3VdbeAddOp2(i32* %289, i32 %290, i32 0, i32 %291)
  %293 = load i32*, i32** %17, align 8
  %294 = call i32 @sqlite3VdbeCurrentAddr(i32* %293)
  store i32 %294, i32* %32, align 4
  %295 = load i32, i32* %34, align 4
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %425

297:                                              ; preds = %211
  %298 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %299 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_38__* %298)
  store i32 %299, i32* %35, align 4
  %300 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %301 = load i32, i32* %34, align 4
  %302 = sext i32 %301 to i64
  %303 = mul i64 4, %302
  %304 = trunc i64 %303 to i32
  %305 = call i32* @sqlite3DbMallocRawNN(%struct.TYPE_36__* %300, i32 %304)
  store i32* %305, i32** %36, align 8
  %306 = load i32*, i32** %36, align 8
  %307 = icmp eq i32* %306, null
  br i1 %307, label %308, label %309

308:                                              ; preds = %297
  br label %483

309:                                              ; preds = %297
  %310 = load i32*, i32** %17, align 8
  %311 = load i32, i32* @OP_Goto, align 4
  %312 = call i32 @sqlite3VdbeAddOp0(i32* %310, i32 %311)
  %313 = load i32*, i32** %17, align 8
  %314 = call i32 @sqlite3VdbeCurrentAddr(i32* %313)
  store i32 %314, i32* %32, align 4
  %315 = load i32, i32* %34, align 4
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %317, label %334

317:                                              ; preds = %309
  %318 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %322, label %334

322:                                              ; preds = %317
  %323 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %324 = call i64 @IsUniqueIndex(%struct.TYPE_39__* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %334

326:                                              ; preds = %322
  %327 = load i32*, i32** %17, align 8
  %328 = load i32, i32* @OP_NotNull, align 4
  %329 = load i32, i32* %29, align 4
  %330 = load i32, i32* %35, align 4
  %331 = call i32 @sqlite3VdbeAddOp2(i32* %327, i32 %328, i32 %329, i32 %330)
  %332 = load i32*, i32** %17, align 8
  %333 = call i32 @VdbeCoverage(i32* %332)
  br label %334

334:                                              ; preds = %326, %322, %317, %309
  store i32 0, i32* %18, align 4
  br label %335

335:                                              ; preds = %379, %334
  %336 = load i32, i32* %18, align 4
  %337 = load i32, i32* %34, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %382

339:                                              ; preds = %335
  %340 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %341 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %342 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %341, i32 0, i32 7
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %18, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = call i64 @sqlite3LocateCollSeq(%struct.TYPE_38__* %340, i32 %347)
  %349 = inttoptr i64 %348 to i8*
  store i8* %349, i8** %37, align 8
  %350 = load i32*, i32** %17, align 8
  %351 = load i32, i32* @OP_Integer, align 4
  %352 = load i32, i32* %18, align 4
  %353 = load i32, i32* %24, align 4
  %354 = call i32 @sqlite3VdbeAddOp2(i32* %350, i32 %351, i32 %352, i32 %353)
  %355 = load i32*, i32** %17, align 8
  %356 = load i32, i32* @OP_Column, align 4
  %357 = load i32, i32* %15, align 4
  %358 = load i32, i32* %18, align 4
  %359 = load i32, i32* %25, align 4
  %360 = call i32 @sqlite3VdbeAddOp3(i32* %355, i32 %356, i32 %357, i32 %358, i32 %359)
  %361 = load i32*, i32** %17, align 8
  %362 = load i32, i32* @OP_Ne, align 4
  %363 = load i32, i32* %25, align 4
  %364 = load i32, i32* %29, align 4
  %365 = load i32, i32* %18, align 4
  %366 = add nsw i32 %364, %365
  %367 = load i8*, i8** %37, align 8
  %368 = load i32, i32* @P4_COLLSEQ, align 4
  %369 = call i32 @sqlite3VdbeAddOp4(i32* %361, i32 %362, i32 %363, i32 0, i32 %366, i8* %367, i32 %368)
  %370 = load i32*, i32** %36, align 8
  %371 = load i32, i32* %18, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  store i32 %369, i32* %373, align 4
  %374 = load i32*, i32** %17, align 8
  %375 = load i64, i64* @SQLITE_NULLEQ, align 8
  %376 = call i32 @sqlite3VdbeChangeP5(i32* %374, i64 %375)
  %377 = load i32*, i32** %17, align 8
  %378 = call i32 @VdbeCoverage(i32* %377)
  br label %379

379:                                              ; preds = %339
  %380 = load i32, i32* %18, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %18, align 4
  br label %335

382:                                              ; preds = %335
  %383 = load i32*, i32** %17, align 8
  %384 = load i32, i32* @OP_Integer, align 4
  %385 = load i32, i32* %34, align 4
  %386 = load i32, i32* %24, align 4
  %387 = call i32 @sqlite3VdbeAddOp2(i32* %383, i32 %384, i32 %385, i32 %386)
  %388 = load i32*, i32** %17, align 8
  %389 = load i32, i32* %35, align 4
  %390 = call i32 @sqlite3VdbeGoto(i32* %388, i32 %389)
  %391 = load i32*, i32** %17, align 8
  %392 = load i32, i32* %32, align 4
  %393 = sub nsw i32 %392, 1
  %394 = call i32 @sqlite3VdbeJumpHere(i32* %391, i32 %393)
  store i32 0, i32* %18, align 4
  br label %395

395:                                              ; preds = %415, %382
  %396 = load i32, i32* %18, align 4
  %397 = load i32, i32* %34, align 4
  %398 = icmp slt i32 %396, %397
  br i1 %398, label %399, label %418

399:                                              ; preds = %395
  %400 = load i32*, i32** %17, align 8
  %401 = load i32*, i32** %36, align 8
  %402 = load i32, i32* %18, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @sqlite3VdbeJumpHere(i32* %400, i32 %405)
  %407 = load i32*, i32** %17, align 8
  %408 = load i32, i32* @OP_Column, align 4
  %409 = load i32, i32* %15, align 4
  %410 = load i32, i32* %18, align 4
  %411 = load i32, i32* %29, align 4
  %412 = load i32, i32* %18, align 4
  %413 = add nsw i32 %411, %412
  %414 = call i32 @sqlite3VdbeAddOp3(i32* %407, i32 %408, i32 %409, i32 %410, i32 %413)
  br label %415

415:                                              ; preds = %399
  %416 = load i32, i32* %18, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %18, align 4
  br label %395

418:                                              ; preds = %395
  %419 = load i32*, i32** %17, align 8
  %420 = load i32, i32* %35, align 4
  %421 = call i32 @sqlite3VdbeResolveLabel(i32* %419, i32 %420)
  %422 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %423 = load i32*, i32** %36, align 8
  %424 = call i32 @sqlite3DbFree(%struct.TYPE_36__* %422, i32* %423)
  br label %425

425:                                              ; preds = %418, %211
  %426 = load i32, i32* %24, align 4
  %427 = load i32, i32* %23, align 4
  %428 = add nsw i32 %427, 1
  %429 = icmp eq i32 %426, %428
  %430 = zext i1 %429 to i32
  %431 = call i32 @assert(i32 %430)
  %432 = load i32*, i32** %17, align 8
  %433 = load i32, i32* @OP_Function0, align 4
  %434 = load i32, i32* %23, align 4
  %435 = load i32, i32* %25, align 4
  %436 = load i32, i32* @P4_FUNCDEF, align 4
  %437 = call i32 @sqlite3VdbeAddOp4(i32* %432, i32 %433, i32 1, i32 %434, i32 %435, i8* bitcast (i32* @statPushFuncdef to i8*), i32 %436)
  %438 = load i32*, i32** %17, align 8
  %439 = load i64, i64* @IsStat4, align 8
  %440 = add nsw i64 2, %439
  %441 = call i32 @sqlite3VdbeChangeP5(i32* %438, i64 %440)
  %442 = load i32*, i32** %17, align 8
  %443 = load i32, i32* @OP_Next, align 4
  %444 = load i32, i32* %15, align 4
  %445 = load i32, i32* %32, align 4
  %446 = call i32 @sqlite3VdbeAddOp2(i32* %442, i32 %443, i32 %444, i32 %445)
  %447 = load i32*, i32** %17, align 8
  %448 = call i32 @VdbeCoverage(i32* %447)
  %449 = load i32*, i32** %17, align 8
  %450 = load i32, i32* %23, align 4
  %451 = load i32, i32* @STAT_GET_STAT1, align 4
  %452 = load i32, i32* %28, align 4
  %453 = call i32 @callStatGet(i32* %449, i32 %450, i32 %451, i32 %452)
  %454 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), align 1
  %455 = sext i8 %454 to i32
  %456 = load i8, i8* @SQLITE_AFF_TEXT, align 1
  %457 = sext i8 %456 to i32
  %458 = icmp eq i32 %455, %457
  %459 = zext i1 %458 to i32
  %460 = call i32 @assert(i32 %459)
  %461 = load i32*, i32** %17, align 8
  %462 = load i32, i32* @OP_MakeRecord, align 4
  %463 = load i32, i32* %26, align 4
  %464 = load i32, i32* %25, align 4
  %465 = call i32 @sqlite3VdbeAddOp4(i32* %461, i32 %462, i32 %463, i32 3, i32 %464, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %466 = load i32*, i32** %17, align 8
  %467 = load i32, i32* @OP_NewRowid, align 4
  %468 = load i32, i32* %10, align 4
  %469 = load i32, i32* %22, align 4
  %470 = call i32 @sqlite3VdbeAddOp2(i32* %466, i32 %467, i32 %468, i32 %469)
  %471 = load i32*, i32** %17, align 8
  %472 = load i32, i32* @OP_Insert, align 4
  %473 = load i32, i32* %10, align 4
  %474 = load i32, i32* %25, align 4
  %475 = load i32, i32* %22, align 4
  %476 = call i32 @sqlite3VdbeAddOp3(i32* %471, i32 %472, i32 %473, i32 %474, i32 %475)
  %477 = load i32*, i32** %17, align 8
  %478 = load i64, i64* @OPFLAG_APPEND, align 8
  %479 = call i32 @sqlite3VdbeChangeP5(i32* %477, i64 %478)
  %480 = load i32*, i32** %17, align 8
  %481 = load i32, i32* %31, align 4
  %482 = call i32 @sqlite3VdbeJumpHere(i32* %480, i32 %481)
  br label %483

483:                                              ; preds = %425, %308, %166
  %484 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %485 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %484, i32 0, i32 10
  %486 = load %struct.TYPE_39__*, %struct.TYPE_39__** %485, align 8
  store %struct.TYPE_39__* %486, %struct.TYPE_39__** %14, align 8
  br label %156

487:                                              ; preds = %156
  %488 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %489 = icmp eq %struct.TYPE_39__* %488, null
  br i1 %489, label %490, label %544

490:                                              ; preds = %487
  %491 = load i32, i32* %21, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %544

493:                                              ; preds = %490
  %494 = load i32*, i32** %17, align 8
  %495 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %496 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %495, i32 0, i32 0
  %497 = load i8*, i8** %496, align 8
  %498 = bitcast i8* %497 to i32*
  %499 = call i32 @VdbeComment(i32* %498)
  %500 = load i32*, i32** %17, align 8
  %501 = load i32, i32* @OP_Count, align 4
  %502 = load i32, i32* %16, align 4
  %503 = load i32, i32* %28, align 4
  %504 = call i32 @sqlite3VdbeAddOp2(i32* %500, i32 %501, i32 %502, i32 %503)
  %505 = load i32*, i32** %17, align 8
  %506 = load i32, i32* @OP_IfNot, align 4
  %507 = load i32, i32* %28, align 4
  %508 = call i32 @sqlite3VdbeAddOp1(i32* %505, i32 %506, i32 %507)
  store i32 %508, i32* %19, align 4
  %509 = load i32*, i32** %17, align 8
  %510 = call i32 @VdbeCoverage(i32* %509)
  %511 = load i32*, i32** %17, align 8
  %512 = load i32, i32* @OP_Null, align 4
  %513 = load i32, i32* %27, align 4
  %514 = call i32 @sqlite3VdbeAddOp2(i32* %511, i32 %512, i32 0, i32 %513)
  %515 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), align 1
  %516 = sext i8 %515 to i32
  %517 = load i8, i8* @SQLITE_AFF_TEXT, align 1
  %518 = sext i8 %517 to i32
  %519 = icmp eq i32 %516, %518
  %520 = zext i1 %519 to i32
  %521 = call i32 @assert(i32 %520)
  %522 = load i32*, i32** %17, align 8
  %523 = load i32, i32* @OP_MakeRecord, align 4
  %524 = load i32, i32* %26, align 4
  %525 = load i32, i32* %25, align 4
  %526 = call i32 @sqlite3VdbeAddOp4(i32* %522, i32 %523, i32 %524, i32 3, i32 %525, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %527 = load i32*, i32** %17, align 8
  %528 = load i32, i32* @OP_NewRowid, align 4
  %529 = load i32, i32* %10, align 4
  %530 = load i32, i32* %22, align 4
  %531 = call i32 @sqlite3VdbeAddOp2(i32* %527, i32 %528, i32 %529, i32 %530)
  %532 = load i32*, i32** %17, align 8
  %533 = load i32, i32* @OP_Insert, align 4
  %534 = load i32, i32* %10, align 4
  %535 = load i32, i32* %25, align 4
  %536 = load i32, i32* %22, align 4
  %537 = call i32 @sqlite3VdbeAddOp3(i32* %532, i32 %533, i32 %534, i32 %535, i32 %536)
  %538 = load i32*, i32** %17, align 8
  %539 = load i64, i64* @OPFLAG_APPEND, align 8
  %540 = call i32 @sqlite3VdbeChangeP5(i32* %538, i64 %539)
  %541 = load i32*, i32** %17, align 8
  %542 = load i32, i32* %19, align 4
  %543 = call i32 @sqlite3VdbeJumpHere(i32* %541, i32 %542)
  br label %544

544:                                              ; preds = %73, %79, %86, %119, %493, %490, %487
  ret void
}

declare dso_local i8* @MAX(i8*, i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_38__*) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i64 @sqlite3_strlike(i8*, i8*, i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeHoldsAllMutexes(%struct.TYPE_36__*) #1

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @sqlite3SchemaMutexHeld(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i64 @sqlite3AuthCheck(%struct.TYPE_38__*, i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3TableLock(%struct.TYPE_38__*, i32, i32, i32, i8*) #1

declare dso_local i32 @sqlite3OpenTable(%struct.TYPE_38__*, i32, i32, %struct.TYPE_37__*, i32) #1

declare dso_local i32 @sqlite3VdbeLoadString(i32*, i32, i8*) #1

declare dso_local i64 @HasRowid(%struct.TYPE_37__*) #1

declare dso_local i64 @IsPrimaryKeyIndex(%struct.TYPE_39__*) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeSetP4KeyInfo(%struct.TYPE_38__*, %struct.TYPE_39__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i64) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_38__*) #1

declare dso_local i32* @sqlite3DbMallocRawNN(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i64 @IsUniqueIndex(%struct.TYPE_39__*) #1

declare dso_local i64 @sqlite3LocateCollSeq(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_36__*, i32*) #1

declare dso_local i32 @callStatGet(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
