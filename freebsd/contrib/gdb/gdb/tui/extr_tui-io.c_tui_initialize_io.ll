; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-io.c_tui_initialize_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-io.c_tui_initialize_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i64 0, align 8
@tui_stdout = common dso_local global i8* null, align 8
@stderr = common dso_local global i64 0, align 8
@tui_stderr = common dso_local global i8* null, align 8
@tui_out = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i32 0, align 4
@uiout = common dso_local global i32 0, align 4
@tui_old_uiout = common dso_local global i32 0, align 4
@tui_rl_outstream = common dso_local global i64 0, align 8
@F_SETFL = common dso_local global i32 0, align 4
@O_NDELAY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@tui_cont_sig = common dso_local global i32 0, align 4
@tui_readline_output = common dso_local global i32 0, align 4
@tui_readline_pipe = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_initialize_io() #0 {
  %1 = load i64, i64* @stdout, align 8
  %2 = call i8* @tui_fileopen(i64 %1)
  store i8* %2, i8** @tui_stdout, align 8
  %3 = load i64, i64* @stderr, align 8
  %4 = call i8* @tui_fileopen(i64 %3)
  store i8* %4, i8** @tui_stderr, align 8
  %5 = load i8*, i8** @tui_stdout, align 8
  %6 = call i32 @tui_out_new(i8* %5)
  store i32 %6, i32* @tui_out, align 4
  %7 = load i32, i32* @gdb_stdout, align 4
  %8 = call i32 @cli_out_new(i32 %7)
  store i32 %8, i32* @uiout, align 4
  store i32 %8, i32* @tui_old_uiout, align 4
  %9 = load i64, i64* @stdout, align 8
  store i64 %9, i64* @tui_rl_outstream, align 8
  ret void
}

declare dso_local i8* @tui_fileopen(i64) #1

declare dso_local i32 @tui_out_new(i8*) #1

declare dso_local i32 @cli_out_new(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
