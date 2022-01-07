; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-disasm.c_tui_set_disassem_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-disasm.c_tui_set_disassem_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32, i32, i32, i64* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.tui_gen_win_info = type { i64* }
%struct.tui_asm_line = type { i8*, i8*, i64 }
%struct.tui_win_element = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.tui_source_element, %struct.TYPE_13__ }
%struct.tui_source_element = type { i8*, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@TUI_FAILURE = common dso_local global i32 0, align 4
@TUI_DISASM_WIN = common dso_local global %struct.TYPE_17__* null, align 8
@TUI_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@no_breakpoint_here = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tui_set_disassem_content(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tui_gen_win_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tui_asm_line*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.tui_win_element*, align 8
  %19 = alloca %struct.tui_source_element*, align 8
  %20 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %21 = load i32, i32* @TUI_FAILURE, align 4
  store i32 %21, i32* %4, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_DISASM_WIN, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  %27 = call %struct.tui_gen_win_info* (...) @tui_locator_win_info_ptr()
  store %struct.tui_gen_win_info* %27, %struct.tui_gen_win_info** %10, align 8
  %28 = call i32 (...) @tui_default_tab_len()
  store i32 %28, i32* %11, align 4
  %29 = load i64, i64* %3, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @TUI_FAILURE, align 4
  store i32 %32, i32* %2, align 4
  br label %262

33:                                               ; preds = %1
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_DISASM_WIN, align 8
  %35 = call i32 @tui_alloc_source_buffer(%struct.TYPE_17__* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @TUI_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %262

41:                                               ; preds = %33
  %42 = load i64, i64* %3, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_DISASM_WIN, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i64 %42, i64* %47, align 8
  %48 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %10, align 8
  %49 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.tui_win_element*
  %54 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %9, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_DISASM_WIN, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 2
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 24, %64
  %66 = trunc i64 %65 to i32
  %67 = call i64 @alloca(i32 %66)
  %68 = inttoptr i64 %67 to %struct.tui_asm_line*
  store %struct.tui_asm_line* %68, %struct.tui_asm_line** %12, align 8
  %69 = load %struct.tui_asm_line*, %struct.tui_asm_line** %12, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 24, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memset(%struct.tui_asm_line* %69, i32 0, i32 %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_DISASM_WIN, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  %80 = load %struct.tui_asm_line*, %struct.tui_asm_line** %12, align 8
  %81 = load i64, i64* %3, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @tui_disassemble(%struct.tui_asm_line* %80, i64 %81, i32 %82)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %123, %41
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %126

88:                                               ; preds = %84
  %89 = load %struct.tui_asm_line*, %struct.tui_asm_line** %12, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %89, i64 %91
  %93 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %17, align 8
  %97 = load i64, i64* %17, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp ugt i64 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load i64, i64* %17, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %101, %88
  %105 = load %struct.tui_asm_line*, %struct.tui_asm_line** %12, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %105, i64 %107
  %109 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %17, align 8
  %115 = load i64, i64* %17, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp ugt i64 %115, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %104
  %120 = load i64, i64* %17, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %119, %104
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %84

126:                                              ; preds = %84
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = call i64 @alloca(i32 %132)
  %134 = inttoptr i64 %133 to i8*
  store i8* %134, i8** %16, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %11, align 4
  %137 = sdiv i32 %135, %136
  %138 = add nsw i32 1, %137
  %139 = load i32, i32* %11, align 4
  %140 = mul nsw i32 %138, %139
  store i32 %140, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %253, %126
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %256

145:                                              ; preds = %141
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_DISASM_WIN, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 3
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to %struct.tui_win_element*
  store %struct.tui_win_element* %154, %struct.tui_win_element** %18, align 8
  %155 = load %struct.tui_win_element*, %struct.tui_win_element** %18, align 8
  %156 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  store %struct.tui_source_element* %157, %struct.tui_source_element** %19, align 8
  %158 = load i8*, i8** %16, align 8
  %159 = load %struct.tui_asm_line*, %struct.tui_asm_line** %12, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %159, i64 %161
  %163 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @strcpy(i8* %158, i8* %164)
  %166 = load i8*, i8** %16, align 8
  %167 = call i32 @strlen(i8* %166)
  store i32 %167, i32* %20, align 4
  br label %168

168:                                              ; preds = %172, %145
  %169 = load i32, i32* %20, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = load i8*, i8** %16, align 8
  %174 = call i32 @strcat(i8* %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %175 = load i32, i32* %20, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %20, align 4
  br label %168

177:                                              ; preds = %168
  %178 = load i8*, i8** %16, align 8
  %179 = load %struct.tui_asm_line*, %struct.tui_asm_line** %12, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %179, i64 %181
  %183 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @strcat(i8* %178, i8* %184)
  %186 = load i8*, i8** %16, align 8
  %187 = call i32 @strlen(i8* %186)
  %188 = load i32, i32* %6, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %177
  %191 = load %struct.tui_source_element*, %struct.tui_source_element** %19, align 8
  %192 = getelementptr inbounds %struct.tui_source_element, %struct.tui_source_element* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = load i8*, i8** %16, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = call i32 @strcpy(i8* %193, i8* %197)
  br label %204

199:                                              ; preds = %177
  %200 = load %struct.tui_source_element*, %struct.tui_source_element** %19, align 8
  %201 = getelementptr inbounds %struct.tui_source_element, %struct.tui_source_element* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  store i8 0, i8* %203, align 1
  br label %204

204:                                              ; preds = %199, %190
  %205 = load %struct.tui_asm_line*, %struct.tui_asm_line** %12, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %205, i64 %207
  %209 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.tui_source_element*, %struct.tui_source_element** %19, align 8
  %212 = getelementptr inbounds %struct.tui_source_element, %struct.tui_source_element* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  store i64 %210, i64* %213, align 8
  %214 = load %struct.tui_asm_line*, %struct.tui_asm_line** %12, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %214, i64 %216
  %218 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* %9, align 8
  %221 = icmp eq i64 %219, %220
  %222 = zext i1 %221 to i32
  %223 = load %struct.tui_source_element*, %struct.tui_source_element** %19, align 8
  %224 = getelementptr inbounds %struct.tui_source_element, %struct.tui_source_element* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 8
  %225 = load %struct.tui_source_element*, %struct.tui_source_element** %19, align 8
  %226 = getelementptr inbounds %struct.tui_source_element, %struct.tui_source_element* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %234, label %229

229:                                              ; preds = %204
  %230 = load i64, i64* %3, align 8
  %231 = call i64 @breakpoint_here_p(i64 %230)
  %232 = load i64, i64* @no_breakpoint_here, align 8
  %233 = icmp ne i64 %231, %232
  br label %234

234:                                              ; preds = %229, %204
  %235 = phi i1 [ false, %204 ], [ %233, %229 ]
  %236 = zext i1 %235 to i32
  %237 = load %struct.tui_source_element*, %struct.tui_source_element** %19, align 8
  %238 = getelementptr inbounds %struct.tui_source_element, %struct.tui_source_element* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 4
  %239 = load %struct.tui_asm_line*, %struct.tui_asm_line** %12, align 8
  %240 = load i32, i32* %5, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %239, i64 %241
  %243 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @xfree(i8* %244)
  %246 = load %struct.tui_asm_line*, %struct.tui_asm_line** %12, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %246, i64 %248
  %250 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %249, i32 0, i32 1
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @xfree(i8* %251)
  br label %253

253:                                              ; preds = %234
  %254 = load i32, i32* %5, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %5, align 4
  br label %141

256:                                              ; preds = %141
  %257 = load i32, i32* %5, align 4
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TUI_DISASM_WIN, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 2
  store i32 %257, i32* %260, align 8
  %261 = load i32, i32* @TUI_SUCCESS, align 4
  store i32 %261, i32* %2, align 4
  br label %262

262:                                              ; preds = %256, %39, %31
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local %struct.tui_gen_win_info* @tui_locator_win_info_ptr(...) #1

declare dso_local i32 @tui_default_tab_len(...) #1

declare dso_local i32 @tui_alloc_source_buffer(%struct.TYPE_17__*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memset(%struct.tui_asm_line*, i32, i32) #1

declare dso_local i32 @tui_disassemble(%struct.tui_asm_line*, i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @breakpoint_here_p(i64) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
