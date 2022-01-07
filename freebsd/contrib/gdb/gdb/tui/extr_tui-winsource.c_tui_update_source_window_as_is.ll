; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_update_source_window_as_is.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_update_source_window_as_is.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.symtab = type { i32 }
%union.tui_line_or_address = type { i32 }
%struct.symtab_and_line = type { i32, %struct.symtab* }

@SRC_WIN = common dso_local global i64 0, align 8
@TUI_FAILURE = common dso_local global i32 0, align 4
@EMPTY_SOURCE_PROMPT = common dso_local global i32 0, align 4
@TUI_DISASM_WIN = common dso_local global i64 0, align 8
@SRC_DISASSEM_COMMAND = common dso_local global i64 0, align 8
@TUI_SRC_WIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_update_source_window_as_is(%struct.tui_win_info* %0, %struct.symtab* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.tui_line_or_address, align 4
  %6 = alloca %struct.tui_win_info*, align 8
  %7 = alloca %struct.symtab*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.symtab_and_line, align 8
  %11 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %5, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.tui_win_info* %0, %struct.tui_win_info** %6, align 8
  store %struct.symtab* %1, %struct.symtab** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.tui_win_info*, %struct.tui_win_info** %6, align 8
  %13 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SRC_WIN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.symtab*, %struct.symtab** %7, align 8
  %20 = bitcast %union.tui_line_or_address* %5 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @tui_set_source_content(%struct.symtab* %19, i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  br label %28

24:                                               ; preds = %4
  %25 = bitcast %union.tui_line_or_address* %5 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @tui_set_disassem_content(i32 %26)
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @TUI_FAILURE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.tui_win_info*, %struct.tui_win_info** %6, align 8
  %34 = load i32, i32* @EMPTY_SOURCE_PROMPT, align 4
  %35 = call i32 @tui_clear_source_content(%struct.tui_win_info* %33, i32 %34)
  %36 = load %struct.tui_win_info*, %struct.tui_win_info** %6, align 8
  %37 = call i32 @tui_clear_exec_info_content(%struct.tui_win_info* %36)
  br label %76

38:                                               ; preds = %28
  %39 = load %struct.tui_win_info*, %struct.tui_win_info** %6, align 8
  %40 = call i32 @tui_update_breakpoint_info(%struct.tui_win_info* %39, i32 0)
  %41 = load %struct.tui_win_info*, %struct.tui_win_info** %6, align 8
  %42 = call i32 @tui_show_source_content(%struct.tui_win_info* %41)
  %43 = load %struct.tui_win_info*, %struct.tui_win_info** %6, align 8
  %44 = call i32 @tui_update_exec_info(%struct.tui_win_info* %43)
  %45 = load %struct.tui_win_info*, %struct.tui_win_info** %6, align 8
  %46 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SRC_WIN, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %38
  %52 = bitcast %union.tui_line_or_address* %5 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tui_win_info*, %struct.tui_win_info** %6, align 8
  %55 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 2
  %59 = add nsw i32 %53, %58
  %60 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load %struct.symtab*, %struct.symtab** %7, align 8
  %62 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 1
  store %struct.symtab* %61, %struct.symtab** %62, align 8
  %63 = call i32 @set_current_source_symtab_and_line(%struct.symtab_and_line* %10)
  %64 = call i64 (...) @tui_win_with_focus()
  %65 = load i64, i64* @TUI_DISASM_WIN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %51
  %68 = call i64 (...) @tui_current_layout()
  %69 = load i64, i64* @SRC_DISASSEM_COMMAND, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @TUI_SRC_WIN, align 4
  %73 = call i32 @tui_set_win_focus_to(i32 %72)
  br label %74

74:                                               ; preds = %71, %67, %51
  br label %75

75:                                               ; preds = %74, %38
  br label %76

76:                                               ; preds = %75, %32
  ret void
}

declare dso_local i32 @tui_set_source_content(%struct.symtab*, i32, i32) #1

declare dso_local i32 @tui_set_disassem_content(i32) #1

declare dso_local i32 @tui_clear_source_content(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_clear_exec_info_content(%struct.tui_win_info*) #1

declare dso_local i32 @tui_update_breakpoint_info(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_show_source_content(%struct.tui_win_info*) #1

declare dso_local i32 @tui_update_exec_info(%struct.tui_win_info*) #1

declare dso_local i32 @set_current_source_symtab_and_line(%struct.symtab_and_line*) #1

declare dso_local i64 @tui_win_with_focus(...) #1

declare dso_local i64 @tui_current_layout(...) #1

declare dso_local i32 @tui_set_win_focus_to(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
