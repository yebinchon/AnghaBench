; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_set_is_exec_point_at.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_set_is_exec_point_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%union.tui_line_or_address = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_set_is_exec_point_at(i64 %0, %struct.tui_win_info* %1) #0 {
  %3 = alloca %union.tui_line_or_address, align 8
  %4 = alloca %struct.tui_win_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %3, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  store %struct.tui_win_info* %1, %struct.tui_win_info** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %11 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_9__**
  store %struct.TYPE_9__** %15, %struct.TYPE_9__*** %7, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %69, %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %19 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %16
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %24, i64 %26
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = bitcast %union.tui_line_or_address* %3 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %8, align 4
  br label %41

39:                                               ; preds = %23
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %43, i64 %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %42, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %41
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %57, i64 %59
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 %56, i32* %64, align 8
  %65 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @tui_show_source_line(%struct.tui_win_info* %65, i32 %67)
  br label %69

69:                                               ; preds = %53, %41
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %16

72:                                               ; preds = %16
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %77 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %76, i32 0, i32 0
  %78 = call i32 @tui_refresh_win(%struct.TYPE_10__* %77)
  br label %79

79:                                               ; preds = %75, %72
  ret void
}

declare dso_local i32 @tui_show_source_line(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_refresh_win(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
