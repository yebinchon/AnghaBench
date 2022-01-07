; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-wingeneral.c_tui_unhighlight_win.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-wingeneral.c_tui_unhighlight_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.tui_gen_win_info = type { i32 }

@NO_HILITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_unhighlight_win(%struct.tui_win_info* %0) #0 {
  %2 = alloca %struct.tui_win_info*, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %2, align 8
  %3 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %4 = icmp ne %struct.tui_win_info* %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %7 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %5
  %12 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %13 = bitcast %struct.tui_win_info* %12 to %struct.tui_gen_win_info*
  %14 = load i32, i32* @NO_HILITE, align 4
  %15 = call i32 @box_win(%struct.tui_gen_win_info* %13, i32 %14)
  %16 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %17 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @wrefresh(i32* %19)
  %21 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %22 = call i32 @tui_set_win_highlight(%struct.tui_win_info* %21, i32 0)
  br label %23

23:                                               ; preds = %11, %5, %1
  ret void
}

declare dso_local i32 @box_win(%struct.tui_gen_win_info*, i32) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @tui_set_win_highlight(%struct.tui_win_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
