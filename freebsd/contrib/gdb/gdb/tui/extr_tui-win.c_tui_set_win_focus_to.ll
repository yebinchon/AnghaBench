; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_set_win_focus_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_set_win_focus_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CMD_WIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_set_win_focus_to(%struct.tui_win_info* %0) #0 {
  %2 = alloca %struct.tui_win_info*, align 8
  %3 = alloca %struct.tui_win_info*, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %2, align 8
  %4 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %5 = icmp ne %struct.tui_win_info* %4, null
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = call %struct.tui_win_info* (...) @tui_win_with_focus()
  store %struct.tui_win_info* %7, %struct.tui_win_info** %3, align 8
  %8 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %9 = icmp ne %struct.tui_win_info* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %12 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CMD_WIN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %19 = call i32 @tui_unhighlight_win(%struct.tui_win_info* %18)
  br label %20

20:                                               ; preds = %17, %10, %6
  %21 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %22 = call i32 @tui_set_win_with_focus(%struct.tui_win_info* %21)
  %23 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %24 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CMD_WIN, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %31 = call i32 @tui_highlight_win(%struct.tui_win_info* %30)
  br label %32

32:                                               ; preds = %29, %20
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare dso_local %struct.tui_win_info* @tui_win_with_focus(...) #1

declare dso_local i32 @tui_unhighlight_win(%struct.tui_win_info*) #1

declare dso_local i32 @tui_set_win_with_focus(%struct.tui_win_info*) #1

declare dso_local i32 @tui_highlight_win(%struct.tui_win_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
