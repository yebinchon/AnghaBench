; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-hooks.c_tui_remove_hooks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-hooks.c_tui_remove_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@target_wait_hook = common dso_local global i64 0, align 8
@selected_frame_level_changed_hook = common dso_local global i64 0, align 8
@print_frame_info_listing_hook = common dso_local global i64 0, align 8
@query_hook = common dso_local global i64 0, align 8
@registers_changed_hook = common dso_local global i64 0, align 8
@register_changed_hook = common dso_local global i64 0, align 8
@detach_hook = common dso_local global i64 0, align 8
@tui_old_event_hooks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_remove_hooks() #0 {
  store i64 0, i64* @target_wait_hook, align 8
  store i64 0, i64* @selected_frame_level_changed_hook, align 8
  store i64 0, i64* @print_frame_info_listing_hook, align 8
  store i64 0, i64* @query_hook, align 8
  store i64 0, i64* @registers_changed_hook, align 8
  store i64 0, i64* @register_changed_hook, align 8
  store i64 0, i64* @detach_hook, align 8
  %1 = load i32, i32* @tui_old_event_hooks, align 4
  %2 = call i32 @set_gdb_event_hooks(i32 %1)
  ret void
}

declare dso_local i32 @set_gdb_event_hooks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
