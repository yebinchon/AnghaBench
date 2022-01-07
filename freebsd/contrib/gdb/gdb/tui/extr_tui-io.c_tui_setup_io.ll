; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-io.c_tui_setup_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-io.c_tui_setup_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rl_redisplay_function = common dso_local global i32 0, align 4
@tui_old_rl_redisplay_function = common dso_local global i32 0, align 4
@rl_deprep_term_function = common dso_local global i32 0, align 4
@tui_old_rl_deprep_terminal = common dso_local global i32 0, align 4
@rl_prep_term_function = common dso_local global i32 0, align 4
@tui_old_rl_prep_terminal = common dso_local global i32 0, align 4
@rl_getc_function = common dso_local global i32 0, align 4
@tui_old_rl_getc_function = common dso_local global i32 0, align 4
@rl_outstream = common dso_local global i32 0, align 4
@tui_old_rl_outstream = common dso_local global i32 0, align 4
@readline_echoing_p = external dso_local global i32, align 4
@tui_old_readline_echoing_p = common dso_local global i32 0, align 4
@tui_redisplay_readline = common dso_local global i32 0, align 4
@tui_deprep_terminal = common dso_local global i32 0, align 4
@tui_prep_terminal = common dso_local global i32 0, align 4
@tui_getc = common dso_local global i32 0, align 4
@tui_rl_outstream = common dso_local global i32 0, align 4
@rl_prompt = common dso_local global i64 0, align 8
@tui_rl_display_match_list = common dso_local global i64 0, align 8
@rl_completion_display_matches_hook = common dso_local global i64 0, align 8
@rl_already_prompted = common dso_local global i64 0, align 8
@gdb_stdout = common dso_local global i32 0, align 4
@tui_old_stdout = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@tui_old_stderr = common dso_local global i32 0, align 4
@uiout = common dso_local global i32 0, align 4
@tui_old_uiout = common dso_local global i32 0, align 4
@tui_stdout = common dso_local global i32 0, align 4
@tui_stderr = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@gdb_stdtarg = common dso_local global i32 0, align 4
@tui_out = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_setup_io(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = load i32, i32* @rl_redisplay_function, align 4
  store i32 %6, i32* @tui_old_rl_redisplay_function, align 4
  %7 = load i32, i32* @rl_deprep_term_function, align 4
  store i32 %7, i32* @tui_old_rl_deprep_terminal, align 4
  %8 = load i32, i32* @rl_prep_term_function, align 4
  store i32 %8, i32* @tui_old_rl_prep_terminal, align 4
  %9 = load i32, i32* @rl_getc_function, align 4
  store i32 %9, i32* @tui_old_rl_getc_function, align 4
  %10 = load i32, i32* @rl_outstream, align 4
  store i32 %10, i32* @tui_old_rl_outstream, align 4
  %11 = load i32, i32* @readline_echoing_p, align 4
  store i32 %11, i32* @tui_old_readline_echoing_p, align 4
  %12 = load i32, i32* @tui_redisplay_readline, align 4
  store i32 %12, i32* @rl_redisplay_function, align 4
  %13 = load i32, i32* @tui_deprep_terminal, align 4
  store i32 %13, i32* @rl_deprep_term_function, align 4
  %14 = load i32, i32* @tui_prep_terminal, align 4
  store i32 %14, i32* @rl_prep_term_function, align 4
  %15 = load i32, i32* @tui_getc, align 4
  store i32 %15, i32* @rl_getc_function, align 4
  store i32 0, i32* @readline_echoing_p, align 4
  %16 = load i32, i32* @tui_rl_outstream, align 4
  store i32 %16, i32* @rl_outstream, align 4
  store i64 0, i64* @rl_prompt, align 8
  %17 = load i64, i64* @tui_rl_display_match_list, align 8
  store i64 %17, i64* @rl_completion_display_matches_hook, align 8
  store i64 0, i64* @rl_already_prompted, align 8
  %18 = load i32, i32* @gdb_stdout, align 4
  store i32 %18, i32* @tui_old_stdout, align 4
  %19 = load i32, i32* @gdb_stderr, align 4
  store i32 %19, i32* @tui_old_stderr, align 4
  %20 = load i32, i32* @uiout, align 4
  store i32 %20, i32* @tui_old_uiout, align 4
  %21 = load i32, i32* @tui_stdout, align 4
  store i32 %21, i32* @gdb_stdout, align 4
  %22 = load i32, i32* @tui_stderr, align 4
  store i32 %22, i32* @gdb_stderr, align 4
  %23 = load i32, i32* @gdb_stdout, align 4
  store i32 %23, i32* @gdb_stdlog, align 4
  %24 = load i32, i32* @gdb_stderr, align 4
  store i32 %24, i32* @gdb_stdtarg, align 4
  %25 = load i32, i32* @tui_out, align 4
  store i32 %25, i32* @uiout, align 4
  %26 = call i32 (...) @savetty()
  br label %40

27:                                               ; preds = %1
  %28 = load i32, i32* @tui_old_stdout, align 4
  store i32 %28, i32* @gdb_stdout, align 4
  %29 = load i32, i32* @tui_old_stderr, align 4
  store i32 %29, i32* @gdb_stderr, align 4
  %30 = load i32, i32* @gdb_stdout, align 4
  store i32 %30, i32* @gdb_stdlog, align 4
  %31 = load i32, i32* @gdb_stderr, align 4
  store i32 %31, i32* @gdb_stdtarg, align 4
  %32 = load i32, i32* @tui_old_uiout, align 4
  store i32 %32, i32* @uiout, align 4
  %33 = load i32, i32* @tui_old_rl_redisplay_function, align 4
  store i32 %33, i32* @rl_redisplay_function, align 4
  %34 = load i32, i32* @tui_old_rl_deprep_terminal, align 4
  store i32 %34, i32* @rl_deprep_term_function, align 4
  %35 = load i32, i32* @tui_old_rl_prep_terminal, align 4
  store i32 %35, i32* @rl_prep_term_function, align 4
  %36 = load i32, i32* @tui_old_rl_getc_function, align 4
  store i32 %36, i32* @rl_getc_function, align 4
  %37 = load i32, i32* @tui_old_rl_outstream, align 4
  store i32 %37, i32* @rl_outstream, align 4
  store i64 0, i64* @rl_completion_display_matches_hook, align 8
  %38 = load i32, i32* @tui_old_readline_echoing_p, align 4
  store i32 %38, i32* @readline_echoing_p, align 4
  store i64 0, i64* @rl_already_prompted, align 8
  %39 = call i32 (...) @savetty()
  br label %40

40:                                               ; preds = %27, %5
  ret void
}

declare dso_local i32 @savetty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
