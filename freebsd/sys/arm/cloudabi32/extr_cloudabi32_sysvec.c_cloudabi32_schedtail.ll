; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_schedtail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_schedtail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.trapframe* }
%struct.trapframe = type { i32, i32 }

@TDP_FORKING = common dso_local global i32 0, align 4
@CLOUDABI_PROCESS_CHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @cloudabi32_schedtail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cloudabi32_schedtail(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 2
  %6 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  store %struct.trapframe* %6, %struct.trapframe** %3, align 8
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @TDP_FORKING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @CLOUDABI_PROCESS_CHILD, align 4
  %15 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %16 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.thread*, %struct.thread** %2, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %13, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
