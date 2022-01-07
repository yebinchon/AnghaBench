; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_thread_setregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_thread_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.trapframe* }
%struct.trapframe = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi32_thread_setregs(%struct.thread* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 1
  %10 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  store %struct.trapframe* %10, %struct.trapframe** %7, align 8
  %11 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %12 = call i32 @memset(%struct.trapframe* %11, i32 0, i32 16)
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %17 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %24 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @STACKALIGN(i64 %33)
  %35 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %36 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 13
  store i32 %34, i32* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %43 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.thread*, %struct.thread** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @TO_PTR(i32 %45)
  %47 = call i32 @cpu_set_user_tls(%struct.thread* %44, i32 %46)
  ret i32 %47
}

declare dso_local i32 @memset(%struct.trapframe*, i32, i32) #1

declare dso_local i32 @STACKALIGN(i64) #1

declare dso_local i32 @cpu_set_user_tls(%struct.thread*, i32) #1

declare dso_local i32 @TO_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
