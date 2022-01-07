; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_data_read_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_data_read_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mi_opt = type { i8*, i32, i32 }
%struct.type = type { i32 }
%struct.cleanup = type { i32 }
%struct.ui_stream = type { i32 }

@null_cleanup = common dso_local global i32 0, align 4
@mi_cmd_data_read_memory.opts = internal global [2 x %struct.mi_opt] [%struct.mi_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 1 }, %struct.mi_opt zeroinitializer], align 16
@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"mi_cmd_data_read_memory\00", align 1
@mi_error_message = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [85 x i8] c"mi_cmd_data_read_memory: Usage: ADDR WORD-FORMAT WORD-SIZE NR-ROWS NR-COLS [ASCHAR].\00", align 1
@MI_CMD_ERROR = common dso_local global i32 0, align 4
@builtin_type_int8 = common dso_local global %struct.type* null, align 8
@builtin_type_int16 = common dso_local global %struct.type* null, align 8
@builtin_type_int32 = common dso_local global %struct.type* null, align 8
@builtin_type_int64 = common dso_local global %struct.type* null, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"mi_cmd_data_read_memory: invalid number of rows.\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"mi_cmd_data_read_memory: invalid number of columns.\00", align 1
@xfree = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"mi_cmd_data_read_memory: out of memory.\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"nr-bytes\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"total-bytes\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"next-row\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"prev-row\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"next-page\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"prev-page\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_data_read_memory(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cleanup*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.type*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.ui_stream*, align 8
  %27 = alloca %struct.cleanup*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.cleanup*, align 8
  %33 = alloca %struct.cleanup*, align 8
  %34 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %35 = load i32, i32* @null_cleanup, align 4
  %36 = call %struct.cleanup* @make_cleanup(i32 %35, i8* null)
  store %struct.cleanup* %36, %struct.cleanup** %8, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %21, align 4
  br label %37

37:                                               ; preds = %3, %49
  %38 = load i32, i32* %7, align 4
  %39 = load i8**, i8*** %6, align 8
  %40 = call i32 @mi_getopt(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %38, i8** %39, %struct.mi_opt* getelementptr inbounds ([2 x %struct.mi_opt], [2 x %struct.mi_opt]* @mi_cmd_data_read_memory.opts, i64 0, i64 0), i32* %21, i8** %22)
  store i32 %40, i32* %23, align 4
  %41 = load i32, i32* %23, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %50

44:                                               ; preds = %37
  %45 = load i32, i32* %23, align 4
  switch i32 %45, label %49 [
    i32 0, label %46
  ]

46:                                               ; preds = %44
  %47 = load i8*, i8** %22, align 8
  %48 = call i64 @atol(i8* %47)
  store i64 %48, i64* %20, align 8
  br label %49

49:                                               ; preds = %44, %46
  br label %37

50:                                               ; preds = %43
  %51 = load i32, i32* %21, align 4
  %52 = load i8**, i8*** %6, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  store i8** %54, i8*** %6, align 8
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 5
  br i1 %59, label %63, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %61, 6
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %50
  %64 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %65, i32* %4, align 4
  br label %358

66:                                               ; preds = %60
  %67 = load i8**, i8*** %6, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @parse_and_eval_address(i8* %69)
  %71 = load i64, i64* %20, align 8
  %72 = add nsw i64 %70, %71
  store i64 %72, i64* %9, align 8
  %73 = load i8**, i8*** %6, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %13, align 1
  %78 = load i8**, i8*** %6, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @atol(i8* %80)
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* %15, align 8
  switch i64 %82, label %91 [
    i64 1, label %83
    i64 2, label %85
    i64 4, label %87
    i64 8, label %89
  ]

83:                                               ; preds = %66
  %84 = load %struct.type*, %struct.type** @builtin_type_int8, align 8
  store %struct.type* %84, %struct.type** %14, align 8
  store i8 98, i8* %16, align 1
  br label %93

85:                                               ; preds = %66
  %86 = load %struct.type*, %struct.type** @builtin_type_int16, align 8
  store %struct.type* %86, %struct.type** %14, align 8
  store i8 104, i8* %16, align 1
  br label %93

87:                                               ; preds = %66
  %88 = load %struct.type*, %struct.type** @builtin_type_int32, align 8
  store %struct.type* %88, %struct.type** %14, align 8
  store i8 119, i8* %16, align 1
  br label %93

89:                                               ; preds = %66
  %90 = load %struct.type*, %struct.type** @builtin_type_int64, align 8
  store %struct.type* %90, %struct.type** %14, align 8
  store i8 103, i8* %16, align 1
  br label %93

