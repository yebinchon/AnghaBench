; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_show_source_disasm_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_show_source_disasm_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.tui_gen_win_info, i8* }
%struct.tui_gen_win_info = type { i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.tui_gen_win_info, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, %struct.tui_gen_win_info* }

@SRC_DISASSEM_COMMAND = common dso_local global i64 0, align 8
@TUI_CMD_WIN = common dso_local global %struct.TYPE_15__* null, align 8
@TUI_SRC_WIN = common dso_local global %struct.TYPE_14__* null, align 8
@TRUE = common dso_local global i8* null, align 8
@EXEC_INFO_WIN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TUI_DISASM_WIN = common dso_local global %struct.TYPE_14__* null, align 8
@LOCATOR_WIN = common dso_local global i32 0, align 4
@DONT_BOX_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_source_disasm_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_source_disasm_command() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tui_gen_win_info*, align 8
  %5 = call i64 (...) @tui_current_layout()
  %6 = load i64, i64* @SRC_DISASSEM_COMMAND, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %225

8:                                                ; preds = %0
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TUI_CMD_WIN, align 8
  %10 = icmp ne %struct.TYPE_15__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TUI_CMD_WIN, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %1, align 4
  br label %19

16:                                               ; preds = %8
  %17 = call i32 (...) @tui_term_height()
  %18 = sdiv i32 %17, 3
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = call i32 (...) @tui_term_height()
  %21 = load i32, i32* %1, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %2, align 4
  %24 = call i32 (...) @tui_term_height()
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %3, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_SRC_WIN, align 8
  %30 = icmp eq %struct.TYPE_14__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @make_source_window(%struct.TYPE_14__** @TUI_SRC_WIN, i32 %32, i32 0)
  br label %79

