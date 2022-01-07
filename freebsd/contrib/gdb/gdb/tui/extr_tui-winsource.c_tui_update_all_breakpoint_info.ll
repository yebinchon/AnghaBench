; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_update_all_breakpoint_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_update_all_breakpoint_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_list = type { i32, i64* }
%struct.tui_win_info = type { i32 }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_update_all_breakpoint_info() #0 {
  %1 = alloca %struct.tui_list*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.tui_win_info*, align 8
  %4 = call %struct.tui_list* (...) @tui_source_windows()
  store %struct.tui_list* %4, %struct.tui_list** %1, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %28, %0
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.tui_list*, %struct.tui_list** %1, align 8
  %8 = getelementptr inbounds %struct.tui_list, %struct.tui_list* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %5
  %12 = load %struct.tui_list*, %struct.tui_list** %1, align 8
  %13 = getelementptr inbounds %struct.tui_list, %struct.tui_list* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.tui_win_info*
  store %struct.tui_win_info* %19, %struct.tui_win_info** %3, align 8
  %20 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i64 @tui_update_breakpoint_info(%struct.tui_win_info* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %26 = call i32 @tui_update_exec_info(%struct.tui_win_info* %25)
  br label %27

27:                                               ; preds = %24, %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %5

31:                                               ; preds = %5
  ret void
}

declare dso_local %struct.tui_list* @tui_source_windows(...) #1

declare dso_local i64 @tui_update_breakpoint_info(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_update_exec_info(%struct.tui_win_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
