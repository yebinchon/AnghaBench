; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_make_source_or_disasm_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_make_source_or_disasm_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tui_gen_win_info* }
%struct.tui_gen_win_info = type { i32 }

@SRC_WIN = common dso_local global i32 0, align 4
@EXEC_INFO_WIN = common dso_local global i32 0, align 4
@DONT_BOX_WINDOW = common dso_local global i32 0, align 4
@BOX_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tui_win_info**, i32, i32, i32)* @make_source_or_disasm_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_source_or_disasm_window(%struct.tui_win_info** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tui_win_info**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tui_gen_win_info*, align 8
  store %struct.tui_win_info** %0, %struct.tui_win_info*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.tui_gen_win_info* null, %struct.tui_gen_win_info** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @SRC_WIN, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = call %struct.tui_gen_win_info* (...) @tui_source_exec_info_win_ptr()
  store %struct.tui_gen_win_info* %14, %struct.tui_gen_win_info** %9, align 8
  br label %17

15:                                               ; preds = %4
  %16 = call %struct.tui_gen_win_info* (...) @tui_disassem_exec_info_win_ptr()
  store %struct.tui_gen_win_info* %16, %struct.tui_gen_win_info** %9, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = bitcast %struct.tui_gen_win_info** %9 to i8**
  %19 = load i32, i32* @EXEC_INFO_WIN, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @DONT_BOX_WINDOW, align 4
  %23 = call i32 @init_and_make_win(i8** %18, i32 %19, i32 %20, i32 3, i32 0, i32 %21, i32 %22)
  %24 = load %struct.tui_win_info**, %struct.tui_win_info*** %5, align 8
  %25 = bitcast %struct.tui_win_info** %24 to i8**
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (...) @tui_term_width()
  %29 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %9, align 8
  %30 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  %33 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %9, align 8
  %34 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @BOX_WINDOW, align 4
  %38 = call i32 @init_and_make_win(i8** %25, i32 %26, i32 %27, i32 %32, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %9, align 8
  %40 = load %struct.tui_win_info**, %struct.tui_win_info*** %5, align 8
  %41 = load %struct.tui_win_info*, %struct.tui_win_info** %40, align 8
  %42 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store %struct.tui_gen_win_info* %39, %struct.tui_gen_win_info** %44, align 8
  ret void
}

declare dso_local %struct.tui_gen_win_info* @tui_source_exec_info_win_ptr(...) #1

declare dso_local %struct.tui_gen_win_info* @tui_disassem_exec_info_win_ptr(...) #1

declare dso_local i32 @init_and_make_win(i8**, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tui_term_width(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
