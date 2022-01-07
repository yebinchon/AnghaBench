; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-windata.c_tui_display_all_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-windata.c_tui_display_all_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }

@TUI_DATA_WIN = common dso_local global %struct.TYPE_9__* null, align 8
@NO_DATA_STRING = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_display_all_data() #0 {
  %1 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_DATA_WIN, align 8
  %2 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp sle i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i8*, i8** @NO_DATA_STRING, align 8
  %8 = call i32 @tui_erase_data_content(i8* %7)
  br label %30

9:                                                ; preds = %0
  %10 = call i32 @tui_erase_data_content(i8* null)
  %11 = call i32 (...) @tui_delete_data_content_windows()
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_DATA_WIN, align 8
  %13 = call i32 @tui_check_and_display_highlight_if_needed(%struct.TYPE_9__* %12)
  %14 = call i32 @tui_display_registers_from(i32 0)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_DATA_WIN, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %9
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_DATA_WIN, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %21, %9
  br label %30

30:                                               ; preds = %29, %6
  ret void
}

declare dso_local i32 @tui_erase_data_content(i8*) #1

declare dso_local i32 @tui_delete_data_content_windows(...) #1

declare dso_local i32 @tui_check_and_display_highlight_if_needed(%struct.TYPE_9__*) #1

declare dso_local i32 @tui_display_registers_from(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
