; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_clear_win_detail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_clear_win_detail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_12__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i8*, i32, i8* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TUI_UNDEFINED_REGS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_clear_win_detail(%struct.tui_win_info* %0) #0 {
  %2 = alloca %struct.tui_win_info*, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %2, align 8
  %3 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %4 = icmp ne %struct.tui_win_info* %3, null
  br i1 %4, label %5, label %62

5:                                                ; preds = %1
  %6 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %7 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %60 [
    i32 128, label %10
    i32 129, label %10
    i32 131, label %20
    i32 130, label %29
  ]

10:                                               ; preds = %5, %5
  %11 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %12 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %17 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %61

20:                                               ; preds = %5
  %21 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %22 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %26 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  br label %61

29:                                               ; preds = %5
  %30 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %31 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 6
  store i8* null, i8** %33, align 8
  %34 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %35 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 5
  store i32 0, i32* %37, align 8
  %38 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %39 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 4
  store i8* null, i8** %41, align 8
  %42 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %43 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* @TUI_UNDEFINED_REGS, align 4
  %47 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %48 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  store i32 %46, i32* %50, align 8
  %51 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %52 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load i32, i32* @FALSE, align 4
  %56 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %57 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  br label %61

60:                                               ; preds = %5
  br label %61

61:                                               ; preds = %60, %29, %20, %10
  br label %62

62:                                               ; preds = %61, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
