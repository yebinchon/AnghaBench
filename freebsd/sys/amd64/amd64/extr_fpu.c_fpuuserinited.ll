; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpuuserinited.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpuuserinited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i32 }

@PCB_FPUINITDONE = common dso_local global i32 0, align 4
@PCB_USERFPUINITDONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpuuserinited(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = call i32 @CRITICAL_ASSERT(%struct.thread* %4)
  %6 = load %struct.thread*, %struct.thread** %2, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 0
  %8 = load %struct.pcb*, %struct.pcb** %7, align 8
  store %struct.pcb* %8, %struct.pcb** %3, align 8
  %9 = load %struct.pcb*, %struct.pcb** %3, align 8
  %10 = call i64 @PCB_USER_FPU(%struct.pcb* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.pcb*, %struct.pcb** %3, align 8
  %14 = load i32, i32* @PCB_FPUINITDONE, align 4
  %15 = load i32, i32* @PCB_USERFPUINITDONE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @set_pcb_flags(%struct.pcb* %13, i32 %16)
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.pcb*, %struct.pcb** %3, align 8
  %20 = load i32, i32* @PCB_FPUINITDONE, align 4
  %21 = call i32 @set_pcb_flags(%struct.pcb* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @CRITICAL_ASSERT(%struct.thread*) #1

declare dso_local i64 @PCB_USER_FPU(%struct.pcb*) #1

declare dso_local i32 @set_pcb_flags(%struct.pcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
