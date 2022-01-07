; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqlite3ExprCodeIN.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqlite3ExprCodeIN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { %struct.TYPE_35__*, i64, i32* }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_39__ = type { %struct.TYPE_39__*, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_39__* }

@.str = private unnamed_addr constant [14 x i8] c"begin IN expr\00", align 1
@IN_INDEX_MEMBERSHIP = common dso_local global i32 0, align 4
@IN_INDEX_NOOP_OK = common dso_local global i32 0, align 4
@IN_INDEX_EPH = common dso_local global i32 0, align 4
@IN_INDEX_INDEX_ASC = common dso_local global i32 0, align 4
@IN_INDEX_INDEX_DESC = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@IN_INDEX_NOOP = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@OP_BitAnd = common dso_local global i32 0, align 4
@SQLITE_AFF_REAL = common dso_local global i64 0, align 8
@OP_Affinity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@P4_STATIC = common dso_local global i32 0, align 4
@OP_Eq = common dso_local global i32 0, align 4
@P4_COLLSEQ = common dso_local global i32 0, align 4
@OP_Ne = common dso_local global i32 0, align 4
@SQLITE_JUMPIFNULL = common dso_local global i8 0, align 1
@OP_IsNull = common dso_local global i32 0, align 4
@IN_INDEX_ROWID = common dso_local global i32 0, align 4
@OP_SeekRowid = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@OP_NotFound = common dso_local global i32 0, align 4
@OP_Found = common dso_local global i32 0, align 4
@OP_NotNull = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"end IN expr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_37__*, %struct.TYPE_39__*, i32, i32)* @sqlite3ExprCodeIN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlite3ExprCodeIN(%struct.TYPE_37__* %0, %struct.TYPE_39__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_39__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_38__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_39__*, align 8
  %35 = alloca %struct.TYPE_39__*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %5, align 8
  store %struct.TYPE_39__* %1, %struct.TYPE_39__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %25, align 4
  %38 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_39__*, %struct.TYPE_39__** %39, align 8
  store %struct.TYPE_39__* %40, %struct.TYPE_39__** %18, align 8
  %41 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %42 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %43 = call i64 @sqlite3ExprCheckIN(%struct.TYPE_37__* %41, %struct.TYPE_39__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %4
  br label %588

46:                                               ; preds = %4
  %47 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %48 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %49 = call i8* @exprINAffinity(%struct.TYPE_37__* %47, %struct.TYPE_39__* %48)
  store i8* %49, i8** %15, align 8
  %50 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_39__*, %struct.TYPE_39__** %51, align 8
  %53 = call i32 @sqlite3ExprVectorSize(%struct.TYPE_39__* %52)
  store i32 %53, i32* %16, align 4
  %54 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %55, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 5
  %60 = add i64 %59, 1
  %61 = trunc i64 %60 to i32
  %62 = call i64 @sqlite3DbMallocZero(%struct.TYPE_35__* %56, i32 %61)
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %14, align 8
  %64 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_35__*, %struct.TYPE_35__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %46
  br label %577

71:                                               ; preds = %46
  %72 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %13, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = icmp ne i32* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @VdbeNoopComment(i32* bitcast ([14 x i8]* @.str to i32*))
  %81 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %82 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %83 = load i32, i32* @IN_INDEX_MEMBERSHIP, align 4
  %84 = load i32, i32* @IN_INDEX_NOOP_OK, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %71
  br label %91

90:                                               ; preds = %71
  br label %91

91:                                               ; preds = %90, %89
  %92 = phi i32* [ null, %89 ], [ %9, %90 ]
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 @sqlite3FindInIndex(%struct.TYPE_37__* %81, %struct.TYPE_39__* %82, i32 %85, i32* %92, i32* %93, i32* %25)
  store i32 %94, i32* %10, align 4
  %95 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %91
  %100 = load i32, i32* %16, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %114, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @IN_INDEX_EPH, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @IN_INDEX_INDEX_ASC, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @IN_INDEX_INDEX_DESC, align 4
  %113 = icmp eq i32 %111, %112
  br label %114

114:                                              ; preds = %110, %106, %102, %99, %91
  %115 = phi i1 [ true, %106 ], [ true, %102 ], [ true, %99 ], [ true, %91 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %119 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %120 = call i32 @exprCodeVector(%struct.TYPE_37__* %118, %struct.TYPE_39__* %119, i32* %17)
  store i32 %120, i32* %12, align 4
  store i32 0, i32* %19, align 4
  br label %121

121:                                              ; preds = %136, %114
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load i32*, i32** %14, align 8
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %19, align 4
  %132 = icmp eq i32 %130, %131
  br label %133

133:                                              ; preds = %125, %121
  %134 = phi i1 [ false, %121 ], [ %132, %125 ]
  br i1 %134, label %135, label %139

135:                                              ; preds = %133
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %19, align 4
  br label %121

139:                                              ; preds = %133
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* %11, align 4
  br label %171

145:                                              ; preds = %139
  %146 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @sqlite3GetTempRange(%struct.TYPE_37__* %146, i32 %147)
  store i32 %148, i32* %11, align 4
  store i32 0, i32* %19, align 4
  br label %149

149:                                              ; preds = %167, %145
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %149
  %154 = load i32*, i32** %13, align 8
  %155 = load i32, i32* @OP_Copy, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %19, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %11, align 4
  %160 = load i32*, i32** %14, align 8
  %161 = load i32, i32* %19, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %159, %164
  %166 = call i32 @sqlite3VdbeAddOp3(i32* %154, i32 %155, i32 %158, i32 %165, i32 0)
  br label %167

167:                                              ; preds = %153
  %168 = load i32, i32* %19, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %19, align 4
  br label %149

170:                                              ; preds = %149
  br label %171

171:                                              ; preds = %170, %143
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @IN_INDEX_NOOP, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %373

175:                                              ; preds = %171
  %176 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_38__*, %struct.TYPE_38__** %178, align 8
  store %struct.TYPE_38__* %179, %struct.TYPE_38__** %26, align 8
  %180 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %181 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_39__*, %struct.TYPE_39__** %182, align 8
  %184 = call i32* @sqlite3ExprCollSeq(%struct.TYPE_37__* %180, %struct.TYPE_39__* %183)
  store i32* %184, i32** %27, align 8
  %185 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %186 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_37__* %185)
  store i32 %186, i32* %28, align 4
  store i32 0, i32* %31, align 4
  %187 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %188 = load i32, i32* @EP_xIsSelect, align 4
  %189 = call i32 @ExprHasProperty(%struct.TYPE_39__* %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %175
  %198 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %199 = call i32 @sqlite3GetTempReg(%struct.TYPE_37__* %198)
  store i32 %199, i32* %31, align 4
  %200 = load i32*, i32** %13, align 8
  %201 = load i32, i32* @OP_BitAnd, align 4
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %31, align 4
  %205 = call i32 @sqlite3VdbeAddOp3(i32* %200, i32 %201, i32 %202, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %197, %175
  %207 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_39__*, %struct.TYPE_39__** %208, align 8
  %210 = call i64 @sqlite3ExprAffinity(%struct.TYPE_39__* %209)
  %211 = load i64, i64* @SQLITE_AFF_REAL, align 8
  %212 = icmp eq i64 %210, %211
  %213 = zext i1 %212 to i32
  store i32 %213, i32* %33, align 4
  store i32 0, i32* %32, align 4
  br label %214

214:                                              ; preds = %349, %206
  %215 = load i32, i32* %32, align 4
  %216 = load %struct.TYPE_38__*, %struct.TYPE_38__** %26, align 8
  %217 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp slt i32 %215, %218
  br i1 %219, label %220, label %352

220:                                              ; preds = %214
  %221 = load i32, i32* %33, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %242

223:                                              ; preds = %220
  %224 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %225 = call i32 @sqlite3GetTempReg(%struct.TYPE_37__* %224)
  store i32 %225, i32* %30, align 4
  store i32 %225, i32* %29, align 4
  %226 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %227 = load %struct.TYPE_38__*, %struct.TYPE_38__** %26, align 8
  %228 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_36__*, %struct.TYPE_36__** %228, align 8
  %230 = load i32, i32* %32, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_39__*, %struct.TYPE_39__** %233, align 8
  %235 = load i32, i32* %29, align 4
  %236 = call i32 @sqlite3ExprCode(%struct.TYPE_37__* %226, %struct.TYPE_39__* %234, i32 %235)
  %237 = load i32*, i32** %13, align 8
  %238 = load i32, i32* @OP_Affinity, align 4
  %239 = load i32, i32* %29, align 4
  %240 = load i32, i32* @P4_STATIC, align 4
  %241 = call i32 @sqlite3VdbeAddOp4(i32* %237, i32 %238, i32 %239, i32 1, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %240)
  br label %253

242:                                              ; preds = %220
  %243 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %244 = load %struct.TYPE_38__*, %struct.TYPE_38__** %26, align 8
  %245 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_36__*, %struct.TYPE_36__** %245, align 8
  %247 = load i32, i32* %32, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_39__*, %struct.TYPE_39__** %250, align 8
  %252 = call i32 @sqlite3ExprCodeTemp(%struct.TYPE_37__* %243, %struct.TYPE_39__* %251, i32* %30)
  store i32 %252, i32* %29, align 4
  br label %253

253:                                              ; preds = %242, %223
  %254 = load i32, i32* %31, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %274

256:                                              ; preds = %253
  %257 = load %struct.TYPE_38__*, %struct.TYPE_38__** %26, align 8
  %258 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_36__*, %struct.TYPE_36__** %258, align 8
  %260 = load i32, i32* %32, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_39__*, %struct.TYPE_39__** %263, align 8
  %265 = call i64 @sqlite3ExprCanBeNull(%struct.TYPE_39__* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %256
  %268 = load i32*, i32** %13, align 8
  %269 = load i32, i32* @OP_BitAnd, align 4
  %270 = load i32, i32* %31, align 4
  %271 = load i32, i32* %29, align 4
  %272 = load i32, i32* %31, align 4
  %273 = call i32 @sqlite3VdbeAddOp3(i32* %268, i32 %269, i32 %270, i32 %271, i32 %272)
  br label %274

274:                                              ; preds = %267, %256, %253
  %275 = load i32, i32* %32, align 4
  %276 = load %struct.TYPE_38__*, %struct.TYPE_38__** %26, align 8
  %277 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = sub nsw i32 %278, 1
  %280 = icmp slt i32 %275, %279
  br i1 %280, label %285, label %281

281:                                              ; preds = %274
  %282 = load i32, i32* %8, align 4
  %283 = load i32, i32* %7, align 4
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %285, label %318

285:                                              ; preds = %281, %274
  %286 = load i32*, i32** %13, align 8
  %287 = load i32, i32* @OP_Eq, align 4
  %288 = load i32, i32* %11, align 4
  %289 = load i32, i32* %28, align 4
  %290 = load i32, i32* %29, align 4
  %291 = load i32*, i32** %27, align 8
  %292 = bitcast i32* %291 to i8*
  %293 = load i32, i32* @P4_COLLSEQ, align 4
  %294 = call i32 @sqlite3VdbeAddOp4(i32* %286, i32 %287, i32 %288, i32 %289, i32 %290, i8* %292, i32 %293)
  %295 = load i32*, i32** %13, align 8
  %296 = load i32, i32* %32, align 4
  %297 = load %struct.TYPE_38__*, %struct.TYPE_38__** %26, align 8
  %298 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = sub nsw i32 %299, 1
  %301 = icmp slt i32 %296, %300
  %302 = zext i1 %301 to i32
  %303 = call i32 @VdbeCoverageIf(i32* %295, i32 %302)
  %304 = load i32*, i32** %13, align 8
  %305 = load i32, i32* %32, align 4
  %306 = load %struct.TYPE_38__*, %struct.TYPE_38__** %26, align 8
  %307 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = sub nsw i32 %308, 1
  %310 = icmp eq i32 %305, %309
  %311 = zext i1 %310 to i32
  %312 = call i32 @VdbeCoverageIf(i32* %304, i32 %311)
  %313 = load i32*, i32** %13, align 8
  %314 = load i8*, i8** %15, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 0
  %316 = load i8, i8* %315, align 1
  %317 = call i32 @sqlite3VdbeChangeP5(i32* %313, i8 signext %316)
  br label %345

318:                                              ; preds = %281
  %319 = load i32, i32* %8, align 4
  %320 = load i32, i32* %7, align 4
  %321 = icmp eq i32 %319, %320
  %322 = zext i1 %321 to i32
  %323 = call i32 @assert(i32 %322)
  %324 = load i32*, i32** %13, align 8
  %325 = load i32, i32* @OP_Ne, align 4
  %326 = load i32, i32* %11, align 4
  %327 = load i32, i32* %7, align 4
  %328 = load i32, i32* %29, align 4
  %329 = load i32*, i32** %27, align 8
  %330 = bitcast i32* %329 to i8*
  %331 = load i32, i32* @P4_COLLSEQ, align 4
  %332 = call i32 @sqlite3VdbeAddOp4(i32* %324, i32 %325, i32 %326, i32 %327, i32 %328, i8* %330, i32 %331)
  %333 = load i32*, i32** %13, align 8
  %334 = call i32 @VdbeCoverage(i32* %333)
  %335 = load i32*, i32** %13, align 8
  %336 = load i8*, i8** %15, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 0
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = load i8, i8* @SQLITE_JUMPIFNULL, align 1
  %341 = sext i8 %340 to i32
  %342 = or i32 %339, %341
  %343 = trunc i32 %342 to i8
  %344 = call i32 @sqlite3VdbeChangeP5(i32* %335, i8 signext %343)
  br label %345

345:                                              ; preds = %318, %285
  %346 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %347 = load i32, i32* %30, align 4
  %348 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_37__* %346, i32 %347)
  br label %349

349:                                              ; preds = %345
  %350 = load i32, i32* %32, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %32, align 4
  br label %214

352:                                              ; preds = %214
  %353 = load i32, i32* %31, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %366

355:                                              ; preds = %352
  %356 = load i32*, i32** %13, align 8
  %357 = load i32, i32* @OP_IsNull, align 4
  %358 = load i32, i32* %31, align 4
  %359 = load i32, i32* %8, align 4
  %360 = call i32 @sqlite3VdbeAddOp2(i32* %356, i32 %357, i32 %358, i32 %359)
  %361 = load i32*, i32** %13, align 8
  %362 = call i32 @VdbeCoverage(i32* %361)
  %363 = load i32*, i32** %13, align 8
  %364 = load i32, i32* %7, align 4
  %365 = call i32 @sqlite3VdbeGoto(i32* %363, i32 %364)
  br label %366

366:                                              ; preds = %355, %352
  %367 = load i32*, i32** %13, align 8
  %368 = load i32, i32* %28, align 4
  %369 = call i32 @sqlite3VdbeResolveLabel(i32* %367, i32 %368)
  %370 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %371 = load i32, i32* %31, align 4
  %372 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_37__* %370, i32 %371)
  br label %566

373:                                              ; preds = %171
  %374 = load i32, i32* %8, align 4
  %375 = load i32, i32* %7, align 4
  %376 = icmp eq i32 %374, %375
  br i1 %376, label %377, label %379

377:                                              ; preds = %373
  %378 = load i32, i32* %7, align 4
  store i32 %378, i32* %20, align 4
  br label %382

379:                                              ; preds = %373
  %380 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %381 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_37__* %380)
  store i32 %381, i32* %21, align 4
  store i32 %381, i32* %20, align 4
  br label %382

382:                                              ; preds = %379, %377
  store i32 0, i32* %19, align 4
  br label %383

383:                                              ; preds = %407, %382
  %384 = load i32, i32* %19, align 4
  %385 = load i32, i32* %16, align 4
  %386 = icmp slt i32 %384, %385
  br i1 %386, label %387, label %410

387:                                              ; preds = %383
  %388 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_39__*, %struct.TYPE_39__** %389, align 8
  %391 = load i32, i32* %19, align 4
  %392 = call %struct.TYPE_39__* @sqlite3VectorFieldSubexpr(%struct.TYPE_39__* %390, i32 %391)
  store %struct.TYPE_39__* %392, %struct.TYPE_39__** %34, align 8
  %393 = load %struct.TYPE_39__*, %struct.TYPE_39__** %34, align 8
  %394 = call i64 @sqlite3ExprCanBeNull(%struct.TYPE_39__* %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %406

396:                                              ; preds = %387
  %397 = load i32*, i32** %13, align 8
  %398 = load i32, i32* @OP_IsNull, align 4
  %399 = load i32, i32* %11, align 4
  %400 = load i32, i32* %19, align 4
  %401 = add nsw i32 %399, %400
  %402 = load i32, i32* %20, align 4
  %403 = call i32 @sqlite3VdbeAddOp2(i32* %397, i32 %398, i32 %401, i32 %402)
  %404 = load i32*, i32** %13, align 8
  %405 = call i32 @VdbeCoverage(i32* %404)
  br label %406

406:                                              ; preds = %396, %387
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %19, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %19, align 4
  br label %383

410:                                              ; preds = %383
  %411 = load i32, i32* %10, align 4
  %412 = load i32, i32* @IN_INDEX_ROWID, align 4
  %413 = icmp eq i32 %411, %412
  br i1 %413, label %414, label %426

414:                                              ; preds = %410
  %415 = load i32*, i32** %13, align 8
  %416 = load i32, i32* @OP_SeekRowid, align 4
  %417 = load i32, i32* %25, align 4
  %418 = load i32, i32* %7, align 4
  %419 = load i32, i32* %11, align 4
  %420 = call i32 @sqlite3VdbeAddOp3(i32* %415, i32 %416, i32 %417, i32 %418, i32 %419)
  %421 = load i32*, i32** %13, align 8
  %422 = call i32 @VdbeCoverage(i32* %421)
  %423 = load i32*, i32** %13, align 8
  %424 = load i32, i32* @OP_Goto, align 4
  %425 = call i32 @sqlite3VdbeAddOp0(i32* %423, i32 %424)
  store i32 %425, i32* %22, align 4
  br label %456

426:                                              ; preds = %410
  %427 = load i32*, i32** %13, align 8
  %428 = load i32, i32* @OP_Affinity, align 4
  %429 = load i32, i32* %11, align 4
  %430 = load i32, i32* %16, align 4
  %431 = load i8*, i8** %15, align 8
  %432 = load i32, i32* %16, align 4
  %433 = call i32 @sqlite3VdbeAddOp4(i32* %427, i32 %428, i32 %429, i32 %430, i32 0, i8* %431, i32 %432)
  %434 = load i32, i32* %7, align 4
  %435 = load i32, i32* %8, align 4
  %436 = icmp eq i32 %434, %435
  br i1 %436, label %437, label %447

437:                                              ; preds = %426
  %438 = load i32*, i32** %13, align 8
  %439 = load i32, i32* @OP_NotFound, align 4
  %440 = load i32, i32* %25, align 4
  %441 = load i32, i32* %7, align 4
  %442 = load i32, i32* %11, align 4
  %443 = load i32, i32* %16, align 4
  %444 = call i32 @sqlite3VdbeAddOp4Int(i32* %438, i32 %439, i32 %440, i32 %441, i32 %442, i32 %443)
  %445 = load i32*, i32** %13, align 8
  %446 = call i32 @VdbeCoverage(i32* %445)
  br label %566

447:                                              ; preds = %426
  %448 = load i32*, i32** %13, align 8
  %449 = load i32, i32* @OP_Found, align 4
  %450 = load i32, i32* %25, align 4
  %451 = load i32, i32* %11, align 4
  %452 = load i32, i32* %16, align 4
  %453 = call i32 @sqlite3VdbeAddOp4Int(i32* %448, i32 %449, i32 %450, i32 0, i32 %451, i32 %452)
  store i32 %453, i32* %22, align 4
  %454 = load i32*, i32** %13, align 8
  %455 = call i32 @VdbeCoverage(i32* %454)
  br label %456

456:                                              ; preds = %447, %414
  %457 = load i32, i32* %9, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %470

459:                                              ; preds = %456
  %460 = load i32, i32* %16, align 4
  %461 = icmp eq i32 %460, 1
  br i1 %461, label %462, label %470

462:                                              ; preds = %459
  %463 = load i32*, i32** %13, align 8
  %464 = load i32, i32* @OP_NotNull, align 4
  %465 = load i32, i32* %9, align 4
  %466 = load i32, i32* %7, align 4
  %467 = call i32 @sqlite3VdbeAddOp2(i32* %463, i32 %464, i32 %465, i32 %466)
  %468 = load i32*, i32** %13, align 8
  %469 = call i32 @VdbeCoverage(i32* %468)
  br label %470

470:                                              ; preds = %462, %459, %456
  %471 = load i32, i32* %7, align 4
  %472 = load i32, i32* %8, align 4
  %473 = icmp eq i32 %471, %472
  br i1 %473, label %474, label %478

474:                                              ; preds = %470
  %475 = load i32*, i32** %13, align 8
  %476 = load i32, i32* %7, align 4
  %477 = call i32 @sqlite3VdbeGoto(i32* %475, i32 %476)
  br label %478

478:                                              ; preds = %474, %470
  %479 = load i32, i32* %21, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %485

481:                                              ; preds = %478
  %482 = load i32*, i32** %13, align 8
  %483 = load i32, i32* %21, align 4
  %484 = call i32 @sqlite3VdbeResolveLabel(i32* %482, i32 %483)
  br label %485

485:                                              ; preds = %481, %478
  %486 = load i32*, i32** %13, align 8
  %487 = load i32, i32* @OP_Rewind, align 4
  %488 = load i32, i32* %25, align 4
  %489 = load i32, i32* %7, align 4
  %490 = call i32 @sqlite3VdbeAddOp2(i32* %486, i32 %487, i32 %488, i32 %489)
  store i32 %490, i32* %24, align 4
  %491 = load i32*, i32** %13, align 8
  %492 = call i32 @VdbeCoverage(i32* %491)
  %493 = load i32, i32* %16, align 4
  %494 = icmp sgt i32 %493, 1
  br i1 %494, label %495, label %498

495:                                              ; preds = %485
  %496 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %497 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_37__* %496)
  store i32 %497, i32* %23, align 4
  br label %500

498:                                              ; preds = %485
  %499 = load i32, i32* %7, align 4
  store i32 %499, i32* %23, align 4
  br label %500

500:                                              ; preds = %498, %495
  store i32 0, i32* %19, align 4
  br label %501

501:                                              ; preds = %536, %500
  %502 = load i32, i32* %19, align 4
  %503 = load i32, i32* %16, align 4
  %504 = icmp slt i32 %502, %503
  br i1 %504, label %505, label %539

505:                                              ; preds = %501
  %506 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %507 = call i32 @sqlite3GetTempReg(%struct.TYPE_37__* %506)
  store i32 %507, i32* %37, align 4
  %508 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %509 = load i32, i32* %19, align 4
  %510 = call %struct.TYPE_39__* @sqlite3VectorFieldSubexpr(%struct.TYPE_39__* %508, i32 %509)
  store %struct.TYPE_39__* %510, %struct.TYPE_39__** %35, align 8
  %511 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %512 = load %struct.TYPE_39__*, %struct.TYPE_39__** %35, align 8
  %513 = call i32* @sqlite3ExprCollSeq(%struct.TYPE_37__* %511, %struct.TYPE_39__* %512)
  store i32* %513, i32** %36, align 8
  %514 = load i32*, i32** %13, align 8
  %515 = load i32, i32* @OP_Column, align 4
  %516 = load i32, i32* %25, align 4
  %517 = load i32, i32* %19, align 4
  %518 = load i32, i32* %37, align 4
  %519 = call i32 @sqlite3VdbeAddOp3(i32* %514, i32 %515, i32 %516, i32 %517, i32 %518)
  %520 = load i32*, i32** %13, align 8
  %521 = load i32, i32* @OP_Ne, align 4
  %522 = load i32, i32* %11, align 4
  %523 = load i32, i32* %19, align 4
  %524 = add nsw i32 %522, %523
  %525 = load i32, i32* %23, align 4
  %526 = load i32, i32* %37, align 4
  %527 = load i32*, i32** %36, align 8
  %528 = bitcast i32* %527 to i8*
  %529 = load i32, i32* @P4_COLLSEQ, align 4
  %530 = call i32 @sqlite3VdbeAddOp4(i32* %520, i32 %521, i32 %524, i32 %525, i32 %526, i8* %528, i32 %529)
  %531 = load i32*, i32** %13, align 8
  %532 = call i32 @VdbeCoverage(i32* %531)
  %533 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %534 = load i32, i32* %37, align 4
  %535 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_37__* %533, i32 %534)
  br label %536

