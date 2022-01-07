; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_all_windows_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_all_windows_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@SRC_WIN = common dso_local global i32 0, align 4
@MAX_MAJOR_WINDOWS = common dso_local global i32 0, align 4
@tui_win_list = common dso_local global %struct.tui_win_info** null, align 8
@.str = private unnamed_addr constant [36 x i8] c"        %s\09(%d lines)  <has focus>\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"        %s\09(%d lines)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @tui_all_windows_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_all_windows_info(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tui_win_info*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.tui_win_info* (...) @tui_win_with_focus()
  store %struct.tui_win_info* %7, %struct.tui_win_info** %6, align 8
  %8 = load i32, i32* @SRC_WIN, align 4
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %74, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MAX_MAJOR_WINDOWS, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %77

13:                                               ; preds = %9
  %14 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %14, i64 %16
  %18 = load %struct.tui_win_info*, %struct.tui_win_info** %17, align 8
  %19 = icmp ne %struct.tui_win_info* %18, null
  br i1 %19, label %20, label %73

20:                                               ; preds = %13
  %21 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %21, i64 %23
  %25 = load %struct.tui_win_info*, %struct.tui_win_info** %24, align 8
  %26 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %20
  %31 = load %struct.tui_win_info*, %struct.tui_win_info** %6, align 8
  %32 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %32, i64 %34
  %36 = load %struct.tui_win_info*, %struct.tui_win_info** %35, align 8
  %37 = icmp eq %struct.tui_win_info* %31, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %30
  %39 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %39, i64 %41
  %43 = load %struct.tui_win_info*, %struct.tui_win_info** %42, align 8
  %44 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %43, i32 0, i32 0
  %45 = call i32 @tui_win_name(%struct.TYPE_2__* %44)
  %46 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %46, i64 %48
  %50 = load %struct.tui_win_info*, %struct.tui_win_info** %49, align 8
  %51 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @printf_filtered(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %53)
  br label %72

55:                                               ; preds = %30
  %56 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %56, i64 %58
  %60 = load %struct.tui_win_info*, %struct.tui_win_info** %59, align 8
  %61 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %60, i32 0, i32 0
  %62 = call i32 @tui_win_name(%struct.TYPE_2__* %61)
  %63 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %63, i64 %65
  %67 = load %struct.tui_win_info*, %struct.tui_win_info** %66, align 8
  %68 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @printf_filtered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %70)
  br label %72

72:                                               ; preds = %55, %38
  br label %73

73:                                               ; preds = %72, %20, %13
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %9

77:                                               ; preds = %9
  ret void
}

declare dso_local %struct.tui_win_info* @tui_win_with_focus(...) #1

declare dso_local i32 @printf_filtered(i8*, i32, i32) #1

declare dso_local i32 @tui_win_name(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
