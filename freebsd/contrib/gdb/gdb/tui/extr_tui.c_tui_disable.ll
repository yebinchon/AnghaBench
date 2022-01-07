; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui.c_tui_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui.c_tui_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tui_active = common dso_local global i64 0, align 8
@tui_readline_standard_keymap = common dso_local global i32 0, align 4
@rl_startup_hook = common dso_local global i64 0, align 8
@rl_already_prompted = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_disable() #0 {
  %1 = load i64, i64* @tui_active, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %12

4:                                                ; preds = %0
  %5 = load i32, i32* @tui_readline_standard_keymap, align 4
  %6 = call i32 @rl_set_keymap(i32 %5)
  %7 = call i32 (...) @tui_remove_hooks()
  store i64 0, i64* @rl_startup_hook, align 8
  store i64 0, i64* @rl_already_prompted, align 8
  %8 = call i32 (...) @endwin()
  %9 = call i32 @tui_setup_io(i32 0)
  %10 = call i32 (...) @target_terminal_save_ours()
  store i64 0, i64* @tui_active, align 8
  %11 = call i32 (...) @tui_update_gdb_sizes()
  br label %12

12:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @rl_set_keymap(i32) #1

declare dso_local i32 @tui_remove_hooks(...) #1

declare dso_local i32 @endwin(...) #1

declare dso_local i32 @tui_setup_io(i32) #1

declare dso_local i32 @target_terminal_save_ours(...) #1

declare dso_local i32 @tui_update_gdb_sizes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
