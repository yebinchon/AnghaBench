; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_setup_target_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_setup_target_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@debug_target = common dso_local global i32 0, align 4
@current_target = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@debug_to_open = common dso_local global i32 0, align 4
@debug_to_close = common dso_local global i32 0, align 4
@debug_to_attach = common dso_local global i32 0, align 4
@debug_to_post_attach = common dso_local global i32 0, align 4
@debug_to_detach = common dso_local global i32 0, align 4
@debug_to_disconnect = common dso_local global i32 0, align 4
@debug_to_resume = common dso_local global i32 0, align 4
@debug_to_wait = common dso_local global i32 0, align 4
@debug_to_post_wait = common dso_local global i32 0, align 4
@debug_to_fetch_registers = common dso_local global i32 0, align 4
@debug_to_store_registers = common dso_local global i32 0, align 4
@debug_to_prepare_to_store = common dso_local global i32 0, align 4
@debug_to_xfer_memory = common dso_local global i32 0, align 4
@debug_to_files_info = common dso_local global i32 0, align 4
@debug_to_insert_breakpoint = common dso_local global i32 0, align 4
@debug_to_remove_breakpoint = common dso_local global i32 0, align 4
@debug_to_can_use_hw_breakpoint = common dso_local global i32 0, align 4
@debug_to_insert_hw_breakpoint = common dso_local global i32 0, align 4
@debug_to_remove_hw_breakpoint = common dso_local global i32 0, align 4
@debug_to_insert_watchpoint = common dso_local global i32 0, align 4
@debug_to_remove_watchpoint = common dso_local global i32 0, align 4
@debug_to_stopped_by_watchpoint = common dso_local global i32 0, align 4
@debug_to_stopped_data_address = common dso_local global i32 0, align 4
@debug_to_region_size_ok_for_hw_watchpoint = common dso_local global i32 0, align 4
@debug_to_terminal_init = common dso_local global i32 0, align 4
@debug_to_terminal_inferior = common dso_local global i32 0, align 4
@debug_to_terminal_ours_for_output = common dso_local global i32 0, align 4
@debug_to_terminal_ours = common dso_local global i32 0, align 4
@debug_to_terminal_save_ours = common dso_local global i32 0, align 4
@debug_to_terminal_info = common dso_local global i32 0, align 4
@debug_to_kill = common dso_local global i32 0, align 4
@debug_to_load = common dso_local global i32 0, align 4
@debug_to_lookup_symbol = common dso_local global i32 0, align 4
@debug_to_create_inferior = common dso_local global i32 0, align 4
@debug_to_post_startup_inferior = common dso_local global i32 0, align 4
@debug_to_acknowledge_created_inferior = common dso_local global i32 0, align 4
@debug_to_insert_fork_catchpoint = common dso_local global i32 0, align 4
@debug_to_remove_fork_catchpoint = common dso_local global i32 0, align 4
@debug_to_insert_vfork_catchpoint = common dso_local global i32 0, align 4
@debug_to_remove_vfork_catchpoint = common dso_local global i32 0, align 4
@debug_to_follow_fork = common dso_local global i32 0, align 4
@debug_to_insert_exec_catchpoint = common dso_local global i32 0, align 4
@debug_to_remove_exec_catchpoint = common dso_local global i32 0, align 4
@debug_to_reported_exec_events_per_exec_call = common dso_local global i32 0, align 4
@debug_to_has_exited = common dso_local global i32 0, align 4
@debug_to_mourn_inferior = common dso_local global i32 0, align 4
@debug_to_can_run = common dso_local global i32 0, align 4
@debug_to_notice_signals = common dso_local global i32 0, align 4
@debug_to_thread_alive = common dso_local global i32 0, align 4
@debug_to_find_new_threads = common dso_local global i32 0, align 4
@debug_to_stop = common dso_local global i32 0, align 4
@debug_to_xfer_partial = common dso_local global i32 0, align 4
@debug_to_rcmd = common dso_local global i32 0, align 4
@debug_to_enable_exception_callback = common dso_local global i32 0, align 4
@debug_to_get_current_exception_event = common dso_local global i32 0, align 4
@debug_to_pid_to_exec_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_target_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_target_debug() #0 {
  %1 = call i32 @memcpy(i32* @debug_target, %struct.TYPE_3__* @current_target, i32 4)
  %2 = load i32, i32* @debug_to_open, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 55), align 4
  %3 = load i32, i32* @debug_to_close, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 54), align 4
  %4 = load i32, i32* @debug_to_attach, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 53), align 4
  %5 = load i32, i32* @debug_to_post_attach, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 52), align 4
  %6 = load i32, i32* @debug_to_detach, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 51), align 4
  %7 = load i32, i32* @debug_to_disconnect, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 50), align 4
  %8 = load i32, i32* @debug_to_resume, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 49), align 4
  %9 = load i32, i32* @debug_to_wait, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 48), align 4
  %10 = load i32, i32* @debug_to_post_wait, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 47), align 4
  %11 = load i32, i32* @debug_to_fetch_registers, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 46), align 4
  %12 = load i32, i32* @debug_to_store_registers, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 45), align 4
  %13 = load i32, i32* @debug_to_prepare_to_store, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 44), align 4
  %14 = load i32, i32* @debug_to_xfer_memory, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 43), align 4
  %15 = load i32, i32* @debug_to_files_info, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 42), align 4
  %16 = load i32, i32* @debug_to_insert_breakpoint, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 41), align 4
  %17 = load i32, i32* @debug_to_remove_breakpoint, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 40), align 4
  %18 = load i32, i32* @debug_to_can_use_hw_breakpoint, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 39), align 4
  %19 = load i32, i32* @debug_to_insert_hw_breakpoint, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 38), align 4
  %20 = load i32, i32* @debug_to_remove_hw_breakpoint, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 37), align 4
  %21 = load i32, i32* @debug_to_insert_watchpoint, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 36), align 4
  %22 = load i32, i32* @debug_to_remove_watchpoint, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 35), align 4
  %23 = load i32, i32* @debug_to_stopped_by_watchpoint, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 34), align 4
  %24 = load i32, i32* @debug_to_stopped_data_address, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 33), align 4
  %25 = load i32, i32* @debug_to_region_size_ok_for_hw_watchpoint, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 32), align 4
  %26 = load i32, i32* @debug_to_terminal_init, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 31), align 4
  %27 = load i32, i32* @debug_to_terminal_inferior, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 30), align 4
  %28 = load i32, i32* @debug_to_terminal_ours_for_output, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 29), align 4
  %29 = load i32, i32* @debug_to_terminal_ours, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 28), align 4
  %30 = load i32, i32* @debug_to_terminal_save_ours, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 27), align 4
  %31 = load i32, i32* @debug_to_terminal_info, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 26), align 4
  %32 = load i32, i32* @debug_to_kill, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 25), align 4
  %33 = load i32, i32* @debug_to_load, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 24), align 4
  %34 = load i32, i32* @debug_to_lookup_symbol, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 23), align 4
  %35 = load i32, i32* @debug_to_create_inferior, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 22), align 4
  %36 = load i32, i32* @debug_to_post_startup_inferior, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 21), align 4
  %37 = load i32, i32* @debug_to_acknowledge_created_inferior, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 20), align 4
  %38 = load i32, i32* @debug_to_insert_fork_catchpoint, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 19), align 4
  %39 = load i32, i32* @debug_to_remove_fork_catchpoint, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 18), align 4
  %40 = load i32, i32* @debug_to_insert_vfork_catchpoint, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 17), align 4
  %41 = load i32, i32* @debug_to_remove_vfork_catchpoint, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 16), align 4
  %42 = load i32, i32* @debug_to_follow_fork, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 15), align 4
  %43 = load i32, i32* @debug_to_insert_exec_catchpoint, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 14), align 4
  %44 = load i32, i32* @debug_to_remove_exec_catchpoint, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 13), align 4
  %45 = load i32, i32* @debug_to_reported_exec_events_per_exec_call, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 12), align 4
  %46 = load i32, i32* @debug_to_has_exited, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 11), align 4
  %47 = load i32, i32* @debug_to_mourn_inferior, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 10), align 4
  %48 = load i32, i32* @debug_to_can_run, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 9), align 4
  %49 = load i32, i32* @debug_to_notice_signals, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 8), align 4
  %50 = load i32, i32* @debug_to_thread_alive, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 7), align 4
  %51 = load i32, i32* @debug_to_find_new_threads, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 6), align 4
  %52 = load i32, i32* @debug_to_stop, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 5), align 4
  %53 = load i32, i32* @debug_to_xfer_partial, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 4), align 4
  %54 = load i32, i32* @debug_to_rcmd, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 3), align 4
  %55 = load i32, i32* @debug_to_enable_exception_callback, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 2), align 4
  %56 = load i32, i32* @debug_to_get_current_exception_event, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 1), align 4
  %57 = load i32, i32* @debug_to_pid_to_exec_file, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_target, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
