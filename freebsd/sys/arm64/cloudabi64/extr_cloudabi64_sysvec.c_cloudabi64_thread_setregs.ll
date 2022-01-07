; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cloudabi64/extr_cloudabi64_sysvec.c_cloudabi64_thread_setregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cloudabi64/extr_cloudabi64_sysvec.c_cloudabi64_thread_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.trapframe* }
%struct.trapframe = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi64_thread_setregs(%struct.thread* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @TO_PTR(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @TO_PTR(i32 %21)
  %23 = call i32 @cpu_set_upcall(%struct.thread* %18, i32 %22, i32* null, %struct.TYPE_5__* %8)
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 1
  %26 = load %struct.trapframe*, %struct.trapframe** %25, align 8
  store %struct.trapframe* %26, %struct.trapframe** %7, align 8
  %27 = load %struct.thread*, %struct.thread** %4, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %31 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %38 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %36, i32* %40, align 4
  %41 = load %struct.thread*, %struct.thread** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @TO_PTR(i32 %42)
  %44 = call i32 @cpu_set_user_tls(%struct.thread* %41, i32 %43)
  ret i32 %44
}

declare dso_local i32 @TO_PTR(i32) #1

declare dso_local i32 @cpu_set_upcall(%struct.thread*, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @cpu_set_user_tls(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
