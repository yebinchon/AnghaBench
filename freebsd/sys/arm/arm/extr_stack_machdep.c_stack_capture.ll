; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_stack_machdep.c_stack_capture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_stack_machdep.c_stack_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32 }
%struct.unwind_state = type { i32* }

@PC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stack*, %struct.unwind_state*)* @stack_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stack_capture(%struct.stack* %0, %struct.unwind_state* %1) #0 {
  %3 = alloca %struct.stack*, align 8
  %4 = alloca %struct.unwind_state*, align 8
  store %struct.stack* %0, %struct.stack** %3, align 8
  store %struct.unwind_state* %1, %struct.unwind_state** %4, align 8
  %5 = load %struct.stack*, %struct.stack** %3, align 8
  %6 = call i32 @stack_zero(%struct.stack* %5)
  br label %7

7:                                                ; preds = %22, %2
  %8 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %9 = call i64 @unwind_stack_one(%struct.unwind_state* %8, i32 1)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load %struct.stack*, %struct.stack** %3, align 8
  %13 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %14 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @PC, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @stack_put(%struct.stack* %12, i32 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %23

22:                                               ; preds = %11
  br label %7

23:                                               ; preds = %21, %7
  ret void
}

declare dso_local i32 @stack_zero(%struct.stack*) #1

declare dso_local i64 @unwind_stack_one(%struct.unwind_state*, i32) #1

declare dso_local i32 @stack_put(%struct.stack*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
