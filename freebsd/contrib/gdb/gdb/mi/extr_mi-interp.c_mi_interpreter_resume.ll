; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-interp.c_mi_interpreter_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-interp.c_mi_interpreter_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mi_interp = type { i32, i32, i32, i32 }

@event_loop_p = common dso_local global i64 0, align 8
@gdb_readline2 = common dso_local global i32 0, align 4
@call_readline = common dso_local global i32 0, align 4
@mi_execute_command_wrapper = common dso_local global i32 0, align 4
@input_handler = common dso_local global i32 0, align 4
@input_fd = common dso_local global i32 0, align 4
@stdin_event_handler = common dso_local global i32 0, align 4
@async_command_editing_p = common dso_local global i64 0, align 8
@sync_execution = common dso_local global i64 0, align 8
@gdb_stdout = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@gdb_stdtarg = common dso_local global i32 0, align 4
@mi_load_progress = common dso_local global i32 0, align 4
@show_load_progress = common dso_local global i32 0, align 4
@INTERP_MI1 = common dso_local global i32 0, align 4
@mi1_command_loop = common dso_local global i32 0, align 4
@command_loop_hook = common dso_local global i32 0, align 4
@INTERP_MI2 = common dso_local global i32 0, align 4
@mi2_command_loop = common dso_local global i32 0, align 4
@INTERP_MI3 = common dso_local global i32 0, align 4
@mi3_command_loop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mi_interpreter_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi_interpreter_resume(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mi_interp*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mi_interp*
  store %struct.mi_interp* %5, %struct.mi_interp** %3, align 8
  %6 = call i32 (...) @gdb_setup_readline()
  %7 = load i64, i64* @event_loop_p, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @gdb_readline2, align 4
  store i32 %10, i32* @call_readline, align 4
  %11 = load i32, i32* @mi_execute_command_wrapper, align 4
  store i32 %11, i32* @input_handler, align 4
  %12 = load i32, i32* @input_fd, align 4
  %13 = load i32, i32* @stdin_event_handler, align 4
  %14 = call i32 @add_file_handler(i32 %12, i32 %13, i32 0)
  store i64 0, i64* @async_command_editing_p, align 8
  store i64 0, i64* @sync_execution, align 8
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.mi_interp*, %struct.mi_interp** %3, align 8
  %17 = getelementptr inbounds %struct.mi_interp, %struct.mi_interp* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* @gdb_stdout, align 4
  %19 = load %struct.mi_interp*, %struct.mi_interp** %3, align 8
  %20 = getelementptr inbounds %struct.mi_interp, %struct.mi_interp* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @gdb_stderr, align 4
  %22 = load %struct.mi_interp*, %struct.mi_interp** %3, align 8
  %23 = getelementptr inbounds %struct.mi_interp, %struct.mi_interp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* @gdb_stdlog, align 4
  %25 = load %struct.mi_interp*, %struct.mi_interp** %3, align 8
  %26 = getelementptr inbounds %struct.mi_interp, %struct.mi_interp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @gdb_stdtarg, align 4
  %28 = call i32 (...) @clear_interpreter_hooks()
  %29 = load i32, i32* @mi_load_progress, align 4
  store i32 %29, i32* @show_load_progress, align 4
  %30 = load i32, i32* @INTERP_MI1, align 4
  %31 = call i64 @current_interp_named_p(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %15
  %34 = load i32, i32* @mi1_command_loop, align 4
  store i32 %34, i32* @command_loop_hook, align 4
  br label %51

35:                                               ; preds = %15
  %36 = load i32, i32* @INTERP_MI2, align 4
  %37 = call i64 @current_interp_named_p(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @mi2_command_loop, align 4
  store i32 %40, i32* @command_loop_hook, align 4
  br label %50

41:                                               ; preds = %35
  %42 = load i32, i32* @INTERP_MI3, align 4
  %43 = call i64 @current_interp_named_p(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @mi3_command_loop, align 4
  store i32 %46, i32* @command_loop_hook, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @mi2_command_loop, align 4
  store i32 %48, i32* @command_loop_hook, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %39
  br label %51

51:                                               ; preds = %50, %33
  ret i32 1
}

declare dso_local i32 @gdb_setup_readline(...) #1

declare dso_local i32 @add_file_handler(i32, i32, i32) #1

declare dso_local i32 @clear_interpreter_hooks(...) #1

declare dso_local i64 @current_interp_named_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
