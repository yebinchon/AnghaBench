; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-windata.c_tui_delete_data_content_windows.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-windata.c_tui_delete_data_content_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.tui_gen_win_info = type { i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tui_gen_win_info }

@TUI_DATA_WIN = common dso_local global %struct.TYPE_8__* null, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_delete_data_content_windows() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tui_gen_win_info*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %31, %0
  %4 = load i32, i32* %1, align 4
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_DATA_WIN, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %4, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %3
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_DATA_WIN, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_7__**
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %15, i64 %17
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.tui_gen_win_info* %21, %struct.tui_gen_win_info** %2, align 8
  %22 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %23 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @tui_delete_win(i32* %24)
  %26 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %27 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %30 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %10
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %3

34:                                               ; preds = %3
  ret void
}

declare dso_local i32 @tui_delete_win(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
