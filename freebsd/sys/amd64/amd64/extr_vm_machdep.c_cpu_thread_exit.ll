; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_vm_machdep.c_cpu_thread_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_vm_machdep.c_cpu_thread_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i32 }

@fpcurthread = common dso_local global i32 0, align 4
@PCB_DBREGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_thread_exit(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = call i32 (...) @critical_enter()
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = load i32, i32* @fpcurthread, align 4
  %7 = call %struct.thread* @PCPU_GET(i32 %6)
  %8 = icmp eq %struct.thread* %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @fpudrop()
  br label %11

11:                                               ; preds = %9, %1
  %12 = call i32 (...) @critical_exit()
  %13 = load %struct.thread*, %struct.thread** %2, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load %struct.pcb*, %struct.pcb** %14, align 8
  store %struct.pcb* %15, %struct.pcb** %3, align 8
  %16 = load %struct.pcb*, %struct.pcb** %3, align 8
  %17 = getelementptr inbounds %struct.pcb, %struct.pcb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCB_DBREGS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %11
  %23 = call i32 (...) @reset_dbregs()
  %24 = load %struct.pcb*, %struct.pcb** %3, align 8
  %25 = load i32, i32* @PCB_DBREGS, align 4
  %26 = call i32 @clear_pcb_flags(%struct.pcb* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %11
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @fpudrop(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @reset_dbregs(...) #1

declare dso_local i32 @clear_pcb_flags(%struct.pcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
