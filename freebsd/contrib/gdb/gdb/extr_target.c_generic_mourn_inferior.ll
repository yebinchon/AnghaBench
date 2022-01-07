; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_generic_mourn_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_generic_mourn_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@null_ptid = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@attach_flag = common dso_local global i64 0, align 8
@inf_exited = common dso_local global i32 0, align 4
@show_breakpoint_hit_counts = external dso_local global i32, align 4
@CLEAR_DEFERRED_STORES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_mourn_inferior() #0 {
  %1 = load i32, i32* @null_ptid, align 4
  store i32 %1, i32* @inferior_ptid, align 4
  store i64 0, i64* @attach_flag, align 8
  %2 = load i32, i32* @inf_exited, align 4
  %3 = call i32 @breakpoint_init_inferior(i32 %2)
  %4 = call i32 (...) @registers_changed()
  %5 = call i32 (...) @reopen_exec_file()
  %6 = call i32 (...) @reinit_frame_cache()
  %7 = load i32, i32* @show_breakpoint_hit_counts, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 (...) @breakpoint_clear_ignore_counts()
  br label %11

11:                                               ; preds = %9, %0
  br i1 true, label %12, label %14

12:                                               ; preds = %11
  %13 = call i32 (...) @detach_hook()
  br label %14

14:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @breakpoint_init_inferior(i32) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @reopen_exec_file(...) #1

declare dso_local i32 @reinit_frame_cache(...) #1

declare dso_local i32 @breakpoint_clear_ignore_counts(...) #1

declare dso_local i32 @detach_hook(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
