; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_show_source_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_show_source_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_show_source_content(%struct.tui_win_info* %0) #0 {
  %2 = alloca %struct.tui_win_info*, align 8
  %3 = alloca i32, align 4
  store %struct.tui_win_info* %0, %struct.tui_win_info** %2, align 8
  %4 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %5 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %10

10:                                               ; preds = %22, %9
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %14 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %12, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @tui_show_source_line(%struct.tui_win_info* %19, i32 %20)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %10

25:                                               ; preds = %10
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @tui_erase_source_content(%struct.tui_win_info* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %25
  %31 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %32 = call i32 @tui_check_and_display_highlight_if_needed(%struct.tui_win_info* %31)
  %33 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %34 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %33, i32 0, i32 0
  %35 = call i32 @tui_refresh_win(%struct.TYPE_2__* %34)
  %36 = load i32, i32* @TRUE, align 4
  %37 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %38 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  ret void
}

declare dso_local i32 @tui_show_source_line(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_erase_source_content(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_check_and_display_highlight_if_needed(%struct.tui_win_info*) #1

declare dso_local i32 @tui_refresh_win(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
