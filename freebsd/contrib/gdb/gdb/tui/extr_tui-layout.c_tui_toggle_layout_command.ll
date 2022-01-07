; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_tui_toggle_layout_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_tui_toggle_layout_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_layout_def = type { i64, i32 }

@SRC_WIN = common dso_local global i64 0, align 8
@DISASSEM_WIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @tui_toggle_layout_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_toggle_layout_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tui_layout_def*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.tui_layout_def* (...) @tui_layout_def()
  store %struct.tui_layout_def* %6, %struct.tui_layout_def** %5, align 8
  %7 = call i32 (...) @tui_enable()
  %8 = load %struct.tui_layout_def*, %struct.tui_layout_def** %5, align 8
  %9 = getelementptr inbounds %struct.tui_layout_def, %struct.tui_layout_def* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SRC_WIN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i64, i64* @DISASSEM_WIN, align 8
  %15 = load %struct.tui_layout_def*, %struct.tui_layout_def** %5, align 8
  %16 = getelementptr inbounds %struct.tui_layout_def, %struct.tui_layout_def* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %21

17:                                               ; preds = %2
  %18 = load i64, i64* @SRC_WIN, align 8
  %19 = load %struct.tui_layout_def*, %struct.tui_layout_def** %5, align 8
  %20 = getelementptr inbounds %struct.tui_layout_def, %struct.tui_layout_def* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.tui_layout_def*, %struct.tui_layout_def** %5, align 8
  %23 = getelementptr inbounds %struct.tui_layout_def, %struct.tui_layout_def* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load %struct.tui_layout_def*, %struct.tui_layout_def** %5, align 8
  %28 = call i32 @tui_handle_xdb_layout(%struct.tui_layout_def* %27)
  br label %29

29:                                               ; preds = %26, %21
  ret void
}

declare dso_local %struct.tui_layout_def* @tui_layout_def(...) #1

declare dso_local i32 @tui_enable(...) #1

declare dso_local i32 @tui_handle_xdb_layout(%struct.tui_layout_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