536:                                              ; preds = %505
  %537 = load i32, i32* %19, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %19, align 4
  br label %501

539:                                              ; preds = %501
  %540 = load i32*, i32** %13, align 8
  %541 = load i32, i32* @OP_Goto, align 4
  %542 = load i32, i32* %8, align 4
  %543 = call i32 @sqlite3VdbeAddOp2(i32* %540, i32 %541, i32 0, i32 %542)
  %544 = load i32, i32* %16, align 4
  %545 = icmp sgt i32 %544, 1
  br i1 %545, label %546, label %562

546:                                              ; preds = %539
  %547 = load i32*, i32** %13, align 8
  %548 = load i32, i32* %23, align 4
  %549 = call i32 @sqlite3VdbeResolveLabel(i32* %547, i32 %548)
  %550 = load i32*, i32** %13, align 8
  %551 = load i32, i32* @OP_Next, align 4
  %552 = load i32, i32* %25, align 4
  %553 = load i32, i32* %24, align 4
  %554 = add nsw i32 %553, 1
  %555 = call i32 @sqlite3VdbeAddOp2(i32* %550, i32 %551, i32 %552, i32 %554)
  %556 = load i32*, i32** %13, align 8
  %557 = call i32 @VdbeCoverage(i32* %556)
  %558 = load i32*, i32** %13, align 8
  %559 = load i32, i32* @OP_Goto, align 4
  %560 = load i32, i32* %7, align 4
  %561 = call i32 @sqlite3VdbeAddOp2(i32* %558, i32 %559, i32 0, i32 %560)
  br label %562

