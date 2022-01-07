; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_select_and_print_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_select_and_print_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*)* @select_and_print_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_and_print_frame(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_info*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %2, align 8
  %3 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %4 = call i32 @select_frame(%struct.frame_info* %3)
  %5 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %6 = icmp ne %struct.frame_info* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %9 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %10 = call i32 @frame_relative_level(%struct.frame_info* %9)
  %11 = call i32 @print_stack_frame(%struct.frame_info* %8, i32 %10, i32 1)
  br label %12

12:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @select_frame(%struct.frame_info*) #1

declare dso_local i32 @print_stack_frame(%struct.frame_info*, i32, i32) #1

declare dso_local i32 @frame_relative_level(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
