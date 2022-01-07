; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_html.c_print_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_html.c_print_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32* }
%struct.tbl_span = type { i64, %struct.tbl_span*, %struct.tbl_dat*, %struct.TYPE_3__* }
%struct.tbl_dat = type { i32, i64, i32*, %struct.tbl_cell*, %struct.tbl_dat* }
%struct.tbl_cell = type { i32, i32, i32, %struct.tbl_cell* }
%struct.TYPE_3__ = type { i32 }
%struct.tag = type { i32 }

@TBL_SPAN_DATA = common dso_local global i64 0, align 8
@HTML_NONOSPACE = common dso_local global i32 0, align 4
@HTML_NOSPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"solid\00", align 1
@TAG_TR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"border-left-style\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"border-bottom-style\00", align 1
@TBL_CELL_SPAN = common dso_local global i32 0, align 4
@TBL_CELL_DOWN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"\\^\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@TBL_CELL_TALIGN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@TBL_CELL_BALIGN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@TAG_TD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"??sss\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"colspan\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"rowspan\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"vertical-align\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"text-align\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"border-right-style\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_tbl(%struct.html* %0, %struct.tbl_span* %1) #0 {
  %3 = alloca %struct.html*, align 8
  %4 = alloca %struct.tbl_span*, align 8
  %5 = alloca %struct.tbl_dat*, align 8
  %6 = alloca %struct.tbl_cell*, align 8
  %7 = alloca %struct.tbl_span*, align 8
  %8 = alloca %struct.tag*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [4 x i8], align 1
  %17 = alloca [4 x i8], align 1
  %18 = alloca i32, align 4
  store %struct.html* %0, %struct.html** %3, align 8
  store %struct.tbl_span* %1, %struct.tbl_span** %4, align 8
  %19 = load %struct.html*, %struct.html** %3, align 8
  %20 = getelementptr inbounds %struct.html, %struct.html* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.html*, %struct.html** %3, align 8
  %25 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %26 = call i32 @html_tblopen(%struct.html* %24, %struct.tbl_span* %25)
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %29 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TBL_SPAN_DATA, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %237

34:                                               ; preds = %27
  %35 = load i32, i32* @HTML_NONOSPACE, align 4
  %36 = load %struct.html*, %struct.html** %3, align 8
  %37 = getelementptr inbounds %struct.html, %struct.html* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @HTML_NOSPACE, align 4
  %41 = load %struct.html*, %struct.html** %3, align 8
  %42 = getelementptr inbounds %struct.html, %struct.html* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %46 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %52 [
    i32 2, label %50
    i32 1, label %51
  ]

50:                                               ; preds = %34
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %53

51:                                               ; preds = %34
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %53

52:                                               ; preds = %34
  store i8* null, i8** %14, align 8
  br label %53

53:                                               ; preds = %52, %51, %50
  store i8* null, i8** %13, align 8
  %54 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %55 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %54, i32 0, i32 1
  %56 = load %struct.tbl_span*, %struct.tbl_span** %55, align 8
  store %struct.tbl_span* %56, %struct.tbl_span** %7, align 8
  %57 = icmp ne %struct.tbl_span* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %60 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  switch i64 %61, label %64 [
    i64 129, label %62
    i64 128, label %63
  ]

62:                                               ; preds = %58
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %65

63:                                               ; preds = %58
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %65

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %63, %62
  br label %66

