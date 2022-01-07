; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_init_generic_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_init_generic_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_gen_win_info = type { i64, i32, i32, i32*, i32*, i64, i64, i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_init_generic_part(%struct.tui_gen_win_info* %0) #0 {
  %2 = alloca %struct.tui_gen_win_info*, align 8
  store %struct.tui_gen_win_info* %0, %struct.tui_gen_win_info** %2, align 8
  %3 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %4 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %3, i32 0, i32 5
  store i64 0, i64* %4, align 8
  %5 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %6 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %5, i32 0, i32 6
  store i64 0, i64* %6, align 8
  %7 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %8 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %7, i32 0, i32 7
  store i64 0, i64* %8, align 8
  %9 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %10 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %9, i32 0, i32 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %13 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %12, i32 0, i32 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %16 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %15, i32 0, i32 9
  store i64 0, i64* %16, align 8
  %17 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %18 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %17, i32 0, i32 10
  store i64 0, i64* %18, align 8
  %19 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %20 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %19, i32 0, i32 4
  store i32* null, i32** %20, align 8
  %21 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %22 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %21, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* @FALSE, align 4
  %24 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %25 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %27 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 4
  %28 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %29 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
