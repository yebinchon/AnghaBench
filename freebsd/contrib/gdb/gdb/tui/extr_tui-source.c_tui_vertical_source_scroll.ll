; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-source.c_tui_vertical_source_scroll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-source.c_tui_vertical_source_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%union.tui_line_or_address = type { i32 }
%struct.symtab = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.symtab_and_line = type { %struct.symtab* }

@TUI_SRC_WIN = common dso_local global %struct.TYPE_12__* null, align 8
@deprecated_selected_frame = common dso_local global i32 0, align 4
@FORWARD_SCROLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_vertical_source_scroll(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.tui_line_or_address, align 4
  %6 = alloca %struct.symtab*, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca %struct.symtab_and_line, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @TUI_SRC_WIN, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %91

14:                                               ; preds = %2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @TUI_SRC_WIN, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_11__**
  store %struct.TYPE_11__** %19, %struct.TYPE_11__*** %7, align 8
  %20 = call %struct.symtab* (...) @get_current_source_symtab_and_line()
  %21 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 0
  store %struct.symtab* %20, %struct.symtab** %21, align 8
  %22 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 0
  %23 = load %struct.symtab*, %struct.symtab** %22, align 8
  %24 = icmp eq %struct.symtab* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load i32, i32* @deprecated_selected_frame, align 4
  %27 = call i32 @get_frame_pc(i32 %26)
  %28 = call %struct.symtab* @find_pc_symtab(i32 %27)
  store %struct.symtab* %28, %struct.symtab** %6, align 8
  br label %32

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 0
  %31 = load %struct.symtab*, %struct.symtab** %30, align 8
  store %struct.symtab* %31, %struct.symtab** %6, align 8
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @FORWARD_SCROLL, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %37, i64 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %44, %45
  %47 = bitcast %union.tui_line_or_address* %5 to i32*
  store i32 %46, i32* %47, align 4
  %48 = bitcast %union.tui_line_or_address* %5 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.symtab*, %struct.symtab** %6, align 8
  %51 = getelementptr inbounds %struct.symtab, %struct.symtab* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %36
  %55 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %55, i64 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = bitcast %union.tui_line_or_address* %5 to i32*
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %54, %36
  br label %83

65:                                               ; preds = %32
  %66 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %66, i64 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = sub nsw i32 %73, %74
  %76 = bitcast %union.tui_line_or_address* %5 to i32*
  store i32 %75, i32* %76, align 4
  %77 = bitcast %union.tui_line_or_address* %5 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %65
  %81 = bitcast %union.tui_line_or_address* %5 to i32*
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %80, %65
  br label %83

83:                                               ; preds = %82, %64
  %84 = load %struct.symtab*, %struct.symtab** %6, align 8
  %85 = bitcast %union.tui_line_or_address* %5 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = bitcast %union.tui_line_or_address* %5 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @print_source_lines(%struct.symtab* %84, i32 %86, i32 %89, i32 0)
  br label %91

91:                                               ; preds = %83, %2
  ret void
}

declare dso_local %struct.symtab* @get_current_source_symtab_and_line(...) #1

declare dso_local %struct.symtab* @find_pc_symtab(i32) #1

declare dso_local i32 @get_frame_pc(i32) #1

declare dso_local i32 @print_source_lines(%struct.symtab*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