562:                                              ; preds = %546, %539
  %563 = load i32*, i32** %13, align 8
  %564 = load i32, i32* %22, align 4
  %565 = call i32 @sqlite3VdbeJumpHere(i32* %563, i32 %564)
  br label %566

566:                                              ; preds = %562, %437, %366
  %567 = load i32, i32* %11, align 4
  %568 = load i32, i32* %12, align 4
  %569 = icmp ne i32 %567, %568
  br i1 %569, label %570, label %574

570:                                              ; preds = %566
  %571 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %572 = load i32, i32* %11, align 4
  %573 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_37__* %571, i32 %572)
  br label %574

574:                                              ; preds = %570, %566
  %575 = load i32*, i32** %13, align 8
  %576 = call i32 @VdbeComment(i32* bitcast ([12 x i8]* @.str.2 to i32*))
  br label %577

577:                                              ; preds = %574, %70
  %578 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %579 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %578, i32 0, i32 0
  %580 = load %struct.TYPE_35__*, %struct.TYPE_35__** %579, align 8
  %581 = load i32*, i32** %14, align 8
  %582 = call i32 (%struct.TYPE_35__*, ...) @sqlite3DbFree(%struct.TYPE_35__* %580, i32* %581)
  %583 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %584 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %583, i32 0, i32 0
  %585 = load %struct.TYPE_35__*, %struct.TYPE_35__** %584, align 8
  %586 = load i8*, i8** %15, align 8
  %587 = call i32 (%struct.TYPE_35__*, ...) @sqlite3DbFree(%struct.TYPE_35__* %585, i8* %586)
  br label %588

