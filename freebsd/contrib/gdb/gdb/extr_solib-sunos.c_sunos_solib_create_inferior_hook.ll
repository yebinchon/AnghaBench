; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-sunos.c_sunos_solib_create_inferior_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-sunos.c_sunos_solib_create_inferior_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 }

@debug_base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"shared library handler failed to enable breakpoint\00", align 1
@STOP_QUIETLY = common dso_local global i32 0, align 4
@stop_soon = common dso_local global i32 0, align 4
@TARGET_SIGNAL_0 = common dso_local global i64 0, align 8
@stop_signal = common dso_local global i64 0, align 8
@TARGET_SIGNAL_TRAP = common dso_local global i64 0, align 8
@NO_STOP_QUIETLY = common dso_local global i32 0, align 4
@DECR_PC_AFTER_BREAK = common dso_local global i64 0, align 8
@stop_pc = common dso_local global i32 0, align 4
@PC_REGNUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"shared library handler failed to disable breakpoint\00", align 1
@auto_solib_add = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sunos_solib_create_inferior_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunos_solib_create_inferior_hook() #0 {
  %1 = call i32 (...) @sunos_relocate_main_executable()
  %2 = call i32 (...) @locate_base()
  store i32 %2, i32* @debug_base, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %44

5:                                                ; preds = %0
  %6 = call i32 (...) @enable_break()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = call i32 @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %44

10:                                               ; preds = %5
  %11 = call i32 (...) @clear_proceed_status()
  %12 = load i32, i32* @STOP_QUIETLY, align 4
  store i32 %12, i32* @stop_soon, align 4
  %13 = load i64, i64* @TARGET_SIGNAL_0, align 8
  store i64 %13, i64* @stop_signal, align 8
  br label %14

14:                                               ; preds = %19, %10
  %15 = call i32 @pid_to_ptid(i32 -1)
  %16 = load i64, i64* @stop_signal, align 8
  %17 = call i32 @target_resume(i32 %15, i32 0, i64 %16)
  %18 = call i32 (...) @wait_for_inferior()
  br label %19

19:                                               ; preds = %14
  %20 = load i64, i64* @stop_signal, align 8
  %21 = load i64, i64* @TARGET_SIGNAL_TRAP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %14, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @NO_STOP_QUIETLY, align 4
  store i32 %24, i32* @stop_soon, align 4
  %25 = load i64, i64* @DECR_PC_AFTER_BREAK, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i64, i64* @DECR_PC_AFTER_BREAK, align 8
  %29 = load i32, i32* @stop_pc, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* @stop_pc, align 4
  %33 = load i32, i32* @PC_REGNUM, align 4
  %34 = load i32, i32* @stop_pc, align 4
  %35 = call i32 @write_register(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %27, %23
  %37 = call i32 (...) @disable_break()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 @warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32, i32* @auto_solib_add, align 4
  %43 = call i32 @solib_add(i8* null, i32 0, %struct.target_ops* null, i32 %42)
  br label %44

44:                                               ; preds = %41, %8, %4
  ret void
}

declare dso_local i32 @sunos_relocate_main_executable(...) #1

declare dso_local i32 @locate_base(...) #1

declare dso_local i32 @enable_break(...) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @clear_proceed_status(...) #1

declare dso_local i32 @target_resume(i32, i32, i64) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @wait_for_inferior(...) #1

declare dso_local i32 @write_register(i32, i32) #1

declare dso_local i32 @disable_break(...) #1

declare dso_local i32 @solib_add(i8*, i32, %struct.target_ops*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
