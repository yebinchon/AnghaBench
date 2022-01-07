; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_sysvec.c_linux_set_syscall_retval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_sysvec.c_linux_set_syscall_retval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32*, %struct.trapframe* }
%struct.trapframe = type { i32, i32, i32 }

@EJUSTRETURN = common dso_local global i32 0, align 4
@PCB_FULL_IRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, i32)* @linux_set_syscall_retval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_set_syscall_retval(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 2
  %8 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  store %struct.trapframe* %8, %struct.trapframe** %5, align 8
  %9 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %10 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @EJUSTRETURN, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %24 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.thread*, %struct.thread** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @cpu_set_syscall_retval(%struct.thread* %26, i32 %27)
  %29 = load %struct.thread*, %struct.thread** %3, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PCB_FULL_IRET, align 4
  %33 = call i32 @set_pcb_flags(i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @cpu_set_syscall_retval(%struct.thread*, i32) #1

declare dso_local i32 @set_pcb_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
