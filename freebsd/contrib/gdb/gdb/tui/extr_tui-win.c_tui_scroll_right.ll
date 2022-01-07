; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_scroll_right.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_scroll_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { i32 }

@TUI_CMD_WIN = common dso_local global %struct.tui_win_info* null, align 8
@TUI_SRC_WIN = common dso_local global %struct.tui_win_info* null, align 8
@TUI_DISASM_WIN = common dso_local global %struct.tui_win_info* null, align 8
@RIGHT_SCROLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_scroll_right(%struct.tui_win_info* %0, i32 %1) #0 {
  %3 = alloca %struct.tui_win_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tui_win_info* %0, %struct.tui_win_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %7 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %8 = icmp ne %struct.tui_win_info* %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 1, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %16 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_SRC_WIN, align 8
  %17 = icmp eq %struct.tui_win_info* %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %20 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_DISASM_WIN, align 8
  %21 = icmp eq %struct.tui_win_info* %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %14
  %23 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %24 = load i32, i32* @RIGHT_SCROLL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @tui_horizontal_source_scroll(%struct.tui_win_info* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %18
  br label %28

28:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @tui_horizontal_source_scroll(%struct.tui_win_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
