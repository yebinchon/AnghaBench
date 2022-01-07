; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_tui_default_win_height.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_tui_default_win_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@tui_win_list = common dso_local global %struct.tui_win_info** null, align 8
@TUI_CMD_WIN = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tui_default_win_height(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %6, i64 %8
  %10 = load %struct.tui_win_info*, %struct.tui_win_info** %9, align 8
  %11 = icmp ne %struct.tui_win_info* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %13, i64 %15
  %17 = load %struct.tui_win_info*, %struct.tui_win_info** %16, align 8
  %18 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %52 [
    i32 130, label %23
    i32 132, label %23
    i32 128, label %37
    i32 129, label %37
    i32 131, label %37
  ]

23:                                               ; preds = %21, %21
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_CMD_WIN, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i32 (...) @tui_term_height()
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %5, align 4
  br label %36

29:                                               ; preds = %23
  %30 = call i32 (...) @tui_term_height()
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_CMD_WIN, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %30, %34
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %26
  br label %53

37:                                               ; preds = %21, %21, %21
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_CMD_WIN, align 8
  %39 = icmp eq %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = call i32 (...) @tui_term_height()
  %42 = sdiv i32 %41, 3
  store i32 %42, i32* %5, align 4
  br label %51

43:                                               ; preds = %37
  %44 = call i32 (...) @tui_term_height()
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_CMD_WIN, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %44, %48
  %50 = sdiv i32 %49, 2
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %43, %40
  br label %53

52:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %51, %36
  br label %54

54:                                               ; preds = %53, %12
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @tui_term_height(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
