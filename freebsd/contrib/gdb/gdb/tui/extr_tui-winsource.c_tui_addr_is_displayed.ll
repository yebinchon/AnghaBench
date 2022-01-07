; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_addr_is_displayed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_addr_is_displayed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64* }
%struct.tui_win_element = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@SCROLL_THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tui_addr_is_displayed(i64 %0, %struct.tui_win_info* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tui_win_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.tui_win_info* %1, %struct.tui_win_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @SCROLL_THRESHOLD, align 4
  store i32 %14, i32* %9, align 4
  br label %16

15:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %15, %13
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.tui_win_info*, %struct.tui_win_info** %5, align 8
  %20 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %22, %23
  %25 = icmp slt i32 %18, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %26, %17
  %31 = phi i1 [ false, %17 ], [ %29, %26 ]
  br i1 %31, label %32, label %52

32:                                               ; preds = %30
  %33 = load %struct.tui_win_info*, %struct.tui_win_info** %5, align 8
  %34 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.tui_win_element*
  %42 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %17

52:                                               ; preds = %30
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
