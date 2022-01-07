; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_term_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_term_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_14__, i32 (%struct.termp*)*, %struct.TYPE_13__*, i32 (%struct.termp*, i32)*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.termp*, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.tbl_span = type { i32, %struct.tbl_span*, %struct.TYPE_15__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.tbl_span*, %struct.tbl_dat* }
%struct.TYPE_15__ = type { i32, i32, i64, i64 }
%struct.TYPE_12__ = type { i32, %struct.tbl_cell*, %struct.tbl_cell* }
%struct.tbl_cell = type { i64, i32, i32, %struct.tbl_cell* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.tbl_dat = type { i32, i64, %struct.tbl_dat* }

@term_tbl.offset = internal global i64 0, align 8
@TERMP_NOSPACE = common dso_local global i32 0, align 4
@TERMP_NONOSPACE = common dso_local global i32 0, align 4
@TERMENC_UTF8 = common dso_local global i64 0, align 8
@borders_utf8 = common dso_local global i32 0, align 4
@borders_ascii = common dso_local global i32 0, align 4
@borders_locale = common dso_local global i32 0, align 4
@term_tbl_len = common dso_local global i32 0, align 4
@term_tbl_strlen = common dso_local global i32 0, align 4
@term_tbl_sulen = common dso_local global i32 0, align 4
@TBL_OPT_BOX = common dso_local global i32 0, align 4
@TBL_OPT_DBOX = common dso_local global i32 0, align 4
@TBL_OPT_CENTRE = common dso_local global i32 0, align 4
@TERMENC_ASCII = common dso_local global i64 0, align 8
@TERMP_MULTICOL = common dso_local global i32 0, align 4
@TBL_CELL_SPAN = common dso_local global i64 0, align 8
@TBL_DATA_DHORIZ = common dso_local global i64 0, align 8
@TBL_DATA_HORIZ = common dso_local global i64 0, align 8
@BUP = common dso_local global i32 0, align 4
@BDOWN = common dso_local global i32 0, align 4
@BRIGHT = common dso_local global i32 0, align 4
@BHORIZ = common dso_local global i32 0, align 4
@TBL_OPT_ALLBOX = common dso_local global i32 0, align 4
@BLEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @term_tbl(%struct.termp* %0, %struct.tbl_span* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca %struct.tbl_span*, align 8
  %5 = alloca %struct.tbl_cell*, align 8
  %6 = alloca %struct.tbl_cell*, align 8
  %7 = alloca %struct.tbl_cell*, align 8
  %8 = alloca %struct.tbl_cell*, align 8
  %9 = alloca %struct.tbl_dat*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %3, align 8
  store %struct.tbl_span* %1, %struct.tbl_span** %4, align 8
  %22 = load i32, i32* @TERMP_NOSPACE, align 4
  %23 = load i32, i32* @TERMP_NONOSPACE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.termp*, %struct.termp** %3, align 8
  %26 = getelementptr inbounds %struct.termp, %struct.termp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.termp*, %struct.termp** %3, align 8
  %30 = getelementptr inbounds %struct.termp, %struct.termp* %29, i32 0, i32 6
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load %struct.termp*, %struct.termp** %3, align 8
  %35 = getelementptr inbounds %struct.termp, %struct.termp* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = icmp eq %struct.TYPE_16__* %37, null
  br i1 %38, label %39, label %328

39:                                               ; preds = %2
  %40 = load %struct.termp*, %struct.termp** %3, align 8
  %41 = getelementptr inbounds %struct.termp, %struct.termp* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TERMENC_UTF8, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @borders_utf8, align 4
  br label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @borders_ascii, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* @borders_locale, align 4
  %51 = load i32, i32* @term_tbl_len, align 4
  %52 = load %struct.termp*, %struct.termp** %3, align 8
  %53 = getelementptr inbounds %struct.termp, %struct.termp* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @term_tbl_strlen, align 4
  %56 = load %struct.termp*, %struct.termp** %3, align 8
  %57 = getelementptr inbounds %struct.termp, %struct.termp* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @term_tbl_sulen, align 4
  %60 = load %struct.termp*, %struct.termp** %3, align 8
  %61 = getelementptr inbounds %struct.termp, %struct.termp* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load %struct.termp*, %struct.termp** %3, align 8
  %64 = load %struct.termp*, %struct.termp** %3, align 8
  %65 = getelementptr inbounds %struct.termp, %struct.termp* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  store %struct.termp* %63, %struct.termp** %66, align 8
  %67 = load %struct.termp*, %struct.termp** %3, align 8
  %68 = getelementptr inbounds %struct.termp, %struct.termp* %67, i32 0, i32 7
  %69 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %70 = load %struct.termp*, %struct.termp** %3, align 8
  %71 = getelementptr inbounds %struct.termp, %struct.termp* %70, i32 0, i32 6
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.termp*, %struct.termp** %3, align 8
  %76 = getelementptr inbounds %struct.termp, %struct.termp* %75, i32 0, i32 6
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @tblcalc(%struct.TYPE_14__* %68, %struct.tbl_span* %69, i64 %74, i64 %79)
  %81 = load %struct.termp*, %struct.termp** %3, align 8
  %82 = call i32 @term_tab_set(%struct.termp* %81, i32* null)
  %83 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %84 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %83, i32 0, i32 2
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TBL_OPT_BOX, align 4
  %89 = load i32, i32* @TBL_OPT_DBOX, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %49
  %94 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %95 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %94, i32 0, i32 2
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br label %100

100:                                              ; preds = %93, %49
  %101 = phi i1 [ true, %49 ], [ %99, %93 ]
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %11, align 8
  store i32 0, i32* %14, align 4
  br label %104

104:                                              ; preds = %137, %100
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %107 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %106, i32 0, i32 2
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %105, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %104
  %113 = load %struct.termp*, %struct.termp** %3, align 8
  %114 = getelementptr inbounds %struct.termp, %struct.termp* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %11, align 8
  %124 = load i64, i64* %11, align 8
  %125 = call i32 @term_tab_iset(i64 %124)
  %126 = load %struct.termp*, %struct.termp** %3, align 8
  %127 = getelementptr inbounds %struct.termp, %struct.termp* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %11, align 8
  br label %137

137:                                              ; preds = %112
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %14, align 4
  br label %104

140:                                              ; preds = %104
  %141 = load %struct.termp*, %struct.termp** %3, align 8
  %142 = getelementptr inbounds %struct.termp, %struct.termp* %141, i32 0, i32 6
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* @term_tbl.offset, align 8
  %146 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %147 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %146, i32 0, i32 2
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @TBL_OPT_CENTRE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %289

154:                                              ; preds = %140
  %155 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %156 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %155, i32 0, i32 2
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @TBL_OPT_BOX, align 4
  %161 = load i32, i32* @TBL_OPT_DBOX, align 4
  %162 = or i32 %160, %161
  %163 = and i32 %159, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  br label %186

166:                                              ; preds = %154
  %167 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %168 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %167, i32 0, i32 2
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  %173 = xor i1 %172, true
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %177 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %176, i32 0, i32 2
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  %182 = xor i1 %181, true
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = add nsw i32 %175, %184
  br label %186

186:                                              ; preds = %166, %165
  %187 = phi i32 [ 2, %165 ], [ %185, %166 ]
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %189

189:                                              ; preds = %220, %186
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 1
  %192 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %193 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %192, i32 0, i32 2
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %191, %196
  br i1 %197, label %198, label %223

198:                                              ; preds = %189
  %199 = load %struct.termp*, %struct.termp** %3, align 8
  %200 = getelementptr inbounds %struct.termp, %struct.termp* %199, i32 0, i32 7
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.termp*, %struct.termp** %3, align 8
  %209 = getelementptr inbounds %struct.termp, %struct.termp* %208, i32 0, i32 7
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add i64 %207, %216
  %218 = load i64, i64* %12, align 8
  %219 = add i64 %218, %217
  store i64 %219, i64* %12, align 8
  br label %220

220:                                              ; preds = %198
  %221 = load i32, i32* %14, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %14, align 4
  br label %189

223:                                              ; preds = %189
  %224 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %225 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %224, i32 0, i32 2
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %247

230:                                              ; preds = %223
  %231 = load %struct.termp*, %struct.termp** %3, align 8
  %232 = getelementptr inbounds %struct.termp, %struct.termp* %231, i32 0, i32 7
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %233, align 8
  %235 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %236 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %235, i32 0, i32 2
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %12, align 8
  %246 = add i64 %245, %244
  store i64 %246, i64* %12, align 8
  br label %247

247:                                              ; preds = %230, %223
  %248 = load i64, i64* @term_tbl.offset, align 8
  %249 = load i64, i64* %12, align 8
  %250 = add i64 %248, %249
  %251 = load %struct.termp*, %struct.termp** %3, align 8
  %252 = getelementptr inbounds %struct.termp, %struct.termp* %251, i32 0, i32 6
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp ugt i64 %250, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %247
  %258 = load i64, i64* %12, align 8
  %259 = sub i64 %258, 1
  store i64 %259, i64* %12, align 8
  br label %260

260:                                              ; preds = %257, %247
  %261 = load i64, i64* @term_tbl.offset, align 8
  %262 = load %struct.termp*, %struct.termp** %3, align 8
  %263 = getelementptr inbounds %struct.termp, %struct.termp* %262, i32 0, i32 6
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = add i64 %261, %266
  %268 = load i64, i64* %12, align 8
  %269 = icmp ugt i64 %267, %268
  br i1 %269, label %270, label %281

270:                                              ; preds = %260
  %271 = load i64, i64* @term_tbl.offset, align 8
  %272 = load %struct.termp*, %struct.termp** %3, align 8
  %273 = getelementptr inbounds %struct.termp, %struct.termp* %272, i32 0, i32 6
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = add i64 %271, %276
  %278 = load i64, i64* %12, align 8
  %279 = sub i64 %277, %278
  %280 = udiv i64 %279, 2
  br label %282

281:                                              ; preds = %260
  br label %282

282:                                              ; preds = %281, %270
  %283 = phi i64 [ %280, %270 ], [ 0, %281 ]
  store i64 %283, i64* @term_tbl.offset, align 8
  %284 = load i64, i64* @term_tbl.offset, align 8
  %285 = load %struct.termp*, %struct.termp** %3, align 8
  %286 = getelementptr inbounds %struct.termp, %struct.termp* %285, i32 0, i32 6
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 0
  store i64 %284, i64* %288, align 8
  br label %289

289:                                              ; preds = %282, %140
  %290 = load %struct.termp*, %struct.termp** %3, align 8
  %291 = getelementptr inbounds %struct.termp, %struct.termp* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @TERMENC_ASCII, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %310

295:                                              ; preds = %289
  %296 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %297 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %296, i32 0, i32 2
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @TBL_OPT_DBOX, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %295
  %305 = load %struct.termp*, %struct.termp** %3, align 8
  %306 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %307 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %308 = load i32, i32* @TBL_OPT_DBOX, align 4
  %309 = call i32 @tbl_hrule(%struct.termp* %305, %struct.tbl_span* null, %struct.tbl_span* %306, %struct.tbl_span* %307, i32 %308)
  br label %310

310:                                              ; preds = %304, %295, %289
  %311 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %312 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %311, i32 0, i32 2
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @TBL_OPT_DBOX, align 4
  %317 = load i32, i32* @TBL_OPT_BOX, align 4
  %318 = or i32 %316, %317
  %319 = and i32 %315, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %310
  %322 = load %struct.termp*, %struct.termp** %3, align 8
  %323 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %324 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %325 = load i32, i32* @TBL_OPT_BOX, align 4
  %326 = call i32 @tbl_hrule(%struct.termp* %322, %struct.tbl_span* null, %struct.tbl_span* %323, %struct.tbl_span* %324, i32 %325)
  br label %327

327:                                              ; preds = %321, %310
  br label %328

328:                                              ; preds = %327, %2
  %329 = load i32, i32* @TERMP_MULTICOL, align 4
  %330 = load %struct.termp*, %struct.termp** %3, align 8
  %331 = getelementptr inbounds %struct.termp, %struct.termp* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = or i32 %332, %329
  store i32 %333, i32* %331, align 8
  %334 = load i64, i64* @term_tbl.offset, align 8
  %335 = load %struct.termp*, %struct.termp** %3, align 8
  %336 = getelementptr inbounds %struct.termp, %struct.termp* %335, i32 0, i32 6
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 0
  store i64 %334, i64* %338, align 8
  store i32 0, i32* %18, align 4
  %339 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %340 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  switch i32 %341, label %588 [
    i32 128, label %342
    i32 129, label %342
    i32 130, label %345
  ]

342:                                              ; preds = %328, %328
  store i32 1, i32* %18, align 4
  %343 = load %struct.termp*, %struct.termp** %3, align 8
  %344 = call i32 @term_setcol(%struct.termp* %343, i32 1)
  br label %588

345:                                              ; preds = %328
  %346 = load %struct.termp*, %struct.termp** %3, align 8
  %347 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %348 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %347, i32 0, i32 2
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = add nsw i32 %351, 2
  %353 = call i32 @term_setcol(%struct.termp* %346, i32 %352)
  %354 = load %struct.termp*, %struct.termp** %3, align 8
  %355 = getelementptr inbounds %struct.termp, %struct.termp* %354, i32 0, i32 6
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %11, align 8
  %359 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %360 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %359, i32 0, i32 2
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @TBL_OPT_BOX, align 4
  %365 = load i32, i32* @TBL_OPT_DBOX, align 4
  %366 = or i32 %364, %365
  %367 = and i32 %363, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %376, label %369

369:                                              ; preds = %345
  %370 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %371 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %370, i32 0, i32 2
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 3
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %369, %345
  %377 = load i64, i64* %11, align 8
  %378 = add i64 %377, 1
  store i64 %378, i64* %11, align 8
  br label %379

379:                                              ; preds = %376, %369
  %380 = load i64, i64* %11, align 8
  %381 = load %struct.termp*, %struct.termp** %3, align 8
  %382 = getelementptr inbounds %struct.termp, %struct.termp* %381, i32 0, i32 6
  %383 = load %struct.TYPE_13__*, %struct.TYPE_13__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 1
  store i64 %380, i64* %384, align 8
  %385 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %386 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %385, i32 0, i32 6
  %387 = load %struct.tbl_dat*, %struct.tbl_dat** %386, align 8
  store %struct.tbl_dat* %387, %struct.tbl_dat** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %388

388:                                              ; preds = %477, %379
  %389 = load i32, i32* %14, align 4
  %390 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %391 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %390, i32 0, i32 2
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = icmp slt i32 %389, %394
  br i1 %395, label %396, label %480

396:                                              ; preds = %388
  %397 = load i32, i32* %13, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %409

399:                                              ; preds = %396
  %400 = load %struct.termp*, %struct.termp** %3, align 8
  %401 = getelementptr inbounds %struct.termp, %struct.termp* %400, i32 0, i32 6
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 1
  store %struct.TYPE_13__* %403, %struct.TYPE_13__** %401, align 8
  %404 = load i64, i64* %11, align 8
  %405 = load %struct.termp*, %struct.termp** %3, align 8
  %406 = getelementptr inbounds %struct.termp, %struct.termp* %405, i32 0, i32 6
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 0
  store i64 %404, i64* %408, align 8
  br label %409

409:                                              ; preds = %399, %396
  %410 = load %struct.termp*, %struct.termp** %3, align 8
  %411 = getelementptr inbounds %struct.termp, %struct.termp* %410, i32 0, i32 7
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 0
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** %412, align 8
  %414 = load i32, i32* %14, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* %11, align 8
  %420 = add i64 %419, %418
  store i64 %420, i64* %11, align 8
  %421 = load i64, i64* %11, align 8
  %422 = load %struct.termp*, %struct.termp** %3, align 8
  %423 = getelementptr inbounds %struct.termp, %struct.termp* %422, i32 0, i32 6
  %424 = load %struct.TYPE_13__*, %struct.TYPE_13__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i32 0, i32 1
  store i64 %421, i64* %425, align 8
  %426 = load i32, i32* %14, align 4
  %427 = add nsw i32 %426, 1
  %428 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %429 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %428, i32 0, i32 2
  %430 = load %struct.TYPE_15__*, %struct.TYPE_15__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = icmp slt i32 %427, %432
  br i1 %433, label %434, label %446

434:                                              ; preds = %409
  %435 = load %struct.termp*, %struct.termp** %3, align 8
  %436 = getelementptr inbounds %struct.termp, %struct.termp* %435, i32 0, i32 7
  %437 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %436, i32 0, i32 0
  %438 = load %struct.TYPE_16__*, %struct.TYPE_16__** %437, align 8
  %439 = load i32, i32* %14, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %438, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = load i64, i64* %11, align 8
  %445 = add i64 %444, %443
  store i64 %445, i64* %11, align 8
  br label %446

446:                                              ; preds = %434, %409
  %447 = load i32, i32* %13, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %452

449:                                              ; preds = %446
  %450 = load i32, i32* %13, align 4
  %451 = add nsw i32 %450, -1
  store i32 %451, i32* %13, align 4
  br label %477

452:                                              ; preds = %446
  %453 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %454 = icmp eq %struct.tbl_dat* %453, null
  br i1 %454, label %455, label %456

455:                                              ; preds = %452
  br label %477

456:                                              ; preds = %452
  %457 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %458 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  store i32 %459, i32* %13, align 4
  %460 = load i32, i32* %14, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %472, label %462

462:                                              ; preds = %456
  %463 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %464 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %463, i32 0, i32 3
  %465 = load %struct.TYPE_12__*, %struct.TYPE_12__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %465, i32 0, i32 2
  %467 = load %struct.tbl_cell*, %struct.tbl_cell** %466, align 8
  %468 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = load i64, i64* @TBL_CELL_SPAN, align 8
  %471 = icmp ne i64 %469, %470
  br i1 %471, label %472, label %476

472:                                              ; preds = %462, %456
  %473 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %474 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %473, i32 0, i32 2
  %475 = load %struct.tbl_dat*, %struct.tbl_dat** %474, align 8
  store %struct.tbl_dat* %475, %struct.tbl_dat** %9, align 8
  br label %476

476:                                              ; preds = %472, %462
  br label %477

477:                                              ; preds = %476, %455, %449
  %478 = load i32, i32* %14, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %14, align 4
  br label %388

480:                                              ; preds = %388
  %481 = load %struct.termp*, %struct.termp** %3, align 8
  %482 = getelementptr inbounds %struct.termp, %struct.termp* %481, i32 0, i32 6
  %483 = load %struct.TYPE_13__*, %struct.TYPE_13__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 1
  store %struct.TYPE_13__* %484, %struct.TYPE_13__** %482, align 8
  %485 = load i64, i64* %11, align 8
  %486 = add i64 %485, 1
  %487 = load %struct.termp*, %struct.termp** %3, align 8
  %488 = getelementptr inbounds %struct.termp, %struct.termp* %487, i32 0, i32 6
  %489 = load %struct.TYPE_13__*, %struct.TYPE_13__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %489, i32 0, i32 0
  store i64 %486, i64* %490, align 8
  %491 = load %struct.termp*, %struct.termp** %3, align 8
  %492 = getelementptr inbounds %struct.termp, %struct.termp* %491, i32 0, i32 2
  %493 = load i64, i64* %492, align 8
  %494 = load %struct.termp*, %struct.termp** %3, align 8
  %495 = getelementptr inbounds %struct.termp, %struct.termp* %494, i32 0, i32 6
  %496 = load %struct.TYPE_13__*, %struct.TYPE_13__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %496, i32 0, i32 1
  store i64 %493, i64* %497, align 8
  %498 = load %struct.termp*, %struct.termp** %3, align 8
  %499 = getelementptr inbounds %struct.termp, %struct.termp* %498, i32 0, i32 6
  %500 = load %struct.TYPE_13__*, %struct.TYPE_13__** %499, align 8
  %501 = load %struct.termp*, %struct.termp** %3, align 8
  %502 = getelementptr inbounds %struct.termp, %struct.termp* %501, i32 0, i32 9
  %503 = load %struct.TYPE_13__*, %struct.TYPE_13__** %502, align 8
  %504 = ptrtoint %struct.TYPE_13__* %500 to i64
  %505 = ptrtoint %struct.TYPE_13__* %503 to i64
  %506 = sub i64 %504, %505
  %507 = sdiv exact i64 %506, 32
  %508 = trunc i64 %507 to i32
  %509 = load %struct.termp*, %struct.termp** %3, align 8
  %510 = getelementptr inbounds %struct.termp, %struct.termp* %509, i32 0, i32 3
  store i32 %508, i32* %510, align 8
  %511 = load %struct.termp*, %struct.termp** %3, align 8
  %512 = getelementptr inbounds %struct.termp, %struct.termp* %511, i32 0, i32 9
  %513 = load %struct.TYPE_13__*, %struct.TYPE_13__** %512, align 8
  %514 = load %struct.termp*, %struct.termp** %3, align 8
  %515 = getelementptr inbounds %struct.termp, %struct.termp* %514, i32 0, i32 6
  store %struct.TYPE_13__* %513, %struct.TYPE_13__** %515, align 8
  %516 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %517 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %516, i32 0, i32 3
  %518 = load %struct.TYPE_12__*, %struct.TYPE_12__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %518, i32 0, i32 2
  %520 = load %struct.tbl_cell*, %struct.tbl_cell** %519, align 8
  store %struct.tbl_cell* %520, %struct.tbl_cell** %6, align 8
  store %struct.tbl_cell* %520, %struct.tbl_cell** %5, align 8
  %521 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %522 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %521, i32 0, i32 6
  %523 = load %struct.tbl_dat*, %struct.tbl_dat** %522, align 8
  store %struct.tbl_dat* %523, %struct.tbl_dat** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %524

524:                                              ; preds = %584, %480
  %525 = load i32, i32* %14, align 4
  %526 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %527 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %526, i32 0, i32 2
  %528 = load %struct.TYPE_15__*, %struct.TYPE_15__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 4
  %531 = icmp slt i32 %525, %530
  br i1 %531, label %532, label %587

532:                                              ; preds = %524
  %533 = load %struct.tbl_cell*, %struct.tbl_cell** %6, align 8
  %534 = icmp ne %struct.tbl_cell* %533, null
  br i1 %534, label %535, label %540

535:                                              ; preds = %532
  %536 = load %struct.tbl_cell*, %struct.tbl_cell** %6, align 8
  store %struct.tbl_cell* %536, %struct.tbl_cell** %5, align 8
  %537 = load %struct.tbl_cell*, %struct.tbl_cell** %6, align 8
  %538 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %537, i32 0, i32 3
  %539 = load %struct.tbl_cell*, %struct.tbl_cell** %538, align 8
  store %struct.tbl_cell* %539, %struct.tbl_cell** %6, align 8
  br label %540

540:                                              ; preds = %535, %532
  %541 = load i32, i32* %13, align 4
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %546

543:                                              ; preds = %540
  %544 = load i32, i32* %13, align 4
  %545 = add nsw i32 %544, -1
  store i32 %545, i32* %13, align 4
  br label %584

546:                                              ; preds = %540
  %547 = load %struct.termp*, %struct.termp** %3, align 8
  %548 = getelementptr inbounds %struct.termp, %struct.termp* %547, i32 0, i32 6
  %549 = load %struct.TYPE_13__*, %struct.TYPE_13__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %549, i32 1
  store %struct.TYPE_13__* %550, %struct.TYPE_13__** %548, align 8
  %551 = load %struct.termp*, %struct.termp** %3, align 8
  %552 = getelementptr inbounds %struct.termp, %struct.termp* %551, i32 0, i32 11
  store i32 0, i32* %552, align 8
  %553 = load %struct.termp*, %struct.termp** %3, align 8
  %554 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %555 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %554, i32 0, i32 2
  %556 = load %struct.TYPE_15__*, %struct.TYPE_15__** %555, align 8
  %557 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %558 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %559 = load %struct.termp*, %struct.termp** %3, align 8
  %560 = getelementptr inbounds %struct.termp, %struct.termp* %559, i32 0, i32 7
  %561 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %560, i32 0, i32 0
  %562 = load %struct.TYPE_16__*, %struct.TYPE_16__** %561, align 8
  %563 = load i32, i32* %14, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %562, i64 %564
  %566 = call i32 @tbl_data(%struct.termp* %553, %struct.TYPE_15__* %556, %struct.tbl_cell* %557, %struct.tbl_dat* %558, %struct.TYPE_16__* %565)
  %567 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %568 = icmp eq %struct.tbl_dat* %567, null
  br i1 %568, label %569, label %570

569:                                              ; preds = %546
  br label %584

570:                                              ; preds = %546
  %571 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %572 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 8
  store i32 %573, i32* %13, align 4
  %574 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %575 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %574, i32 0, i32 0
  %576 = load i64, i64* %575, align 8
  %577 = load i64, i64* @TBL_CELL_SPAN, align 8
  %578 = icmp ne i64 %576, %577
  br i1 %578, label %579, label %583

579:                                              ; preds = %570
  %580 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %581 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %580, i32 0, i32 2
  %582 = load %struct.tbl_dat*, %struct.tbl_dat** %581, align 8
  store %struct.tbl_dat* %582, %struct.tbl_dat** %9, align 8
  br label %583

583:                                              ; preds = %579, %570
  br label %584

584:                                              ; preds = %583, %569, %543
  %585 = load i32, i32* %14, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %14, align 4
  br label %524

587:                                              ; preds = %524
  br label %588

588:                                              ; preds = %328, %587, %342
  br label %589

589:                                              ; preds = %1756, %588
  %590 = load %struct.termp*, %struct.termp** %3, align 8
  %591 = getelementptr inbounds %struct.termp, %struct.termp* %590, i32 0, i32 9
  %592 = load %struct.TYPE_13__*, %struct.TYPE_13__** %591, align 8
  %593 = load %struct.termp*, %struct.termp** %3, align 8
  %594 = getelementptr inbounds %struct.termp, %struct.termp* %593, i32 0, i32 6
  store %struct.TYPE_13__* %592, %struct.TYPE_13__** %594, align 8
  %595 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %596 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %595, i32 0, i32 2
  %597 = load %struct.TYPE_15__*, %struct.TYPE_15__** %596, align 8
  %598 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  %600 = load i32, i32* @TBL_OPT_DBOX, align 4
  %601 = and i32 %599, %600
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %604

603:                                              ; preds = %589
  br label %615

604:                                              ; preds = %589
  %605 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %606 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %605, i32 0, i32 2
  %607 = load %struct.TYPE_15__*, %struct.TYPE_15__** %606, align 8
  %608 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %607, i32 0, i32 0
  %609 = load i32, i32* %608, align 8
  %610 = load i32, i32* @TBL_OPT_BOX, align 4
  %611 = and i32 %609, %610
  %612 = icmp ne i32 %611, 0
  %613 = zext i1 %612 to i64
  %614 = select i1 %612, i32 1, i32 0
  br label %615

615:                                              ; preds = %604, %603
  %616 = phi i32 [ 2, %603 ], [ %614, %604 ]
  store i32 %616, i32* %16, align 4
  store i32 %616, i32* %21, align 4
  %617 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %618 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 8
  %620 = icmp eq i32 %619, 130
  br i1 %620, label %621, label %635

621:                                              ; preds = %615
  %622 = load i32, i32* %21, align 4
  %623 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %624 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %623, i32 0, i32 3
  %625 = load %struct.TYPE_12__*, %struct.TYPE_12__** %624, align 8
  %626 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 8
  %628 = icmp slt i32 %622, %627
  br i1 %628, label %629, label %635

629:                                              ; preds = %621
  %630 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %631 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %630, i32 0, i32 3
  %632 = load %struct.TYPE_12__*, %struct.TYPE_12__** %631, align 8
  %633 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 8
  store i32 %634, i32* %16, align 4
  store i32 %634, i32* %21, align 4
  br label %635

635:                                              ; preds = %629, %621, %615
  %636 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %637 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %636, i32 0, i32 1
  %638 = load %struct.tbl_span*, %struct.tbl_span** %637, align 8
  %639 = icmp ne %struct.tbl_span* %638, null
  br i1 %639, label %640, label %665

640:                                              ; preds = %635
  %641 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %642 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %641, i32 0, i32 1
  %643 = load %struct.tbl_span*, %struct.tbl_span** %642, align 8
  %644 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %643, i32 0, i32 0
  %645 = load i32, i32* %644, align 8
  %646 = icmp eq i32 %645, 130
  br i1 %646, label %647, label %665

647:                                              ; preds = %640
  %648 = load i32, i32* %16, align 4
  %649 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %650 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %649, i32 0, i32 1
  %651 = load %struct.tbl_span*, %struct.tbl_span** %650, align 8
  %652 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %651, i32 0, i32 3
  %653 = load %struct.TYPE_12__*, %struct.TYPE_12__** %652, align 8
  %654 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %653, i32 0, i32 0
  %655 = load i32, i32* %654, align 8
  %656 = icmp slt i32 %648, %655
  br i1 %656, label %657, label %665

657:                                              ; preds = %647
  %658 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %659 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %658, i32 0, i32 1
  %660 = load %struct.tbl_span*, %struct.tbl_span** %659, align 8
  %661 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %660, i32 0, i32 3
  %662 = load %struct.TYPE_12__*, %struct.TYPE_12__** %661, align 8
  %663 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %662, i32 0, i32 0
  %664 = load i32, i32* %663, align 8
  store i32 %664, i32* %16, align 4
  br label %665

665:                                              ; preds = %657, %647, %640, %635
  %666 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %667 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %666, i32 0, i32 5
  %668 = load %struct.tbl_span*, %struct.tbl_span** %667, align 8
  %669 = icmp ne %struct.tbl_span* %668, null
  br i1 %669, label %670, label %709

670:                                              ; preds = %665
  %671 = load i32, i32* %21, align 4
  %672 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %673 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %672, i32 0, i32 5
  %674 = load %struct.tbl_span*, %struct.tbl_span** %673, align 8
  %675 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %674, i32 0, i32 3
  %676 = load %struct.TYPE_12__*, %struct.TYPE_12__** %675, align 8
  %677 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %676, i32 0, i32 0
  %678 = load i32, i32* %677, align 8
  %679 = icmp slt i32 %671, %678
  br i1 %679, label %680, label %709

680:                                              ; preds = %670
  %681 = load i32, i32* %18, align 4
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %701, label %683

683:                                              ; preds = %680
  %684 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %685 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %684, i32 0, i32 3
  %686 = load %struct.TYPE_12__*, %struct.TYPE_12__** %685, align 8
  %687 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %686, i32 0, i32 2
  %688 = load %struct.tbl_cell*, %struct.tbl_cell** %687, align 8
  %689 = call i64 @IS_HORIZ(%struct.tbl_cell* %688)
  %690 = icmp ne i64 %689, 0
  br i1 %690, label %691, label %709

691:                                              ; preds = %683
  %692 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %693 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %692, i32 0, i32 5
  %694 = load %struct.tbl_span*, %struct.tbl_span** %693, align 8
  %695 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %694, i32 0, i32 3
  %696 = load %struct.TYPE_12__*, %struct.TYPE_12__** %695, align 8
  %697 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %696, i32 0, i32 2
  %698 = load %struct.tbl_cell*, %struct.tbl_cell** %697, align 8
  %699 = call i64 @IS_HORIZ(%struct.tbl_cell* %698)
  %700 = icmp ne i64 %699, 0
  br i1 %700, label %709, label %701

701:                                              ; preds = %691, %680
  %702 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %703 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %702, i32 0, i32 5
  %704 = load %struct.tbl_span*, %struct.tbl_span** %703, align 8
  %705 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %704, i32 0, i32 3
  %706 = load %struct.TYPE_12__*, %struct.TYPE_12__** %705, align 8
  %707 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %706, i32 0, i32 0
  %708 = load i32, i32* %707, align 8
  store i32 %708, i32* %21, align 4
  br label %709

709:                                              ; preds = %701, %691, %683, %670, %665
  %710 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %711 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %710, i32 0, i32 0
  %712 = load i32, i32* %711, align 8
  %713 = icmp eq i32 %712, 129
  br i1 %713, label %736, label %714

714:                                              ; preds = %709
  %715 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %716 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %715, i32 0, i32 6
  %717 = load %struct.tbl_dat*, %struct.tbl_dat** %716, align 8
  %718 = icmp ne %struct.tbl_dat* %717, null
  br i1 %718, label %719, label %727

719:                                              ; preds = %714
  %720 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %721 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %720, i32 0, i32 6
  %722 = load %struct.tbl_dat*, %struct.tbl_dat** %721, align 8
  %723 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %722, i32 0, i32 1
  %724 = load i64, i64* %723, align 8
  %725 = load i64, i64* @TBL_DATA_DHORIZ, align 8
  %726 = icmp eq i64 %724, %725
  br i1 %726, label %736, label %727

727:                                              ; preds = %719, %714
  %728 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %729 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %728, i32 0, i32 3
  %730 = load %struct.TYPE_12__*, %struct.TYPE_12__** %729, align 8
  %731 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %730, i32 0, i32 2
  %732 = load %struct.tbl_cell*, %struct.tbl_cell** %731, align 8
  %733 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %732, i32 0, i32 0
  %734 = load i64, i64* %733, align 8
  %735 = icmp eq i64 %734, 132
  br i1 %735, label %736, label %737

736:                                              ; preds = %727, %719, %709
  br label %768

737:                                              ; preds = %727
  %738 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %739 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %738, i32 0, i32 0
  %740 = load i32, i32* %739, align 8
  %741 = icmp eq i32 %740, 128
  br i1 %741, label %764, label %742

742:                                              ; preds = %737
  %743 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %744 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %743, i32 0, i32 6
  %745 = load %struct.tbl_dat*, %struct.tbl_dat** %744, align 8
  %746 = icmp ne %struct.tbl_dat* %745, null
  br i1 %746, label %747, label %755

747:                                              ; preds = %742
  %748 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %749 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %748, i32 0, i32 6
  %750 = load %struct.tbl_dat*, %struct.tbl_dat** %749, align 8
  %751 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %750, i32 0, i32 1
  %752 = load i64, i64* %751, align 8
  %753 = load i64, i64* @TBL_DATA_HORIZ, align 8
  %754 = icmp eq i64 %752, %753
  br i1 %754, label %764, label %755

755:                                              ; preds = %747, %742
  %756 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %757 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %756, i32 0, i32 3
  %758 = load %struct.TYPE_12__*, %struct.TYPE_12__** %757, align 8
  %759 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %758, i32 0, i32 2
  %760 = load %struct.tbl_cell*, %struct.tbl_cell** %759, align 8
  %761 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %760, i32 0, i32 0
  %762 = load i64, i64* %761, align 8
  %763 = icmp eq i64 %762, 131
  br label %764

764:                                              ; preds = %755, %747, %737
  %765 = phi i1 [ true, %747 ], [ true, %737 ], [ %763, %755 ]
  %766 = zext i1 %765 to i64
  %767 = select i1 %765, i32 1, i32 0
  br label %768

768:                                              ; preds = %764, %736
  %769 = phi i32 [ 2, %736 ], [ %767, %764 ]
  store i32 %769, i32* %20, align 4
  %770 = load i32, i32* @BUP, align 4
  %771 = load i32, i32* %21, align 4
  %772 = mul nsw i32 %770, %771
  %773 = load i32, i32* @BDOWN, align 4
  %774 = load i32, i32* %16, align 4
  %775 = mul nsw i32 %773, %774
  %776 = add nsw i32 %772, %775
  %777 = load i32, i32* @BRIGHT, align 4
  %778 = load i32, i32* %20, align 4
  %779 = mul nsw i32 %777, %778
  %780 = add nsw i32 %776, %779
  store i32 %780, i32* %17, align 4
  %781 = load i32, i32* %21, align 4
  %782 = icmp sgt i32 %781, 0
  br i1 %782, label %796, label %783

783:                                              ; preds = %768
  %784 = load i32, i32* %16, align 4
  %785 = icmp sgt i32 %784, 0
  br i1 %785, label %796, label %786

786:                                              ; preds = %783
  %787 = load i32, i32* %18, align 4
  %788 = icmp ne i32 %787, 0
  br i1 %788, label %789, label %819

789:                                              ; preds = %786
  %790 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %791 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %790, i32 0, i32 2
  %792 = load %struct.TYPE_15__*, %struct.TYPE_15__** %791, align 8
  %793 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %792, i32 0, i32 3
  %794 = load i64, i64* %793, align 8
  %795 = icmp ne i64 %794, 0
  br i1 %795, label %796, label %819

796:                                              ; preds = %789, %783, %768
  %797 = load %struct.termp*, %struct.termp** %3, align 8
  %798 = getelementptr inbounds %struct.termp, %struct.termp* %797, i32 0, i32 10
  %799 = load i32 (%struct.termp*, i32)*, i32 (%struct.termp*, i32)** %798, align 8
  %800 = load %struct.termp*, %struct.termp** %3, align 8
  %801 = load %struct.termp*, %struct.termp** %3, align 8
  %802 = getelementptr inbounds %struct.termp, %struct.termp* %801, i32 0, i32 9
  %803 = load %struct.TYPE_13__*, %struct.TYPE_13__** %802, align 8
  %804 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %803, i32 0, i32 0
  %805 = load i64, i64* %804, align 8
  %806 = trunc i64 %805 to i32
  %807 = call i32 %799(%struct.termp* %800, i32 %806)
  %808 = load %struct.termp*, %struct.termp** %3, align 8
  %809 = getelementptr inbounds %struct.termp, %struct.termp* %808, i32 0, i32 6
  %810 = load %struct.TYPE_13__*, %struct.TYPE_13__** %809, align 8
  %811 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %810, i32 0, i32 0
  %812 = load i64, i64* %811, align 8
  %813 = trunc i64 %812 to i32
  %814 = load %struct.termp*, %struct.termp** %3, align 8
  %815 = getelementptr inbounds %struct.termp, %struct.termp* %814, i32 0, i32 4
  store i32 %813, i32* %815, align 4
  %816 = load %struct.termp*, %struct.termp** %3, align 8
  %817 = load i32, i32* %17, align 4
  %818 = call i32 @tbl_direct_border(%struct.termp* %816, i32 %817, i32 1)
  br label %819

819:                                              ; preds = %796, %789, %786
  store i32 0, i32* %15, align 4
  %820 = load i32, i32* %18, align 4
  %821 = icmp ne i32 %820, 0
  br i1 %821, label %822, label %832

822:                                              ; preds = %819
  %823 = load %struct.termp*, %struct.termp** %3, align 8
  %824 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %825 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %824, i32 0, i32 5
  %826 = load %struct.tbl_span*, %struct.tbl_span** %825, align 8
  %827 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %828 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %829 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %828, i32 0, i32 1
  %830 = load %struct.tbl_span*, %struct.tbl_span** %829, align 8
  %831 = call i32 @tbl_hrule(%struct.termp* %823, %struct.tbl_span* %826, %struct.tbl_span* %827, %struct.tbl_span* %830, i32 0)
  br label %1377

832:                                              ; preds = %819
  %833 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %834 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %833, i32 0, i32 3
  %835 = load %struct.TYPE_12__*, %struct.TYPE_12__** %834, align 8
  %836 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %835, i32 0, i32 2
  %837 = load %struct.tbl_cell*, %struct.tbl_cell** %836, align 8
  store %struct.tbl_cell* %837, %struct.tbl_cell** %5, align 8
  %838 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %839 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %838, i32 0, i32 1
  %840 = load %struct.tbl_span*, %struct.tbl_span** %839, align 8
  %841 = icmp eq %struct.tbl_span* %840, null
  br i1 %841, label %842, label %843

842:                                              ; preds = %832
  br label %851

843:                                              ; preds = %832
  %844 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %845 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %844, i32 0, i32 1
  %846 = load %struct.tbl_span*, %struct.tbl_span** %845, align 8
  %847 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %846, i32 0, i32 3
  %848 = load %struct.TYPE_12__*, %struct.TYPE_12__** %847, align 8
  %849 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %848, i32 0, i32 2
  %850 = load %struct.tbl_cell*, %struct.tbl_cell** %849, align 8
  br label %851

851:                                              ; preds = %843, %842
  %852 = phi %struct.tbl_cell* [ null, %842 ], [ %850, %843 ]
  store %struct.tbl_cell* %852, %struct.tbl_cell** %6, align 8
  %853 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %854 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %853, i32 0, i32 5
  %855 = load %struct.tbl_span*, %struct.tbl_span** %854, align 8
  %856 = icmp eq %struct.tbl_span* %855, null
  br i1 %856, label %857, label %858

857:                                              ; preds = %851
  br label %866

858:                                              ; preds = %851
  %859 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %860 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %859, i32 0, i32 5
  %861 = load %struct.tbl_span*, %struct.tbl_span** %860, align 8
  %862 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %861, i32 0, i32 3
  %863 = load %struct.TYPE_12__*, %struct.TYPE_12__** %862, align 8
  %864 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %863, i32 0, i32 2
  %865 = load %struct.tbl_cell*, %struct.tbl_cell** %864, align 8
  br label %866

866:                                              ; preds = %858, %857
  %867 = phi %struct.tbl_cell* [ null, %857 ], [ %865, %858 ]
  store %struct.tbl_cell* %867, %struct.tbl_cell** %7, align 8
  %868 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %869 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %868, i32 0, i32 6
  %870 = load %struct.tbl_dat*, %struct.tbl_dat** %869, align 8
  store %struct.tbl_dat* %870, %struct.tbl_dat** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %871

871:                                              ; preds = %1373, %866
  %872 = load i32, i32* %14, align 4
  %873 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %874 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %873, i32 0, i32 2
  %875 = load %struct.TYPE_15__*, %struct.TYPE_15__** %874, align 8
  %876 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %875, i32 0, i32 1
  %877 = load i32, i32* %876, align 4
  %878 = icmp slt i32 %872, %877
  br i1 %878, label %879, label %1376

879:                                              ; preds = %871
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %21, align 4
  %880 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %881 = icmp ne %struct.tbl_cell* %880, null
  br i1 %881, label %882, label %923

882:                                              ; preds = %879
  %883 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  store %struct.tbl_cell* %883, %struct.tbl_cell** %8, align 8
  br label %884

884:                                              ; preds = %899, %882
  %885 = load %struct.tbl_cell*, %struct.tbl_cell** %8, align 8
  %886 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %885, i32 0, i32 3
  %887 = load %struct.tbl_cell*, %struct.tbl_cell** %886, align 8
  %888 = icmp ne %struct.tbl_cell* %887, null
  br i1 %888, label %889, label %897

889:                                              ; preds = %884
  %890 = load %struct.tbl_cell*, %struct.tbl_cell** %8, align 8
  %891 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %890, i32 0, i32 3
  %892 = load %struct.tbl_cell*, %struct.tbl_cell** %891, align 8
  %893 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %892, i32 0, i32 0
  %894 = load i64, i64* %893, align 8
  %895 = load i64, i64* @TBL_CELL_SPAN, align 8
  %896 = icmp eq i64 %894, %895
  br label %897

897:                                              ; preds = %889, %884
  %898 = phi i1 [ false, %884 ], [ %896, %889 ]
  br i1 %898, label %899, label %903

899:                                              ; preds = %897
  %900 = load %struct.tbl_cell*, %struct.tbl_cell** %8, align 8
  %901 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %900, i32 0, i32 3
  %902 = load %struct.tbl_cell*, %struct.tbl_cell** %901, align 8
  store %struct.tbl_cell* %902, %struct.tbl_cell** %8, align 8
  br label %884

903:                                              ; preds = %897
  %904 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %905 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %904, i32 0, i32 0
  %906 = load i32, i32* %905, align 8
  %907 = icmp eq i32 %906, 130
  br i1 %907, label %908, label %912

908:                                              ; preds = %903
  %909 = load %struct.tbl_cell*, %struct.tbl_cell** %8, align 8
  %910 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %909, i32 0, i32 1
  %911 = load i32, i32* %910, align 8
  store i32 %911, i32* %16, align 4
  store i32 %911, i32* %21, align 4
  br label %912

912:                                              ; preds = %908, %903
  %913 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %914 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %913, i32 0, i32 0
  %915 = load i64, i64* %914, align 8
  switch i64 %915, label %921 [
    i64 131, label %916
    i64 132, label %918
  ]

916:                                              ; preds = %912
  %917 = load i32, i32* @BHORIZ, align 4
  store i32 %917, i32* %17, align 4
  br label %922

918:                                              ; preds = %912
  %919 = load i32, i32* @BHORIZ, align 4
  %920 = mul nsw i32 %919, 2
  store i32 %920, i32* %17, align 4
  br label %922

921:                                              ; preds = %912
  br label %922

922:                                              ; preds = %921, %918, %916
  br label %923

923:                                              ; preds = %922, %879
  %924 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %925 = icmp ne %struct.tbl_cell* %924, null
  br i1 %925, label %926, label %973

926:                                              ; preds = %923
  %927 = load i32, i32* %21, align 4
  %928 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %929 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %928, i32 0, i32 1
  %930 = load i32, i32* %929, align 8
  %931 = icmp slt i32 %927, %930
  br i1 %931, label %932, label %969

932:                                              ; preds = %926
  %933 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %934 = icmp ne %struct.tbl_cell* %933, null
  br i1 %934, label %935, label %969

935:                                              ; preds = %932
  %936 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %937 = call i64 @IS_HORIZ(%struct.tbl_cell* %936)
  %938 = icmp ne i64 %937, 0
  br i1 %938, label %939, label %943

939:                                              ; preds = %935
  %940 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %941 = call i64 @IS_HORIZ(%struct.tbl_cell* %940)
  %942 = icmp ne i64 %941, 0
  br i1 %942, label %943, label %965

943:                                              ; preds = %939, %935
  %944 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %945 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %944, i32 0, i32 3
  %946 = load %struct.tbl_cell*, %struct.tbl_cell** %945, align 8
  %947 = icmp ne %struct.tbl_cell* %946, null
  br i1 %947, label %948, label %969

948:                                              ; preds = %943
  %949 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %950 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %949, i32 0, i32 3
  %951 = load %struct.tbl_cell*, %struct.tbl_cell** %950, align 8
  %952 = icmp ne %struct.tbl_cell* %951, null
  br i1 %952, label %953, label %969

953:                                              ; preds = %948
  %954 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %955 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %954, i32 0, i32 3
  %956 = load %struct.tbl_cell*, %struct.tbl_cell** %955, align 8
  %957 = call i64 @IS_HORIZ(%struct.tbl_cell* %956)
  %958 = icmp ne i64 %957, 0
  br i1 %958, label %959, label %969

959:                                              ; preds = %953
  %960 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %961 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %960, i32 0, i32 3
  %962 = load %struct.tbl_cell*, %struct.tbl_cell** %961, align 8
  %963 = call i64 @IS_HORIZ(%struct.tbl_cell* %962)
  %964 = icmp ne i64 %963, 0
  br i1 %964, label %969, label %965

965:                                              ; preds = %959, %939
  %966 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %967 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %966, i32 0, i32 1
  %968 = load i32, i32* %967, align 8
  store i32 %968, i32* %21, align 4
  br label %969

969:                                              ; preds = %965, %959, %953, %948, %943, %932, %926
  %970 = load %struct.tbl_cell*, %struct.tbl_cell** %7, align 8
  %971 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %970, i32 0, i32 3
  %972 = load %struct.tbl_cell*, %struct.tbl_cell** %971, align 8
  store %struct.tbl_cell* %972, %struct.tbl_cell** %7, align 8
  br label %973

973:                                              ; preds = %969, %923
  %974 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %975 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %974, i32 0, i32 2
  %976 = load %struct.TYPE_15__*, %struct.TYPE_15__** %975, align 8
  %977 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %976, i32 0, i32 0
  %978 = load i32, i32* %977, align 8
  %979 = load i32, i32* @TBL_OPT_ALLBOX, align 4
  %980 = and i32 %978, %979
  %981 = icmp ne i32 %980, 0
  br i1 %981, label %982, label %991

982:                                              ; preds = %973
  %983 = load i32, i32* %21, align 4
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %985, label %986

985:                                              ; preds = %982
  store i32 1, i32* %21, align 4
  br label %986

986:                                              ; preds = %985, %982
  %987 = load i32, i32* %16, align 4
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %989, label %990

989:                                              ; preds = %986
  store i32 1, i32* %16, align 4
  br label %990

990:                                              ; preds = %989, %986
  br label %991

991:                                              ; preds = %990, %973
  %992 = load %struct.tbl_cell*, %struct.tbl_cell** %6, align 8
  %993 = icmp ne %struct.tbl_cell* %992, null
  br i1 %993, label %994, label %1017

994:                                              ; preds = %991
  %995 = load i32, i32* %16, align 4
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1009, label %997

997:                                              ; preds = %994
  %998 = load i32, i32* %16, align 4
  %999 = load %struct.tbl_cell*, %struct.tbl_cell** %6, align 8
  %1000 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %999, i32 0, i32 1
  %1001 = load i32, i32* %1000, align 8
  %1002 = icmp slt i32 %998, %1001
  br i1 %1002, label %1003, label %1013

1003:                                             ; preds = %997
  %1004 = load %struct.termp*, %struct.termp** %3, align 8
  %1005 = getelementptr inbounds %struct.termp, %struct.termp* %1004, i32 0, i32 1
  %1006 = load i64, i64* %1005, align 8
  %1007 = load i64, i64* @TERMENC_UTF8, align 8
  %1008 = icmp eq i64 %1006, %1007
  br i1 %1008, label %1009, label %1013

1009:                                             ; preds = %1003, %994
  %1010 = load %struct.tbl_cell*, %struct.tbl_cell** %6, align 8
  %1011 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1010, i32 0, i32 1
  %1012 = load i32, i32* %1011, align 8
  store i32 %1012, i32* %16, align 4
  br label %1013

1013:                                             ; preds = %1009, %1003, %997
  %1014 = load %struct.tbl_cell*, %struct.tbl_cell** %6, align 8
  %1015 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1014, i32 0, i32 3
  %1016 = load %struct.tbl_cell*, %struct.tbl_cell** %1015, align 8
  store %struct.tbl_cell* %1016, %struct.tbl_cell** %6, align 8
  br label %1017

1017:                                             ; preds = %1013, %991
  %1018 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1019 = icmp ne %struct.tbl_cell* %1018, null
  br i1 %1019, label %1020, label %1025

1020:                                             ; preds = %1017
  %1021 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1022 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1021, i32 0, i32 0
  %1023 = load i64, i64* %1022, align 8
  %1024 = icmp eq i64 %1023, 132
  br i1 %1024, label %1034, label %1025

1025:                                             ; preds = %1020, %1017
  %1026 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %1027 = icmp ne %struct.tbl_dat* %1026, null
  br i1 %1027, label %1028, label %1035

1028:                                             ; preds = %1025
  %1029 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %1030 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %1029, i32 0, i32 1
  %1031 = load i64, i64* %1030, align 8
  %1032 = load i64, i64* @TBL_DATA_DHORIZ, align 8
  %1033 = icmp eq i64 %1031, %1032
  br i1 %1033, label %1034, label %1035

1034:                                             ; preds = %1028, %1020
  br label %1058

1035:                                             ; preds = %1028, %1025
  %1036 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1037 = icmp ne %struct.tbl_cell* %1036, null
  br i1 %1037, label %1038, label %1043

1038:                                             ; preds = %1035
  %1039 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1040 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1039, i32 0, i32 0
  %1041 = load i64, i64* %1040, align 8
  %1042 = icmp eq i64 %1041, 131
  br i1 %1042, label %1054, label %1043

1043:                                             ; preds = %1038, %1035
  %1044 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %1045 = icmp ne %struct.tbl_dat* %1044, null
  br i1 %1045, label %1046, label %1052

1046:                                             ; preds = %1043
  %1047 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %1048 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %1047, i32 0, i32 1
  %1049 = load i64, i64* %1048, align 8
  %1050 = load i64, i64* @TBL_DATA_HORIZ, align 8
  %1051 = icmp eq i64 %1049, %1050
  br label %1052

1052:                                             ; preds = %1046, %1043
  %1053 = phi i1 [ false, %1043 ], [ %1051, %1046 ]
  br label %1054

1054:                                             ; preds = %1052, %1038
  %1055 = phi i1 [ true, %1038 ], [ %1053, %1052 ]
  %1056 = zext i1 %1055 to i64
  %1057 = select i1 %1055, i32 1, i32 0
  br label %1058

1058:                                             ; preds = %1054, %1034
  %1059 = phi i32 [ 2, %1034 ], [ %1057, %1054 ]
  store i32 %1059, i32* %19, align 4
  %1060 = load i32, i32* %13, align 4
  %1061 = icmp ne i32 %1060, 0
  br i1 %1061, label %1062, label %1068

1062:                                             ; preds = %1058
  %1063 = load i32, i32* %13, align 4
  %1064 = add nsw i32 %1063, -1
  store i32 %1064, i32* %13, align 4
  %1065 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1066 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1065, i32 0, i32 3
  %1067 = load %struct.tbl_cell*, %struct.tbl_cell** %1066, align 8
  store %struct.tbl_cell* %1067, %struct.tbl_cell** %5, align 8
  br label %1373

1068:                                             ; preds = %1058
  %1069 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %1070 = icmp ne %struct.tbl_dat* %1069, null
  br i1 %1070, label %1071, label %1092

1071:                                             ; preds = %1068
  %1072 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %1073 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %1072, i32 0, i32 0
  %1074 = load i32, i32* %1073, align 8
  store i32 %1074, i32* %13, align 4
  %1075 = load i32, i32* %14, align 4
  %1076 = icmp ne i32 %1075, 0
  br i1 %1076, label %1087, label %1077

1077:                                             ; preds = %1071
  %1078 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1079 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1078, i32 0, i32 3
  %1080 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1079, align 8
  %1081 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1080, i32 0, i32 2
  %1082 = load %struct.tbl_cell*, %struct.tbl_cell** %1081, align 8
  %1083 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1082, i32 0, i32 0
  %1084 = load i64, i64* %1083, align 8
  %1085 = load i64, i64* @TBL_CELL_SPAN, align 8
  %1086 = icmp ne i64 %1084, %1085
  br i1 %1086, label %1087, label %1091

1087:                                             ; preds = %1077, %1071
  %1088 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %1089 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %1088, i32 0, i32 2
  %1090 = load %struct.tbl_dat*, %struct.tbl_dat** %1089, align 8
  store %struct.tbl_dat* %1090, %struct.tbl_dat** %9, align 8
  br label %1091

1091:                                             ; preds = %1087, %1077
  br label %1092

1092:                                             ; preds = %1091, %1068
  %1093 = load %struct.termp*, %struct.termp** %3, align 8
  %1094 = getelementptr inbounds %struct.termp, %struct.termp* %1093, i32 0, i32 6
  %1095 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1094, align 8
  %1096 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1095, i32 1
  store %struct.TYPE_13__* %1096, %struct.TYPE_13__** %1094, align 8
  %1097 = load %struct.termp*, %struct.termp** %3, align 8
  %1098 = getelementptr inbounds %struct.termp, %struct.termp* %1097, i32 0, i32 6
  %1099 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1098, align 8
  %1100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1099, i32 0, i32 2
  %1101 = load i64, i64* %1100, align 8
  %1102 = load %struct.termp*, %struct.termp** %3, align 8
  %1103 = getelementptr inbounds %struct.termp, %struct.termp* %1102, i32 0, i32 6
  %1104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1103, align 8
  %1105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1104, i32 0, i32 3
  %1106 = load i64, i64* %1105, align 8
  %1107 = icmp slt i64 %1101, %1106
  br i1 %1107, label %1108, label %1111

1108:                                             ; preds = %1092
  %1109 = load %struct.termp*, %struct.termp** %3, align 8
  %1110 = call i32 @term_flushln(%struct.termp* %1109)
  br label %1111

1111:                                             ; preds = %1108, %1092
  %1112 = load %struct.termp*, %struct.termp** %3, align 8
  %1113 = getelementptr inbounds %struct.termp, %struct.termp* %1112, i32 0, i32 6
  %1114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1113, align 8
  %1115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1114, i32 0, i32 2
  %1116 = load i64, i64* %1115, align 8
  %1117 = load %struct.termp*, %struct.termp** %3, align 8
  %1118 = getelementptr inbounds %struct.termp, %struct.termp* %1117, i32 0, i32 6
  %1119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1118, align 8
  %1120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1119, i32 0, i32 3
  %1121 = load i64, i64* %1120, align 8
  %1122 = icmp slt i64 %1116, %1121
  br i1 %1122, label %1123, label %1124

1123:                                             ; preds = %1111
  store i32 1, i32* %15, align 4
  br label %1124

1124:                                             ; preds = %1123, %1111
  %1125 = load i32, i32* %17, align 4
  %1126 = icmp eq i32 %1125, 0
  br i1 %1126, label %1127, label %1169

1127:                                             ; preds = %1124
  %1128 = load i32, i32* %21, align 4
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1130, label %1147

1130:                                             ; preds = %1127
  %1131 = load i32, i32* %16, align 4
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1133, label %1147

1133:                                             ; preds = %1130
  %1134 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1135 = icmp ne %struct.tbl_cell* %1134, null
  br i1 %1135, label %1136, label %1147

1136:                                             ; preds = %1133
  %1137 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1138 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1137, i32 0, i32 3
  %1139 = load %struct.tbl_cell*, %struct.tbl_cell** %1138, align 8
  %1140 = icmp eq %struct.tbl_cell* %1139, null
  br i1 %1140, label %1161, label %1141

1141:                                             ; preds = %1136
  %1142 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1143 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1142, i32 0, i32 3
  %1144 = load %struct.tbl_cell*, %struct.tbl_cell** %1143, align 8
  %1145 = call i64 @IS_HORIZ(%struct.tbl_cell* %1144)
  %1146 = icmp ne i64 %1145, 0
  br i1 %1146, label %1147, label %1161

1147:                                             ; preds = %1141, %1133, %1130, %1127
  %1148 = load %struct.termp*, %struct.termp** %3, align 8
  %1149 = getelementptr inbounds %struct.termp, %struct.termp* %1148, i32 0, i32 6
  %1150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1149, align 8
  %1151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1150, i64 1
  %1152 = load %struct.termp*, %struct.termp** %3, align 8
  %1153 = getelementptr inbounds %struct.termp, %struct.termp* %1152, i32 0, i32 9
  %1154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1153, align 8
  %1155 = load %struct.termp*, %struct.termp** %3, align 8
  %1156 = getelementptr inbounds %struct.termp, %struct.termp* %1155, i32 0, i32 3
  %1157 = load i32, i32* %1156, align 8
  %1158 = sext i32 %1157 to i64
  %1159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1154, i64 %1158
  %1160 = icmp eq %struct.TYPE_13__* %1151, %1159
  br i1 %1160, label %1161, label %1169

1161:                                             ; preds = %1147, %1141, %1136
  %1162 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1163 = icmp ne %struct.tbl_cell* %1162, null
  br i1 %1163, label %1164, label %1168

1164:                                             ; preds = %1161
  %1165 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1166 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1165, i32 0, i32 3
  %1167 = load %struct.tbl_cell*, %struct.tbl_cell** %1166, align 8
  store %struct.tbl_cell* %1167, %struct.tbl_cell** %5, align 8
  br label %1168

1168:                                             ; preds = %1164, %1161
  br label %1373

1169:                                             ; preds = %1147, %1124
  %1170 = load %struct.termp*, %struct.termp** %3, align 8
  %1171 = getelementptr inbounds %struct.termp, %struct.termp* %1170, i32 0, i32 4
  %1172 = load i32, i32* %1171, align 4
  %1173 = sext i32 %1172 to i64
  %1174 = load %struct.termp*, %struct.termp** %3, align 8
  %1175 = getelementptr inbounds %struct.termp, %struct.termp* %1174, i32 0, i32 6
  %1176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1175, align 8
  %1177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1176, i32 0, i32 1
  %1178 = load i64, i64* %1177, align 8
  %1179 = icmp ult i64 %1173, %1178
  br i1 %1179, label %1180, label %1205

1180:                                             ; preds = %1169
  %1181 = load %struct.termp*, %struct.termp** %3, align 8
  %1182 = getelementptr inbounds %struct.termp, %struct.termp* %1181, i32 0, i32 10
  %1183 = load i32 (%struct.termp*, i32)*, i32 (%struct.termp*, i32)** %1182, align 8
  %1184 = load %struct.termp*, %struct.termp** %3, align 8
  %1185 = load %struct.termp*, %struct.termp** %3, align 8
  %1186 = getelementptr inbounds %struct.termp, %struct.termp* %1185, i32 0, i32 6
  %1187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1186, align 8
  %1188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1187, i32 0, i32 1
  %1189 = load i64, i64* %1188, align 8
  %1190 = load %struct.termp*, %struct.termp** %3, align 8
  %1191 = getelementptr inbounds %struct.termp, %struct.termp* %1190, i32 0, i32 4
  %1192 = load i32, i32* %1191, align 4
  %1193 = sext i32 %1192 to i64
  %1194 = sub i64 %1189, %1193
  %1195 = trunc i64 %1194 to i32
  %1196 = call i32 %1183(%struct.termp* %1184, i32 %1195)
  %1197 = load %struct.termp*, %struct.termp** %3, align 8
  %1198 = getelementptr inbounds %struct.termp, %struct.termp* %1197, i32 0, i32 6
  %1199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1198, align 8
  %1200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1199, i32 0, i32 1
  %1201 = load i64, i64* %1200, align 8
  %1202 = trunc i64 %1201 to i32
  %1203 = load %struct.termp*, %struct.termp** %3, align 8
  %1204 = getelementptr inbounds %struct.termp, %struct.termp* %1203, i32 0, i32 4
  store i32 %1202, i32* %1204, align 4
  br label %1205

1205:                                             ; preds = %1180, %1169
  br label %1206

1206:                                             ; preds = %1228, %1205
  %1207 = load %struct.termp*, %struct.termp** %3, align 8
  %1208 = getelementptr inbounds %struct.termp, %struct.termp* %1207, i32 0, i32 4
  %1209 = load i32, i32* %1208, align 4
  %1210 = sext i32 %1209 to i64
  %1211 = load %struct.termp*, %struct.termp** %3, align 8
  %1212 = getelementptr inbounds %struct.termp, %struct.termp* %1211, i32 0, i32 6
  %1213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1212, align 8
  %1214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1213, i32 0, i32 1
  %1215 = load i64, i64* %1214, align 8
  %1216 = load %struct.termp*, %struct.termp** %3, align 8
  %1217 = getelementptr inbounds %struct.termp, %struct.termp* %1216, i32 0, i32 7
  %1218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1217, i32 0, i32 0
  %1219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1218, align 8
  %1220 = load i32, i32* %14, align 4
  %1221 = sext i32 %1220 to i64
  %1222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1219, i64 %1221
  %1223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1222, i32 0, i32 0
  %1224 = load i64, i64* %1223, align 8
  %1225 = udiv i64 %1224, 2
  %1226 = add i64 %1215, %1225
  %1227 = icmp ult i64 %1210, %1226
  br i1 %1227, label %1228, label %1234

1228:                                             ; preds = %1206
  %1229 = load %struct.termp*, %struct.termp** %3, align 8
  %1230 = load i32, i32* @BHORIZ, align 4
  %1231 = load i32, i32* %19, align 4
  %1232 = mul nsw i32 %1230, %1231
  %1233 = call i32 @tbl_direct_border(%struct.termp* %1229, i32 %1232, i32 1)
  br label %1206

1234:                                             ; preds = %1206
  %1235 = load %struct.termp*, %struct.termp** %3, align 8
  %1236 = getelementptr inbounds %struct.termp, %struct.termp* %1235, i32 0, i32 6
  %1237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1236, align 8
  %1238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1237, i64 1
  %1239 = load %struct.termp*, %struct.termp** %3, align 8
  %1240 = getelementptr inbounds %struct.termp, %struct.termp* %1239, i32 0, i32 9
  %1241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1240, align 8
  %1242 = load %struct.termp*, %struct.termp** %3, align 8
  %1243 = getelementptr inbounds %struct.termp, %struct.termp* %1242, i32 0, i32 3
  %1244 = load i32, i32* %1243, align 8
  %1245 = sext i32 %1244 to i64
  %1246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1241, i64 %1245
  %1247 = icmp eq %struct.TYPE_13__* %1238, %1246
  br i1 %1247, label %1248, label %1249

1248:                                             ; preds = %1234
  br label %1373

1249:                                             ; preds = %1234
  %1250 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1251 = icmp ne %struct.tbl_cell* %1250, null
  br i1 %1251, label %1252, label %1256

1252:                                             ; preds = %1249
  %1253 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1254 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1253, i32 0, i32 3
  %1255 = load %struct.tbl_cell*, %struct.tbl_cell** %1254, align 8
  store %struct.tbl_cell* %1255, %struct.tbl_cell** %5, align 8
  br label %1256

1256:                                             ; preds = %1252, %1249
  %1257 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1258 = icmp ne %struct.tbl_cell* %1257, null
  br i1 %1258, label %1259, label %1264

1259:                                             ; preds = %1256
  %1260 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1261 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1260, i32 0, i32 0
  %1262 = load i64, i64* %1261, align 8
  %1263 = icmp eq i64 %1262, 132
  br i1 %1263, label %1273, label %1264

1264:                                             ; preds = %1259, %1256
  %1265 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %1266 = icmp ne %struct.tbl_dat* %1265, null
  br i1 %1266, label %1267, label %1274

1267:                                             ; preds = %1264
  %1268 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %1269 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %1268, i32 0, i32 1
  %1270 = load i64, i64* %1269, align 8
  %1271 = load i64, i64* @TBL_DATA_DHORIZ, align 8
  %1272 = icmp eq i64 %1270, %1271
  br i1 %1272, label %1273, label %1274

1273:                                             ; preds = %1267, %1259
  br label %1297

1274:                                             ; preds = %1267, %1264
  %1275 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1276 = icmp ne %struct.tbl_cell* %1275, null
  br i1 %1276, label %1277, label %1282

1277:                                             ; preds = %1274
  %1278 = load %struct.tbl_cell*, %struct.tbl_cell** %5, align 8
  %1279 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1278, i32 0, i32 0
  %1280 = load i64, i64* %1279, align 8
  %1281 = icmp eq i64 %1280, 131
  br i1 %1281, label %1293, label %1282

1282:                                             ; preds = %1277, %1274
  %1283 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %1284 = icmp ne %struct.tbl_dat* %1283, null
  br i1 %1284, label %1285, label %1291

1285:                                             ; preds = %1282
  %1286 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %1287 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %1286, i32 0, i32 1
  %1288 = load i64, i64* %1287, align 8
  %1289 = load i64, i64* @TBL_DATA_HORIZ, align 8
  %1290 = icmp eq i64 %1288, %1289
  br label %1291

1291:                                             ; preds = %1285, %1282
  %1292 = phi i1 [ false, %1282 ], [ %1290, %1285 ]
  br label %1293

1293:                                             ; preds = %1291, %1277
  %1294 = phi i1 [ true, %1277 ], [ %1292, %1291 ]
  %1295 = zext i1 %1294 to i64
  %1296 = select i1 %1294, i32 1, i32 0
  br label %1297

1297:                                             ; preds = %1293, %1273
  %1298 = phi i32 [ 2, %1273 ], [ %1296, %1293 ]
  store i32 %1298, i32* %20, align 4
  %1299 = load %struct.termp*, %struct.termp** %3, align 8
  %1300 = getelementptr inbounds %struct.termp, %struct.termp* %1299, i32 0, i32 7
  %1301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1300, i32 0, i32 0
  %1302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1301, align 8
  %1303 = load i32, i32* %14, align 4
  %1304 = sext i32 %1303 to i64
  %1305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1302, i64 %1304
  %1306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1305, i32 0, i32 0
  %1307 = load i64, i64* %1306, align 8
  %1308 = icmp ne i64 %1307, 0
  br i1 %1308, label %1309, label %1327

1309:                                             ; preds = %1297
  %1310 = load %struct.termp*, %struct.termp** %3, align 8
  %1311 = load i32, i32* @BLEFT, align 4
  %1312 = load i32, i32* %19, align 4
  %1313 = mul nsw i32 %1311, %1312
  %1314 = load i32, i32* @BRIGHT, align 4
  %1315 = load i32, i32* %20, align 4
  %1316 = mul nsw i32 %1314, %1315
  %1317 = add nsw i32 %1313, %1316
  %1318 = load i32, i32* @BUP, align 4
  %1319 = load i32, i32* %21, align 4
  %1320 = mul nsw i32 %1318, %1319
  %1321 = add nsw i32 %1317, %1320
  %1322 = load i32, i32* @BDOWN, align 4
  %1323 = load i32, i32* %16, align 4
  %1324 = mul nsw i32 %1322, %1323
  %1325 = add nsw i32 %1321, %1324
  %1326 = call i32 @tbl_direct_border(%struct.termp* %1310, i32 %1325, i32 1)
  br label %1327

1327:                                             ; preds = %1309, %1297
  %1328 = load %struct.termp*, %struct.termp** %3, align 8
  %1329 = getelementptr inbounds %struct.termp, %struct.termp* %1328, i32 0, i32 1
  %1330 = load i64, i64* %1329, align 8
  %1331 = load i64, i64* @TERMENC_UTF8, align 8
  %1332 = icmp eq i64 %1330, %1331
  br i1 %1332, label %1333, label %1334

1333:                                             ; preds = %1327
  store i32 0, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %1334

1334:                                             ; preds = %1333, %1327
  %1335 = load %struct.termp*, %struct.termp** %3, align 8
  %1336 = getelementptr inbounds %struct.termp, %struct.termp* %1335, i32 0, i32 7
  %1337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1336, i32 0, i32 0
  %1338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1337, align 8
  %1339 = load i32, i32* %14, align 4
  %1340 = sext i32 %1339 to i64
  %1341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1338, i64 %1340
  %1342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1341, i32 0, i32 0
  %1343 = load i64, i64* %1342, align 8
  %1344 = icmp ugt i64 %1343, 2
  br i1 %1344, label %1345, label %1372

1345:                                             ; preds = %1334
  %1346 = load i32, i32* %21, align 4
  %1347 = icmp sgt i32 %1346, 1
  br i1 %1347, label %1354, label %1348

1348:                                             ; preds = %1345
  %1349 = load i32, i32* %16, align 4
  %1350 = icmp sgt i32 %1349, 1
  br i1 %1350, label %1354, label %1351

1351:                                             ; preds = %1348
  %1352 = load i32, i32* %20, align 4
  %1353 = icmp ne i32 %1352, 0
  br i1 %1353, label %1354, label %1372

1354:                                             ; preds = %1351, %1348, %1345
  %1355 = load %struct.termp*, %struct.termp** %3, align 8
  %1356 = load i32, i32* @BHORIZ, align 4
  %1357 = load i32, i32* %20, align 4
  %1358 = mul nsw i32 %1356, %1357
  %1359 = load i32, i32* @BUP, align 4
  %1360 = load i32, i32* %21, align 4
  %1361 = icmp sgt i32 %1360, 1
  %1362 = zext i1 %1361 to i32
  %1363 = mul nsw i32 %1359, %1362
  %1364 = add nsw i32 %1358, %1363
  %1365 = load i32, i32* @BDOWN, align 4
  %1366 = load i32, i32* %16, align 4
  %1367 = icmp sgt i32 %1366, 1
  %1368 = zext i1 %1367 to i32
  %1369 = mul nsw i32 %1365, %1368
  %1370 = add nsw i32 %1364, %1369
  %1371 = call i32 @tbl_direct_border(%struct.termp* %1355, i32 %1370, i32 1)
  br label %1372

1372:                                             ; preds = %1354, %1351, %1334
  br label %1373

1373:                                             ; preds = %1372, %1248, %1168, %1062
  %1374 = load i32, i32* %14, align 4
  %1375 = add nsw i32 %1374, 1
  store i32 %1375, i32* %14, align 4
  br label %871

1376:                                             ; preds = %871
  br label %1377

1377:                                             ; preds = %1376, %822
  %1378 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1379 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1378, i32 0, i32 2
  %1380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1379, align 8
  %1381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1380, i32 0, i32 0
  %1382 = load i32, i32* %1381, align 8
  %1383 = load i32, i32* @TBL_OPT_DBOX, align 4
  %1384 = and i32 %1382, %1383
  %1385 = icmp ne i32 %1384, 0
  br i1 %1385, label %1386, label %1387

1386:                                             ; preds = %1377
  br label %1398

1387:                                             ; preds = %1377
  %1388 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1389 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1388, i32 0, i32 2
  %1390 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1389, align 8
  %1391 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1390, i32 0, i32 0
  %1392 = load i32, i32* %1391, align 8
  %1393 = load i32, i32* @TBL_OPT_BOX, align 4
  %1394 = and i32 %1392, %1393
  %1395 = icmp ne i32 %1394, 0
  %1396 = zext i1 %1395 to i64
  %1397 = select i1 %1395, i32 1, i32 0
  br label %1398

1398:                                             ; preds = %1387, %1386
  %1399 = phi i32 [ 2, %1386 ], [ %1397, %1387 ]
  store i32 %1399, i32* %16, align 4
  store i32 %1399, i32* %21, align 4
  %1400 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1401 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1400, i32 0, i32 0
  %1402 = load i32, i32* %1401, align 8
  %1403 = icmp eq i32 %1402, 130
  br i1 %1403, label %1404, label %1437

1404:                                             ; preds = %1398
  %1405 = load i32, i32* %21, align 4
  %1406 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1407 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1406, i32 0, i32 3
  %1408 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1407, align 8
  %1409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1408, i32 0, i32 1
  %1410 = load %struct.tbl_cell*, %struct.tbl_cell** %1409, align 8
  %1411 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1410, i32 0, i32 1
  %1412 = load i32, i32* %1411, align 8
  %1413 = icmp slt i32 %1405, %1412
  br i1 %1413, label %1414, label %1437

1414:                                             ; preds = %1404
  %1415 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1416 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1415, i32 0, i32 3
  %1417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1416, align 8
  %1418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1417, i32 0, i32 1
  %1419 = load %struct.tbl_cell*, %struct.tbl_cell** %1418, align 8
  %1420 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1419, i32 0, i32 2
  %1421 = load i32, i32* %1420, align 4
  %1422 = add nsw i32 %1421, 1
  %1423 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1424 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1423, i32 0, i32 2
  %1425 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1424, align 8
  %1426 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1425, i32 0, i32 1
  %1427 = load i32, i32* %1426, align 4
  %1428 = icmp eq i32 %1422, %1427
  br i1 %1428, label %1429, label %1437

1429:                                             ; preds = %1414
  %1430 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1431 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1430, i32 0, i32 3
  %1432 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1431, align 8
  %1433 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1432, i32 0, i32 1
  %1434 = load %struct.tbl_cell*, %struct.tbl_cell** %1433, align 8
  %1435 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1434, i32 0, i32 1
  %1436 = load i32, i32* %1435, align 8
  store i32 %1436, i32* %16, align 4
  store i32 %1436, i32* %21, align 4
  br label %1437

1437:                                             ; preds = %1429, %1414, %1404, %1398
  %1438 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1439 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1438, i32 0, i32 1
  %1440 = load %struct.tbl_span*, %struct.tbl_span** %1439, align 8
  %1441 = icmp ne %struct.tbl_span* %1440, null
  br i1 %1441, label %1442, label %1481

1442:                                             ; preds = %1437
  %1443 = load i32, i32* %16, align 4
  %1444 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1445 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1444, i32 0, i32 1
  %1446 = load %struct.tbl_span*, %struct.tbl_span** %1445, align 8
  %1447 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1446, i32 0, i32 3
  %1448 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1447, align 8
  %1449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1448, i32 0, i32 1
  %1450 = load %struct.tbl_cell*, %struct.tbl_cell** %1449, align 8
  %1451 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1450, i32 0, i32 1
  %1452 = load i32, i32* %1451, align 8
  %1453 = icmp slt i32 %1443, %1452
  br i1 %1453, label %1454, label %1481

1454:                                             ; preds = %1442
  %1455 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1456 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1455, i32 0, i32 1
  %1457 = load %struct.tbl_span*, %struct.tbl_span** %1456, align 8
  %1458 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1457, i32 0, i32 3
  %1459 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1458, align 8
  %1460 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1459, i32 0, i32 1
  %1461 = load %struct.tbl_cell*, %struct.tbl_cell** %1460, align 8
  %1462 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1461, i32 0, i32 2
  %1463 = load i32, i32* %1462, align 4
  %1464 = add nsw i32 %1463, 1
  %1465 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1466 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1465, i32 0, i32 2
  %1467 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1466, align 8
  %1468 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1467, i32 0, i32 1
  %1469 = load i32, i32* %1468, align 4
  %1470 = icmp eq i32 %1464, %1469
  br i1 %1470, label %1471, label %1481

1471:                                             ; preds = %1454
  %1472 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1473 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1472, i32 0, i32 1
  %1474 = load %struct.tbl_span*, %struct.tbl_span** %1473, align 8
  %1475 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1474, i32 0, i32 3
  %1476 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1475, align 8
  %1477 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1476, i32 0, i32 1
  %1478 = load %struct.tbl_cell*, %struct.tbl_cell** %1477, align 8
  %1479 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1478, i32 0, i32 1
  %1480 = load i32, i32* %1479, align 8
  store i32 %1480, i32* %16, align 4
  br label %1481

1481:                                             ; preds = %1471, %1454, %1442, %1437
  %1482 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1483 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1482, i32 0, i32 5
  %1484 = load %struct.tbl_span*, %struct.tbl_span** %1483, align 8
  %1485 = icmp ne %struct.tbl_span* %1484, null
  br i1 %1485, label %1486, label %1546

1486:                                             ; preds = %1481
  %1487 = load i32, i32* %21, align 4
  %1488 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1489 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1488, i32 0, i32 5
  %1490 = load %struct.tbl_span*, %struct.tbl_span** %1489, align 8
  %1491 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1490, i32 0, i32 3
  %1492 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1491, align 8
  %1493 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1492, i32 0, i32 1
  %1494 = load %struct.tbl_cell*, %struct.tbl_cell** %1493, align 8
  %1495 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1494, i32 0, i32 1
  %1496 = load i32, i32* %1495, align 8
  %1497 = icmp slt i32 %1487, %1496
  br i1 %1497, label %1498, label %1546

1498:                                             ; preds = %1486
  %1499 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1500 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1499, i32 0, i32 5
  %1501 = load %struct.tbl_span*, %struct.tbl_span** %1500, align 8
  %1502 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1501, i32 0, i32 3
  %1503 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1502, align 8
  %1504 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1503, i32 0, i32 1
  %1505 = load %struct.tbl_cell*, %struct.tbl_cell** %1504, align 8
  %1506 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1505, i32 0, i32 2
  %1507 = load i32, i32* %1506, align 4
  %1508 = add nsw i32 %1507, 1
  %1509 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1510 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1509, i32 0, i32 2
  %1511 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1510, align 8
  %1512 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1511, i32 0, i32 1
  %1513 = load i32, i32* %1512, align 4
  %1514 = icmp eq i32 %1508, %1513
  br i1 %1514, label %1515, label %1546

1515:                                             ; preds = %1498
  %1516 = load i32, i32* %18, align 4
  %1517 = icmp ne i32 %1516, 0
  br i1 %1517, label %1536, label %1518

1518:                                             ; preds = %1515
  %1519 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1520 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1519, i32 0, i32 3
  %1521 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1520, align 8
  %1522 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1521, i32 0, i32 1
  %1523 = load %struct.tbl_cell*, %struct.tbl_cell** %1522, align 8
  %1524 = call i64 @IS_HORIZ(%struct.tbl_cell* %1523)
  %1525 = icmp ne i64 %1524, 0
  br i1 %1525, label %1526, label %1546

1526:                                             ; preds = %1518
  %1527 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1528 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1527, i32 0, i32 5
  %1529 = load %struct.tbl_span*, %struct.tbl_span** %1528, align 8
  %1530 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1529, i32 0, i32 3
  %1531 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1530, align 8
  %1532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1531, i32 0, i32 1
  %1533 = load %struct.tbl_cell*, %struct.tbl_cell** %1532, align 8
  %1534 = call i64 @IS_HORIZ(%struct.tbl_cell* %1533)
  %1535 = icmp ne i64 %1534, 0
  br i1 %1535, label %1546, label %1536

1536:                                             ; preds = %1526, %1515
  %1537 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1538 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1537, i32 0, i32 5
  %1539 = load %struct.tbl_span*, %struct.tbl_span** %1538, align 8
  %1540 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1539, i32 0, i32 3
  %1541 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1540, align 8
  %1542 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1541, i32 0, i32 1
  %1543 = load %struct.tbl_cell*, %struct.tbl_cell** %1542, align 8
  %1544 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1543, i32 0, i32 1
  %1545 = load i32, i32* %1544, align 8
  store i32 %1545, i32* %21, align 4
  br label %1546

1546:                                             ; preds = %1536, %1526, %1518, %1498, %1486, %1481
  %1547 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1548 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1547, i32 0, i32 0
  %1549 = load i32, i32* %1548, align 8
  %1550 = icmp eq i32 %1549, 129
  br i1 %1550, label %1603, label %1551

1551:                                             ; preds = %1546
  %1552 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1553 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1552, i32 0, i32 4
  %1554 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1553, align 8
  %1555 = icmp ne %struct.TYPE_11__* %1554, null
  br i1 %1555, label %1556, label %1579

1556:                                             ; preds = %1551
  %1557 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1558 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1557, i32 0, i32 4
  %1559 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1558, align 8
  %1560 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1559, i32 0, i32 0
  %1561 = load i64, i64* %1560, align 8
  %1562 = load i64, i64* @TBL_DATA_DHORIZ, align 8
  %1563 = icmp eq i64 %1561, %1562
  br i1 %1563, label %1564, label %1579

1564:                                             ; preds = %1556
  %1565 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1566 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1565, i32 0, i32 4
  %1567 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1566, align 8
  %1568 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1567, i32 0, i32 1
  %1569 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1568, align 8
  %1570 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1569, i32 0, i32 0
  %1571 = load i32, i32* %1570, align 4
  %1572 = add nsw i32 %1571, 1
  %1573 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1574 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1573, i32 0, i32 2
  %1575 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1574, align 8
  %1576 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1575, i32 0, i32 1
  %1577 = load i32, i32* %1576, align 4
  %1578 = icmp eq i32 %1572, %1577
  br i1 %1578, label %1603, label %1579

1579:                                             ; preds = %1564, %1556, %1551
  %1580 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1581 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1580, i32 0, i32 3
  %1582 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1581, align 8
  %1583 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1582, i32 0, i32 1
  %1584 = load %struct.tbl_cell*, %struct.tbl_cell** %1583, align 8
  %1585 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1584, i32 0, i32 0
  %1586 = load i64, i64* %1585, align 8
  %1587 = icmp eq i64 %1586, 132
  br i1 %1587, label %1588, label %1604

1588:                                             ; preds = %1579
  %1589 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1590 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1589, i32 0, i32 3
  %1591 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1590, align 8
  %1592 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1591, i32 0, i32 1
  %1593 = load %struct.tbl_cell*, %struct.tbl_cell** %1592, align 8
  %1594 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1593, i32 0, i32 2
  %1595 = load i32, i32* %1594, align 4
  %1596 = add nsw i32 %1595, 1
  %1597 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1598 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1597, i32 0, i32 2
  %1599 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1598, align 8
  %1600 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1599, i32 0, i32 1
  %1601 = load i32, i32* %1600, align 4
  %1602 = icmp eq i32 %1596, %1601
  br i1 %1602, label %1603, label %1604

1603:                                             ; preds = %1588, %1564, %1546
  br label %1667

1604:                                             ; preds = %1588, %1579
  %1605 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1606 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1605, i32 0, i32 0
  %1607 = load i32, i32* %1606, align 8
  %1608 = icmp eq i32 %1607, 128
  br i1 %1608, label %1663, label %1609

1609:                                             ; preds = %1604
  %1610 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1611 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1610, i32 0, i32 4
  %1612 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1611, align 8
  %1613 = icmp ne %struct.TYPE_11__* %1612, null
  br i1 %1613, label %1614, label %1637

1614:                                             ; preds = %1609
  %1615 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1616 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1615, i32 0, i32 4
  %1617 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1616, align 8
  %1618 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1617, i32 0, i32 0
  %1619 = load i64, i64* %1618, align 8
  %1620 = load i64, i64* @TBL_DATA_HORIZ, align 8
  %1621 = icmp eq i64 %1619, %1620
  br i1 %1621, label %1622, label %1637

1622:                                             ; preds = %1614
  %1623 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1624 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1623, i32 0, i32 4
  %1625 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1624, align 8
  %1626 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1625, i32 0, i32 1
  %1627 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1626, align 8
  %1628 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1627, i32 0, i32 0
  %1629 = load i32, i32* %1628, align 4
  %1630 = add nsw i32 %1629, 1
  %1631 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1632 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1631, i32 0, i32 2
  %1633 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1632, align 8
  %1634 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1633, i32 0, i32 1
  %1635 = load i32, i32* %1634, align 4
  %1636 = icmp eq i32 %1630, %1635
  br i1 %1636, label %1663, label %1637

1637:                                             ; preds = %1622, %1614, %1609
  %1638 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1639 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1638, i32 0, i32 3
  %1640 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1639, align 8
  %1641 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1640, i32 0, i32 1
  %1642 = load %struct.tbl_cell*, %struct.tbl_cell** %1641, align 8
  %1643 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1642, i32 0, i32 0
  %1644 = load i64, i64* %1643, align 8
  %1645 = icmp eq i64 %1644, 131
  br i1 %1645, label %1646, label %1661

1646:                                             ; preds = %1637
  %1647 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1648 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1647, i32 0, i32 3
  %1649 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1648, align 8
  %1650 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1649, i32 0, i32 1
  %1651 = load %struct.tbl_cell*, %struct.tbl_cell** %1650, align 8
  %1652 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1651, i32 0, i32 2
  %1653 = load i32, i32* %1652, align 4
  %1654 = add nsw i32 %1653, 1
  %1655 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1656 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1655, i32 0, i32 2
  %1657 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1656, align 8
  %1658 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1657, i32 0, i32 1
  %1659 = load i32, i32* %1658, align 4
  %1660 = icmp eq i32 %1654, %1659
  br label %1661

1661:                                             ; preds = %1646, %1637
  %1662 = phi i1 [ false, %1637 ], [ %1660, %1646 ]
  br label %1663

1663:                                             ; preds = %1661, %1622, %1604
  %1664 = phi i1 [ true, %1622 ], [ true, %1604 ], [ %1662, %1661 ]
  %1665 = zext i1 %1664 to i64
  %1666 = select i1 %1664, i32 1, i32 0
  br label %1667

1667:                                             ; preds = %1663, %1603
  %1668 = phi i32 [ 2, %1603 ], [ %1666, %1663 ]
  store i32 %1668, i32* %19, align 4
  %1669 = load i32, i32* @BUP, align 4
  %1670 = load i32, i32* %21, align 4
  %1671 = mul nsw i32 %1669, %1670
  %1672 = load i32, i32* @BDOWN, align 4
  %1673 = load i32, i32* %16, align 4
  %1674 = mul nsw i32 %1672, %1673
  %1675 = add nsw i32 %1671, %1674
  %1676 = load i32, i32* @BLEFT, align 4
  %1677 = load i32, i32* %19, align 4
  %1678 = mul nsw i32 %1676, %1677
  %1679 = add nsw i32 %1675, %1678
  store i32 %1679, i32* %17, align 4
  %1680 = load i32, i32* %21, align 4
  %1681 = icmp sgt i32 %1680, 0
  br i1 %1681, label %1695, label %1682

1682:                                             ; preds = %1667
  %1683 = load i32, i32* %16, align 4
  %1684 = icmp sgt i32 %1683, 0
  br i1 %1684, label %1695, label %1685

1685:                                             ; preds = %1682
  %1686 = load i32, i32* %18, align 4
  %1687 = icmp ne i32 %1686, 0
  br i1 %1687, label %1688, label %1748

1688:                                             ; preds = %1685
  %1689 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1690 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1689, i32 0, i32 2
  %1691 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1690, align 8
  %1692 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1691, i32 0, i32 2
  %1693 = load i64, i64* %1692, align 8
  %1694 = icmp ne i64 %1693, 0
  br i1 %1694, label %1695, label %1748

1695:                                             ; preds = %1688, %1682, %1667
  %1696 = load i32, i32* %18, align 4
  %1697 = icmp eq i32 %1696, 0
  br i1 %1697, label %1698, label %1744

1698:                                             ; preds = %1695
  %1699 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1700 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1699, i32 0, i32 3
  %1701 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1700, align 8
  %1702 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1701, i32 0, i32 1
  %1703 = load %struct.tbl_cell*, %struct.tbl_cell** %1702, align 8
  %1704 = call i64 @IS_HORIZ(%struct.tbl_cell* %1703)
  %1705 = icmp eq i64 %1704, 0
  br i1 %1705, label %1721, label %1706

1706:                                             ; preds = %1698
  %1707 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1708 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1707, i32 0, i32 3
  %1709 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1708, align 8
  %1710 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1709, i32 0, i32 1
  %1711 = load %struct.tbl_cell*, %struct.tbl_cell** %1710, align 8
  %1712 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %1711, i32 0, i32 2
  %1713 = load i32, i32* %1712, align 4
  %1714 = add nsw i32 %1713, 1
  %1715 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1716 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1715, i32 0, i32 2
  %1717 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1716, align 8
  %1718 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1717, i32 0, i32 1
  %1719 = load i32, i32* %1718, align 4
  %1720 = icmp slt i32 %1714, %1719
  br i1 %1720, label %1721, label %1744

1721:                                             ; preds = %1706, %1698
  %1722 = load %struct.termp*, %struct.termp** %3, align 8
  %1723 = getelementptr inbounds %struct.termp, %struct.termp* %1722, i32 0, i32 6
  %1724 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1723, align 8
  %1725 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1724, i32 1
  store %struct.TYPE_13__* %1725, %struct.TYPE_13__** %1723, align 8
  br label %1726

1726:                                             ; preds = %1732, %1721
  %1727 = load %struct.termp*, %struct.termp** %3, align 8
  %1728 = load i32, i32* @BHORIZ, align 4
  %1729 = load i32, i32* %19, align 4
  %1730 = mul nsw i32 %1728, %1729
  %1731 = call i32 @tbl_direct_border(%struct.termp* %1727, i32 %1730, i32 1)
  br label %1732

1732:                                             ; preds = %1726
  %1733 = load %struct.termp*, %struct.termp** %3, align 8
  %1734 = getelementptr inbounds %struct.termp, %struct.termp* %1733, i32 0, i32 4
  %1735 = load i32, i32* %1734, align 4
  %1736 = sext i32 %1735 to i64
  %1737 = load %struct.termp*, %struct.termp** %3, align 8
  %1738 = getelementptr inbounds %struct.termp, %struct.termp* %1737, i32 0, i32 6
  %1739 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1738, align 8
  %1740 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1739, i32 0, i32 0
  %1741 = load i64, i64* %1740, align 8
  %1742 = icmp ult i64 %1736, %1741
  br i1 %1742, label %1726, label %1743

1743:                                             ; preds = %1732
  br label %1744

1744:                                             ; preds = %1743, %1706, %1695
  %1745 = load %struct.termp*, %struct.termp** %3, align 8
  %1746 = load i32, i32* %17, align 4
  %1747 = call i32 @tbl_direct_border(%struct.termp* %1745, i32 %1746, i32 1)
  br label %1748

1748:                                             ; preds = %1744, %1688, %1685
  %1749 = load %struct.termp*, %struct.termp** %3, align 8
  %1750 = getelementptr inbounds %struct.termp, %struct.termp* %1749, i32 0, i32 8
  %1751 = load i32 (%struct.termp*)*, i32 (%struct.termp*)** %1750, align 8
  %1752 = load %struct.termp*, %struct.termp** %3, align 8
  %1753 = call i32 %1751(%struct.termp* %1752)
  %1754 = load %struct.termp*, %struct.termp** %3, align 8
  %1755 = getelementptr inbounds %struct.termp, %struct.termp* %1754, i32 0, i32 4
  store i32 0, i32* %1755, align 4
  br label %1756

1756:                                             ; preds = %1748
  %1757 = load i32, i32* %15, align 4
  %1758 = icmp ne i32 %1757, 0
  br i1 %1758, label %589, label %1759

1759:                                             ; preds = %1756
  %1760 = load %struct.termp*, %struct.termp** %3, align 8
  %1761 = call i32 @term_setcol(%struct.termp* %1760, i32 1)
  %1762 = load i32, i32* @TERMP_MULTICOL, align 4
  %1763 = xor i32 %1762, -1
  %1764 = load %struct.termp*, %struct.termp** %3, align 8
  %1765 = getelementptr inbounds %struct.termp, %struct.termp* %1764, i32 0, i32 0
  %1766 = load i32, i32* %1765, align 8
  %1767 = and i32 %1766, %1763
  store i32 %1767, i32* %1765, align 8
  %1768 = load %struct.termp*, %struct.termp** %3, align 8
  %1769 = getelementptr inbounds %struct.termp, %struct.termp* %1768, i32 0, i32 2
  %1770 = load i64, i64* %1769, align 8
  %1771 = load %struct.termp*, %struct.termp** %3, align 8
  %1772 = getelementptr inbounds %struct.termp, %struct.termp* %1771, i32 0, i32 6
  %1773 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1772, align 8
  %1774 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1773, i32 0, i32 1
  store i64 %1770, i64* %1774, align 8
  %1775 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1776 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1775, i32 0, i32 1
  %1777 = load %struct.tbl_span*, %struct.tbl_span** %1776, align 8
  %1778 = icmp eq %struct.tbl_span* %1777, null
  br i1 %1778, label %1779, label %1835

1779:                                             ; preds = %1759
  %1780 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1781 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1780, i32 0, i32 2
  %1782 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1781, align 8
  %1783 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1782, i32 0, i32 0
  %1784 = load i32, i32* %1783, align 8
  %1785 = load i32, i32* @TBL_OPT_DBOX, align 4
  %1786 = load i32, i32* @TBL_OPT_BOX, align 4
  %1787 = or i32 %1785, %1786
  %1788 = and i32 %1784, %1787
  %1789 = icmp ne i32 %1788, 0
  br i1 %1789, label %1790, label %1798

1790:                                             ; preds = %1779
  %1791 = load %struct.termp*, %struct.termp** %3, align 8
  %1792 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1793 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1794 = load i32, i32* @TBL_OPT_BOX, align 4
  %1795 = call i32 @tbl_hrule(%struct.termp* %1791, %struct.tbl_span* %1792, %struct.tbl_span* %1793, %struct.tbl_span* null, i32 %1794)
  %1796 = load %struct.termp*, %struct.termp** %3, align 8
  %1797 = getelementptr inbounds %struct.termp, %struct.termp* %1796, i32 0, i32 5
  store i32 1, i32* %1797, align 8
  br label %1798

1798:                                             ; preds = %1790, %1779
  %1799 = load %struct.termp*, %struct.termp** %3, align 8
  %1800 = getelementptr inbounds %struct.termp, %struct.termp* %1799, i32 0, i32 1
  %1801 = load i64, i64* %1800, align 8
  %1802 = load i64, i64* @TERMENC_ASCII, align 8
  %1803 = icmp eq i64 %1801, %1802
  br i1 %1803, label %1804, label %1821

1804:                                             ; preds = %1798
  %1805 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1806 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1805, i32 0, i32 2
  %1807 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1806, align 8
  %1808 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1807, i32 0, i32 0
  %1809 = load i32, i32* %1808, align 8
  %1810 = load i32, i32* @TBL_OPT_DBOX, align 4
  %1811 = and i32 %1809, %1810
  %1812 = icmp ne i32 %1811, 0
  br i1 %1812, label %1813, label %1821

1813:                                             ; preds = %1804
  %1814 = load %struct.termp*, %struct.termp** %3, align 8
  %1815 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1816 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1817 = load i32, i32* @TBL_OPT_DBOX, align 4
  %1818 = call i32 @tbl_hrule(%struct.termp* %1814, %struct.tbl_span* %1815, %struct.tbl_span* %1816, %struct.tbl_span* null, i32 %1817)
  %1819 = load %struct.termp*, %struct.termp** %3, align 8
  %1820 = getelementptr inbounds %struct.termp, %struct.termp* %1819, i32 0, i32 5
  store i32 2, i32* %1820, align 8
  br label %1821

1821:                                             ; preds = %1813, %1804, %1798
  %1822 = load %struct.termp*, %struct.termp** %3, align 8
  %1823 = getelementptr inbounds %struct.termp, %struct.termp* %1822, i32 0, i32 7
  %1824 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1823, i32 0, i32 0
  %1825 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1824, align 8
  %1826 = call i32 @assert(%struct.TYPE_16__* %1825)
  %1827 = load %struct.termp*, %struct.termp** %3, align 8
  %1828 = getelementptr inbounds %struct.termp, %struct.termp* %1827, i32 0, i32 7
  %1829 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1828, i32 0, i32 0
  %1830 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1829, align 8
  %1831 = call i32 @free(%struct.TYPE_16__* %1830)
  %1832 = load %struct.termp*, %struct.termp** %3, align 8
  %1833 = getelementptr inbounds %struct.termp, %struct.termp* %1832, i32 0, i32 7
  %1834 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1833, i32 0, i32 0
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %1834, align 8
  br label %1876

1835:                                             ; preds = %1759
  %1836 = load i32, i32* %18, align 4
  %1837 = icmp eq i32 %1836, 0
  br i1 %1837, label %1838, label %1875

1838:                                             ; preds = %1835
  %1839 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1840 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1839, i32 0, i32 2
  %1841 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1840, align 8
  %1842 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1841, i32 0, i32 0
  %1843 = load i32, i32* %1842, align 8
  %1844 = load i32, i32* @TBL_OPT_ALLBOX, align 4
  %1845 = and i32 %1843, %1844
  %1846 = icmp ne i32 %1845, 0
  br i1 %1846, label %1847, label %1875

1847:                                             ; preds = %1838
  %1848 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1849 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1848, i32 0, i32 1
  %1850 = load %struct.tbl_span*, %struct.tbl_span** %1849, align 8
  %1851 = icmp eq %struct.tbl_span* %1850, null
  br i1 %1851, label %1866, label %1852

1852:                                             ; preds = %1847
  %1853 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1854 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1853, i32 0, i32 1
  %1855 = load %struct.tbl_span*, %struct.tbl_span** %1854, align 8
  %1856 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1855, i32 0, i32 0
  %1857 = load i32, i32* %1856, align 8
  %1858 = icmp eq i32 %1857, 130
  br i1 %1858, label %1866, label %1859

1859:                                             ; preds = %1852
  %1860 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1861 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1860, i32 0, i32 1
  %1862 = load %struct.tbl_span*, %struct.tbl_span** %1861, align 8
  %1863 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1862, i32 0, i32 1
  %1864 = load %struct.tbl_span*, %struct.tbl_span** %1863, align 8
  %1865 = icmp ne %struct.tbl_span* %1864, null
  br i1 %1865, label %1866, label %1875

1866:                                             ; preds = %1859, %1852, %1847
  %1867 = load %struct.termp*, %struct.termp** %3, align 8
  %1868 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1869 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1870 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %1871 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %1870, i32 0, i32 1
  %1872 = load %struct.tbl_span*, %struct.tbl_span** %1871, align 8
  %1873 = load i32, i32* @TBL_OPT_ALLBOX, align 4
  %1874 = call i32 @tbl_hrule(%struct.termp* %1867, %struct.tbl_span* %1868, %struct.tbl_span* %1869, %struct.tbl_span* %1872, i32 %1873)
  br label %1875

1875:                                             ; preds = %1866, %1859, %1838, %1835
  br label %1876

1876:                                             ; preds = %1875, %1821
  %1877 = load i64, i64* %10, align 8
  %1878 = load %struct.termp*, %struct.termp** %3, align 8
  %1879 = getelementptr inbounds %struct.termp, %struct.termp* %1878, i32 0, i32 6
  %1880 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1879, align 8
  %1881 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1880, i32 0, i32 0
  store i64 %1877, i64* %1881, align 8
  %1882 = load i32, i32* @TERMP_NONOSPACE, align 4
  %1883 = xor i32 %1882, -1
  %1884 = load %struct.termp*, %struct.termp** %3, align 8
  %1885 = getelementptr inbounds %struct.termp, %struct.termp* %1884, i32 0, i32 0
  %1886 = load i32, i32* %1885, align 8
  %1887 = and i32 %1886, %1883
  store i32 %1887, i32* %1885, align 8
  ret void
}

declare dso_local i32 @tblcalc(%struct.TYPE_14__*, %struct.tbl_span*, i64, i64) #1

declare dso_local i32 @term_tab_set(%struct.termp*, i32*) #1

declare dso_local i32 @term_tab_iset(i64) #1

declare dso_local i32 @tbl_hrule(%struct.termp*, %struct.tbl_span*, %struct.tbl_span*, %struct.tbl_span*, i32) #1

declare dso_local i32 @term_setcol(%struct.termp*, i32) #1

declare dso_local i32 @tbl_data(%struct.termp*, %struct.TYPE_15__*, %struct.tbl_cell*, %struct.tbl_dat*, %struct.TYPE_16__*) #1

declare dso_local i64 @IS_HORIZ(%struct.tbl_cell*) #1

declare dso_local i32 @tbl_direct_border(%struct.termp*, i32, i32) #1

declare dso_local i32 @term_flushln(%struct.termp*) #1

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
