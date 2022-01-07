; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_intr.c_intr_irq_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_intr.c_intr_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_event = type { i32 }
%struct.trapframe = type { i32 }

@v_intr = common dso_local global i32 0, align 4
@intrcnt = common dso_local global i32* null, align 8
@intr_events = common dso_local global %struct.intr_event** null, align 8
@PMC_FN_USER_CALLCHAIN = common dso_local global i32 0, align 4
@TDP_CALLCHAIN = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intr_irq_handler(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.intr_event*, align 8
  %4 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %5 = load i32, i32* @v_intr, align 4
  %6 = call i32 @VM_CNT_INC(i32 %5)
  store i32 -1, i32* %4, align 4
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @arm_get_next_irq(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load i32*, i32** @intrcnt, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.intr_event**, %struct.intr_event*** @intr_events, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %18, i64 %20
  %22 = load %struct.intr_event*, %struct.intr_event** %21, align 8
  store %struct.intr_event* %22, %struct.intr_event** %3, align 8
  %23 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %24 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %25 = call i64 @intr_event_handle(%struct.intr_event* %23, %struct.trapframe* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %11
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @arm_mask_irq(i32 %28)
  br label %30

30:                                               ; preds = %27, %11
  br label %7

31:                                               ; preds = %7
  ret void
}

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i32 @arm_get_next_irq(i32) #1

declare dso_local i64 @intr_event_handle(%struct.intr_event*, %struct.trapframe*) #1

declare dso_local i32 @arm_mask_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