34:                                               ; preds = %19
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_SRC_WIN, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_SRC_WIN, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_SRC_WIN, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_SRC_WIN, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %49, align 8
  %51 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @init_gen_win_info(%struct.tui_gen_win_info* %36, i32 %40, i32 %41, i32 %45, i32 %52, i32 0)
  %54 = load i8*, i8** @TRUE, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_SRC_WIN, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_SRC_WIN, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %60, align 8
  %62 = load i32, i32* @EXEC_INFO_WIN, align 4
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @init_gen_win_info(%struct.tui_gen_win_info* %61, i32 %62, i32 %63, i32 3, i32 0, i32 0)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_SRC_WIN, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = call i32 @tui_make_visible(%struct.tui_gen_win_info* %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_SRC_WIN, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %71, align 8
  %73 = call i32 @tui_make_visible(%struct.tui_gen_win_info* %72)
  %74 = load i8*, i8** @FALSE, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_SRC_WIN, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i8* %74, i8** %78, align 8
  br label %79

79:                                               ; preds = %34, %31
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_SRC_WIN, align 8
  %81 = icmp ne %struct.TYPE_14__* %80, null
  br i1 %81, label %82, label %222

82:                                               ; preds = %79
  %83 = call %struct.tui_gen_win_info* (...) @tui_locator_win_info_ptr()
  store %struct.tui_gen_win_info* %83, %struct.tui_gen_win_info** %4, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_SRC_WIN, align 8
  %85 = call i32 @tui_show_source_content(%struct.TYPE_14__* %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DISASM_WIN, align 8
  %87 = icmp eq %struct.TYPE_14__* %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %2, align 4
  %91 = sub nsw i32 %90, 1
  %92 = call i32 @make_disasm_window(%struct.TYPE_14__** @TUI_DISASM_WIN, i32 %89, i32 %91)
  %93 = bitcast %struct.tui_gen_win_info** %4 to i8**
  %94 = load i32, i32* @LOCATOR_WIN, align 4
  %95 = call i32 (...) @tui_term_width()
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %96, %97
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* @DONT_BOX_WINDOW, align 4
  %101 = call i32 @init_and_make_win(i8** %93, i32 %94, i32 2, i32 %95, i32 0, i32 %99, i32 %100)
  br label %159

102:                                              ; preds = %82
  %103 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %104 = load i32, i32* @LOCATOR_WIN, align 4
  %105 = call i32 (...) @tui_term_width()
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 %106, %107
  %109 = sub nsw i32 %108, 1
  %110 = call i32 @init_gen_win_info(%struct.tui_gen_win_info* %103, i32 %104, i32 2, i32 %105, i32 0, i32 %109)
  %111 = load i8*, i8** @TRUE, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DISASM_WIN, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  store i8* %111, i8** %115, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DISASM_WIN, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DISASM_WIN, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %3, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DISASM_WIN, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DISASM_WIN, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %130, align 8
  %132 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %2, align 4
  %135 = sub nsw i32 %134, 1
  %136 = call i32 @init_gen_win_info(%struct.tui_gen_win_info* %117, i32 %121, i32 %122, i32 %126, i32 %133, i32 %135)
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DISASM_WIN, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %140, align 8
  %142 = load i32, i32* @EXEC_INFO_WIN, align 4
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* %2, align 4
  %145 = sub nsw i32 %144, 1
  %146 = call i32 @init_gen_win_info(%struct.tui_gen_win_info* %141, i32 %142, i32 %143, i32 3, i32 0, i32 %145)
  %147 = load i8*, i8** @TRUE, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DISASM_WIN, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DISASM_WIN, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = call i32 @tui_make_visible(%struct.tui_gen_win_info* %151)
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DISASM_WIN, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %156, align 8
  %158 = call i32 @tui_make_visible(%struct.tui_gen_win_info* %157)
  br label %159

159:                                              ; preds = %102, %88
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DISASM_WIN, align 8
  %161 = icmp ne %struct.TYPE_14__* %160, null
  br i1 %161, label %162, label %221

162:                                              ; preds = %159
  %163 = load i8*, i8** @FALSE, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_SRC_WIN, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  store i8* %163, i8** %167, align 8
  %168 = load i8*, i8** @TRUE, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DISASM_WIN, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  store i8* %168, i8** %172, align 8
  %173 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %174 = call i32 @tui_make_visible(%struct.tui_gen_win_info* %173)
  %175 = call i32 (...) @tui_show_locator_content()
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DISASM_WIN, align 8
  %177 = call i32 @tui_show_source_content(%struct.TYPE_14__* %176)
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TUI_CMD_WIN, align 8
  %179 = icmp eq %struct.TYPE_15__* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %162
  %181 = load i32, i32* %1, align 4
  %182 = call i32 (...) @tui_term_height()
  %183 = load i32, i32* %1, align 4
  %184 = sub nsw i32 %182, %183
  %185 = call i32 @make_command_window(%struct.TYPE_15__** @TUI_CMD_WIN, i32 %181, i32 %184)
  br label %213

186:                                              ; preds = %162
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TUI_CMD_WIN, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TUI_CMD_WIN, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TUI_CMD_WIN, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TUI_CMD_WIN, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TUI_CMD_WIN, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @init_gen_win_info(%struct.tui_gen_win_info* %188, i32 %192, i32 %196, i32 %200, i32 0, i32 %205)
  %207 = load i8*, i8** @FALSE, align 8
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TUI_CMD_WIN, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  store i8* %207, i8** %209, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TUI_CMD_WIN, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  %212 = call i32 @tui_make_visible(%struct.tui_gen_win_info* %211)
  br label %213

213:                                              ; preds = %186, %180
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TUI_CMD_WIN, align 8
  %215 = icmp ne %struct.TYPE_15__* %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TUI_CMD_WIN, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = call i32 @tui_refresh_win(%struct.tui_gen_win_info* %218)
  br label %220

220:                                              ; preds = %216, %213
  br label %221

221:                                              ; preds = %220, %159
  br label %222

222:                                              ; preds = %221, %79
  %223 = load i64, i64* @SRC_DISASSEM_COMMAND, align 8
  %224 = call i32 @tui_set_current_layout_to(i64 %223)
  br label %225

225:                                              ; preds = %222, %0
  ret void
}

declare dso_local i64 @tui_current_layout(...) #1

declare dso_local i32 @tui_term_height(...) #1

declare dso_local i32 @make_source_window(%struct.TYPE_14__**, i32, i32) #1

declare dso_local i32 @init_gen_win_info(%struct.tui_gen_win_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tui_make_visible(%struct.tui_gen_win_info*) #1

declare dso_local %struct.tui_gen_win_info* @tui_locator_win_info_ptr(...) #1

declare dso_local i32 @tui_show_source_content(%struct.TYPE_14__*) #1

declare dso_local i32 @make_disasm_window(%struct.TYPE_14__**, i32, i32) #1

declare dso_local i32 @init_and_make_win(i8**, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tui_term_width(...) #1

declare dso_local i32 @tui_show_locator_content(...) #1

declare dso_local i32 @make_command_window(%struct.TYPE_15__**, i32, i32) #1

declare dso_local i32 @tui_refresh_win(%struct.tui_gen_win_info*) #1

declare dso_local i32 @tui_set_current_layout_to(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
