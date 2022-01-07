; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_trap-v4.c_dab_buserr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_trap-v4.c_dab_buserr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i64, i32, i64 }
%struct.thread = type { %struct.trapframe*, %struct.pcb* }
%struct.pcb = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ksig = type { i64, i32 }

@EFAULT = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@FAULT_IMPRECISE = common dso_local global i32 0, align 4
@PSR_ABT32_MODE = common dso_local global i32 0, align 4
@PSR_MODE = common dso_local global i32 0, align 4
@PSR_SVC32_MODE = common dso_local global i32 0, align 4
@PSR_USR32_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapframe*, i32, i32, %struct.thread*, %struct.ksig*)* @dab_buserr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dab_buserr(%struct.trapframe* %0, i32 %1, i32 %2, %struct.thread* %3, %struct.ksig* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.ksig*, align 8
  %12 = alloca %struct.pcb*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.thread* %3, %struct.thread** %10, align 8
  store %struct.ksig* %4, %struct.ksig** %11, align 8
  %13 = load %struct.thread*, %struct.thread** %10, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 1
  %15 = load %struct.pcb*, %struct.pcb** %14, align 8
  store %struct.pcb* %15, %struct.pcb** %12, align 8
  %16 = load %struct.pcb*, %struct.pcb** %12, align 8
  %17 = getelementptr inbounds %struct.pcb, %struct.pcb* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %5
  %21 = load i32, i32* @EFAULT, align 4
  %22 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %23 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pcb*, %struct.pcb** %12, align 8
  %25 = getelementptr inbounds %struct.pcb, %struct.pcb* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %29 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  store i32 0, i32* %6, align 4
  br label %50

30:                                               ; preds = %5
  %31 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %32 = call i32 @TRAP_USERMODE(%struct.trapframe* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.thread*, %struct.thread** %10, align 8
  %39 = load %struct.ksig*, %struct.ksig** %11, align 8
  %40 = call i32 @dab_fatal(%struct.trapframe* %35, i32 %36, i32 %37, %struct.thread* %38, %struct.ksig* %39)
  br label %41

41:                                               ; preds = %34, %30
  %42 = load i32, i32* @SIGBUS, align 4
  %43 = load %struct.ksig*, %struct.ksig** %11, align 8
  %44 = getelementptr inbounds %struct.ksig, %struct.ksig* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ksig*, %struct.ksig** %11, align 8
  %46 = getelementptr inbounds %struct.ksig, %struct.ksig* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %48 = load %struct.thread*, %struct.thread** %10, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 0
  store %struct.trapframe* %47, %struct.trapframe** %49, align 8
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %41, %20
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @TRAP_USERMODE(%struct.trapframe*) #1

declare dso_local i32 @dab_fatal(%struct.trapframe*, i32, i32, %struct.thread*, %struct.ksig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
