; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_data.c_getdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_data.c_getdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbl_node = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8 }
%struct.tbl_span = type { %struct.tbl_dat*, %struct.tbl_dat*, %struct.tbl_span*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.tbl_dat = type { i8*, i64, %struct.tbl_cell*, %struct.tbl_dat*, i64, i64, i64 }
%struct.tbl_cell = type { i64, i64, %struct.tbl_cell* }
%struct.TYPE_6__ = type { %struct.tbl_cell*, %struct.tbl_cell* }
%struct.TYPE_5__ = type { i64 }

@TBL_CELL_SPAN = common dso_local global i64 0, align 8
@TBL_CELL_LEFT = common dso_local global i64 0, align 8
@MANDOCERR_TBLDATA_EXTRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TBL_DATA_NONE = common dso_local global i64 0, align 8
@TBL_CELL_DOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"\\^\00", align 1
@TBL_PART_CDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@TBL_DATA_HORIZ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@TBL_DATA_DHORIZ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"\\_\00", align 1
@TBL_DATA_NHORIZ = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"\\=\00", align 1
@TBL_DATA_NDHORIZ = common dso_local global i64 0, align 8
@TBL_DATA_DATA = common dso_local global i64 0, align 8
@TBL_CELL_HORIZ = common dso_local global i64 0, align 8
@TBL_CELL_DHORIZ = common dso_local global i64 0, align 8
@MANDOCERR_TBLDATA_SPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tbl_node*, %struct.tbl_span*, i32, i8*, i32*)* @getdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getdata(%struct.tbl_node* %0, %struct.tbl_span* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.tbl_node*, align 8
  %7 = alloca %struct.tbl_span*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.tbl_dat*, align 8
  %12 = alloca %struct.tbl_dat*, align 8
  %13 = alloca %struct.tbl_cell*, align 8
  %14 = alloca %struct.tbl_span*, align 8
  %15 = alloca i32, align 4
  store %struct.tbl_node* %0, %struct.tbl_node** %6, align 8
  store %struct.tbl_span* %1, %struct.tbl_span** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %43, %5
  %19 = load i8*, i8** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %18
  %28 = load i8*, i8** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load %struct.tbl_node*, %struct.tbl_node** %6, align 8
  %36 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 4
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %34, %39
  br label %41

41:                                               ; preds = %27, %18
  %42 = phi i1 [ false, %18 ], [ %40, %27 ]
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %18

47:                                               ; preds = %41
  %48 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %49 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %48, i32 0, i32 0
  %50 = load %struct.tbl_dat*, %struct.tbl_dat** %49, align 8
  %51 = icmp eq %struct.tbl_dat* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %54 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %53, i32 0, i32 3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.tbl_cell*, %struct.tbl_cell** %56, align 8
  br label %66

58:                                               ; preds = %47
  %59 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %60 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %59, i32 0, i32 0
  %61 = load %struct.tbl_dat*, %struct.tbl_dat** %60, align 8
  %62 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %61, i32 0, i32 2
  %63 = load %struct.tbl_cell*, %struct.tbl_cell** %62, align 8
  %64 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %63, i32 0, i32 2
  %65 = load %struct.tbl_cell*, %struct.tbl_cell** %64, align 8
  br label %66

66:                                               ; preds = %58, %52
  %67 = phi %struct.tbl_cell* [ %57, %52 ], [ %65, %58 ]
  store %struct.tbl_cell* %67, %struct.tbl_cell** %13, align 8
  br label %68

68:                                               ; preds = %79, %66
  %69 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %70 = icmp ne %struct.tbl_cell* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %73 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TBL_CELL_SPAN, align 8
  %76 = icmp eq i64 %74, %75
  br label %77

77:                                               ; preds = %71, %68
  %78 = phi i1 [ false, %68 ], [ %76, %71 ]
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %81 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %80, i32 0, i32 2
  %82 = load %struct.tbl_cell*, %struct.tbl_cell** %81, align 8
  store %struct.tbl_cell* %82, %struct.tbl_cell** %13, align 8
  br label %68

83:                                               ; preds = %77
  %84 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %85 = icmp eq %struct.tbl_cell* %84, null
  br i1 %85, label %86, label %152

86:                                               ; preds = %83
  %87 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %88 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %87, i32 0, i32 3
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.tbl_cell*, %struct.tbl_cell** %90, align 8
  %92 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  %95 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %96 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %95, i32 0, i32 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %94, %99
  br i1 %100, label %101, label %128

101:                                              ; preds = %86
  %102 = call %struct.tbl_cell* @mandoc_calloc(i32 1, i32 24)
  store %struct.tbl_cell* %102, %struct.tbl_cell** %13, align 8
  %103 = load i64, i64* @TBL_CELL_LEFT, align 8
  %104 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %105 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %107 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %108 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %107, i32 0, i32 3
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.tbl_cell*, %struct.tbl_cell** %110, align 8
  %112 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %111, i32 0, i32 2
  store %struct.tbl_cell* %106, %struct.tbl_cell** %112, align 8
  %113 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %114 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %113, i32 0, i32 3
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load %struct.tbl_cell*, %struct.tbl_cell** %116, align 8
  %118 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  %121 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %122 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %124 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %125 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %124, i32 0, i32 3
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store %struct.tbl_cell* %123, %struct.tbl_cell** %127, align 8
  br label %151

128:                                              ; preds = %86
  %129 = load i32, i32* @MANDOCERR_TBLDATA_EXTRA, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i8*, i8** %9, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = call i32 @mandoc_msg(i32 %129, i32 %130, i32 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %146, %128
  %138 = load i8*, i8** %9, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %137
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %137

150:                                              ; preds = %137
  br label %440

151:                                              ; preds = %101
  br label %152

152:                                              ; preds = %151, %83
  %153 = call %struct.tbl_dat* @mandoc_malloc(i32 56)
  store %struct.tbl_dat* %153, %struct.tbl_dat** %11, align 8
  %154 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %155 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %156 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %155, i32 0, i32 2
  store %struct.tbl_cell* %154, %struct.tbl_cell** %156, align 8
  %157 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %158 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %157, i32 0, i32 3
  store %struct.tbl_dat* null, %struct.tbl_dat** %158, align 8
  %159 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %160 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %159, i32 0, i32 0
  store i8* null, i8** %160, align 8
  %161 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %162 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %161, i32 0, i32 4
  store i64 0, i64* %162, align 8
  %163 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %164 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %163, i32 0, i32 5
  store i64 0, i64* %164, align 8
  %165 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %166 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %165, i32 0, i32 6
  store i64 0, i64* %166, align 8
  %167 = load i64, i64* @TBL_DATA_NONE, align 8
  %168 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %169 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  %170 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %171 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @TBL_CELL_DOWN, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %198, label %175

175:                                              ; preds = %152
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %15, align 4
  %179 = sub nsw i32 %177, %178
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %181, label %255

181:                                              ; preds = %175
  %182 = load i8*, i8** %9, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 92
  br i1 %188, label %189, label %255

189:                                              ; preds = %181
  %190 = load i8*, i8** %9, align 8
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 94
  br i1 %197, label %198, label %255

198:                                              ; preds = %189, %152
  %199 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  store %struct.tbl_span* %199, %struct.tbl_span** %14, align 8
  br label %200

200:                                              ; preds = %253, %198
  %201 = load %struct.tbl_span*, %struct.tbl_span** %14, align 8
  %202 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %201, i32 0, i32 2
  %203 = load %struct.tbl_span*, %struct.tbl_span** %202, align 8
  store %struct.tbl_span* %203, %struct.tbl_span** %14, align 8
  %204 = icmp ne %struct.tbl_span* %203, null
  br i1 %204, label %205, label %254

205:                                              ; preds = %200
  %206 = load %struct.tbl_span*, %struct.tbl_span** %14, align 8
  %207 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %206, i32 0, i32 1
  %208 = load %struct.tbl_dat*, %struct.tbl_dat** %207, align 8
  store %struct.tbl_dat* %208, %struct.tbl_dat** %12, align 8
  br label %209

209:                                              ; preds = %226, %205
  %210 = load %struct.tbl_dat*, %struct.tbl_dat** %12, align 8
  %211 = icmp ne %struct.tbl_dat* %210, null
  br i1 %211, label %212, label %224

212:                                              ; preds = %209
  %213 = load %struct.tbl_dat*, %struct.tbl_dat** %12, align 8
  %214 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %213, i32 0, i32 2
  %215 = load %struct.tbl_cell*, %struct.tbl_cell** %214, align 8
  %216 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %219 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %218, i32 0, i32 2
  %220 = load %struct.tbl_cell*, %struct.tbl_cell** %219, align 8
  %221 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp slt i64 %217, %222
  br label %224

224:                                              ; preds = %212, %209
  %225 = phi i1 [ false, %209 ], [ %223, %212 ]
  br i1 %225, label %226, label %230

226:                                              ; preds = %224
  %227 = load %struct.tbl_dat*, %struct.tbl_dat** %12, align 8
  %228 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %227, i32 0, i32 3
  %229 = load %struct.tbl_dat*, %struct.tbl_dat** %228, align 8
  store %struct.tbl_dat* %229, %struct.tbl_dat** %12, align 8
  br label %209

230:                                              ; preds = %224
  %231 = load %struct.tbl_dat*, %struct.tbl_dat** %12, align 8
  %232 = icmp eq %struct.tbl_dat* %231, null
  br i1 %232, label %233, label %234

233:                                              ; preds = %230
  br label %254

234:                                              ; preds = %230
  %235 = load %struct.tbl_dat*, %struct.tbl_dat** %12, align 8
  %236 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %235, i32 0, i32 2
  %237 = load %struct.tbl_cell*, %struct.tbl_cell** %236, align 8
  %238 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @TBL_CELL_DOWN, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %253

242:                                              ; preds = %234
  %243 = load %struct.tbl_dat*, %struct.tbl_dat** %12, align 8
  %244 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = call i64 @strcmp(i8* %245, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %242
  %249 = load %struct.tbl_dat*, %struct.tbl_dat** %12, align 8
  %250 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %249, i32 0, i32 5
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, 1
  store i64 %252, i64* %250, align 8
  br label %254

253:                                              ; preds = %242, %234
  br label %200

254:                                              ; preds = %248, %233, %200
  br label %255

255:                                              ; preds = %254, %189, %181, %175
  %256 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %257 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %256, i32 0, i32 2
  %258 = load %struct.tbl_cell*, %struct.tbl_cell** %257, align 8
  store %struct.tbl_cell* %258, %struct.tbl_cell** %13, align 8
  br label %259

259:                                              ; preds = %275, %255
  %260 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %261 = icmp ne %struct.tbl_cell* %260, null
  br i1 %261, label %262, label %279

262:                                              ; preds = %259
  %263 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %264 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @TBL_CELL_SPAN, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %262
  %269 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %270 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = add nsw i64 %271, 1
  store i64 %272, i64* %270, align 8
  br label %274

273:                                              ; preds = %262
  br label %279

274:                                              ; preds = %268
  br label %275

275:                                              ; preds = %274
  %276 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %277 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %276, i32 0, i32 2
  %278 = load %struct.tbl_cell*, %struct.tbl_cell** %277, align 8
  store %struct.tbl_cell* %278, %struct.tbl_cell** %13, align 8
  br label %259

279:                                              ; preds = %273, %259
  %280 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %281 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %280, i32 0, i32 0
  %282 = load %struct.tbl_dat*, %struct.tbl_dat** %281, align 8
  %283 = icmp eq %struct.tbl_dat* %282, null
  br i1 %283, label %284, label %288

284:                                              ; preds = %279
  %285 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %286 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %287 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %286, i32 0, i32 1
  store %struct.tbl_dat* %285, %struct.tbl_dat** %287, align 8
  br label %294

288:                                              ; preds = %279
  %289 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %290 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %291 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %290, i32 0, i32 0
  %292 = load %struct.tbl_dat*, %struct.tbl_dat** %291, align 8
  %293 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %292, i32 0, i32 3
  store %struct.tbl_dat* %289, %struct.tbl_dat** %293, align 8
  br label %294

294:                                              ; preds = %288, %284
  %295 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %296 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %297 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %296, i32 0, i32 0
  store %struct.tbl_dat* %295, %struct.tbl_dat** %297, align 8
  %298 = load i32*, i32** %10, align 8
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %15, align 4
  %301 = sub nsw i32 %299, %300
  %302 = icmp eq i32 %301, 2
  br i1 %302, label %303, label %324

303:                                              ; preds = %294
  %304 = load i8*, i8** %9, align 8
  %305 = load i32, i32* %15, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %304, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp eq i32 %309, 84
  br i1 %310, label %311, label %324

311:                                              ; preds = %303
  %312 = load i8*, i8** %9, align 8
  %313 = load i32, i32* %15, align 4
  %314 = add nsw i32 %313, 1
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %312, i64 %315
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp eq i32 %318, 123
  br i1 %319, label %320, label %324

320:                                              ; preds = %311
  %321 = load i32, i32* @TBL_PART_CDATA, align 4
  %322 = load %struct.tbl_node*, %struct.tbl_node** %6, align 8
  %323 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %322, i32 0, i32 0
  store i32 %321, i32* %323, align 4
  br label %440

324:                                              ; preds = %311, %303, %294
  %325 = load i8*, i8** %9, align 8
  %326 = load i32, i32* %15, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %325, i64 %327
  %329 = load i32*, i32** %10, align 8
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* %15, align 4
  %332 = sub nsw i32 %330, %331
  %333 = call i8* @mandoc_strndup(i8* %328, i32 %332)
  %334 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %335 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %334, i32 0, i32 0
  store i8* %333, i8** %335, align 8
  %336 = load i8*, i8** %9, align 8
  %337 = load i32*, i32** %10, align 8
  %338 = load i32, i32* %337, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8, i8* %336, i64 %339
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i32
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %324
  %345 = load i32*, i32** %10, align 8
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %345, align 4
  br label %348

348:                                              ; preds = %344, %324
  %349 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %350 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %349, i32 0, i32 0
  %351 = load i8*, i8** %350, align 8
  %352 = call i64 @strcmp(i8* %351, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %358, label %354

354:                                              ; preds = %348
  %355 = load i64, i64* @TBL_DATA_HORIZ, align 8
  %356 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %357 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %356, i32 0, i32 1
  store i64 %355, i64* %357, align 8
  br label %395

358:                                              ; preds = %348
  %359 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %360 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %359, i32 0, i32 0
  %361 = load i8*, i8** %360, align 8
  %362 = call i64 @strcmp(i8* %361, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %368, label %364

364:                                              ; preds = %358
  %365 = load i64, i64* @TBL_DATA_DHORIZ, align 8
  %366 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %367 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %366, i32 0, i32 1
  store i64 %365, i64* %367, align 8
  br label %394

368:                                              ; preds = %358
  %369 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %370 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %369, i32 0, i32 0
  %371 = load i8*, i8** %370, align 8
  %372 = call i64 @strcmp(i8* %371, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %378, label %374

374:                                              ; preds = %368
  %375 = load i64, i64* @TBL_DATA_NHORIZ, align 8
  %376 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %377 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %376, i32 0, i32 1
  store i64 %375, i64* %377, align 8
  br label %393

378:                                              ; preds = %368
  %379 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %380 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %379, i32 0, i32 0
  %381 = load i8*, i8** %380, align 8
  %382 = call i64 @strcmp(i8* %381, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %388, label %384

384:                                              ; preds = %378
  %385 = load i64, i64* @TBL_DATA_NDHORIZ, align 8
  %386 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %387 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %386, i32 0, i32 1
  store i64 %385, i64* %387, align 8
  br label %392

388:                                              ; preds = %378
  %389 = load i64, i64* @TBL_DATA_DATA, align 8
  %390 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %391 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %390, i32 0, i32 1
  store i64 %389, i64* %391, align 8
  br label %392

392:                                              ; preds = %388, %384
  br label %393

393:                                              ; preds = %392, %374
  br label %394

394:                                              ; preds = %393, %364
  br label %395

395:                                              ; preds = %394, %354
  %396 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %397 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %396, i32 0, i32 2
  %398 = load %struct.tbl_cell*, %struct.tbl_cell** %397, align 8
  %399 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @TBL_CELL_HORIZ, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %419, label %403

403:                                              ; preds = %395
  %404 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %405 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %404, i32 0, i32 2
  %406 = load %struct.tbl_cell*, %struct.tbl_cell** %405, align 8
  %407 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = load i64, i64* @TBL_CELL_DHORIZ, align 8
  %410 = icmp eq i64 %408, %409
  br i1 %410, label %419, label %411

411:                                              ; preds = %403
  %412 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %413 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %412, i32 0, i32 2
  %414 = load %struct.tbl_cell*, %struct.tbl_cell** %413, align 8
  %415 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @TBL_CELL_DOWN, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %419, label %440

419:                                              ; preds = %411, %403, %395
  %420 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %421 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = load i64, i64* @TBL_DATA_DATA, align 8
  %424 = icmp eq i64 %422, %423
  br i1 %424, label %425, label %440

425:                                              ; preds = %419
  %426 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %427 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %426, i32 0, i32 0
  %428 = load i8*, i8** %427, align 8
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %440

432:                                              ; preds = %425
  %433 = load i32, i32* @MANDOCERR_TBLDATA_SPAN, align 4
  %434 = load i32, i32* %8, align 4
  %435 = load i32, i32* %15, align 4
  %436 = load %struct.tbl_dat*, %struct.tbl_dat** %11, align 8
  %437 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %436, i32 0, i32 0
  %438 = load i8*, i8** %437, align 8
  %439 = call i32 @mandoc_msg(i32 %433, i32 %434, i32 %435, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %438)
  br label %440

440:                                              ; preds = %150, %320, %432, %425, %419, %411
  ret void
}

declare dso_local %struct.tbl_cell* @mandoc_calloc(i32, i32) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i8*) #1

declare dso_local %struct.tbl_dat* @mandoc_malloc(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @mandoc_strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
