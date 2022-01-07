; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_clear_symtab_users.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_clear_symtab_users.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_symtab_users() #0 {
  %1 = call i32 (...) @clear_value_history()
  %2 = call i32 (...) @clear_displays()
  %3 = call i32 (...) @clear_internalvars()
  %4 = call i32 (...) @breakpoint_re_set()
  %5 = call i32 @set_default_breakpoint(i32 0, i32 0, i32 0, i32 0)
  %6 = call i32 (...) @clear_current_source_symtab_and_line()
  %7 = call i32 (...) @clear_pc_function_cache()
  br i1 true, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @target_new_objfile_hook(i32* null)
  br label %10

10:                                               ; preds = %8, %0
  ret void
}

declare dso_local i32 @clear_value_history(...) #1

declare dso_local i32 @clear_displays(...) #1

declare dso_local i32 @clear_internalvars(...) #1

declare dso_local i32 @breakpoint_re_set(...) #1

declare dso_local i32 @set_default_breakpoint(i32, i32, i32, i32) #1

declare dso_local i32 @clear_current_source_symtab_and_line(...) #1

declare dso_local i32 @clear_pc_function_cache(...) #1

declare dso_local i32 @target_new_objfile_hook(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
