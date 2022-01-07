; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-source.c_tui_set_source_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-source.c_tui_set_source_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i8*, i32, i64* }
%struct.TYPE_10__ = type { %struct.tui_source_info }
%struct.tui_source_info = type { i8*, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.symtab = type { i8*, i32, i32* }
%struct.tui_gen_win_info = type { i64* }
%struct.tui_win_element = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i8*, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@TUI_FAILURE = common dso_local global i32 0, align 4
@TUI_SRC_WIN = common dso_local global %struct.TYPE_17__* null, align 8
@TUI_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Line number %d out of range; %s has %d lines.\0A\00", align 1
@FOPEN_RT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%-6d\00", align 1
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tui_set_source_content(%struct.symtab* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.symtab*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.tui_gen_win_info*, align 8
  %22 = alloca %struct.tui_source_info*, align 8
  %23 = alloca %struct.tui_win_element*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.symtab* %0, %struct.symtab** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %26 = load i32, i32* @TUI_FAILURE, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.symtab*, %struct.symtab** %4, align 8
  %28 = icmp ne %struct.symtab* %27, null
  br i1 %28, label %29, label %499

29:                                               ; preds = %3
  %30 = load %struct.symtab*, %struct.symtab** %4, align 8
  %31 = getelementptr inbounds %struct.symtab, %struct.symtab* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %499

34:                                               ; preds = %29
  store i8* null, i8** %14, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_SRC_WIN, align 8
  %36 = call i32 @tui_alloc_source_buffer(%struct.TYPE_17__* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @TUI_SUCCESS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %498

39:                                               ; preds = %34
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_SRC_WIN, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_SRC_WIN, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 2
  %51 = add nsw i32 %45, %50
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %13, align 4
  %54 = load %struct.symtab*, %struct.symtab** %4, align 8
  %55 = call i32 @open_source_file(%struct.symtab* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %39
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %58
  %62 = load %struct.symtab*, %struct.symtab** %4, align 8
  %63 = getelementptr inbounds %struct.symtab, %struct.symtab* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = add nsw i32 %65, 100
  %67 = call i8* @alloca(i32 %66)
  store i8* %67, i8** %15, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = load %struct.symtab*, %struct.symtab** %4, align 8
  %70 = getelementptr inbounds %struct.symtab, %struct.symtab* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (i8*, i8*, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %72)
  %74 = load i8*, i8** %15, align 8
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 @print_sys_errmsg(i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %61, %58
  %78 = load i32, i32* @TUI_FAILURE, align 4
  store i32 %78, i32* %7, align 4
  br label %497

79:                                               ; preds = %39
  %80 = load %struct.symtab*, %struct.symtab** %4, align 8
  %81 = getelementptr inbounds %struct.symtab, %struct.symtab* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.symtab*, %struct.symtab** %4, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @find_source_lines(%struct.symtab* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.symtab*, %struct.symtab** %4, align 8
  %94 = getelementptr inbounds %struct.symtab, %struct.symtab* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp sgt i32 %92, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %91, %88
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @close(i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.symtab*, %struct.symtab** %4, align 8
  %102 = getelementptr inbounds %struct.symtab, %struct.symtab* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.symtab*, %struct.symtab** %4, align 8
  %105 = getelementptr inbounds %struct.symtab, %struct.symtab* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %100, i8* %103, i32 %106)
  br label %496

108:                                              ; preds = %91
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.symtab*, %struct.symtab** %4, align 8
  %111 = getelementptr inbounds %struct.symtab, %struct.symtab* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @lseek(i32 %109, i32 %117, i32 0)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %108
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @close(i32 %121)
  %123 = load %struct.symtab*, %struct.symtab** %4, align 8
  %124 = getelementptr inbounds %struct.symtab, %struct.symtab* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @perror_with_name(i8* %125)
  br label %495

127:                                              ; preds = %108
  %128 = call %struct.tui_gen_win_info* (...) @tui_locator_win_info_ptr()
  store %struct.tui_gen_win_info* %128, %struct.tui_gen_win_info** %21, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_SRC_WIN, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store %struct.tui_source_info* %131, %struct.tui_source_info** %22, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_SRC_WIN, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %127
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_SRC_WIN, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @xfree(i8* %141)
  br label %143

143:                                              ; preds = %137, %127
  %144 = load %struct.symtab*, %struct.symtab** %4, align 8
  %145 = getelementptr inbounds %struct.symtab, %struct.symtab* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i8* @xstrdup(i8* %146)
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_SRC_WIN, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  store i8* %147, i8** %150, align 8
  %151 = load %struct.tui_source_info*, %struct.tui_source_info** %22, align 8
  %152 = getelementptr inbounds %struct.tui_source_info, %struct.tui_source_info* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %143
  %156 = load %struct.tui_source_info*, %struct.tui_source_info** %22, align 8
  %157 = getelementptr inbounds %struct.tui_source_info, %struct.tui_source_info* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @xfree(i8* %158)
  br label %160

160:                                              ; preds = %155, %143
  %161 = load %struct.symtab*, %struct.symtab** %4, align 8
  %162 = getelementptr inbounds %struct.symtab, %struct.symtab* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i8* @xstrdup(i8* %163)
  %165 = load %struct.tui_source_info*, %struct.tui_source_info** %22, align 8
  %166 = getelementptr inbounds %struct.tui_source_info, %struct.tui_source_info* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  %167 = load %struct.tui_source_info*, %struct.tui_source_info** %22, align 8
  %168 = getelementptr inbounds %struct.tui_source_info, %struct.tui_source_info* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %16, align 4
  %170 = load i32, i32* %12, align 4
  %171 = sub nsw i32 %170, 1
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %171, %172
  store i32 %173, i32* %20, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @FOPEN_RT, align 4
  %176 = call i32* @fdopen(i32 %174, i32 %175)
  store i32* %176, i32** %8, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 @clearerr(i32* %177)
  store i32 0, i32* %18, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load %struct.tui_source_info*, %struct.tui_source_info** %22, align 8
  %181 = getelementptr inbounds %struct.tui_source_info, %struct.tui_source_info* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 4
  store i32 %179, i32* %17, align 4
  %183 = load i32, i32* %16, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %160
  %186 = load i32, i32* %20, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = mul i64 %188, 1
  %190 = trunc i64 %189 to i32
  %191 = call i64 @xmalloc(i32 %190)
  %192 = inttoptr i64 %191 to i8*
  store i8* %192, i8** %14, align 8
  br label %193

193:                                              ; preds = %185, %160
  br label %194

194:                                              ; preds = %476, %193
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* %13, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %481

198:                                              ; preds = %194
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_SRC_WIN, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 4
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %18, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to %struct.tui_win_element*
  store %struct.tui_win_element* %207, %struct.tui_win_element** %23, align 8
  %208 = load i32*, i32** %8, align 8
  %209 = call i32 @fgetc(i32* %208)
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* %16, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %198
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_SRC_WIN, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 4
  %216 = load i64*, i64** %215, align 8
  %217 = load i32, i32* %18, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = inttoptr i64 %220 to %struct.tui_win_element*
  %222 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  store i8* %225, i8** %14, align 8
  br label %226

226:                                              ; preds = %212, %198
  %227 = load i8*, i8** %14, align 8
  %228 = load i32, i32* %17, align 4
  %229 = call i32 (i8*, i8*, ...) @sprintf(i8* %227, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %228)
  %230 = load i8*, i8** %14, align 8
  %231 = call i32 @strlen(i8* %230)
  store i32 %231, i32* %19, align 4
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %19, align 4
  %234 = call i32 (...) @tui_default_tab_len()
  %235 = sdiv i32 %233, %234
  %236 = call i32 (...) @tui_default_tab_len()
  %237 = mul nsw i32 %235, %236
  %238 = sub nsw i32 %232, %237
  store i32 %238, i32* %9, align 4
  br label %239

239:                                              ; preds = %243, %226
  %240 = load i32, i32* %9, align 4
  %241 = call i32 (...) @tui_default_tab_len()
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %239
  %244 = load i8*, i8** %14, align 8
  %245 = load i32, i32* %19, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  store i8 32, i8* %247, align 1
  %248 = load i32, i32* %9, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %19, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %19, align 4
  br label %239

252:                                              ; preds = %239
  %253 = load i8*, i8** %14, align 8
  %254 = load i32, i32* %19, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  store i8 0, i8* %256, align 1
  %257 = load i32, i32* %17, align 4
  %258 = load %struct.tui_win_element*, %struct.tui_win_element** %23, align 8
  %259 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  store i32 %257, i32* %262, align 4
  %263 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %21, align 8
  %264 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %263, i32 0, i32 0
  %265 = load i64*, i64** %264, align 8
  %266 = getelementptr inbounds i64, i64* %265, i64 0
  %267 = load i64, i64* %266, align 8
  %268 = inttoptr i64 %267 to %struct.tui_win_element*
  %269 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.symtab*, %struct.symtab** %4, align 8
  %274 = getelementptr inbounds %struct.symtab, %struct.symtab* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  %276 = call i64 @strcmp(i32 %272, i8* %275)
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %291

278:                                              ; preds = %252
  %279 = load i32, i32* %17, align 4
  %280 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %21, align 8
  %281 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %280, i32 0, i32 0
  %282 = load i64*, i64** %281, align 8
  %283 = getelementptr inbounds i64, i64* %282, i64 0
  %284 = load i64, i64* %283, align 8
  %285 = inttoptr i64 %284 to %struct.tui_win_element*
  %286 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = icmp eq i32 %279, %289
  br label %291

291:                                              ; preds = %278, %252
  %292 = phi i1 [ false, %252 ], [ %290, %278 ]
  %293 = zext i1 %292 to i32
  %294 = load %struct.tui_win_element*, %struct.tui_win_element** %23, align 8
  %295 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 1
  store i32 %293, i32* %297, align 8
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* @EOF, align 4
  %300 = icmp ne i32 %298, %299
  br i1 %300, label %301, label %437

301:                                              ; preds = %291
  %302 = load i8*, i8** %14, align 8
  %303 = call i32 @strlen(i8* %302)
  %304 = sub nsw i32 %303, 1
  store i32 %304, i32* %9, align 4
  br label %305

305:                                              ; preds = %434, %301
  %306 = load i32, i32* %11, align 4
  %307 = icmp ne i32 %306, 10
  br i1 %307, label %308, label %398

308:                                              ; preds = %305
  %309 = load i32, i32* %11, align 4
  %310 = icmp ne i32 %309, 13
  br i1 %310, label %311, label %398

311:                                              ; preds = %308
  %312 = load i32, i32* %9, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %9, align 4
  %314 = load i32, i32* %20, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %398

316:                                              ; preds = %311
  %317 = load i32, i32* %11, align 4
  %318 = icmp slt i32 %317, 32
  br i1 %318, label %319, label %335

319:                                              ; preds = %316
  %320 = load i32, i32* %11, align 4
  %321 = icmp ne i32 %320, 9
  br i1 %321, label %322, label %335

322:                                              ; preds = %319
  %323 = load i8*, i8** %14, align 8
  %324 = load i32, i32* %9, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %9, align 4
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i8, i8* %323, i64 %326
  store i8 94, i8* %327, align 1
  %328 = load i32, i32* %11, align 4
  %329 = add nsw i32 %328, 64
  %330 = trunc i32 %329 to i8
  %331 = load i8*, i8** %14, align 8
  %332 = load i32, i32* %9, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8, i8* %331, i64 %333
  store i8 %330, i8* %334, align 1
  br label %392

335:                                              ; preds = %319, %316
  %336 = load i32, i32* %11, align 4
  %337 = icmp eq i32 %336, 127
  br i1 %337, label %338, label %348

338:                                              ; preds = %335
  %339 = load i8*, i8** %14, align 8
  %340 = load i32, i32* %9, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %9, align 4
  %342 = sext i32 %340 to i64
  %343 = getelementptr inbounds i8, i8* %339, i64 %342
  store i8 94, i8* %343, align 1
  %344 = load i8*, i8** %14, align 8
  %345 = load i32, i32* %9, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %344, i64 %346
  store i8 63, i8* %347, align 1
  br label %391

348:                                              ; preds = %335
  %349 = load i32, i32* %11, align 4
  %350 = icmp eq i32 %349, 9
  br i1 %350, label %351, label %383

351:                                              ; preds = %348
  %352 = call i32 (...) @tui_default_tab_len()
  store i32 %352, i32* %25, align 4
  %353 = load i32, i32* %9, align 4
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* %25, align 4
  %356 = sdiv i32 %354, %355
  %357 = load i32, i32* %25, align 4
  %358 = mul nsw i32 %356, %357
  %359 = sub nsw i32 %353, %358
  store i32 %359, i32* %24, align 4
  br label %360

360:                                              ; preds = %375, %351
  %361 = load i32, i32* %24, align 4
  %362 = load i32, i32* %25, align 4
  %363 = icmp slt i32 %361, %362
  br i1 %363, label %364, label %368

364:                                              ; preds = %360
  %365 = load i32, i32* %9, align 4
  %366 = load i32, i32* %20, align 4
  %367 = icmp slt i32 %365, %366
  br label %368

368:                                              ; preds = %364, %360
  %369 = phi i1 [ false, %360 ], [ %367, %364 ]
  br i1 %369, label %370, label %380

370:                                              ; preds = %368
  %371 = load i8*, i8** %14, align 8
  %372 = load i32, i32* %9, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, i8* %371, i64 %373
  store i8 32, i8* %374, align 1
  br label %375

375:                                              ; preds = %370
  %376 = load i32, i32* %9, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %9, align 4
  %378 = load i32, i32* %24, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %24, align 4
  br label %360

380:                                              ; preds = %368
  %381 = load i32, i32* %9, align 4
  %382 = add nsw i32 %381, -1
  store i32 %382, i32* %9, align 4
  br label %390

383:                                              ; preds = %348
  %384 = load i32, i32* %11, align 4
  %385 = trunc i32 %384 to i8
  %386 = load i8*, i8** %14, align 8
  %387 = load i32, i32* %9, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* %386, i64 %388
  store i8 %385, i8* %389, align 1
  br label %390

390:                                              ; preds = %383, %380
  br label %391

391:                                              ; preds = %390, %338
  br label %392

392:                                              ; preds = %391, %322
  %393 = load i8*, i8** %14, align 8
  %394 = load i32, i32* %9, align 4
  %395 = add nsw i32 %394, 1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i8, i8* %393, i64 %396
  store i8 0, i8* %397, align 1
  br label %415

398:                                              ; preds = %311, %308, %305
  br label %399

399:                                              ; preds = %411, %398
  %400 = load i32, i32* %11, align 4
  %401 = load i32, i32* @EOF, align 4
  %402 = icmp ne i32 %400, %401
  br i1 %402, label %403, label %409

403:                                              ; preds = %399
  %404 = load i32, i32* %11, align 4
  %405 = icmp ne i32 %404, 10
  br i1 %405, label %406, label %409

406:                                              ; preds = %403
  %407 = load i32, i32* %11, align 4
  %408 = icmp ne i32 %407, 13
  br label %409

409:                                              ; preds = %406, %403, %399
  %410 = phi i1 [ false, %403 ], [ false, %399 ], [ %408, %406 ]
  br i1 %410, label %411, label %414

411:                                              ; preds = %409
  %412 = load i32*, i32** %8, align 8
  %413 = call i32 @fgetc(i32* %412)
  store i32 %413, i32* %11, align 4
  br label %399

414:                                              ; preds = %409
  br label %415

415:                                              ; preds = %414, %392
  br label %416

416:                                              ; preds = %415
  %417 = load i32, i32* %11, align 4
  %418 = load i32, i32* @EOF, align 4
  %419 = icmp ne i32 %417, %418
  br i1 %419, label %420, label %434

420:                                              ; preds = %416
  %421 = load i32, i32* %11, align 4
  %422 = icmp ne i32 %421, 10
  br i1 %422, label %423, label %434

423:                                              ; preds = %420
  %424 = load i32, i32* %11, align 4
  %425 = icmp ne i32 %424, 13
  br i1 %425, label %426, label %434

426:                                              ; preds = %423
  %427 = load i32, i32* %9, align 4
  %428 = load i32, i32* %20, align 4
  %429 = icmp slt i32 %427, %428
  br i1 %429, label %430, label %434

430:                                              ; preds = %426
  %431 = load i32*, i32** %8, align 8
  %432 = call i32 @fgetc(i32* %431)
  store i32 %432, i32* %11, align 4
  %433 = icmp ne i32 %432, 0
  br label %434

434:                                              ; preds = %430, %426, %423, %420, %416
  %435 = phi i1 [ false, %426 ], [ false, %423 ], [ false, %420 ], [ false, %416 ], [ %433, %430 ]
  br i1 %435, label %305, label %436

436:                                              ; preds = %434
  br label %437

437:                                              ; preds = %436, %291
  %438 = load i8*, i8** %14, align 8
  %439 = call i32 @strlen(i8* %438)
  %440 = load i32, i32* %16, align 4
  %441 = icmp sgt i32 %439, %440
  br i1 %441, label %442, label %461

442:                                              ; preds = %437
  %443 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_SRC_WIN, align 8
  %444 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %444, i32 0, i32 4
  %446 = load i64*, i64** %445, align 8
  %447 = load i32, i32* %18, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i64, i64* %446, i64 %448
  %450 = load i64, i64* %449, align 8
  %451 = inttoptr i64 %450 to %struct.tui_win_element*
  %452 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %453, i32 0, i32 0
  %455 = load i8*, i8** %454, align 8
  %456 = load i8*, i8** %14, align 8
  %457 = load i32, i32* %16, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i8, i8* %456, i64 %458
  %460 = call i32 @strcpy(i8* %455, i8* %459)
  br label %476

461:                                              ; preds = %437
  %462 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_SRC_WIN, align 8
  %463 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %463, i32 0, i32 4
  %465 = load i64*, i64** %464, align 8
  %466 = load i32, i32* %18, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i64, i64* %465, i64 %467
  %469 = load i64, i64* %468, align 8
  %470 = inttoptr i64 %469 to %struct.tui_win_element*
  %471 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %472, i32 0, i32 0
  %474 = load i8*, i8** %473, align 8
  %475 = getelementptr inbounds i8, i8* %474, i64 0
  store i8 0, i8* %475, align 1
  br label %476

476:                                              ; preds = %461, %442
  %477 = load i32, i32* %18, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %18, align 4
  %479 = load i32, i32* %17, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %17, align 4
  br label %194

481:                                              ; preds = %194
  %482 = load i32, i32* %16, align 4
  %483 = icmp sgt i32 %482, 0
  br i1 %483, label %484, label %487

484:                                              ; preds = %481
  %485 = load i8*, i8** %14, align 8
  %486 = call i32 @xfree(i8* %485)
  br label %487

487:                                              ; preds = %484, %481
  %488 = load i32*, i32** %8, align 8
  %489 = call i32 @fclose(i32* %488)
  %490 = load i32, i32* %13, align 4
  %491 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_SRC_WIN, align 8
  %492 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %492, i32 0, i32 3
  store i32 %490, i32* %493, align 8
  %494 = load i32, i32* @TUI_SUCCESS, align 4
  store i32 %494, i32* %7, align 4
  br label %495

495:                                              ; preds = %487, %120
  br label %496

496:                                              ; preds = %495, %97
  br label %497

497:                                              ; preds = %496, %77
  br label %498

498:                                              ; preds = %497, %34
  br label %499

499:                                              ; preds = %498, %29, %3
  %500 = load i32, i32* %7, align 4
  ret i32 %500
}

declare dso_local i32 @tui_alloc_source_buffer(%struct.TYPE_17__*) #1

declare dso_local i32 @open_source_file(%struct.symtab*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @print_sys_errmsg(i8*, i32) #1

declare dso_local i32 @find_source_lines(%struct.symtab*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @printf_unfiltered(i8*, i32, i8*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local %struct.tui_gen_win_info* @tui_locator_win_info_ptr(...) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32* @fdopen(i32, i32) #1

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @tui_default_tab_len(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
