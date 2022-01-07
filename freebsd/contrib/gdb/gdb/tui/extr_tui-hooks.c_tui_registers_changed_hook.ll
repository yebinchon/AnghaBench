; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-hooks.c_tui_registers_changed_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-hooks.c_tui_registers_changed_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

@deprecated_selected_frame = common dso_local global %struct.frame_info* null, align 8
@tui_refreshing_registers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tui_registers_changed_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_registers_changed_hook() #0 {
  %1 = alloca %struct.frame_info*, align 8
  %2 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  store %struct.frame_info* %2, %struct.frame_info** %1, align 8
  %3 = load %struct.frame_info*, %struct.frame_info** %1, align 8
  %4 = icmp ne %struct.frame_info* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @tui_refreshing_registers, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 1, i32* @tui_refreshing_registers, align 4
  store i32 0, i32* @tui_refreshing_registers, align 4
  br label %9

9:                                                ; preds = %8, %5, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
