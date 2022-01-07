; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_horizontal_source_scroll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_horizontal_source_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.symtab = type { i32 }
%struct.symtab_and_line = type { %struct.symtab* }
%struct.tui_win_element = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@deprecated_selected_frame = common dso_local global i32 0, align 4
@LEFT_SCROLL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_horizontal_source_scroll(%struct.tui_win_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tui_win_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.symtab*, align 8
  %9 = alloca %struct.symtab_and_line, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %11 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %72

15:                                               ; preds = %3
  %16 = call %struct.symtab* (...) @get_current_source_symtab_and_line()
  %17 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 0
  store %struct.symtab* %16, %struct.symtab** %17, align 8
  %18 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 0
  %19 = load %struct.symtab*, %struct.symtab** %18, align 8
  %20 = icmp eq %struct.symtab* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @deprecated_selected_frame, align 4
  %23 = call i32 @get_frame_pc(i32 %22)
  %24 = call %struct.symtab* @find_pc_symtab(i32 %23)
  store %struct.symtab* %24, %struct.symtab** %8, align 8
  br label %28

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 0
  %27 = load %struct.symtab*, %struct.symtab** %26, align 8
  store %struct.symtab* %27, %struct.symtab** %8, align 8
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @LEFT_SCROLL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %34 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %7, align 4
  br label %51

40:                                               ; preds = %28
  %41 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %42 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %54 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 8
  %57 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %58 = load %struct.symtab*, %struct.symtab** %8, align 8
  %59 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %60 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.tui_win_element*
  %66 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FALSE, align 4
  %71 = call i32 @tui_update_source_window_as_is(%struct.tui_win_info* %57, %struct.symtab* %58, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %51, %3
  ret void
}

declare dso_local %struct.symtab* @get_current_source_symtab_and_line(...) #1

declare dso_local %struct.symtab* @find_pc_symtab(i32) #1

declare dso_local i32 @get_frame_pc(i32) #1

declare dso_local i32 @tui_update_source_window_as_is(%struct.tui_win_info*, %struct.symtab*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
