; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_makectx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_makectx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i32, i32, i32* }
%struct.pcb = type { i32, i32, i32* }

@PCB_LR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makectx(%struct.trapframe* %0, %struct.pcb* %1) #0 {
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca %struct.pcb*, align 8
  %5 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  store %struct.pcb* %1, %struct.pcb** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %24, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @PCB_LR, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %12 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pcb*, %struct.pcb** %4, align 8
  %19 = getelementptr inbounds %struct.pcb, %struct.pcb* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %17, i32* %23, align 4
  br label %24

24:                                               ; preds = %10
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %6

27:                                               ; preds = %6
  %28 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %29 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pcb*, %struct.pcb** %4, align 8
  %32 = getelementptr inbounds %struct.pcb, %struct.pcb* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @PCB_LR, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  %37 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %38 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pcb*, %struct.pcb** %4, align 8
  %41 = getelementptr inbounds %struct.pcb, %struct.pcb* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %43 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pcb*, %struct.pcb** %4, align 8
  %46 = getelementptr inbounds %struct.pcb, %struct.pcb* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
