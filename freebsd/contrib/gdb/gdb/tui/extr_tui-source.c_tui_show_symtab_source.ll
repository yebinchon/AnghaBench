; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-source.c_tui_show_symtab_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-source.c_tui_show_symtab_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.symtab = type { i32 }
%union.tui_line_or_address = type { i32 }

@TUI_SRC_WIN = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_show_symtab_source(%struct.symtab* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %union.tui_line_or_address, align 4
  %5 = alloca %struct.symtab*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %4, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.symtab* %0, %struct.symtab** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TUI_SRC_WIN, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TUI_SRC_WIN, align 8
  %13 = load %struct.symtab*, %struct.symtab** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @tui_update_source_window_as_is(%struct.TYPE_7__* %12, %struct.symtab* %13, i32 %16, i32 %14)
  ret void
}

declare dso_local i32 @tui_update_source_window_as_is(%struct.TYPE_7__*, %struct.symtab*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
