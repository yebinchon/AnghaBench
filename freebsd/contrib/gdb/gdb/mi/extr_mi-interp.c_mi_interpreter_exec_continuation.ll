; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-interp.c_mi_interpreter_exec_continuation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-interp.c_mi_interpreter_exec_continuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.continuation_arg = type { i32 }

@stop_bpstat = common dso_local global i32 0, align 4
@target_executing = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"*stopped\00", align 1
@raw_stdout = common dso_local global i32 0, align 4
@uiout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"(gdb) \0A\00", align 1
@ALL_CLEANUPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.continuation_arg*)* @mi_interpreter_exec_continuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mi_interpreter_exec_continuation(%struct.continuation_arg* %0) #0 {
  %2 = alloca %struct.continuation_arg*, align 8
  store %struct.continuation_arg* %0, %struct.continuation_arg** %2, align 8
  %3 = call i32 @bpstat_do_actions(i32* @stop_bpstat)
  %4 = load i32, i32* @target_executing, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @raw_stdout, align 4
  %8 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @uiout, align 4
  %10 = load i32, i32* @raw_stdout, align 4
  %11 = call i32 @mi_out_put(i32 %9, i32 %10)
  %12 = load i32, i32* @raw_stdout, align 4
  %13 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @raw_stdout, align 4
  %15 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @raw_stdout, align 4
  %17 = call i32 @gdb_flush(i32 %16)
  %18 = load i32, i32* @ALL_CLEANUPS, align 4
  %19 = call i32 @do_exec_cleanups(i32 %18)
  br label %26

20:                                               ; preds = %1
  %21 = call i64 (...) @target_can_async_p()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @add_continuation(void (%struct.continuation_arg*)* @mi_interpreter_exec_continuation, i32* null)
  br label %25

25:                                               ; preds = %23, %20
  br label %26

26:                                               ; preds = %25, %6
  ret void
}

declare dso_local i32 @bpstat_do_actions(i32*) #1

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

declare dso_local i32 @mi_out_put(i32, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @do_exec_cleanups(i32) #1

declare dso_local i64 @target_can_async_p(...) #1

declare dso_local i32 @add_continuation(void (%struct.continuation_arg*)*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