91:                                               ; preds = %66
  %92 = load %struct.type*, %struct.type** @builtin_type_int8, align 8
  store %struct.type* %92, %struct.type** %14, align 8
  store i8 98, i8* %16, align 1
  br label %93

93:                                               ; preds = %91, %89, %87, %85, %83
  %94 = load i8**, i8*** %6, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @atol(i8* %96)
  store i64 %97, i64* %12, align 8
  %98 = load i64, i64* %12, align 8
  %99 = icmp sle i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %102, i32* %4, align 4
  br label %358

103:                                              ; preds = %93
  %104 = load i8**, i8*** %6, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 4
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @atol(i8* %106)
  store i64 %107, i64* %11, align 8
  %108 = load i64, i64* %11, align 8
  %109 = icmp sle i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %103
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %113, 6
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i8**, i8*** %6, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 5
  %118 = load i8*, i8** %117, align 8
  %119 = load i8, i8* %118, align 1
  store i8 %119, i8* %17, align 1
  br label %121

120:                                              ; preds = %112
  store i8 0, i8* %17, align 1
  br label %121

121:                                              ; preds = %120, %115
  %122 = load i64, i64* %15, align 8
  %123 = load i64, i64* %12, align 8
  %124 = mul nsw i64 %122, %123
  %125 = load i64, i64* %11, align 8
  %126 = mul nsw i64 %124, %125
  store i64 %126, i64* %10, align 8
  %127 = load i64, i64* %10, align 8
  %128 = call i8* @xcalloc(i64 %127, i32 1)
  store i8* %128, i8** %18, align 8
  %129 = load i32, i32* @xfree, align 4
  %130 = load i8*, i8** %18, align 8
  %131 = call %struct.cleanup* @make_cleanup(i32 %129, i8* %130)
  %132 = load i8*, i8** %18, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %121
  %135 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %136 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %136, i32* %4, align 4
  br label %358

137:                                              ; preds = %121
  store i32 0, i32* %19, align 4
  br label %138

138:                                              ; preds = %160, %137
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %10, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %166

143:                                              ; preds = %138
  %144 = load i64, i64* %9, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %144, %146
  %148 = load i8*, i8** %18, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i64, i64* %10, align 8
  %153 = load i32, i32* %19, align 4
  %154 = sext i32 %153 to i64
  %155 = sub nsw i64 %152, %154
  %156 = call i64 @target_read_memory_partial(i64 %147, i8* %151, i64 %155, i32* %24)
  store i64 %156, i64* %25, align 8
  %157 = load i64, i64* %25, align 8
  %158 = icmp sle i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %143
  br label %166

160:                                              ; preds = %143
  %161 = load i64, i64* %25, align 8
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %19, align 4
  br label %138

166:                                              ; preds = %159, %138
  %167 = load i32, i32* @uiout, align 4
  %168 = load i64, i64* %9, align 8
  %169 = call i32 @ui_out_field_core_addr(i32 %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %168)
  %170 = load i32, i32* @uiout, align 4
  %171 = load i32, i32* %19, align 4
  %172 = sext i32 %171 to i64
  %173 = call i32 @ui_out_field_int(i32 %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 %172)
  %174 = load i32, i32* @uiout, align 4
  %175 = load i64, i64* %10, align 8
  %176 = call i32 @ui_out_field_int(i32 %174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 %175)
  %177 = load i32, i32* @uiout, align 4
  %178 = load i64, i64* %9, align 8
  %179 = load i64, i64* %15, align 8
  %180 = load i64, i64* %11, align 8
  %181 = mul nsw i64 %179, %180
  %182 = add nsw i64 %178, %181
  %183 = call i32 @ui_out_field_core_addr(i32 %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i64 %182)
  %184 = load i32, i32* @uiout, align 4
  %185 = load i64, i64* %9, align 8
  %186 = load i64, i64* %15, align 8
  %187 = load i64, i64* %11, align 8
  %188 = mul nsw i64 %186, %187
  %189 = sub nsw i64 %185, %188
  %190 = call i32 @ui_out_field_core_addr(i32 %184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i64 %189)
  %191 = load i32, i32* @uiout, align 4
  %192 = load i64, i64* %9, align 8
  %193 = load i64, i64* %10, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @ui_out_field_core_addr(i32 %191, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64 %194)
  %196 = load i32, i32* @uiout, align 4
  %197 = load i64, i64* %9, align 8
  %198 = load i64, i64* %10, align 8
  %199 = sub nsw i64 %197, %198
  %200 = call i32 @ui_out_field_core_addr(i32 %196, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i64 %199)
  %201 = load i32, i32* @uiout, align 4
  %202 = call %struct.ui_stream* @ui_out_stream_new(i32 %201)
  store %struct.ui_stream* %202, %struct.ui_stream** %26, align 8
  %203 = load i32, i32* @uiout, align 4
  %204 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32 %203, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  store %struct.cleanup* %204, %struct.cleanup** %27, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  br label %205

