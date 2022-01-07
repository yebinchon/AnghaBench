; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_clear_source_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_clear_source_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64*, i8* }
%struct.tui_win_element = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_clear_source_content(%struct.tui_win_info* %0, i32 %1) #0 {
  %3 = alloca %struct.tui_win_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tui_win_element*, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %8 = icmp ne %struct.tui_win_info* %7, null
  br i1 %8, label %9, label %48

9:                                                ; preds = %2
  %10 = load i8*, i8** @FALSE, align 8
  %11 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %12 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i8* %10, i8** %13, align 8
  %14 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @tui_erase_source_content(%struct.tui_win_info* %14, i32 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %44, %9
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %20 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %17
  %25 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %26 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.tui_win_element*
  store %struct.tui_win_element* %33, %struct.tui_win_element** %6, align 8
  %34 = load i8*, i8** @FALSE, align 8
  %35 = load %struct.tui_win_element*, %struct.tui_win_element** %6, align 8
  %36 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i8* %34, i8** %38, align 8
  %39 = load i8*, i8** @FALSE, align 8
  %40 = load %struct.tui_win_element*, %struct.tui_win_element** %6, align 8
  %41 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %39, i8** %43, align 8
  br label %44

44:                                               ; preds = %24
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %17

47:                                               ; preds = %17
  br label %48

48:                                               ; preds = %47, %2
  ret void
}

declare dso_local i32 @tui_erase_source_content(%struct.tui_win_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