588:                                              ; preds = %577, %45
  ret void
}

declare dso_local i64 @sqlite3ExprCheckIN(%struct.TYPE_37__*, %struct.TYPE_39__*) #1

declare dso_local i8* @exprINAffinity(%struct.TYPE_37__*, %struct.TYPE_39__*) #1

declare dso_local i32 @sqlite3ExprVectorSize(%struct.TYPE_39__*) #1

declare dso_local i64 @sqlite3DbMallocZero(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VdbeNoopComment(i32*) #1

declare dso_local i32 @sqlite3FindInIndex(%struct.TYPE_37__*, %struct.TYPE_39__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @exprCodeVector(%struct.TYPE_37__*, %struct.TYPE_39__*, i32*) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @sqlite3ExprCollSeq(%struct.TYPE_37__*, %struct.TYPE_39__*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_37__*) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_37__*) #1

declare dso_local i64 @sqlite3ExprAffinity(%struct.TYPE_39__*) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_37__*, %struct.TYPE_39__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3ExprCodeTemp(%struct.TYPE_37__*, %struct.TYPE_39__*, i32*) #1

declare dso_local i64 @sqlite3ExprCanBeNull(%struct.TYPE_39__*) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i8 signext) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local %struct.TYPE_39__* @sqlite3VectorFieldSubexpr(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_35__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