205:                                              ; preds = %340, %166
  %206 = load i32, i32* %28, align 4
  %207 = sext i32 %206 to i64
  %208 = load i64, i64* %12, align 8
  %209 = icmp slt i64 %207, %208
  br i1 %209, label %210, label %350

210:                                              ; preds = %205
  %211 = load i32, i32* @uiout, align 4
  %212 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %211, i32* null)
  store %struct.cleanup* %212, %struct.cleanup** %32, align 8
  %213 = load i32, i32* @uiout, align 4
  %214 = load i64, i64* %9, align 8
  %215 = load i32, i32* %29, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %214, %216
  %218 = call i32 @ui_out_field_core_addr(i32 %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %217)
  %219 = load i32, i32* @uiout, align 4
  %220 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32 %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  store %struct.cleanup* %220, %struct.cleanup** %33, align 8
  store i32 0, i32* %30, align 4
  %221 = load i32, i32* %29, align 4
  store i32 %221, i32* %31, align 4
  br label %222

222:                                              ; preds = %258, %210
  %223 = load i32, i32* %30, align 4
  %224 = sext i32 %223 to i64
  %225 = load i64, i64* %11, align 8
  %226 = icmp slt i64 %224, %225
  br i1 %226, label %227, label %266

227:                                              ; preds = %222
  %228 = load i32, i32* %31, align 4
  %229 = sext i32 %228 to i64
  %230 = load i64, i64* %15, align 8
  %231 = add nsw i64 %229, %230
  %232 = load i32, i32* %19, align 4
  %233 = sext i32 %232 to i64
  %234 = icmp sgt i64 %231, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %227
  %236 = load i32, i32* @uiout, align 4
  %237 = call i32 @ui_out_field_string(i32 %236, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %257

238:                                              ; preds = %227
  %239 = load %struct.ui_stream*, %struct.ui_stream** %26, align 8
  %240 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @ui_file_rewind(i32 %241)
  %243 = load i8*, i8** %18, align 8
  %244 = load i32, i32* %31, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load %struct.type*, %struct.type** %14, align 8
  %248 = load i8, i8* %13, align 1
  %249 = load i8, i8* %16, align 1
  %250 = load %struct.ui_stream*, %struct.ui_stream** %26, align 8
  %251 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @print_scalar_formatted(i8* %246, %struct.type* %247, i8 signext %248, i8 signext %249, i32 %252)
  %254 = load i32, i32* @uiout, align 4
  %255 = load %struct.ui_stream*, %struct.ui_stream** %26, align 8
  %256 = call i32 @ui_out_field_stream(i32 %254, i8* null, %struct.ui_stream* %255)
  br label %257

257:                                              ; preds = %238, %235
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %30, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %30, align 4
  %261 = load i64, i64* %15, align 8
  %262 = load i32, i32* %31, align 4
  %263 = sext i32 %262 to i64
  %264 = add nsw i64 %263, %261
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %31, align 4
  br label %222

266:                                              ; preds = %222
  %267 = load %struct.cleanup*, %struct.cleanup** %33, align 8
  %268 = call i32 @do_cleanups(%struct.cleanup* %267)
  %269 = load i8, i8* %17, align 1
  %270 = icmp ne i8 %269, 0
  br i1 %270, label %271, label %337

271:                                              ; preds = %266
  %272 = load %struct.ui_stream*, %struct.ui_stream** %26, align 8
  %273 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @ui_file_rewind(i32 %274)
  %276 = load i32, i32* %29, align 4
  store i32 %276, i32* %34, align 4
  br label %277

277:                                              ; preds = %330, %271
  %278 = load i32, i32* %34, align 4
  %279 = sext i32 %278 to i64
  %280 = load i32, i32* %29, align 4
  %281 = sext i32 %280 to i64
  %282 = load i64, i64* %15, align 8
  %283 = load i64, i64* %11, align 8
  %284 = mul nsw i64 %282, %283
  %285 = add nsw i64 %281, %284
  %286 = icmp slt i64 %279, %285
  br i1 %286, label %287, label %333

287:                                              ; preds = %277
  %288 = load i32, i32* %34, align 4
  %289 = load i32, i32* %19, align 4
  %290 = icmp sge i32 %288, %289
  br i1 %290, label %291, label %296

291:                                              ; preds = %287
  %292 = load %struct.ui_stream*, %struct.ui_stream** %26, align 8
  %293 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @fputc_unfiltered(i8 signext 88, i32 %294)
  br label %329

296:                                              ; preds = %287
  %297 = load i8*, i8** %18, align 8
  %298 = load i32, i32* %34, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %297, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp slt i32 %302, 32
  br i1 %303, label %312, label %304

304:                                              ; preds = %296
  %305 = load i8*, i8** %18, align 8
  %306 = load i32, i32* %34, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8, i8* %305, i64 %307
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp sgt i32 %310, 126
  br i1 %311, label %312, label %318

312:                                              ; preds = %304, %296
  %313 = load i8, i8* %17, align 1
  %314 = load %struct.ui_stream*, %struct.ui_stream** %26, align 8
  %315 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @fputc_unfiltered(i8 signext %313, i32 %316)
  br label %328

318:                                              ; preds = %304
  %319 = load i8*, i8** %18, align 8
  %320 = load i32, i32* %34, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %319, i64 %321
  %323 = load i8, i8* %322, align 1
  %324 = load %struct.ui_stream*, %struct.ui_stream** %26, align 8
  %325 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @fputc_unfiltered(i8 signext %323, i32 %326)
  br label %328

328:                                              ; preds = %318, %312
  br label %329

329:                                              ; preds = %328, %291
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %34, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %34, align 4
  br label %277

333:                                              ; preds = %277
  %334 = load i32, i32* @uiout, align 4
  %335 = load %struct.ui_stream*, %struct.ui_stream** %26, align 8
  %336 = call i32 @ui_out_field_stream(i32 %334, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), %struct.ui_stream* %335)
  br label %337

