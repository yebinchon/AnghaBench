; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_vm_machdep.c_cpu_thread_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_vm_machdep.c_cpu_thread_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.pcb*, %struct.trapframe*, i64 }
%struct.pcb = type { i32 }
%struct.trapframe = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_thread_alloc(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %3 = load %struct.thread*, %struct.thread** %2, align 8
  %4 = getelementptr inbounds %struct.thread, %struct.thread* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.thread*, %struct.thread** %2, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %5, %11
  %13 = inttoptr i64 %12 to %struct.pcb*
  %14 = getelementptr inbounds %struct.pcb, %struct.pcb* %13, i64 -1
  %15 = load %struct.thread*, %struct.thread** %2, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 1
  store %struct.pcb* %14, %struct.pcb** %16, align 8
  %17 = load %struct.thread*, %struct.thread** %2, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 1
  %19 = load %struct.pcb*, %struct.pcb** %18, align 8
  %20 = bitcast %struct.pcb* %19 to %struct.trapframe*
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i64 -1
  %22 = call i64 @STACKALIGN(%struct.trapframe* %21)
  %23 = inttoptr i64 %22 to %struct.trapframe*
  %24 = load %struct.thread*, %struct.thread** %2, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 2
  store %struct.trapframe* %23, %struct.trapframe** %25, align 8
  ret void
}

declare dso_local i64 @STACKALIGN(%struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
