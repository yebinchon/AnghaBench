; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_set_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_set_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.trapframe* }
%struct.trapframe = type { i32, i32, i32, i32, i32 }
%struct.reg = type { i32, i32, i32*, i32, i32 }

@PSR_FLAGS = common dso_local global i32 0, align 4
@SV_ILP32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_regs(%struct.thread* %0, %struct.reg* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.reg*, align 8
  %5 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.reg* %1, %struct.reg** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 1
  %8 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  store %struct.trapframe* %8, %struct.trapframe** %5, align 8
  %9 = load %struct.reg*, %struct.reg** %4, align 8
  %10 = getelementptr inbounds %struct.reg, %struct.reg* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %13 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.reg*, %struct.reg** %4, align 8
  %15 = getelementptr inbounds %struct.reg, %struct.reg* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %18 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.reg*, %struct.reg** %4, align 8
  %20 = getelementptr inbounds %struct.reg, %struct.reg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %23 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @PSR_FLAGS, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %27 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.reg*, %struct.reg** %4, align 8
  %31 = getelementptr inbounds %struct.reg, %struct.reg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PSR_FLAGS, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %36 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %40 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.reg*, %struct.reg** %4, align 8
  %43 = getelementptr inbounds %struct.reg, %struct.reg* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @memcpy(i32 %41, i32* %44, i32 4)
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
