; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_update_source_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_update_source_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.symtab = type { i32 }
%union.tui_line_or_address = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_update_source_window(%struct.tui_win_info* %0, %struct.symtab* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.tui_line_or_address, align 4
  %6 = alloca %struct.tui_win_info*, align 8
  %7 = alloca %struct.symtab*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %5, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store %struct.tui_win_info* %0, %struct.tui_win_info** %6, align 8
  store %struct.symtab* %1, %struct.symtab** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tui_win_info*, %struct.tui_win_info** %6, align 8
  %11 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.tui_win_info*, %struct.tui_win_info** %6, align 8
  %15 = load %struct.symtab*, %struct.symtab** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @tui_update_source_window_as_is(%struct.tui_win_info* %14, %struct.symtab* %15, i32 %18, i32 %16)
  ret void
}

declare dso_local i32 @tui_update_source_window_as_is(%struct.tui_win_info*, %struct.symtab*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
