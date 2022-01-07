; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_syscall.c_swi_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_syscall.c_swi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__, i64, %struct.trapframe* }
%struct.TYPE_2__ = type { i64 }
%struct.trapframe = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@PSR_I = common dso_local global i32 0, align 4
@PSR_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swi_handler(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.thread*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %4 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %4, %struct.thread** %3, align 8
  %5 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 2
  store %struct.trapframe* %5, %struct.trapframe** %7, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %17 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PSR_I, align 4
  %20 = and i32 %18, %19
  %21 = call i64 @__predict_true(i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @PSR_I, align 4
  %25 = call i32 @enable_interrupts(i32 %24)
  br label %26

26:                                               ; preds = %23, %15
  %27 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %28 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PSR_F, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @__predict_true(i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @PSR_F, align 4
  %36 = call i32 @enable_interrupts(i32 %35)
  br label %37

37:                                               ; preds = %34, %26
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.thread*, %struct.thread** %3, align 8
  %40 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %41 = call i32 @syscall(%struct.thread* %39, %struct.trapframe* %40)
  ret void
}

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @enable_interrupts(i32) #1

declare dso_local i32 @syscall(%struct.thread*, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
