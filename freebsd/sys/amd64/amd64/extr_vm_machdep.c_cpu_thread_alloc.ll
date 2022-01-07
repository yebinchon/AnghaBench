; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_vm_machdep.c_cpu_thread_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_vm_machdep.c_cpu_thread_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__, %struct.trapframe*, %struct.pcb* }
%struct.TYPE_2__ = type { i64 }
%struct.trapframe = type { i32 }
%struct.pcb = type { i64 }
%struct.xstate_hdr = type { i32 }

@use_xsave = common dso_local global i64 0, align 8
@xsave_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_thread_alloc(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.pcb*, align 8
  %4 = alloca %struct.xstate_hdr*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = call i32 @set_top_of_stack_td(%struct.thread* %5)
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = call %struct.pcb* @get_pcb_td(%struct.thread* %7)
  store %struct.pcb* %8, %struct.pcb** %3, align 8
  %9 = load %struct.thread*, %struct.thread** %2, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 2
  store %struct.pcb* %8, %struct.pcb** %10, align 8
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.trapframe*
  %16 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %15, i64 -1
  %17 = load %struct.thread*, %struct.thread** %2, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 1
  store %struct.trapframe* %16, %struct.trapframe** %18, align 8
  %19 = load %struct.pcb*, %struct.pcb** %3, align 8
  %20 = call i64 @get_pcb_user_save_pcb(%struct.pcb* %19)
  %21 = load %struct.pcb*, %struct.pcb** %3, align 8
  %22 = getelementptr inbounds %struct.pcb, %struct.pcb* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* @use_xsave, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load %struct.pcb*, %struct.pcb** %3, align 8
  %27 = getelementptr inbounds %struct.pcb, %struct.pcb* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = inttoptr i64 %29 to %struct.xstate_hdr*
  store %struct.xstate_hdr* %30, %struct.xstate_hdr** %4, align 8
  %31 = load %struct.xstate_hdr*, %struct.xstate_hdr** %4, align 8
  %32 = call i32 @bzero(%struct.xstate_hdr* %31, i32 4)
  %33 = load i32, i32* @xsave_mask, align 4
  %34 = load %struct.xstate_hdr*, %struct.xstate_hdr** %4, align 8
  %35 = getelementptr inbounds %struct.xstate_hdr, %struct.xstate_hdr* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @set_top_of_stack_td(%struct.thread*) #1

declare dso_local %struct.pcb* @get_pcb_td(%struct.thread*) #1

declare dso_local i64 @get_pcb_user_save_pcb(%struct.pcb*) #1

declare dso_local i32 @bzero(%struct.xstate_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
