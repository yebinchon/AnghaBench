; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-disasm.c_tui_show_disassem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-disasm.c_tui_show_disassem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { i32 }
%struct.symtab = type { i32 }
%union.tui_line_or_address = type { i32 }

@DISASSEM_WIN = common dso_local global i32 0, align 4
@TUI_DISASM_WIN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SRC_DISASSEM_COMMAND = common dso_local global i64 0, align 8
@TUI_SRC_WIN = common dso_local global %struct.tui_win_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_show_disassem(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.symtab*, align 8
  %4 = alloca %struct.tui_win_info*, align 8
  %5 = alloca %union.tui_line_or_address, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.symtab* @find_pc_symtab(i32 %6)
  store %struct.symtab* %7, %struct.symtab** %3, align 8
  %8 = call %struct.tui_win_info* (...) @tui_win_with_focus()
  store %struct.tui_win_info* %8, %struct.tui_win_info** %4, align 8
  %9 = load i32, i32* %2, align 4
  %10 = bitcast %union.tui_line_or_address* %5 to i32*
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @DISASSEM_WIN, align 4
  %12 = call i32 @tui_add_win_to_layout(i32 %11)
  %13 = load i32, i32* @TUI_DISASM_WIN, align 4
  %14 = load %struct.symtab*, %struct.symtab** %3, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @tui_update_source_window(i32 %13, %struct.symtab* %14, i32 %17, i32 %15)
  %19 = call i64 (...) @tui_current_layout()
  %20 = load i64, i64* @SRC_DISASSEM_COMMAND, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %24 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_SRC_WIN, align 8
  %25 = icmp eq %struct.tui_win_info* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @TUI_DISASM_WIN, align 4
  %28 = call i32 @tui_set_win_focus_to(i32 %27)
  br label %29

29:                                               ; preds = %26, %22, %1
  ret void
}

declare dso_local %struct.symtab* @find_pc_symtab(i32) #1

declare dso_local %struct.tui_win_info* @tui_win_with_focus(...) #1

declare dso_local i32 @tui_add_win_to_layout(i32) #1

declare dso_local i32 @tui_update_source_window(i32, %struct.symtab*, i32, i32) #1

declare dso_local i64 @tui_current_layout(...) #1

declare dso_local i32 @tui_set_win_focus_to(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
