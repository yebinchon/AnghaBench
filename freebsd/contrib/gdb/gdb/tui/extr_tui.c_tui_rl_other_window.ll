; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui.c_tui_rl_other_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui.c_tui_rl_other_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.tui_win_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@tui_active = common dso_local global i32 0, align 4
@TUI_DATA_WIN = common dso_local global %struct.TYPE_6__* null, align 8
@TUI_CMD_WIN = common dso_local global %struct.tui_win_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @tui_rl_other_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tui_rl_other_window(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tui_win_info*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @tui_active, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 @tui_rl_switch_mode(i32 0, i32 0)
  br label %10

10:                                               ; preds = %8, %2
  %11 = call i32 (...) @tui_win_with_focus()
  %12 = call %struct.tui_win_info* @tui_next_win(i32 %11)
  store %struct.tui_win_info* %12, %struct.tui_win_info** %5, align 8
  %13 = load %struct.tui_win_info*, %struct.tui_win_info** %5, align 8
  %14 = icmp ne %struct.tui_win_info* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = load %struct.tui_win_info*, %struct.tui_win_info** %5, align 8
  %17 = call i32 @tui_set_win_focus_to(%struct.tui_win_info* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_DATA_WIN, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_DATA_WIN, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 (...) @tui_refresh_data_win()
  br label %28

28:                                               ; preds = %26, %20, %15
  %29 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %30 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tui_win_info*, %struct.tui_win_info** %5, align 8
  %34 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %35 = icmp ne %struct.tui_win_info* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @keypad(i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %28, %10
  ret i32 0
}

declare dso_local i32 @tui_rl_switch_mode(i32, i32) #1

declare dso_local %struct.tui_win_info* @tui_next_win(i32) #1

declare dso_local i32 @tui_win_with_focus(...) #1

declare dso_local i32 @tui_set_win_focus_to(%struct.tui_win_info*) #1

declare dso_local i32 @tui_refresh_data_win(...) #1

declare dso_local i32 @keypad(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
