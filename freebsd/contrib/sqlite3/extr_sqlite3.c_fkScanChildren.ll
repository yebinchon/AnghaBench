; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_fkScanChildren.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_fkScanChildren.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, i32* }
%struct.TYPE_30__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_33__ = type { i32, i32*, %struct.TYPE_29__* }
%struct.TYPE_34__ = type { i32, i32, %struct.TYPE_29__*, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__*, %struct.TYPE_30__* }

@OP_FkIfZero = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@TK_EQ = common dso_local global i32 0, align 4
@TK_NE = common dso_local global i32 0, align 4
@TK_IS = common dso_local global i32 0, align 4
@TK_NOT = common dso_local global i32 0, align 4
@OP_FkCounter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_33__*, %struct.TYPE_34__*, i32*, i32, i32)* @fkScanChildren to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fkScanChildren(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1, %struct.TYPE_29__* %2, %struct.TYPE_33__* %3, %struct.TYPE_34__* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_32__, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i64, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %9, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %10, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %11, align 8
  store %struct.TYPE_33__* %3, %struct.TYPE_33__** %12, align 8
  store %struct.TYPE_34__* %4, %struct.TYPE_34__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %17, align 8
  store i32* null, i32** %19, align 8
  store i32 0, i32* %22, align 4
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %39 = call i32* @sqlite3GetVdbe(%struct.TYPE_31__* %38)
  store i32* %39, i32** %23, align 8
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %41 = icmp eq %struct.TYPE_33__* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %8
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %44, align 8
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %47 = icmp eq %struct.TYPE_29__* %45, %46
  br label %48

48:                                               ; preds = %42, %8
  %49 = phi i1 [ true, %8 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %53 = icmp eq %struct.TYPE_33__* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %57, %60
  br label %62

62:                                               ; preds = %54, %48
  %63 = phi i1 [ true, %48 ], [ %61, %54 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %67 = icmp ne %struct.TYPE_33__* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br label %73

73:                                               ; preds = %68, %62
  %74 = phi i1 [ true, %62 ], [ %72, %68 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %78 = icmp ne %struct.TYPE_33__* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %81 = call i64 @HasRowid(%struct.TYPE_29__* %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %79, %73
  %84 = phi i1 [ true, %73 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32, i32* %16, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load i32*, i32** %23, align 8
  %91 = load i32, i32* @OP_FkIfZero, align 4
  %92 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @sqlite3VdbeAddOp2(i32* %90, i32 %91, i32 %94, i32 0)
  store i32 %95, i32* %22, align 4
  %96 = load i32*, i32** %23, align 8
  %97 = call i32 @VdbeCoverage(i32* %96)
  br label %98

98:                                               ; preds = %89, %83
  store i32 0, i32* %18, align 4
  br label %99

99:                                               ; preds = %169, %98
  %100 = load i32, i32* %18, align 4
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %172

105:                                              ; preds = %99
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %107 = icmp ne %struct.TYPE_33__* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  br label %117

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %108
  %118 = phi i32 [ %115, %108 ], [ -1, %116 ]
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %27, align 8
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %122 = load i32, i32* %15, align 4
  %123 = load i64, i64* %27, align 8
  %124 = call i32* @exprTableRegister(%struct.TYPE_31__* %120, %struct.TYPE_29__* %121, i32 %122, i64 %123)
  store i32* %124, i32** %24, align 8
  %125 = load i32*, i32** %14, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %117
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  br label %140

133:                                              ; preds = %117
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  br label %140

140:                                              ; preds = %133, %127
  %141 = phi i32 [ %132, %127 ], [ %139, %133 ]
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %27, align 8
  %143 = load i64, i64* %27, align 8
  %144 = icmp uge i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %150, align 8
  %152 = load i64, i64* %27, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  store i8* %155, i8** %28, align 8
  %156 = load i32*, i32** %17, align 8
  %157 = load i32, i32* @TK_ID, align 4
  %158 = load i8*, i8** %28, align 8
  %159 = call i32* @sqlite3Expr(i32* %156, i32 %157, i8* %158)
  store i32* %159, i32** %25, align 8
  %160 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %161 = load i32, i32* @TK_EQ, align 4
  %162 = load i32*, i32** %24, align 8
  %163 = load i32*, i32** %25, align 8
  %164 = call i32* @sqlite3PExpr(%struct.TYPE_31__* %160, i32 %161, i32* %162, i32* %163)
  store i32* %164, i32** %26, align 8
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %166 = load i32*, i32** %19, align 8
  %167 = load i32*, i32** %26, align 8
  %168 = call i32* @sqlite3ExprAnd(%struct.TYPE_31__* %165, i32* %166, i32* %167)
  store i32* %168, i32** %19, align 8
  br label %169

169:                                              ; preds = %140
  %170 = load i32, i32* %18, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %18, align 4
  br label %99

172:                                              ; preds = %99
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %175, align 8
  %177 = icmp eq %struct.TYPE_29__* %173, %176
  br i1 %177, label %178, label %265

178:                                              ; preds = %172
  %179 = load i32, i32* %16, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %265

181:                                              ; preds = %178
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %183 = call i64 @HasRowid(%struct.TYPE_29__* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %181
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %188 = load i32, i32* %15, align 4
  %189 = call i32* @exprTableRegister(%struct.TYPE_31__* %186, %struct.TYPE_29__* %187, i32 %188, i64 -1)
  store i32* %189, i32** %30, align 8
  %190 = load i32*, i32** %17, align 8
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32* @exprTableColumn(i32* %190, %struct.TYPE_29__* %191, i32 %197, i32 -1)
  store i32* %198, i32** %31, align 8
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %200 = load i32, i32* @TK_NE, align 4
  %201 = load i32*, i32** %30, align 8
  %202 = load i32*, i32** %31, align 8
  %203 = call i32* @sqlite3PExpr(%struct.TYPE_31__* %199, i32 %200, i32* %201, i32* %202)
  store i32* %203, i32** %29, align 8
  br label %260

204:                                              ; preds = %181
  store i32* null, i32** %33, align 8
  %205 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %206 = icmp ne %struct.TYPE_33__* %205, null
  %207 = zext i1 %206 to i32
  %208 = call i32 @assert(i32 %207)
  store i32 0, i32* %18, align 4
  br label %209

209:                                              ; preds = %252, %204
  %210 = load i32, i32* %18, align 4
  %211 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %255

215:                                              ; preds = %209
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %18, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %34, align 8
  %224 = load i64, i64* %34, align 8
  %225 = icmp uge i64 %224, 0
  %226 = zext i1 %225 to i32
  %227 = call i32 @assert(i32 %226)
  %228 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %230 = load i32, i32* %15, align 4
  %231 = load i64, i64* %34, align 8
  %232 = call i32* @exprTableRegister(%struct.TYPE_31__* %228, %struct.TYPE_29__* %229, i32 %230, i64 %231)
  store i32* %232, i32** %30, align 8
  %233 = load i32*, i32** %17, align 8
  %234 = load i32, i32* @TK_ID, align 4
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %236, align 8
  %238 = load i64, i64* %34, align 8
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = call i32* @sqlite3Expr(i32* %233, i32 %234, i8* %241)
  store i32* %242, i32** %31, align 8
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %244 = load i32, i32* @TK_IS, align 4
  %245 = load i32*, i32** %30, align 8
  %246 = load i32*, i32** %31, align 8
  %247 = call i32* @sqlite3PExpr(%struct.TYPE_31__* %243, i32 %244, i32* %245, i32* %246)
  store i32* %247, i32** %32, align 8
  %248 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %249 = load i32*, i32** %33, align 8
  %250 = load i32*, i32** %32, align 8
  %251 = call i32* @sqlite3ExprAnd(%struct.TYPE_31__* %248, i32* %249, i32* %250)
  store i32* %251, i32** %33, align 8
  br label %252

252:                                              ; preds = %215
  %253 = load i32, i32* %18, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %18, align 4
  br label %209

255:                                              ; preds = %209
  %256 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %257 = load i32, i32* @TK_NOT, align 4
  %258 = load i32*, i32** %33, align 8
  %259 = call i32* @sqlite3PExpr(%struct.TYPE_31__* %256, i32 %257, i32* %258, i32* null)
  store i32* %259, i32** %29, align 8
  br label %260

260:                                              ; preds = %255, %185
  %261 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %262 = load i32*, i32** %19, align 8
  %263 = load i32*, i32** %29, align 8
  %264 = call i32* @sqlite3ExprAnd(%struct.TYPE_31__* %261, i32* %262, i32* %263)
  store i32* %264, i32** %19, align 8
  br label %265

265:                                              ; preds = %260, %178, %172
  %266 = call i32 @memset(%struct.TYPE_32__* %20, i32 0, i32 16)
  %267 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 1
  store %struct.TYPE_30__* %267, %struct.TYPE_30__** %268, align 8
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 0
  store %struct.TYPE_31__* %269, %struct.TYPE_31__** %270, align 8
  %271 = load i32*, i32** %19, align 8
  %272 = call i32 @sqlite3ResolveExprNames(%struct.TYPE_32__* %20, i32* %271)
  %273 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %295

277:                                              ; preds = %265
  %278 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %279 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %280 = load i32*, i32** %19, align 8
  %281 = call i32* @sqlite3WhereBegin(%struct.TYPE_31__* %278, %struct.TYPE_30__* %279, i32* %280, i32 0, i32 0, i32 0, i32 0)
  store i32* %281, i32** %21, align 8
  %282 = load i32*, i32** %23, align 8
  %283 = load i32, i32* @OP_FkCounter, align 4
  %284 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %16, align 4
  %288 = call i32 @sqlite3VdbeAddOp2(i32* %282, i32 %283, i32 %286, i32 %287)
  %289 = load i32*, i32** %21, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %294

291:                                              ; preds = %277
  %292 = load i32*, i32** %21, align 8
  %293 = call i32 @sqlite3WhereEnd(i32* %292)
  br label %294

294:                                              ; preds = %291, %277
  br label %295

295:                                              ; preds = %294, %265
  %296 = load i32*, i32** %17, align 8
  %297 = load i32*, i32** %19, align 8
  %298 = call i32 @sqlite3ExprDelete(i32* %296, i32* %297)
  %299 = load i32, i32* %22, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %295
  %302 = load i32*, i32** %23, align 8
  %303 = load i32, i32* %22, align 4
  %304 = call i32 @sqlite3VdbeJumpHere(i32* %302, i32 %303)
  br label %305

305:                                              ; preds = %301, %295
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_31__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @HasRowid(%struct.TYPE_29__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32* @exprTableRegister(%struct.TYPE_31__*, %struct.TYPE_29__*, i32, i64) #1

declare dso_local i32* @sqlite3Expr(i32*, i32, i8*) #1

declare dso_local i32* @sqlite3PExpr(%struct.TYPE_31__*, i32, i32*, i32*) #1

declare dso_local i32* @sqlite3ExprAnd(%struct.TYPE_31__*, i32*, i32*) #1

declare dso_local i32* @exprTableColumn(i32*, %struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @sqlite3ResolveExprNames(%struct.TYPE_32__*, i32*) #1

declare dso_local i32* @sqlite3WhereBegin(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3WhereEnd(i32*) #1

declare dso_local i32 @sqlite3ExprDelete(i32*, i32*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