337:                                              ; preds = %333, %266
  %338 = load %struct.cleanup*, %struct.cleanup** %32, align 8
  %339 = call i32 @do_cleanups(%struct.cleanup* %338)
  br label %340

340:                                              ; preds = %337
  %341 = load i32, i32* %28, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %28, align 4
  %343 = load i64, i64* %11, align 8
  %344 = load i64, i64* %15, align 8
  %345 = mul nsw i64 %343, %344
  %346 = load i32, i32* %29, align 4
  %347 = sext i32 %346 to i64
  %348 = add nsw i64 %347, %345
  %349 = trunc i64 %348 to i32
  store i32 %349, i32* %29, align 4
  br label %205

350:                                              ; preds = %205
  %351 = load %struct.ui_stream*, %struct.ui_stream** %26, align 8
  %352 = call i32 @ui_out_stream_delete(%struct.ui_stream* %351)
  %353 = load %struct.cleanup*, %struct.cleanup** %27, align 8
  %354 = call i32 @do_cleanups(%struct.cleanup* %353)
  %355 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  %356 = call i32 @do_cleanups(%struct.cleanup* %355)
  %357 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %357, i32* %4, align 4
  br label %358

358:                                              ; preds = %350, %134, %100, %63
  %359 = load i32, i32* %4, align 4
  ret i32 %359
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @mi_getopt(i8*, i32, i8**, %struct.mi_opt*, i32*, i8**) #1

declare dso_local i64 @atol(i8*) #1

declare dso_local i32 @xasprintf(i32*, i8*) #1

declare dso_local i64 @parse_and_eval_address(i8*) #1

declare dso_local i8* @xcalloc(i64, i32) #1

declare dso_local i64 @target_read_memory_partial(i64, i8*, i64, i32*) #1

declare dso_local i32 @ui_out_field_core_addr(i32, i8*, i64) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i64) #1

declare dso_local %struct.ui_stream* @ui_out_stream_new(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32, i8*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32, i32*) #1

declare dso_local i32 @ui_out_field_string(i32, i32*, i8*) #1

declare dso_local i32 @ui_file_rewind(i32) #1

declare dso_local i32 @print_scalar_formatted(i8*, %struct.type*, i8 signext, i8 signext, i32) #1

declare dso_local i32 @ui_out_field_stream(i32, i8*, %struct.ui_stream*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @fputc_unfiltered(i8 signext, i32) #1

declare dso_local i32 @ui_out_stream_delete(%struct.ui_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
