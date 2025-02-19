; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui.c_tui_rl_startup_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui.c_tui_rl_startup_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rl_already_prompted = common dso_local global i32 0, align 4
@tui_current_key_mode = common dso_local global i64 0, align 8
@TUI_COMMAND_MODE = common dso_local global i64 0, align 8
@TUI_SINGLE_KEY_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tui_rl_startup_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tui_rl_startup_hook() #0 {
  store i32 1, i32* @rl_already_prompted, align 4
  %1 = load i64, i64* @tui_current_key_mode, align 8
  %2 = load i64, i64* @TUI_COMMAND_MODE, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @TUI_SINGLE_KEY_MODE, align 4
  %6 = call i32 @tui_set_key_mode(i32 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = call i32 (...) @tui_redisplay_readline()
  ret i32 0
}

declare dso_local i32 @tui_set_key_mode(i32) #1

declare dso_local i32 @tui_redisplay_readline(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
