; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/linux/extr_linux_sysvec.c_linux_exec_setregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/linux/extr_linux_sysvec.c_linux_exec_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.trapframe* }
%struct.trapframe = type { i32, i32, i32 }
%struct.image_params = type { i32 }

@sysvec = common dso_local global i32 0, align 4
@todo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.image_params*, i32)* @linux_exec_setregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_exec_setregs(%struct.thread* %0, %struct.image_params* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.image_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.image_params* %1, %struct.image_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  store %struct.trapframe* %10, %struct.trapframe** %7, align 8
  %11 = load i32, i32* @sysvec, align 4
  %12 = load i32, i32* @todo, align 4
  %13 = call i32 @LIN_SDT_PROBE0(i32 %11, void (%struct.thread*, %struct.image_params*, i32)* @linux_exec_setregs, i32 %12)
  %14 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %15 = call i32 @memset(%struct.trapframe* %14, i32 0, i32 12)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %18 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %20 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 4
  %21 = load %struct.image_params*, %struct.image_params** %5, align 8
  %22 = getelementptr inbounds %struct.image_params, %struct.image_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %25 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local i32 @LIN_SDT_PROBE0(i32, void (%struct.thread*, %struct.image_params*, i32)*, i32) #1

declare dso_local i32 @memset(%struct.trapframe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