66:                                               ; preds = %65, %53
  %67 = load %struct.html*, %struct.html** %3, align 8
  %68 = load i32, i32* @TAG_TR, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = call %struct.tag* (%struct.html*, i32, i8*, i8*, i8*, i8*, i8*, ...) @print_otag(%struct.html* %67, i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  store %struct.tag* %71, %struct.tag** %8, align 8
  %72 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %73 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %72, i32 0, i32 2
  %74 = load %struct.tbl_dat*, %struct.tbl_dat** %73, align 8
  store %struct.tbl_dat* %74, %struct.tbl_dat** %5, align 8
  br label %75

75:                                               ; preds = %203, %66
  %76 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %77 = icmp ne %struct.tbl_dat* %76, null
  br i1 %77, label %78, label %207

78:                                               ; preds = %75
  %79 = load %struct.html*, %struct.html** %3, align 8
  %80 = load %struct.tag*, %struct.tag** %8, align 8
  %81 = call i32 @print_stagq(%struct.html* %79, %struct.tag* %80)
  %82 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %83 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %82, i32 0, i32 3
  %84 = load %struct.tbl_cell*, %struct.tbl_cell** %83, align 8
  store %struct.tbl_cell* %84, %struct.tbl_cell** %6, align 8
  %85 = load %struct.tbl_cell*, %struct.tbl_cell** %6, align 8
  %86 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TBL_CELL_SPAN, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %107, label %90

90:                                               ; preds = %78
  %91 = load %struct.tbl_cell*, %struct.tbl_cell** %6, align 8
  %92 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @TBL_CELL_DOWN, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %107, label %96

96:                                               ; preds = %90
  %97 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %98 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %103 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = call i64 @strcmp(i32* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101, %90, %78
  br label %203

108:                                              ; preds = %101, %96
  %109 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %110 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  %115 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %116 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  %119 = call i32 @snprintf(i8* %114, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  %120 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  store i8* %120, i8** %9, align 8
  br label %122

121:                                              ; preds = %108
  store i8* null, i8** %9, align 8
  br label %122

122:                                              ; preds = %121, %113
  %123 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %124 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %122
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %129 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %130 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  %133 = trunc i64 %132 to i32
  %134 = call i32 @snprintf(i8* %128, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  %135 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  store i8* %135, i8** %10, align 8
  br label %137

136:                                              ; preds = %122
  store i8* null, i8** %10, align 8
  br label %137

137:                                              ; preds = %136, %127
  %138 = load %struct.tbl_cell*, %struct.tbl_cell** %6, align 8
  %139 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  switch i32 %140, label %143 [
    i32 132, label %141
    i32 130, label %142
    i32 131, label %142
  ]

141:                                              ; preds = %137
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %144

142:                                              ; preds = %137, %137
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %144

143:                                              ; preds = %137
  store i8* null, i8** %11, align 8
  br label %144

144:                                              ; preds = %143, %142, %141
  %145 = load %struct.tbl_cell*, %struct.tbl_cell** %6, align 8
  %146 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @TBL_CELL_TALIGN, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %162

152:                                              ; preds = %144
  %153 = load %struct.tbl_cell*, %struct.tbl_cell** %6, align 8
  %154 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @TBL_CELL_BALIGN, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %12, align 8
  br label %161

160:                                              ; preds = %152
  store i8* null, i8** %12, align 8
  br label %161

161:                                              ; preds = %160, %159
  br label %162

162:                                              ; preds = %161, %151
  %163 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %164 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %18, align 4
  br label %166

166:                                              ; preds = %173, %162
  %167 = load i32, i32* %18, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load %struct.tbl_cell*, %struct.tbl_cell** %6, align 8
  %171 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %170, i32 0, i32 3
  %172 = load %struct.tbl_cell*, %struct.tbl_cell** %171, align 8
  store %struct.tbl_cell* %172, %struct.tbl_cell** %6, align 8
  br label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %18, align 4
  br label %166

176:                                              ; preds = %166
  %177 = load %struct.tbl_cell*, %struct.tbl_cell** %6, align 8
  %178 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  switch i32 %179, label %182 [
    i32 2, label %180
    i32 1, label %181
  ]

180:                                              ; preds = %176
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %183

181:                                              ; preds = %176
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %183

182:                                              ; preds = %176
  store i8* null, i8** %15, align 8
  br label %183

183:                                              ; preds = %182, %181, %180
  %184 = load %struct.html*, %struct.html** %3, align 8
  %185 = load i32, i32* @TAG_TD, align 4
  %186 = load i8*, i8** %9, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = load i8*, i8** %12, align 8
  %189 = load i8*, i8** %11, align 8
  %190 = load i8*, i8** %15, align 8
  %191 = call %struct.tag* (%struct.html*, i32, i8*, i8*, i8*, i8*, i8*, ...) @print_otag(%struct.html* %184, i32 %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %186, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %187, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %188, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %189, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* %190)
  %192 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %193 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %202

196:                                              ; preds = %183
  %197 = load %struct.html*, %struct.html** %3, align 8
  %198 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %199 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @print_text(%struct.html* %197, i32* %200)
  br label %202

202:                                              ; preds = %196, %183
  br label %203

203:                                              ; preds = %202, %107
  %204 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %205 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %204, i32 0, i32 4
  %206 = load %struct.tbl_dat*, %struct.tbl_dat** %205, align 8
  store %struct.tbl_dat* %206, %struct.tbl_dat** %5, align 8
  br label %75

207:                                              ; preds = %75
  %208 = load %struct.html*, %struct.html** %3, align 8
  %209 = load %struct.tag*, %struct.tag** %8, align 8
  %210 = call i32 @print_tagq(%struct.html* %208, %struct.tag* %209)
  %211 = load i32, i32* @HTML_NONOSPACE, align 4
  %212 = xor i32 %211, -1
  %213 = load %struct.html*, %struct.html** %3, align 8
  %214 = getelementptr inbounds %struct.html, %struct.html* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, %212
  store i32 %216, i32* %214, align 8
  %217 = load %struct.tbl_span*, %struct.tbl_span** %4, align 8
  %218 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %217, i32 0, i32 1
  %219 = load %struct.tbl_span*, %struct.tbl_span** %218, align 8
  %220 = icmp eq %struct.tbl_span* %219, null
  br i1 %220, label %221, label %237

221:                                              ; preds = %207
  %222 = load %struct.html*, %struct.html** %3, align 8
  %223 = getelementptr inbounds %struct.html, %struct.html* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @assert(i32* %225)
  %227 = load %struct.html*, %struct.html** %3, align 8
  %228 = getelementptr inbounds %struct.html, %struct.html* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @free(i32* %230)
  %232 = load %struct.html*, %struct.html** %3, align 8
  %233 = getelementptr inbounds %struct.html, %struct.html* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  store i32* null, i32** %234, align 8
  %235 = load %struct.html*, %struct.html** %3, align 8
  %236 = call i32 @print_tblclose(%struct.html* %235)
  br label %237

237:                                              ; preds = %33, %221, %207
  ret void
}

declare dso_local i32 @html_tblopen(%struct.html*, %struct.tbl_span*) #1

declare dso_local %struct.tag* @print_otag(%struct.html*, i32, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @print_stagq(%struct.html*, %struct.tag*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @print_text(%struct.html*, i32*) #1

declare dso_local i32 @print_tagq(%struct.html*, %struct.tag*) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @print_tblclose(%struct.html*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
