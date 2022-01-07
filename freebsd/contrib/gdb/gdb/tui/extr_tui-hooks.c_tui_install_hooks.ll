; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-hooks.c_tui_install_hooks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-hooks.c_tui_install_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tui_target_wait_hook = common dso_local global i32 0, align 4
@target_wait_hook = common dso_local global i32 0, align 4
@tui_selected_frame_level_changed_hook = common dso_local global i32 0, align 4
@selected_frame_level_changed_hook = common dso_local global i32 0, align 4
@tui_print_frame_info_listing_hook = common dso_local global i32 0, align 4
@print_frame_info_listing_hook = common dso_local global i32 0, align 4
@tui_query_hook = common dso_local global i32 0, align 4
@query_hook = common dso_local global i32 0, align 4
@tui_event_hooks = common dso_local global i32 0, align 4
@tui_old_event_hooks = common dso_local global i32 0, align 4
@tui_registers_changed_hook = common dso_local global i32 0, align 4
@registers_changed_hook = common dso_local global i32 0, align 4
@tui_register_changed_hook = common dso_local global i32 0, align 4
@register_changed_hook = common dso_local global i32 0, align 4
@tui_detach_hook = common dso_local global i32 0, align 4
@detach_hook = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_install_hooks() #0 {
  %1 = load i32, i32* @tui_target_wait_hook, align 4
  store i32 %1, i32* @target_wait_hook, align 4
  %2 = load i32, i32* @tui_selected_frame_level_changed_hook, align 4
  store i32 %2, i32* @selected_frame_level_changed_hook, align 4
  %3 = load i32, i32* @tui_print_frame_info_listing_hook, align 4
  store i32 %3, i32* @print_frame_info_listing_hook, align 4
  %4 = load i32, i32* @tui_query_hook, align 4
  store i32 %4, i32* @query_hook, align 4
  %5 = call i32 @set_gdb_event_hooks(i32* @tui_event_hooks)
  store i32 %5, i32* @tui_old_event_hooks, align 4
  %6 = load i32, i32* @tui_registers_changed_hook, align 4
  store i32 %6, i32* @registers_changed_hook, align 4
  %7 = load i32, i32* @tui_register_changed_hook, align 4
  store i32 %7, i32* @register_changed_hook, align 4
  %8 = load i32, i32* @tui_detach_hook, align 4
  store i32 %8, i32* @detach_hook, align 4
  ret void
}

declare dso_local i32 @set_gdb_event_hooks(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
