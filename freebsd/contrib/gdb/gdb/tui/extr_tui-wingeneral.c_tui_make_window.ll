; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-wingeneral.c_tui_make_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-wingeneral.c_tui_make_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_gen_win_info = type { i32, i32*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BOX_WINDOW = common dso_local global i32 0, align 4
@NO_HILITE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_make_window(%struct.tui_gen_win_info* %0, i32 %1) #0 {
  %3 = alloca %struct.tui_gen_win_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.tui_gen_win_info* %0, %struct.tui_gen_win_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %7 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %10 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %13 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %17 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @newwin(i32 %8, i32 %11, i32 %15, i32 %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %23 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @BOX_WINDOW, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %32 = load i32, i32* @NO_HILITE, align 4
  %33 = call i32 @box_win(%struct.tui_gen_win_info* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* @TRUE, align 4
  %36 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %37 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @scrollok(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %2
  ret void
}

declare dso_local i32* @newwin(i32, i32, i32, i32) #1

declare dso_local i32 @box_win(%struct.tui_gen_win_info*, i32) #1

declare dso_local i32 @scrollok(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
