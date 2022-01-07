; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_tbl_hrule.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_tbl_hrule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i64, i64, i32 (%struct.termp*)*, %struct.TYPE_11__, %struct.TYPE_10__*, i32 (%struct.termp*, i64)* }
%struct.TYPE_11__ = type { %struct.roffcol* }
%struct.roffcol = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.tbl_span = type { i64, %struct.TYPE_8__*, %struct.TYPE_12__*, %struct.TYPE_9__*, %struct.tbl_dat* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.tbl_cell* }
%struct.TYPE_7__ = type { i64 }
%struct.tbl_cell = type { i64, i32, i32, %struct.tbl_cell* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.tbl_dat* }
%struct.tbl_dat = type { i32*, %struct.tbl_dat*, %struct.tbl_cell* }

@TBL_SPAN_DATA = common dso_local global i64 0, align 8
@TBL_OPT_DBOX = common dso_local global i32 0, align 4
@TERMENC_UTF8 = common dso_local global i64 0, align 8
@TBL_OPT_BOX = common dso_local global i32 0, align 4
@TBL_OPT_ALLBOX = common dso_local global i32 0, align 4
@TBL_SPAN_DHORIZ = common dso_local global i64 0, align 8
@BUP = common dso_local global i32 0, align 4
@BDOWN = common dso_local global i32 0, align 4
@TBL_CELL_DOWN = common dso_local global i64 0, align 8
@BRIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\\^\00", align 1
@BHORIZ = common dso_local global i32 0, align 4
@TBL_CELL_SPAN = common dso_local global i64 0, align 8
@BLEFT = common dso_local global i32 0, align 4
@TERMENC_ASCII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, %struct.tbl_span*, %struct.tbl_span*, %struct.tbl_span*, i32)* @tbl_hrule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tbl_hrule(%struct.termp* %0, %struct.tbl_span* %1, %struct.tbl_span* %2, %struct.tbl_span* %3, i32 %4) #0 {
  %6 = alloca %struct.termp*, align 8
  %7 = alloca %struct.tbl_span*, align 8
  %8 = alloca %struct.tbl_span*, align 8
  %9 = alloca %struct.tbl_span*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tbl_cell*, align 8
  %12 = alloca %struct.tbl_cell*, align 8
  %13 = alloca %struct.tbl_cell*, align 8
  %14 = alloca %struct.tbl_dat*, align 8
  %15 = alloca %struct.roffcol*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %6, align 8
  store %struct.tbl_span* %1, %struct.tbl_span** %7, align 8
  store %struct.tbl_span* %2, %struct.tbl_span** %8, align 8
  store %struct.tbl_span* %3, %struct.tbl_span** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %24 = icmp eq %struct.tbl_span* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %32

26:                                               ; preds = %5
  %27 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %28 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.tbl_cell*, %struct.tbl_cell** %30, align 8
  br label %32

32:                                               ; preds = %26, %25
  %33 = phi %struct.tbl_cell* [ null, %25 ], [ %31, %26 ]
  store %struct.tbl_cell* %33, %struct.tbl_cell** %11, align 8
  %34 = load %struct.tbl_span*, %struct.tbl_span** %8, align 8
  %35 = icmp eq %struct.tbl_span* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %43

37:                                               ; preds = %32
  %38 = load %struct.tbl_span*, %struct.tbl_span** %8, align 8
  %39 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.tbl_cell*, %struct.tbl_cell** %41, align 8
  br label %43

43:                                               ; preds = %37, %36
  %44 = phi %struct.tbl_cell* [ null, %36 ], [ %42, %37 ]
  store %struct.tbl_cell* %44, %struct.tbl_cell** %12, align 8
  %45 = load %struct.tbl_span*, %struct.tbl_span** %9, align 8
  %46 = icmp eq %struct.tbl_span* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %54

48:                                               ; preds = %43
  %49 = load %struct.tbl_span*, %struct.tbl_span** %9, align 8
  %50 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.tbl_cell*, %struct.tbl_cell** %52, align 8
  br label %54

