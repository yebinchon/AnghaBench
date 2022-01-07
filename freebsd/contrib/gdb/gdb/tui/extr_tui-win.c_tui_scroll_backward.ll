; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_scroll_backward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_scroll_backward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TUI_CMD_WIN = common dso_local global %struct.tui_win_info* null, align 8
@TUI_SRC_WIN = common dso_local global %struct.tui_win_info* null, align 8
@BACKWARD_SCROLL = common dso_local global i32 0, align 4
@TUI_DISASM_WIN = common dso_local global %struct.tui_win_info* null, align 8
@TUI_DATA_WIN = common dso_local global %struct.tui_win_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_scroll_backward(%struct.tui_win_info* %0, i32 %1) #0 {
  %3 = alloca %struct.tui_win_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tui_win_info* %0, %struct.tui_win_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %7 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %8 = icmp ne %struct.tui_win_info* %6, %7
  br i1 %8, label %9, label %46

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %15 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 3
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %13, %9
  %20 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %21 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_SRC_WIN, align 8
  %22 = icmp eq %struct.tui_win_info* %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @BACKWARD_SCROLL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @tui_vertical_source_scroll(i32 %24, i32 %25)
  br label %45

27:                                               ; preds = %19
  %28 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %29 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_DISASM_WIN, align 8
  %30 = icmp eq %struct.tui_win_info* %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @BACKWARD_SCROLL, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @tui_vertical_disassem_scroll(i32 %32, i32 %33)
  br label %44

35:                                               ; preds = %27
  %36 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %37 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_DATA_WIN, align 8
  %38 = icmp eq %struct.tui_win_info* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @BACKWARD_SCROLL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @tui_vertical_data_scroll(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44, %23
  br label %46

46:                                               ; preds = %45, %2
  ret void
}

declare dso_local i32 @tui_vertical_source_scroll(i32, i32) #1

declare dso_local i32 @tui_vertical_disassem_scroll(i32, i32) #1

declare dso_local i32 @tui_vertical_data_scroll(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
