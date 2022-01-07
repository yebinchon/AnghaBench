; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_vm_machdep.c_cpu_thread_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_vm_machdep.c_cpu_thread_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i32* }

@IOPAGES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_thread_clean(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 0
  %6 = load %struct.pcb*, %struct.pcb** %5, align 8
  store %struct.pcb* %6, %struct.pcb** %3, align 8
  %7 = load %struct.pcb*, %struct.pcb** %3, align 8
  %8 = getelementptr inbounds %struct.pcb, %struct.pcb* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load %struct.pcb*, %struct.pcb** %3, align 8
  %13 = getelementptr inbounds %struct.pcb, %struct.pcb* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = load %struct.pcb*, %struct.pcb** %3, align 8
  %17 = getelementptr inbounds %struct.pcb, %struct.pcb* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = ptrtoint i32* %18 to i64
  %20 = load i64, i64* @IOPAGES, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i64 @ctob(i64 %21)
  %23 = add nsw i64 %19, %22
  %24 = call i32 @pmap_pti_remove_kva(i64 %15, i64 %23)
  %25 = load %struct.pcb*, %struct.pcb** %3, align 8
  %26 = getelementptr inbounds %struct.pcb, %struct.pcb* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = ptrtoint i32* %27 to i64
  %29 = load i64, i64* @IOPAGES, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i64 @ctob(i64 %30)
  %32 = call i32 @kmem_free(i64 %28, i64 %31)
  %33 = load %struct.pcb*, %struct.pcb** %3, align 8
  %34 = getelementptr inbounds %struct.pcb, %struct.pcb* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @pmap_pti_remove_kva(i64, i64) #1

declare dso_local i64 @ctob(i64) #1

declare dso_local i32 @kmem_free(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