54:                                               ; preds = %48, %47
  %55 = phi %struct.tbl_cell* [ null, %47 ], [ %53, %48 ]
  store %struct.tbl_cell* %55, %struct.tbl_cell** %13, align 8
  store %struct.tbl_dat* null, %struct.tbl_dat** %14, align 8
  %56 = load %struct.tbl_span*, %struct.tbl_span** %9, align 8
  %57 = icmp ne %struct.tbl_span* %56, null
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load %struct.tbl_span*, %struct.tbl_span** %9, align 8
  %60 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TBL_SPAN_DATA, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.tbl_span*, %struct.tbl_span** %9, align 8
  %66 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %65, i32 0, i32 4
  %67 = load %struct.tbl_dat*, %struct.tbl_dat** %66, align 8
  store %struct.tbl_dat* %67, %struct.tbl_dat** %14, align 8
  br label %80

68:                                               ; preds = %58
  %69 = load %struct.tbl_span*, %struct.tbl_span** %9, align 8
  %70 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %69, i32 0, i32 3
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = icmp ne %struct.TYPE_9__* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.tbl_span*, %struct.tbl_span** %9, align 8
  %75 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %74, i32 0, i32 3
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.tbl_dat*, %struct.tbl_dat** %77, align 8
  store %struct.tbl_dat* %78, %struct.tbl_dat** %14, align 8
  br label %79

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79, %64
  br label %81

81:                                               ; preds = %80, %54
  %82 = load %struct.tbl_span*, %struct.tbl_span** %8, align 8
  %83 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %82, i32 0, i32 2
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* @TBL_OPT_DBOX, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %81
  %92 = load %struct.termp*, %struct.termp** %6, align 8
  %93 = getelementptr inbounds %struct.termp, %struct.termp* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TERMENC_UTF8, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 2, i32 1
  br label %108

99:                                               ; preds = %81
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* @TBL_OPT_BOX, align 4
  %102 = load i32, i32* @TBL_OPT_ALLBOX, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 1, i32 0
  br label %108

108:                                              ; preds = %99, %91
  %109 = phi i32 [ %98, %91 ], [ %107, %99 ]
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @TBL_OPT_DBOX, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @TBL_OPT_BOX, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113, %108
  %118 = load i32, i32* %17, align 4
  br label %127

119:                                              ; preds = %113
  %120 = load %struct.tbl_span*, %struct.tbl_span** %8, align 8
  %121 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TBL_SPAN_DHORIZ, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 2, i32 1
  br label %127

127:                                              ; preds = %119, %117
  %128 = phi i32 [ %118, %117 ], [ %126, %119 ]
  store i32 %128, i32* %18, align 4
  %129 = load %struct.termp*, %struct.termp** %6, align 8
  %130 = getelementptr inbounds %struct.termp, %struct.termp* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %127
  %134 = load %struct.termp*, %struct.termp** %6, align 8
  %135 = getelementptr inbounds %struct.termp, %struct.termp* %134, i32 0, i32 5
  %136 = load i32 (%struct.termp*, i64)*, i32 (%struct.termp*, i64)** %135, align 8
  %137 = load %struct.termp*, %struct.termp** %6, align 8
  %138 = load %struct.termp*, %struct.termp** %6, align 8
  %139 = getelementptr inbounds %struct.termp, %struct.termp* %138, i32 0, i32 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 %136(%struct.termp* %137, i64 %142)
  %144 = load %struct.termp*, %struct.termp** %6, align 8
  %145 = getelementptr inbounds %struct.termp, %struct.termp* %144, i32 0, i32 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.termp*, %struct.termp** %6, align 8
  %150 = getelementptr inbounds %struct.termp, %struct.termp* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %133, %127
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %195

154:                                              ; preds = %151
  %155 = load %struct.termp*, %struct.termp** %6, align 8
  %156 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %157 = icmp eq %struct.tbl_span* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %163

