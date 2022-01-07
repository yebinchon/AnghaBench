; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_vm_machdep.c_cpu_fork_kthread_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_vm_machdep.c_cpu_fork_kthread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64*, i64, i32, i32, i32* }

@fork_trampoline = common dso_local global i64 0, align 8
@PCB_LR = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_fork_kthread_handler(%struct.thread* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load void (i8*)*, void (i8*)** %5, align 8
  %8 = ptrtoint void (i8*)* %7 to i64
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 8
  store i64 %8, i64* %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 9
  store i64 %16, i64* %22, align 8
  %23 = load i64, i64* @fork_trampoline, align 8
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @PCB_LR, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 %23, i64* %30, align 8
  %31 = load %struct.thread*, %struct.thread** %4, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 %33, i64* %37, align 8
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load %struct.thread*, %struct.thread** %4, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32* %41, i32** %45, align 8
  %46 = load i32, i32* @UINT_MAX, align 4
  %47 = load %struct.thread*, %struct.thread** %4, align 8
  %48 = getelementptr inbounds %struct.thread, %struct.thread* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %46, i32* %50, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
