; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_show_exec_info_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_show_exec_info_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tui_gen_win_info* }
%struct.tui_gen_win_info = type { i32, i32, i64*, i32 }
%struct.tui_win_element = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_show_exec_info_content(%struct.tui_win_info* %0) #0 {
  %2 = alloca %struct.tui_win_info*, align 8
  %3 = alloca %struct.tui_gen_win_info*, align 8
  %4 = alloca i32, align 4
  store %struct.tui_win_info* %0, %struct.tui_win_info** %2, align 8
  %5 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %6 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %8, align 8
  store %struct.tui_gen_win_info* %9, %struct.tui_gen_win_info** %3, align 8
  %10 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %11 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @werase(i32 %12)
  %14 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %15 = call i32 @tui_refresh_win(%struct.tui_gen_win_info* %14)
  store i32 1, i32* %4, align 4
  br label %16

16:                                               ; preds = %40, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %19 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sle i32 %17, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %24 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %28 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.tui_win_element*
  %36 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mvwaddstr(i32 %25, i32 %26, i32 0, i32 %38)
  br label %40

40:                                               ; preds = %22
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %16

43:                                               ; preds = %16
  %44 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %45 = call i32 @tui_refresh_win(%struct.tui_gen_win_info* %44)
  %46 = load i32, i32* @TRUE, align 4
  %47 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %48 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  ret void
}

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @tui_refresh_win(%struct.tui_gen_win_info*) #1

declare dso_local i32 @mvwaddstr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