159:                                              ; preds = %154
  %160 = load i32, i32* @BUP, align 4
  %161 = load i32, i32* %17, align 4
  %162 = mul nsw i32 %160, %161
  br label %163

163:                                              ; preds = %159, %158
  %164 = phi i32 [ 0, %158 ], [ %162, %159 ]
  %165 = load %struct.tbl_span*, %struct.tbl_span** %9, align 8
  %166 = icmp eq %struct.tbl_span* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %172

168:                                              ; preds = %163
  %169 = load i32, i32* @BDOWN, align 4
  %170 = load i32, i32* %17, align 4
  %171 = mul nsw i32 %169, %170
  br label %172

172:                                              ; preds = %168, %167
  %173 = phi i32 [ 0, %167 ], [ %171, %168 ]
  %174 = add nsw i32 %164, %173
  %175 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %176 = icmp eq %struct.tbl_span* %175, null
  br i1 %176, label %186, label %177

177:                                              ; preds = %172
  %178 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %179 = icmp eq %struct.tbl_cell* %178, null
  br i1 %179, label %186, label %180

180:                                              ; preds = %177
  %181 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %182 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @TBL_CELL_DOWN, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %180, %177, %172
  %187 = load i32, i32* @BRIGHT, align 4
  %188 = load i32, i32* %18, align 4
  %189 = mul nsw i32 %187, %188
  br label %191

190:                                              ; preds = %180
  br label %191

191:                                              ; preds = %190, %186
  %192 = phi i32 [ %189, %186 ], [ 0, %190 ]
  %193 = add nsw i32 %174, %192
  %194 = call i32 @tbl_direct_border(%struct.termp* %155, i32 %193, i32 1)
  br label %195

195:                                              ; preds = %191, %151
  %196 = load %struct.termp*, %struct.termp** %6, align 8
  %197 = getelementptr inbounds %struct.termp, %struct.termp* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load %struct.roffcol*, %struct.roffcol** %198, align 8
  store %struct.roffcol* %199, %struct.roffcol** %15, align 8
  br label %200

200:                                              ; preds = %487, %195
  %201 = load %struct.tbl_cell*, %struct.tbl_cell** %12, align 8
  %202 = icmp eq %struct.tbl_cell* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load %struct.roffcol*, %struct.roffcol** %15, align 8
  %205 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %204, i32 1
  store %struct.roffcol* %205, %struct.roffcol** %15, align 8
  br label %216

206:                                              ; preds = %200
  %207 = load %struct.termp*, %struct.termp** %6, align 8
  %208 = getelementptr inbounds %struct.termp, %struct.termp* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load %struct.roffcol*, %struct.roffcol** %209, align 8
  %211 = load %struct.tbl_cell*, %struct.tbl_cell** %12, align 8
  %212 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %210, i64 %214
  store %struct.roffcol* %215, %struct.roffcol** %15, align 8
  br label %216

216:                                              ; preds = %206, %203
  %217 = load %struct.tbl_cell*, %struct.tbl_cell** %11, align 8
  %218 = icmp eq %struct.tbl_cell* %217, null
  br i1 %218, label %242, label %219

219:                                              ; preds = %216
  %220 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %221 = icmp eq %struct.tbl_cell* %220, null
  br i1 %221, label %242, label %222

222:                                              ; preds = %219
  %223 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %224 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @TBL_CELL_DOWN, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %244

228:                                              ; preds = %222
  %229 = load %struct.tbl_dat*, %struct.tbl_dat** %14, align 8
  %230 = icmp eq %struct.tbl_dat* %229, null
  br i1 %230, label %242, label %231

231:                                              ; preds = %228
  %232 = load %struct.tbl_dat*, %struct.tbl_dat** %14, align 8
  %233 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = icmp eq i32* %234, null
  br i1 %235, label %242, label %236

