; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_format_title.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_format_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i8*, i8*, i32 }
%struct.TYPE_20__ = type { i8*, i32, i32 }

@xo_format_title.div_open = internal global [18 x i8] c"<div class=\22title\00", align 16
@xo_format_title.div_middle = internal global [3 x i8] c"\22>\00", align 1
@xo_format_title.div_close = internal global [7 x i8] c"</div>\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@XO_STYLE_HTML = common dso_local global i32 0, align 4
@XOF_PRETTY = common dso_local global i32 0, align 4
@XOF_COLUMNS = common dso_local global i32 0, align 4
@XOIF_ANCHOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_20__*, i8*, i32)* @xo_format_title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_format_title(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 2, i32* %10, align 4
  br label %31

31:                                               ; preds = %30, %4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = call i32 @xo_style(%struct.TYPE_19__* %32)
  switch i32 %33, label %43 [
    i32 128, label %34
    i32 130, label %34
    i32 129, label %34
    i32 131, label %34
  ]

34:                                               ; preds = %31, %31, %31, %31
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = load i32, i32* @TRUE, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @xo_simple_field(%struct.TYPE_19__* %35, i32 %36, i8* %37, i32 %38, i8* %39, i32 %40, i32 %41)
  br label %284

43:                                               ; preds = %31
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 2
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %12, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %48 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %13, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %14, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = call i32 @xo_style(%struct.TYPE_19__* %61)
  %63 = load i32, i32* @XO_STYLE_HTML, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %43
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = call i32 @xo_line_ensure_open(%struct.TYPE_19__* %66, i32 0)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %69 = load i32, i32* @XOF_PRETTY, align 4
  %70 = call i64 @XOF_ISSET(%struct.TYPE_19__* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @xo_buf_indent(%struct.TYPE_19__* %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %65
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  %81 = call i32 @xo_buf_append(%struct.TYPE_21__* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @xo_format_title.div_open, i64 0, i64 0), i32 17)
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %83 = call i32 @xo_color_append_html(%struct.TYPE_19__* %82)
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  %86 = call i32 @xo_buf_append(%struct.TYPE_21__* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @xo_format_title.div_middle, i64 0, i64 0), i32 2)
  br label %87

87:                                               ; preds = %78, %43
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = ptrtoint i8* %90 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %221

100:                                              ; preds = %87
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i8* @alloca(i32 %102)
  store i8* %103, i8** %16, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @memcpy(i8* %104, i8* %105, i32 %106)
  %108 = load i8*, i8** %16, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8 0, i8* %111, align 1
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  %114 = call i8* @alloca(i32 %113)
  store i8* %114, i8** %17, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @memcpy(i8* %115, i8* %116, i32 %117)
  %119 = load i8*, i8** %17, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 0, i8* %122, align 1
  %123 = load i8*, i8** %17, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 115
  br i1 %130, label %131, label %153

131:                                              ; preds = %100
  %132 = load i8*, i8** %16, align 8
  %133 = load i8*, i8** %17, align 8
  %134 = call i32 @snprintf(i8* null, i32 0, i8* %132, i8* %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %131
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  %140 = call i8* @alloca(i32 %139)
  store i8* %140, i8** %18, align 8
  %141 = load i8*, i8** %18, align 8
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  %144 = load i8*, i8** %16, align 8
  %145 = load i8*, i8** %17, align 8
  %146 = call i32 @snprintf(i8* %141, i32 %143, i8* %144, i8* %145)
  store i32 %146, i32* %15, align 4
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = load i8*, i8** %18, align 8
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @xo_data_append_content(%struct.TYPE_19__* %147, i8* %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %137, %131
  br label %268

153:                                              ; preds = %100
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = load i8*, i8** %16, align 8
  %159 = load i8*, i8** %17, align 8
  %160 = call i32 @snprintf(i8* %156, i32 %157, i8* %158, i8* %159)
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp sge i32 %161, %162
  br i1 %163, label %164, label %193

164:                                              ; preds = %153
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @xo_buf_has_room(%struct.TYPE_21__* %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %164
  br label %284

170:                                              ; preds = %164
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = ptrtoint i8* %177 to i64
  %182 = ptrtoint i8* %180 to i64
  %183 = sub i64 %181, %182
  %184 = sub nsw i64 %174, %183
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %14, align 4
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = load i8*, i8** %16, align 8
  %191 = load i8*, i8** %17, align 8
  %192 = call i32 @snprintf(i8* %188, i32 %189, i8* %190, i8* %191)
  store i32 %192, i32* %15, align 4
  br label %193

193:                                              ; preds = %170, %153
  %194 = load i32, i32* %15, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %219

196:                                              ; preds = %193
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %198 = load i32, i32* @XOF_COLUMNS, align 4
  %199 = call i64 @XOF_ISSET(%struct.TYPE_19__* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load i32, i32* %15, align 4
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %196
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %209 = load i32, i32* @XOIF_ANCHOR, align 4
  %210 = call i64 @XOIF_ISSET(%struct.TYPE_19__* %208, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load i32, i32* %15, align 4
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, %213
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %212, %207
  br label %219

219:                                              ; preds = %218, %193
  br label %220

220:                                              ; preds = %219
  br label %248

221:                                              ; preds = %87
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %223 = load i8*, i8** %9, align 8
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %11, align 4
  %226 = call i32 @xo_do_format_field(%struct.TYPE_19__* %222, i32* null, i8* %223, i32 %224, i32 %225)
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = ptrtoint i8* %229 to i64
  %237 = ptrtoint i8* %235 to i64
  %238 = sub i64 %236, %237
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %15, align 4
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  %243 = load i32, i32* %13, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 0
  store i8* %245, i8** %247, align 8
  br label %248

248:                                              ; preds = %221, %220
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %250 = call i32 @xo_style(%struct.TYPE_19__* %249)
  %251 = load i32, i32* @XO_STYLE_HTML, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %248
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %255 = load i32, i32* %15, align 4
  %256 = call i32 @xo_escape_xml(%struct.TYPE_21__* %254, i32 %255, i32 0)
  store i32 %256, i32* %15, align 4
  br label %257

257:                                              ; preds = %253, %248
  %258 = load i32, i32* %15, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %257
  %261 = load i32, i32* %15, align 4
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8
  %265 = sext i32 %261 to i64
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  store i8* %266, i8** %263, align 8
  br label %267

267:                                              ; preds = %260, %257
  br label %268

268:                                              ; preds = %267, %152
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %270 = call i32 @xo_style(%struct.TYPE_19__* %269)
  %271 = load i32, i32* @XO_STYLE_HTML, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %284

273:                                              ; preds = %268
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %275 = call i32 @xo_data_append(%struct.TYPE_19__* %274, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @xo_format_title.div_close, i64 0, i64 0), i32 6)
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %277 = load i32, i32* @XOF_PRETTY, align 4
  %278 = call i64 @XOF_ISSET(%struct.TYPE_19__* %276, i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %273
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %282 = call i32 @xo_data_append(%struct.TYPE_19__* %281, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %283

283:                                              ; preds = %280, %273
  br label %284

284:                                              ; preds = %34, %169, %283, %268
  ret void
}

declare dso_local i32 @xo_style(%struct.TYPE_19__*) #1

declare dso_local i32 @xo_simple_field(%struct.TYPE_19__*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @xo_line_ensure_open(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @XOF_ISSET(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @xo_buf_indent(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @xo_buf_append(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @xo_color_append_html(%struct.TYPE_19__*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @xo_data_append_content(%struct.TYPE_19__*, i8*, i32, i32) #1

declare dso_local i32 @xo_buf_has_room(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @XOIF_ISSET(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @xo_do_format_field(%struct.TYPE_19__*, i32*, i8*, i32, i32) #1

declare dso_local i32 @xo_escape_xml(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @xo_data_append(%struct.TYPE_19__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
