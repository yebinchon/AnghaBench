; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_elf32_machdep.c_freebsd32_set_syscall_retval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_elf32_machdep.c_freebsd32_set_syscall_retval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.trapframe* }
%struct.trapframe = type { i32*, i32, i32 }

@PSR_C = common dso_local global i32 0, align 4
@PSR_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, i32)* @freebsd32_set_syscall_retval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freebsd32_set_syscall_retval(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 1
  %8 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  store %struct.trapframe* %8, %struct.trapframe** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %54 [
    i32 0, label %10
    i32 128, label %35
    i32 129, label %53
  ]

10:                                               ; preds = %2
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %17 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.thread*, %struct.thread** %3, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %26 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @PSR_C, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %32 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %65

35:                                               ; preds = %2
  %36 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %37 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PSR_T, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %44 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 2
  store i32 %46, i32* %44, align 4
  br label %52

47:                                               ; preds = %35
  %48 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %49 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 4
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %42
  br label %65

53:                                               ; preds = %2
  br label %65

54:                                               ; preds = %2
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %57 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @PSR_C, align 4
  %61 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %62 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %54, %53, %52, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
