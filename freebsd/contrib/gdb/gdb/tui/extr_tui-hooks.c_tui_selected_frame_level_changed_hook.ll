; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-hooks.c_tui_selected_frame_level_changed_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-hooks.c_tui_selected_frame_level_changed_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.symtab = type { i32 }

@deprecated_selected_frame = common dso_local global %struct.frame_info* null, align 8
@DATA_WIN = common dso_local global i32 0, align 4
@tui_refreshing_registers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tui_selected_frame_level_changed_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_selected_frame_level_changed_hook(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca %struct.symtab*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  store %struct.frame_info* %5, %struct.frame_info** %3, align 8
  %6 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %7 = icmp ne %struct.frame_info* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %10 = call i32 @get_frame_pc(%struct.frame_info* %9)
  %11 = call %struct.symtab* @find_pc_symtab(i32 %10)
  store %struct.symtab* %11, %struct.symtab** %4, align 8
  %12 = load %struct.symtab*, %struct.symtab** %4, align 8
  %13 = icmp ne %struct.symtab* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.symtab*, %struct.symtab** %4, align 8
  %16 = call i32 @select_source_symtab(%struct.symtab* %15)
  br label %17

17:                                               ; preds = %14, %8
  %18 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %19 = call i32 @tui_show_frame_info(%struct.frame_info* %18)
  %20 = load i32, i32* @DATA_WIN, align 4
  %21 = call i64 @tui_is_window_visible(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  store i32 1, i32* @tui_refreshing_registers, align 4
  %24 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %25 = call i32 @tui_check_data_values(%struct.frame_info* %24)
  store i32 0, i32* @tui_refreshing_registers, align 4
  br label %26

26:                                               ; preds = %23, %17
  br label %27

27:                                               ; preds = %26, %1
  ret void
}

declare dso_local %struct.symtab* @find_pc_symtab(i32) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @select_source_symtab(%struct.symtab*) #1

declare dso_local i32 @tui_show_frame_info(%struct.frame_info*) #1

declare dso_local i64 @tui_is_window_visible(i32) #1

declare dso_local i32 @tui_check_data_values(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
