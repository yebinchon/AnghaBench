; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_refresh_all_win.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_refresh_all_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@curscr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@tui_win_list = common dso_local global %struct.TYPE_9__** null, align 8
@MAX_MAJOR_WINDOWS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_refresh_all_win() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @curscr, align 4
  %3 = load i32, i32* @TRUE, align 4
  %4 = call i32 @clearok(i32 %2, i32 %3)
  %5 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @tui_win_list, align 8
  %6 = call i32 @tui_refresh_all(%struct.TYPE_9__** %5)
  store i32 128, i32* %1, align 4
  br label %7

7:                                                ; preds = %60, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @MAX_MAJOR_WINDOWS, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %63

11:                                               ; preds = %7
  %12 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @tui_win_list, align 8
  %13 = load i32, i32* %1, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %12, i64 %14
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %59

18:                                               ; preds = %11
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @tui_win_list, align 8
  %20 = load i32, i32* %1, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %19, i64 %21
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %18
  %29 = load i32, i32* %1, align 4
  switch i32 %29, label %57 [
    i32 128, label %30
    i32 129, label %30
    i32 130, label %55
  ]

30:                                               ; preds = %28, %28
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @tui_win_list, align 8
  %32 = load i32, i32* %1, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %31, i64 %33
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = call i32 @tui_show_source_content(%struct.TYPE_9__* %35)
  %37 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @tui_win_list, align 8
  %38 = load i32, i32* %1, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %37, i64 %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = call i32 @tui_check_and_display_highlight_if_needed(%struct.TYPE_9__* %41)
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @tui_win_list, align 8
  %44 = load i32, i32* %1, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %43, i64 %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = call i32 @tui_erase_exec_info_content(%struct.TYPE_9__* %47)
  %49 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @tui_win_list, align 8
  %50 = load i32, i32* %1, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %49, i64 %51
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = call i32 @tui_update_exec_info(%struct.TYPE_9__* %53)
  br label %58

55:                                               ; preds = %28
  %56 = call i32 (...) @tui_refresh_data_win()
  br label %58

57:                                               ; preds = %28
  br label %58

58:                                               ; preds = %57, %55, %30
  br label %59

59:                                               ; preds = %58, %18, %11
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %1, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %1, align 4
  br label %7

63:                                               ; preds = %7
  %64 = call i32 (...) @tui_show_locator_content()
  ret void
}

declare dso_local i32 @clearok(i32, i32) #1

declare dso_local i32 @tui_refresh_all(%struct.TYPE_9__**) #1

declare dso_local i32 @tui_show_source_content(%struct.TYPE_9__*) #1

declare dso_local i32 @tui_check_and_display_highlight_if_needed(%struct.TYPE_9__*) #1

declare dso_local i32 @tui_erase_exec_info_content(%struct.TYPE_9__*) #1

declare dso_local i32 @tui_update_exec_info(%struct.TYPE_9__*) #1

declare dso_local i32 @tui_refresh_data_win(...) #1

declare dso_local i32 @tui_show_locator_content(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
