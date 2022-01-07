; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_trap.c_svc_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_trap.c_svc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.trapframe = type { i32, i64 }

@ESR_ELx_ISS_MASK = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@ILL_ILLOPN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.trapframe*)* @svc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_handler(%struct.thread* %0, %struct.trapframe* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.trapframe* %1, %struct.trapframe** %4, align 8
  %5 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %6 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ESR_ELx_ISS_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = call i32 @syscallenter(%struct.thread* %12)
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = call i32 @syscallret(%struct.thread* %14)
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = load i32, i32* @SIGILL, align 4
  %19 = load i32, i32* @ILL_ILLOPN, align 4
  %20 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @call_trapsignal(%struct.thread* %17, i32 %18, i32 %19, i8* %23)
  %25 = load %struct.thread*, %struct.thread** %3, align 8
  %26 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %27 = call i32 @userret(%struct.thread* %25, %struct.trapframe* %26)
  br label %28

28:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @syscallenter(%struct.thread*) #1

declare dso_local i32 @syscallret(%struct.thread*) #1

declare dso_local i32 @call_trapsignal(%struct.thread*, i32, i32, i8*) #1

declare dso_local i32 @userret(%struct.thread*, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
