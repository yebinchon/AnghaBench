; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-interp.c_mi_command_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-interp.c_mi_command_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sevenbit_strings = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"(gdb) \0A\00", align 1
@raw_stdout = common dso_local global i32 0, align 4
@event_loop_p = common dso_local global i32 0, align 4
@mi_input = common dso_local global i32 0, align 4
@mi_execute_command = common dso_local global i32 0, align 4
@call_command_hook = common dso_local global i64 0, align 8
@context_hook = common dso_local global i64 0, align 8
@create_breakpoint_hook = common dso_local global i64 0, align 8
@delete_breakpoint_hook = common dso_local global i64 0, align 8
@error_begin_hook = common dso_local global i64 0, align 8
@error_hook = common dso_local global i64 0, align 8
@gdb_stderr = common dso_local global i8* null, align 8
@gdb_stdlog = common dso_local global i8* null, align 8
@gdb_stdout = common dso_local global i8* null, align 8
@gdb_stdtarg = common dso_local global i8* null, align 8
@init_ui_hook = common dso_local global i64 0, align 8
@interactive_hook = common dso_local global i64 0, align 8
@memory_changed_hook = common dso_local global i64 0, align 8
@mi_load_progress = common dso_local global i32 0, align 4
@modify_breakpoint_hook = common dso_local global i64 0, align 8
@print_frame_info_listing_hook = common dso_local global i64 0, align 8
@query_hook = common dso_local global i64 0, align 8
@readline_begin_hook = common dso_local global i64 0, align 8
@readline_end_hook = common dso_local global i64 0, align 8
@readline_hook = common dso_local global i64 0, align 8
@register_changed_hook = common dso_local global i64 0, align 8
@registers_changed_hook = common dso_local global i64 0, align 8
@show_load_progress = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@target_wait_hook = common dso_local global i64 0, align 8
@uiout = common dso_local global i32 0, align 4
@warning_hook = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mi_command_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mi_command_loop(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @sevenbit_strings, align 4
  %3 = load i32, i32* @raw_stdout, align 4
  %4 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @raw_stdout, align 4
  %6 = call i32 @gdb_flush(i32 %5)
  %7 = load i32, i32* @event_loop_p, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @mi_input, align 4
  %11 = load i32, i32* @mi_execute_command, align 4
  %12 = call i32 @simplified_command_loop(i32 %10, i32 %11)
  br label %15

13:                                               ; preds = %1
  %14 = call i32 (...) @start_event_loop()
  br label %15

15:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @simplified_command_loop(i32, i32) #1

declare dso_local i32 @start_event_loop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
