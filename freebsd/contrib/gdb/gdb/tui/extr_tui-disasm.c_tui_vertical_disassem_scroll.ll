; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-disasm.c_tui_vertical_disassem_scroll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-disasm.c_tui_vertical_disassem_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.symtab = type { i32 }
%union.tui_line_or_address = type { i32 }
%struct.symtab_and_line = type { %struct.symtab* }

@TUI_DISASM_WIN = common dso_local global %struct.TYPE_13__* null, align 8
@deprecated_selected_frame = common dso_local global i32 0, align 4
@FORWARD_SCROLL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_vertical_disassem_scroll(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__**, align 8
  %7 = alloca %struct.symtab*, align 8
  %8 = alloca %union.tui_line_or_address, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.symtab_and_line, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TUI_DISASM_WIN, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %69

17:                                               ; preds = %2
  %18 = call %struct.symtab* (...) @get_current_source_symtab_and_line()
  %19 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %11, i32 0, i32 0
  store %struct.symtab* %18, %struct.symtab** %19, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TUI_DISASM_WIN, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_12__**
  store %struct.TYPE_12__** %24, %struct.TYPE_12__*** %6, align 8
  %25 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %11, i32 0, i32 0
  %26 = load %struct.symtab*, %struct.symtab** %25, align 8
  %27 = icmp eq %struct.symtab* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load i32, i32* @deprecated_selected_frame, align 4
  %30 = call i32 @get_frame_pc(i32 %29)
  %31 = call %struct.symtab* @find_pc_symtab(i32 %30)
  store %struct.symtab* %31, %struct.symtab** %7, align 8
  br label %35

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %11, i32 0, i32 0
  %34 = load %struct.symtab*, %struct.symtab** %33, align 8
  store %struct.symtab* %34, %struct.symtab** %7, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TUI_DISASM_WIN, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 2
  store i32 %40, i32* %9, align 4
  %41 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %41, i64 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @FORWARD_SCROLL, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i32, i32* %9, align 4
  br label %57

54:                                               ; preds = %35
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i32 [ %53, %52 ], [ %56, %54 ]
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @tui_find_disassembly_address(i32 %59, i32 %60)
  %62 = bitcast %union.tui_line_or_address* %8 to i32*
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TUI_DISASM_WIN, align 8
  %64 = load %struct.symtab*, %struct.symtab** %7, align 8
  %65 = load i32, i32* @FALSE, align 4
  %66 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @tui_update_source_window_as_is(%struct.TYPE_13__* %63, %struct.symtab* %64, i32 %67, i32 %65)
  br label %69

69:                                               ; preds = %57, %2
  ret void
}

declare dso_local %struct.symtab* @get_current_source_symtab_and_line(...) #1

declare dso_local %struct.symtab* @find_pc_symtab(i32) #1

declare dso_local i32 @get_frame_pc(i32) #1

declare dso_local i32 @tui_find_disassembly_address(i32, i32) #1

declare dso_local i32 @tui_update_source_window_as_is(%struct.TYPE_13__*, %struct.symtab*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
