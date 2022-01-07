; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui.c_tui_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui.c_tui_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@tui_active = common dso_local global i32 0, align 4
@tui_finish_init = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LINES = common dso_local global i32 0, align 4
@COLS = common dso_local global i32 0, align 4
@SRC_COMMAND = common dso_local global i32 0, align 4
@TUI_UNDEFINED_REGS = common dso_local global i32 0, align 4
@TUI_SRC_WIN = common dso_local global i32 0, align 4
@TUI_CMD_WIN = common dso_local global %struct.TYPE_4__* null, align 8
@stdscr = common dso_local global i32 0, align 4
@tui_rl_startup_hook = common dso_local global i32 0, align 4
@rl_startup_hook = common dso_local global i32 0, align 4
@deprecated_selected_frame = common dso_local global i64 0, align 8
@tui_current_key_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_enable() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @tui_active, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %63

5:                                                ; preds = %0
  %6 = load i64, i64* @tui_finish_init, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %5
  %9 = call i32* (...) @initscr()
  store i32* %9, i32** %1, align 8
  %10 = call i32 (...) @cbreak()
  %11 = call i32 (...) @noecho()
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @nodelay(i32* %12, i32 %13)
  %15 = call i32 (...) @nl()
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @keypad(i32* %16, i32 %17)
  %19 = call i32 (...) @rl_initialize()
  %20 = load i32, i32* @LINES, align 4
  %21 = call i32 @tui_set_term_height_to(i32 %20)
  %22 = load i32, i32* @COLS, align 4
  %23 = call i32 @tui_set_term_width_to(i32 %22)
  %24 = call i32 (...) @def_prog_mode()
  %25 = call i32 @tui_show_frame_info(i64 0)
  %26 = load i32, i32* @SRC_COMMAND, align 4
  %27 = load i32, i32* @TUI_UNDEFINED_REGS, align 4
  %28 = call i32 @tui_set_layout(i32 %26, i32 %27)
  %29 = load i32, i32* @TUI_SRC_WIN, align 4
  %30 = call i32 @tui_set_win_focus_to(i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TUI_CMD_WIN, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @keypad(i32* %34, i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TUI_CMD_WIN, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @wrefresh(i32* %40)
  store i64 0, i64* @tui_finish_init, align 8
  br label %47

42:                                               ; preds = %5
  %43 = call i32 (...) @def_shell_mode()
  %44 = load i32, i32* @stdscr, align 4
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i32 @clearok(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %8
  %48 = call i32 (...) @tui_install_hooks()
  %49 = load i32, i32* @tui_rl_startup_hook, align 4
  store i32 %49, i32* @rl_startup_hook, align 4
  %50 = call i32 (...) @tui_update_variables()
  %51 = call i32 @tui_setup_io(i32 1)
  store i32 1, i32* @tui_active, align 4
  %52 = load i64, i64* @deprecated_selected_frame, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, i64* @deprecated_selected_frame, align 8
  %56 = call i32 @tui_show_frame_info(i64 %55)
  br label %57

57:                                               ; preds = %54, %47
  %58 = load i32, i32* @tui_current_key_mode, align 4
  %59 = call i32 @tui_set_key_mode(i32 %58)
  %60 = call i32 (...) @tui_refresh_all_win()
  %61 = call i32 (...) @target_terminal_save_ours()
  %62 = call i32 (...) @tui_update_gdb_sizes()
  br label %63

63:                                               ; preds = %57, %4
  ret void
}

declare dso_local i32* @initscr(...) #1

declare dso_local i32 @cbreak(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @nodelay(i32*, i32) #1

declare dso_local i32 @nl(...) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @rl_initialize(...) #1

declare dso_local i32 @tui_set_term_height_to(i32) #1

declare dso_local i32 @tui_set_term_width_to(i32) #1

declare dso_local i32 @def_prog_mode(...) #1

declare dso_local i32 @tui_show_frame_info(i64) #1

declare dso_local i32 @tui_set_layout(i32, i32) #1

declare dso_local i32 @tui_set_win_focus_to(i32) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @def_shell_mode(...) #1

declare dso_local i32 @clearok(i32, i32) #1

declare dso_local i32 @tui_install_hooks(...) #1

declare dso_local i32 @tui_update_variables(...) #1

declare dso_local i32 @tui_setup_io(i32) #1

declare dso_local i32 @tui_set_key_mode(i32) #1

declare dso_local i32 @tui_refresh_all_win(...) #1

declare dso_local i32 @target_terminal_save_ours(...) #1

declare dso_local i32 @tui_update_gdb_sizes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
