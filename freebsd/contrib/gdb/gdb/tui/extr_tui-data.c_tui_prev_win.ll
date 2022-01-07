; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_prev_win.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_prev_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@SRC_WIN = common dso_local global i32 0, align 4
@CMD_WIN = common dso_local global i32 0, align 4
@tui_win_list = common dso_local global %struct.tui_win_info** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tui_win_info* @tui_prev_win(%struct.tui_win_info* %0) #0 {
  %2 = alloca %struct.tui_win_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tui_win_info*, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %2, align 8
  %5 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %6 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  store %struct.tui_win_info* null, %struct.tui_win_info** %4, align 8
  %9 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %10 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SRC_WIN, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @CMD_WIN, align 4
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %19 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %15
  br label %24

24:                                               ; preds = %62, %23
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %27 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %33 = icmp eq %struct.tui_win_info* %32, null
  br label %34

34:                                               ; preds = %31, %24
  %35 = phi i1 [ false, %24 ], [ %33, %31 ]
  br i1 %35, label %36, label %63

36:                                               ; preds = %34
  %37 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %37, i64 %39
  %41 = load %struct.tui_win_info*, %struct.tui_win_info** %40, align 8
  %42 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %47, i64 %49
  %51 = load %struct.tui_win_info*, %struct.tui_win_info** %50, align 8
  store %struct.tui_win_info* %51, %struct.tui_win_info** %4, align 8
  br label %62

52:                                               ; preds = %36
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @SRC_WIN, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @CMD_WIN, align 4
  store i32 %57, i32* %3, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %3, align 4
  %60 = add i32 %59, -1
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %56
  br label %62

62:                                               ; preds = %61, %46
  br label %24

63:                                               ; preds = %34
  %64 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  ret %struct.tui_win_info* %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
