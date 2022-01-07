; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_convertToWithoutRowidTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_convertToWithoutRowidTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, %struct.TYPE_29__*, i32, i64, i32*, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__, i64 }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_29__ = type { i32, i64, i64, %struct.TYPE_31__*, i32, %struct.TYPE_25__* }
%struct.TYPE_31__ = type { i32, i32, i32*, i32, i32, i64, i32, i32*, i64*, %struct.TYPE_31__* }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }

@COLFLAG_PRIMKEY = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@BTREE_BLOBKEY = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8
@SQLITE_IDXTYPE_PRIMARYKEY = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@sqlite3StrBINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*, %struct.TYPE_29__*)* @convertToWithoutRowidTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convertToWithoutRowidTable(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %16 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %11, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %12, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %60, label %27

27:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @COLFLAG_PRIMKEY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load i32, i32* @OE_Abort, align 4
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 2
  store i32 %47, i32* %54, align 4
  br label %55

55:                                               ; preds = %46, %34
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %28

59:                                               ; preds = %28
  br label %60

60:                                               ; preds = %59, %2
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32*, i32** %12, align 8
  %67 = ptrtoint i32* %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32*, i32** %12, align 8
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @BTREE_BLOBKEY, align 4
  %74 = call i32 @sqlite3VdbeChangeP3(i32* %69, i64 %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %60
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp uge i64 %78, 0
  br i1 %79, label %80, label %157

80:                                               ; preds = %75
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %82, align 8
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sqlite3TokenInit(i32* %14, i32 %89)
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %93 = load i32, i32* @TK_ID, align 4
  %94 = call i32 @sqlite3ExprAlloc(%struct.TYPE_28__* %92, i32 %93, i32* %14, i32 0)
  %95 = call %struct.TYPE_32__* @sqlite3ExprListAppend(%struct.TYPE_30__* %91, i32 0, i32 %94)
  store %struct.TYPE_32__* %95, %struct.TYPE_32__** %13, align 8
  %96 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %97 = icmp eq %struct.TYPE_32__* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %80
  br label %551

99:                                               ; preds = %80
  %100 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 1
  %112 = call i32 @sqlite3RenameTokenRemap(%struct.TYPE_30__* %103, i32 %109, i64* %111)
  br label %113

113:                                              ; preds = %102, %99
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 0
  store i32 %116, i32* %121, align 4
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %123, align 8
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %126 = icmp eq %struct.TYPE_29__* %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 1
  store i64 -1, i64* %130, align 8
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SQLITE_IDXTYPE_PRIMARYKEY, align 4
  %137 = call i32 @sqlite3CreateIndex(%struct.TYPE_30__* %131, i32 0, i32 0, i32 0, %struct.TYPE_32__* %132, i32 %135, i32 0, i32 0, i32 0, i32 0, i32 %136)
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %113
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142, %113
  br label %551

148:                                              ; preds = %142
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %150 = call %struct.TYPE_31__* @sqlite3PrimaryKeyIndex(%struct.TYPE_29__* %149)
  store %struct.TYPE_31__* %150, %struct.TYPE_31__** %6, align 8
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 1
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  br label %244

157:                                              ; preds = %75
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %159 = call %struct.TYPE_31__* @sqlite3PrimaryKeyIndex(%struct.TYPE_29__* %158)
  store %struct.TYPE_31__* %159, %struct.TYPE_31__** %6, align 8
  %160 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %161 = icmp ne %struct.TYPE_31__* %160, null
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %164

164:                                              ; preds = %237, %157
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %240

170:                                              ; preds = %164
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i64 @isDupColumn(%struct.TYPE_31__* %171, i32 %172, %struct.TYPE_31__* %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %179, align 4
  br label %236

182:                                              ; preds = %170
  %183 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @hasColumn(i32* %185, i32 %186, i32 %193)
  %195 = call i32 @testcase(i32 %194)
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %196, i32 0, i32 7
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %203, i32 0, i32 7
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %202, i32* %208, align 4
  %209 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %209, i32 0, i32 8
  %211 = load i64*, i64** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 8
  %218 = load i64*, i64** %217, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  store i64 %215, i64* %221, align 8
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %10, align 4
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  store i32 %228, i32* %235, align 4
  br label %236

236:                                              ; preds = %182, %177
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %9, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %9, align 4
  br label %164

240:                                              ; preds = %164
  %241 = load i32, i32* %10, align 4
  %242 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  br label %244

244:                                              ; preds = %240, %148
  %245 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %246 = icmp ne %struct.TYPE_31__* %245, null
  %247 = zext i1 %246 to i32
  %248 = call i32 @assert(i32 %247)
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 3
  store i32 1, i32* %250, align 8
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %244
  %257 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %257, i32 0, i32 4
  store i32 1, i32* %258, align 4
  br label %259

259:                                              ; preds = %256, %244
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  store i32 %262, i32* %7, align 4
  %265 = load i32*, i32** %12, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %286

267:                                              ; preds = %259
  %268 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %268, i32 0, i32 5
  %270 = load i64, i64* %269, align 8
  %271 = icmp sgt i64 %270, 0
  br i1 %271, label %272, label %286

272:                                              ; preds = %267
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %276, 0
  %278 = zext i1 %277 to i32
  %279 = call i32 @assert(i32 %278)
  %280 = load i32*, i32** %12, align 8
  %281 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %281, i32 0, i32 5
  %283 = load i64, i64* %282, align 8
  %284 = load i32, i32* @OP_Goto, align 4
  %285 = call i32 @sqlite3VdbeChangeOpcode(i32* %280, i64 %283, i32 %284)
  br label %286

286:                                              ; preds = %272, %267, %259
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %290, i32 0, i32 5
  store i64 %289, i64* %291, align 8
  %292 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %292, i32 0, i32 3
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %293, align 8
  store %struct.TYPE_31__* %294, %struct.TYPE_31__** %5, align 8
  br label %295

295:                                              ; preds = %455, %286
  %296 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %297 = icmp ne %struct.TYPE_31__* %296, null
  br i1 %297, label %298, label %459

298:                                              ; preds = %295
  %299 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %300 = call i64 @IsPrimaryKeyIndex(%struct.TYPE_31__* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %298
  br label %455

303:                                              ; preds = %298
  store i32 0, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %304

304:                                              ; preds = %336, %303
  %305 = load i32, i32* %9, align 4
  %306 = load i32, i32* %7, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %339

308:                                              ; preds = %304
  %309 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %310 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %314 = load i32, i32* %9, align 4
  %315 = call i64 @isDupColumn(%struct.TYPE_31__* %309, i32 %312, %struct.TYPE_31__* %313, i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %335, label %317

317:                                              ; preds = %308
  %318 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %318, i32 0, i32 2
  %320 = load i32*, i32** %319, align 8
  %321 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %324, i32 0, i32 2
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %9, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @hasColumn(i32* %320, i32 %323, i32 %330)
  %332 = call i32 @testcase(i32 %331)
  %333 = load i32, i32* %15, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %15, align 4
  br label %335

335:                                              ; preds = %317, %308
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %9, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %9, align 4
  br label %304

339:                                              ; preds = %304
  %340 = load i32, i32* %15, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %339
  %343 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %346, i32 0, i32 1
  store i32 %345, i32* %347, align 4
  br label %455

348:                                              ; preds = %339
  %349 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %350 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %351 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* %15, align 4
  %355 = add nsw i32 %353, %354
  %356 = call i64 @resizeIndexObject(%struct.TYPE_28__* %349, %struct.TYPE_31__* %350, i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %348
  br label %551

359:                                              ; preds = %348
  store i32 0, i32* %9, align 4
  %360 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  store i32 %362, i32* %10, align 4
  br label %363

363:                                              ; preds = %433, %359
  %364 = load i32, i32* %9, align 4
  %365 = load i32, i32* %7, align 4
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %367, label %436

367:                                              ; preds = %363
  %368 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %369 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %373 = load i32, i32* %9, align 4
  %374 = call i64 @isDupColumn(%struct.TYPE_31__* %368, i32 %371, %struct.TYPE_31__* %372, i32 %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %432, label %376

376:                                              ; preds = %367
  %377 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %377, i32 0, i32 2
  %379 = load i32*, i32** %378, align 8
  %380 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %383, i32 0, i32 2
  %385 = load i32*, i32** %384, align 8
  %386 = load i32, i32* %9, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @hasColumn(i32* %379, i32 %382, i32 %389)
  %391 = call i32 @testcase(i32 %390)
  %392 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %392, i32 0, i32 2
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* %9, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %399, i32 0, i32 2
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %10, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  store i32 %398, i32* %404, align 4
  %405 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %405, i32 0, i32 7
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %9, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %412, i32 0, i32 7
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %10, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  store i32 %411, i32* %417, align 4
  %418 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %418, i32 0, i32 8
  %420 = load i64*, i64** %419, align 8
  %421 = load i32, i32* %9, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i64, i64* %420, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %376
  %427 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %427, i32 0, i32 6
  store i32 1, i32* %428, align 8
  br label %429

429:                                              ; preds = %426, %376
  %430 = load i32, i32* %10, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %10, align 4
  br label %432

432:                                              ; preds = %429, %367
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %9, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %9, align 4
  br label %363

436:                                              ; preds = %363
  %437 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = load i32, i32* %15, align 4
  %444 = add nsw i32 %442, %443
  %445 = icmp sge i32 %439, %444
  %446 = zext i1 %445 to i32
  %447 = call i32 @assert(i32 %446)
  %448 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* %10, align 4
  %452 = icmp sge i32 %450, %451
  %453 = zext i1 %452 to i32
  %454 = call i32 @assert(i32 %453)
  br label %455

455:                                              ; preds = %436, %342, %302
  %456 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %456, i32 0, i32 9
  %458 = load %struct.TYPE_31__*, %struct.TYPE_31__** %457, align 8
  store %struct.TYPE_31__* %458, %struct.TYPE_31__** %5, align 8
  br label %295

459:                                              ; preds = %295
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %460

460:                                              ; preds = %478, %459
  %461 = load i32, i32* %9, align 4
  %462 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %463 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = icmp slt i32 %461, %464
  br i1 %465, label %466, label %481

466:                                              ; preds = %460
  %467 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %467, i32 0, i32 2
  %469 = load i32*, i32** %468, align 8
  %470 = load i32, i32* %7, align 4
  %471 = load i32, i32* %9, align 4
  %472 = call i32 @hasColumn(i32* %469, i32 %470, i32 %471)
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %477, label %474

474:                                              ; preds = %466
  %475 = load i32, i32* %8, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %8, align 4
  br label %477

477:                                              ; preds = %474, %466
  br label %478

478:                                              ; preds = %477
  %479 = load i32, i32* %9, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %9, align 4
  br label %460

481:                                              ; preds = %460
  %482 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %483 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %484 = load i32, i32* %7, align 4
  %485 = load i32, i32* %8, align 4
  %486 = add nsw i32 %484, %485
  %487 = call i64 @resizeIndexObject(%struct.TYPE_28__* %482, %struct.TYPE_31__* %483, i32 %486)
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %490

489:                                              ; preds = %481
  br label %551

490:                                              ; preds = %481
  store i32 0, i32* %9, align 4
  %491 = load i32, i32* %7, align 4
  store i32 %491, i32* %10, align 4
  br label %492

492:                                              ; preds = %531, %490
  %493 = load i32, i32* %9, align 4
  %494 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %495 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = icmp slt i32 %493, %496
  br i1 %497, label %498, label %534

498:                                              ; preds = %492
  %499 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %500 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %499, i32 0, i32 2
  %501 = load i32*, i32** %500, align 8
  %502 = load i32, i32* %10, align 4
  %503 = load i32, i32* %9, align 4
  %504 = call i32 @hasColumn(i32* %501, i32 %502, i32 %503)
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %530, label %506

506:                                              ; preds = %498
  %507 = load i32, i32* %10, align 4
  %508 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %509 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = icmp slt i32 %507, %510
  %512 = zext i1 %511 to i32
  %513 = call i32 @assert(i32 %512)
  %514 = load i32, i32* %9, align 4
  %515 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %516 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %515, i32 0, i32 2
  %517 = load i32*, i32** %516, align 8
  %518 = load i32, i32* %10, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  store i32 %514, i32* %520, align 4
  %521 = load i32, i32* @sqlite3StrBINARY, align 4
  %522 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %523 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %522, i32 0, i32 7
  %524 = load i32*, i32** %523, align 8
  %525 = load i32, i32* %10, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, i32* %524, i64 %526
  store i32 %521, i32* %527, align 4
  %528 = load i32, i32* %10, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %10, align 4
  br label %530

530:                                              ; preds = %506, %498
  br label %531

531:                                              ; preds = %530
  %532 = load i32, i32* %9, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %9, align 4
  br label %492

534:                                              ; preds = %492
  %535 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %536 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = load i32, i32* %10, align 4
  %539 = icmp eq i32 %537, %538
  %540 = zext i1 %539 to i32
  %541 = call i32 @assert(i32 %540)
  %542 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %543 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = load i32, i32* %10, align 4
  %546 = icmp sle i32 %544, %545
  %547 = zext i1 %546 to i32
  %548 = call i32 @assert(i32 %547)
  %549 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %550 = call i32 @recomputeColumnsNotIndexed(%struct.TYPE_31__* %549)
  br label %551

551:                                              ; preds = %534, %489, %358, %147, %98
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeChangeP3(i32*, i64, i32) #1

declare dso_local i32 @sqlite3TokenInit(i32*, i32) #1

declare dso_local %struct.TYPE_32__* @sqlite3ExprListAppend(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @sqlite3ExprAlloc(%struct.TYPE_28__*, i32, i32*, i32) #1

declare dso_local i32 @sqlite3RenameTokenRemap(%struct.TYPE_30__*, i32, i64*) #1

declare dso_local i32 @sqlite3CreateIndex(%struct.TYPE_30__*, i32, i32, i32, %struct.TYPE_32__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_31__* @sqlite3PrimaryKeyIndex(%struct.TYPE_29__*) #1

declare dso_local i64 @isDupColumn(%struct.TYPE_31__*, i32, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @hasColumn(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeOpcode(i32*, i64, i32) #1

declare dso_local i64 @IsPrimaryKeyIndex(%struct.TYPE_31__*) #1

declare dso_local i64 @resizeIndexObject(%struct.TYPE_28__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @recomputeColumnsNotIndexed(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
