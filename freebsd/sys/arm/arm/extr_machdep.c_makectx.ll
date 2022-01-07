; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep.c_makectx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep.c_makectx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makectx(%struct.trapframe* %0, %struct.pcb* %1) #0 {
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca %struct.pcb*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  store %struct.pcb* %1, %struct.pcb** %4, align 8
  %5 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %6 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %5, i32 0, i32 11
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pcb*, %struct.pcb** %4, align 8
  %9 = getelementptr inbounds %struct.pcb, %struct.pcb* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 11
  store i32 %7, i32* %10, align 4
  %11 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %12 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pcb*, %struct.pcb** %4, align 8
  %15 = getelementptr inbounds %struct.pcb, %struct.pcb* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 10
  store i32 %13, i32* %16, align 4
  %17 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %18 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pcb*, %struct.pcb** %4, align 8
  %21 = getelementptr inbounds %struct.pcb, %struct.pcb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 9
  store i32 %19, i32* %22, align 4
  %23 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %24 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pcb*, %struct.pcb** %4, align 8
  %27 = getelementptr inbounds %struct.pcb, %struct.pcb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 8
  store i32 %25, i32* %28, align 4
  %29 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %30 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pcb*, %struct.pcb** %4, align 8
  %33 = getelementptr inbounds %struct.pcb, %struct.pcb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  store i32 %31, i32* %34, align 4
  %35 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %36 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pcb*, %struct.pcb** %4, align 8
  %39 = getelementptr inbounds %struct.pcb, %struct.pcb* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 6
  store i32 %37, i32* %40, align 4
  %41 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %42 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pcb*, %struct.pcb** %4, align 8
  %45 = getelementptr inbounds %struct.pcb, %struct.pcb* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  store i32 %43, i32* %46, align 4
  %47 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %48 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pcb*, %struct.pcb** %4, align 8
  %51 = getelementptr inbounds %struct.pcb, %struct.pcb* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i32 %49, i32* %52, align 4
  %53 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %54 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pcb*, %struct.pcb** %4, align 8
  %57 = getelementptr inbounds %struct.pcb, %struct.pcb* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %60 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pcb*, %struct.pcb** %4, align 8
  %63 = getelementptr inbounds %struct.pcb, %struct.pcb* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  %65 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %66 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.pcb*, %struct.pcb** %4, align 8
  %69 = getelementptr inbounds %struct.pcb, %struct.pcb* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %72 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pcb*, %struct.pcb** %4, align 8
  %75 = getelementptr inbounds %struct.pcb, %struct.pcb* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
