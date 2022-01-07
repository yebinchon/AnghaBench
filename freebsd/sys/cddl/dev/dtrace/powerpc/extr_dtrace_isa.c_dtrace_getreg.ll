; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_getreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@CPU_DTRACE_ILLOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_getreg(%struct.trapframe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 32
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %10 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %9, i32 0, i32 7
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %46 [
    i32 32, label %18
    i32 33, label %22
    i32 34, label %26
    i32 35, label %30
    i32 36, label %34
    i32 37, label %38
    i32 38, label %42
  ]

18:                                               ; preds = %16
  %19 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %20 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %3, align 4
  br label %49

22:                                               ; preds = %16
  %23 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %24 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %16
  %27 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %28 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %3, align 4
  br label %49

30:                                               ; preds = %16
  %31 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %32 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  br label %49

34:                                               ; preds = %16
  %35 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %36 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %3, align 4
  br label %49

38:                                               ; preds = %16
  %39 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %40 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %3, align 4
  br label %49

42:                                               ; preds = %16
  %43 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %44 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %16
  %47 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %48 = call i32 @DTRACE_CPUFLAG_SET(i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %42, %38, %34, %30, %26, %22, %18, %8
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