236:                                              ; preds = %231
  %237 = load %struct.tbl_dat*, %struct.tbl_dat** %14, align 8
  %238 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = call i64 @strcmp(i32* %239, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %236, %231, %228, %219, %216
  %243 = load i32, i32* %18, align 4
  br label %245

244:                                              ; preds = %236, %222
  br label %245

245:                                              ; preds = %244, %242
  %246 = phi i32 [ %243, %242 ], [ 0, %244 ]
  store i32 %246, i32* %19, align 4
  %247 = load %struct.termp*, %struct.termp** %6, align 8
  %248 = load i32, i32* @BHORIZ, align 4
  %249 = load i32, i32* %19, align 4
  %250 = mul nsw i32 %248, %249
  %251 = load %struct.roffcol*, %struct.roffcol** %15, align 8
  %252 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.roffcol*, %struct.roffcol** %15, align 8
  %255 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = sdiv i32 %256, 2
  %258 = add nsw i32 %253, %257
  %259 = call i32 @tbl_direct_border(%struct.termp* %247, i32 %250, i32 %258)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  %260 = load %struct.tbl_cell*, %struct.tbl_cell** %11, align 8
  %261 = icmp ne %struct.tbl_cell* %260, null
  br i1 %261, label %262, label %283

262:                                              ; preds = %245
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* @TBL_OPT_DBOX, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %279

266:                                              ; preds = %262
  %267 = load %struct.tbl_cell*, %struct.tbl_cell** %11, align 8
  %268 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  store i32 %269, i32* %21, align 4
  %270 = load i32, i32* %21, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %266
  %273 = load i32, i32* %16, align 4
  %274 = load i32, i32* @TBL_OPT_ALLBOX, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  store i32 1, i32* %21, align 4
  br label %278

278:                                              ; preds = %277, %272, %266
  br label %279

279:                                              ; preds = %278, %262
  %280 = load %struct.tbl_cell*, %struct.tbl_cell** %11, align 8
  %281 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %280, i32 0, i32 3
  %282 = load %struct.tbl_cell*, %struct.tbl_cell** %281, align 8
  store %struct.tbl_cell* %282, %struct.tbl_cell** %11, align 8
  br label %293

283:                                              ; preds = %245
  %284 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %285 = icmp ne %struct.tbl_span* %284, null
  br i1 %285, label %286, label %292

286:                                              ; preds = %283
  %287 = load i32, i32* %16, align 4
  %288 = load i32, i32* @TBL_OPT_ALLBOX, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %286
  store i32 1, i32* %21, align 4
  br label %292

292:                                              ; preds = %291, %286, %283
  br label %293

293:                                              ; preds = %292, %279
  %294 = load %struct.tbl_cell*, %struct.tbl_cell** %12, align 8
  %295 = icmp ne %struct.tbl_cell* %294, null
  br i1 %295, label %296, label %300

296:                                              ; preds = %293
  %297 = load %struct.tbl_cell*, %struct.tbl_cell** %12, align 8
  %298 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %297, i32 0, i32 3
  %299 = load %struct.tbl_cell*, %struct.tbl_cell** %298, align 8
  store %struct.tbl_cell* %299, %struct.tbl_cell** %12, align 8
  br label %300

300:                                              ; preds = %296, %293
  %301 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %302 = icmp ne %struct.tbl_cell* %301, null
  br i1 %302, label %303, label %340

303:                                              ; preds = %300
  %304 = load i32, i32* %10, align 4
  %305 = load i32, i32* @TBL_OPT_DBOX, align 4
  %306 = icmp ne i32 %304, %305
  br i1 %306, label %307, label %320

307:                                              ; preds = %303
  %308 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %309 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  store i32 %310, i32* %22, align 4
  %311 = load i32, i32* %22, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %307
  %314 = load i32, i32* %16, align 4
  %315 = load i32, i32* @TBL_OPT_ALLBOX, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %313
  store i32 1, i32* %22, align 4
  br label %319

319:                                              ; preds = %318, %313, %307
  br label %320

320:                                              ; preds = %319, %303
  %321 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %322 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %321, i32 0, i32 3
  %323 = load %struct.tbl_cell*, %struct.tbl_cell** %322, align 8
  store %struct.tbl_cell* %323, %struct.tbl_cell** %13, align 8
  br label %324

324:                                              ; preds = %335, %320
  %325 = load %struct.tbl_dat*, %struct.tbl_dat** %14, align 8
  %326 = icmp ne %struct.tbl_dat* %325, null
  br i1 %326, label %327, label %333

327:                                              ; preds = %324
  %328 = load %struct.tbl_dat*, %struct.tbl_dat** %14, align 8
  %329 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %328, i32 0, i32 2
  %330 = load %struct.tbl_cell*, %struct.tbl_cell** %329, align 8
  %331 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %332 = icmp ne %struct.tbl_cell* %330, %331
  br label %333

333:                                              ; preds = %327, %324
  %334 = phi i1 [ false, %324 ], [ %332, %327 ]
  br i1 %334, label %335, label %339

335:                                              ; preds = %333
  %336 = load %struct.tbl_dat*, %struct.tbl_dat** %14, align 8
  %337 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %336, i32 0, i32 1
  %338 = load %struct.tbl_dat*, %struct.tbl_dat** %337, align 8
  store %struct.tbl_dat* %338, %struct.tbl_dat** %14, align 8
  br label %324

339:                                              ; preds = %333
  br label %350

340:                                              ; preds = %300
  %341 = load %struct.tbl_span*, %struct.tbl_span** %9, align 8
  %342 = icmp ne %struct.tbl_span* %341, null
  br i1 %342, label %343, label %349

343:                                              ; preds = %340
  %344 = load i32, i32* %16, align 4
  %345 = load i32, i32* @TBL_OPT_ALLBOX, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %343
  store i32 1, i32* %22, align 4
  br label %349

349:                                              ; preds = %348, %343, %340
  br label %350

350:                                              ; preds = %349, %339
  %351 = load %struct.roffcol*, %struct.roffcol** %15, align 8
  %352 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %351, i64 1
  %353 = load %struct.termp*, %struct.termp** %6, align 8
  %354 = getelementptr inbounds %struct.termp, %struct.termp* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 0
  %356 = load %struct.roffcol*, %struct.roffcol** %355, align 8
  %357 = load %struct.tbl_span*, %struct.tbl_span** %8, align 8
  %358 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %357, i32 0, i32 2
  %359 = load %struct.TYPE_12__*, %struct.TYPE_12__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %356, i64 %362
  %364 = icmp eq %struct.roffcol* %352, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %350
  br label %488

366:                                              ; preds = %350
  %367 = load %struct.tbl_cell*, %struct.tbl_cell** %11, align 8
  %368 = icmp ne %struct.tbl_cell* %367, null
  br i1 %368, label %369, label %376

369:                                              ; preds = %366
  %370 = load %struct.tbl_cell*, %struct.tbl_cell** %11, align 8
  %371 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @TBL_CELL_SPAN, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %376

375:                                              ; preds = %369
  store i32 0, i32* %21, align 4
  br label %376

376:                                              ; preds = %375, %369, %366
  %377 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %378 = icmp ne %struct.tbl_cell* %377, null
  br i1 %378, label %379, label %386

379:                                              ; preds = %376
  %380 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %381 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @TBL_CELL_SPAN, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %379
  store i32 0, i32* %22, align 4
  br label %386

386:                                              ; preds = %385, %379, %376
  %387 = load %struct.tbl_cell*, %struct.tbl_cell** %11, align 8
  %388 = icmp eq %struct.tbl_cell* %387, null
  br i1 %388, label %412, label %389

389:                                              ; preds = %386
  %390 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %391 = icmp eq %struct.tbl_cell* %390, null
  br i1 %391, label %412, label %392

392:                                              ; preds = %389
  %393 = load %struct.tbl_cell*, %struct.tbl_cell** %13, align 8
  %394 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @TBL_CELL_DOWN, align 8
  %397 = icmp ne i64 %395, %396
  br i1 %397, label %398, label %414

398:                                              ; preds = %392
  %399 = load %struct.tbl_dat*, %struct.tbl_dat** %14, align 8
  %400 = icmp eq %struct.tbl_dat* %399, null
  br i1 %400, label %412, label %401

401:                                              ; preds = %398
  %402 = load %struct.tbl_dat*, %struct.tbl_dat** %14, align 8
  %403 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  %405 = icmp eq i32* %404, null
  br i1 %405, label %412, label %406

406:                                              ; preds = %401
  %407 = load %struct.tbl_dat*, %struct.tbl_dat** %14, align 8
  %408 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %407, i32 0, i32 0
  %409 = load i32*, i32** %408, align 8
  %410 = call i64 @strcmp(i32* %409, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %406, %401, %398, %389, %386
  %413 = load i32, i32* %18, align 4
  br label %415

414:                                              ; preds = %406, %392
  br label %415

415:                                              ; preds = %414, %412
  %416 = phi i32 [ %413, %412 ], [ 0, %414 ]
  store i32 %416, i32* %20, align 4
  %417 = load %struct.roffcol*, %struct.roffcol** %15, align 8
  %418 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %439

421:                                              ; preds = %415
  %422 = load %struct.termp*, %struct.termp** %6, align 8
  %423 = load i32, i32* @BLEFT, align 4
  %424 = load i32, i32* %19, align 4
  %425 = mul nsw i32 %423, %424
  %426 = load i32, i32* @BRIGHT, align 4
  %427 = load i32, i32* %20, align 4
  %428 = mul nsw i32 %426, %427
  %429 = add nsw i32 %425, %428
  %430 = load i32, i32* @BUP, align 4
  %431 = load i32, i32* %21, align 4
  %432 = mul nsw i32 %430, %431
  %433 = add nsw i32 %429, %432
  %434 = load i32, i32* @BDOWN, align 4
  %435 = load i32, i32* %22, align 4
  %436 = mul nsw i32 %434, %435
  %437 = add nsw i32 %433, %436
  %438 = call i32 @tbl_direct_border(%struct.termp* %422, i32 %437, i32 1)
  br label %439

439:                                              ; preds = %421, %415
  %440 = load %struct.termp*, %struct.termp** %6, align 8
  %441 = getelementptr inbounds %struct.termp, %struct.termp* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @TERMENC_ASCII, align 8
  %444 = icmp ne i64 %442, %443
  br i1 %444, label %451, label %445

445:                                              ; preds = %439
  %446 = load i32, i32* %21, align 4
  %447 = icmp slt i32 %446, 2
  br i1 %447, label %448, label %452

448:                                              ; preds = %445
  %449 = load i32, i32* %22, align 4
  %450 = icmp slt i32 %449, 2
  br i1 %450, label %451, label %452

451:                                              ; preds = %448, %439
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %452

452:                                              ; preds = %451, %448, %445
  %453 = load %struct.roffcol*, %struct.roffcol** %15, align 8
  %454 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = icmp sgt i32 %455, 2
  br i1 %456, label %457, label %471

457:                                              ; preds = %452
  %458 = load %struct.termp*, %struct.termp** %6, align 8
  %459 = load i32, i32* @BHORIZ, align 4
  %460 = load i32, i32* %20, align 4
  %461 = mul nsw i32 %459, %460
  %462 = load i32, i32* @BUP, align 4
  %463 = load i32, i32* %21, align 4
  %464 = mul nsw i32 %462, %463
  %465 = add nsw i32 %461, %464
  %466 = load i32, i32* @BDOWN, align 4
  %467 = load i32, i32* %22, align 4
  %468 = mul nsw i32 %466, %467
  %469 = add nsw i32 %465, %468
  %470 = call i32 @tbl_direct_border(%struct.termp* %458, i32 %469, i32 1)
  br label %471

471:                                              ; preds = %457, %452
  %472 = load %struct.roffcol*, %struct.roffcol** %15, align 8
  %473 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 4
  %475 = icmp sgt i32 %474, 4
  br i1 %475, label %476, label %487

476:                                              ; preds = %471
  %477 = load %struct.termp*, %struct.termp** %6, align 8
  %478 = load i32, i32* @BHORIZ, align 4
  %479 = load i32, i32* %20, align 4
  %480 = mul nsw i32 %478, %479
  %481 = load %struct.roffcol*, %struct.roffcol** %15, align 8
  %482 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = sub nsw i32 %483, 3
  %485 = sdiv i32 %484, 2
  %486 = call i32 @tbl_direct_border(%struct.termp* %477, i32 %480, i32 %485)
  br label %487

487:                                              ; preds = %476, %471
  br label %200

488:                                              ; preds = %365
  %489 = load i32, i32* %10, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %543

491:                                              ; preds = %488
  %492 = load %struct.termp*, %struct.termp** %6, align 8
  %493 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %494 = icmp eq %struct.tbl_span* %493, null
  br i1 %494, label %495, label %496

495:                                              ; preds = %491
  br label %500

496:                                              ; preds = %491
  %497 = load i32, i32* @BUP, align 4
  %498 = load i32, i32* %17, align 4
  %499 = mul nsw i32 %497, %498
  br label %500

500:                                              ; preds = %496, %495
  %501 = phi i32 [ 0, %495 ], [ %499, %496 ]
  %502 = load %struct.tbl_span*, %struct.tbl_span** %9, align 8
  %503 = icmp eq %struct.tbl_span* %502, null
  br i1 %503, label %504, label %505

504:                                              ; preds = %500
  br label %509

505:                                              ; preds = %500
  %506 = load i32, i32* @BDOWN, align 4
  %507 = load i32, i32* %17, align 4
  %508 = mul nsw i32 %506, %507
  br label %509

509:                                              ; preds = %505, %504
  %510 = phi i32 [ 0, %504 ], [ %508, %505 ]
  %511 = add nsw i32 %501, %510
  %512 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %513 = icmp eq %struct.tbl_span* %512, null
  br i1 %513, label %527, label %514

514:                                              ; preds = %509
  %515 = load %struct.tbl_span*, %struct.tbl_span** %9, align 8
  %516 = icmp eq %struct.tbl_span* %515, null
  br i1 %516, label %527, label %517

517:                                              ; preds = %514
  %518 = load %struct.tbl_span*, %struct.tbl_span** %9, align 8
  %519 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %518, i32 0, i32 1
  %520 = load %struct.TYPE_8__*, %struct.TYPE_8__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %520, i32 0, i32 0
  %522 = load %struct.TYPE_7__*, %struct.TYPE_7__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %522, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = load i64, i64* @TBL_CELL_DOWN, align 8
  %526 = icmp ne i64 %524, %525
  br i1 %526, label %527, label %531

527:                                              ; preds = %517, %514, %509
  %528 = load i32, i32* @BLEFT, align 4
  %529 = load i32, i32* %18, align 4
  %530 = mul nsw i32 %528, %529
  br label %532

531:                                              ; preds = %517
  br label %532

532:                                              ; preds = %531, %527
  %533 = phi i32 [ %530, %527 ], [ 0, %531 ]
  %534 = add nsw i32 %511, %533
  %535 = call i32 @tbl_direct_border(%struct.termp* %492, i32 %534, i32 1)
  %536 = load %struct.termp*, %struct.termp** %6, align 8
  %537 = getelementptr inbounds %struct.termp, %struct.termp* %536, i32 0, i32 2
  %538 = load i32 (%struct.termp*)*, i32 (%struct.termp*)** %537, align 8
  %539 = load %struct.termp*, %struct.termp** %6, align 8
  %540 = call i32 %538(%struct.termp* %539)
  %541 = load %struct.termp*, %struct.termp** %6, align 8
  %542 = getelementptr inbounds %struct.termp, %struct.termp* %541, i32 0, i32 1
  store i64 0, i64* %542, align 8
  br label %543

543:                                              ; preds = %532, %488
  ret void
}

declare dso_local i32 @tbl_direct_border(%struct.termp*, i32, i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
