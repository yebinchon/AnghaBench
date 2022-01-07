; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_next_win.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_next_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@CMD_WIN = common dso_local global i32 0, align 4
@SRC_WIN = common dso_local global i32 0, align 4
@tui_win_list = common dso_local global %struct.tui_win_info** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tui_win_info* @tui_next_win(%struct.tui_win_info* %0) #0 {
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
  %13 = load i32, i32* @CMD_WIN, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @SRC_WIN, align 4
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %19 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %15
  br label %24

24:                                               ; preds = %69, %23
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
  br i1 %35, label %36, label %70

36:                                               ; preds = %34
  %37 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %37, i64 %39
  %41 = load %struct.tui_win_info*, %struct.tui_win_info** %40, align 8
  %42 = icmp ne %struct.tui_win_info* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %36
  %44 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %44, i64 %46
  %48 = load %struct.tui_win_info*, %struct.tui_win_info** %47, align 8
  %49 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %54, i64 %56
  %58 = load %struct.tui_win_info*, %struct.tui_win_info** %57, align 8
  store %struct.tui_win_info* %58, %struct.tui_win_info** %4, align 8
  br label %69

59:                                               ; preds = %43, %36
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @CMD_WIN, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @SRC_WIN, align 4
  store i32 %64, i32* %3, align 4
  br label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %3, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %63
  br label %69

69:                                               ; preds = %68, %53
  br label %24

70:                                               ; preds = %34
  %71 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  ret %struct.tui_win_info* %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
