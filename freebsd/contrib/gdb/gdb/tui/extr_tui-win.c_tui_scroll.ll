; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_scroll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_scroll(i32 %0, %struct.tui_win_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tui_win_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.tui_win_info* %1, %struct.tui_win_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %24 [
    i32 130, label %8
    i32 131, label %12
    i32 129, label %16
    i32 128, label %20
  ]

8:                                                ; preds = %3
  %9 = load %struct.tui_win_info*, %struct.tui_win_info** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @tui_scroll_forward(%struct.tui_win_info* %9, i32 %10)
  br label %25

12:                                               ; preds = %3
  %13 = load %struct.tui_win_info*, %struct.tui_win_info** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @tui_scroll_backward(%struct.tui_win_info* %13, i32 %14)
  br label %25

16:                                               ; preds = %3
  %17 = load %struct.tui_win_info*, %struct.tui_win_info** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @tui_scroll_left(%struct.tui_win_info* %17, i32 %18)
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.tui_win_info*, %struct.tui_win_info** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @tui_scroll_right(%struct.tui_win_info* %21, i32 %22)
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %20, %16, %12, %8
  ret void
}

declare dso_local i32 @tui_scroll_forward(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_scroll_backward(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_scroll_left(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_scroll_right(%struct.tui_win_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
