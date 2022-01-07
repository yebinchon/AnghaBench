; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_svr4_solib_create_inferior_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_svr4_solib_create_inferior_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"no shared library support for this OS / ABI\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"shared library handler failed to enable breakpoint\00", align 1
@NO_STOP_QUIETLY = common dso_local global i32 0, align 4
@STOP_QUIETLY = common dso_local global i32 0, align 4
@TARGET_SIGNAL_0 = common dso_local global i64 0, align 8
@TARGET_SIGNAL_TRAP = common dso_local global i64 0, align 8
@stop_signal = common dso_local global i64 0, align 8
@stop_soon = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @svr4_solib_create_inferior_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svr4_solib_create_inferior_hook() #0 {
  %1 = call i32 (...) @svr4_relocate_main_executable()
  %2 = call i32 (...) @svr4_have_link_map_offsets()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %11

6:                                                ; preds = %0
  %7 = call i32 (...) @enable_break()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %4, %9, %6
  ret void
}

declare dso_local i32 @svr4_relocate_main_executable(...) #1

declare dso_local i32 @svr4_have_link_map_offsets(...) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @enable_break(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
