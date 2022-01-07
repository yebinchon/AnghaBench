; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_make_command_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_make_command_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { i32 }

@CMD_WIN = common dso_local global i32 0, align 4
@DONT_BOX_WINDOW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tui_win_info**, i32, i32)* @make_command_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_command_window(%struct.tui_win_info** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tui_win_info**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tui_win_info** %0, %struct.tui_win_info*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tui_win_info**, %struct.tui_win_info*** %4, align 8
  %8 = bitcast %struct.tui_win_info** %7 to i8**
  %9 = load i32, i32* @CMD_WIN, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (...) @tui_term_width()
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @DONT_BOX_WINDOW, align 4
  %14 = call i32 @init_and_make_win(i8** %8, i32 %9, i32 %10, i32 %11, i32 0, i32 %12, i32 %13)
  %15 = load i32, i32* @FALSE, align 4
  %16 = load %struct.tui_win_info**, %struct.tui_win_info*** %4, align 8
  %17 = load %struct.tui_win_info*, %struct.tui_win_info** %16, align 8
  %18 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  ret void
}

declare dso_local i32 @init_and_make_win(i8**, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tui_term_width(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
