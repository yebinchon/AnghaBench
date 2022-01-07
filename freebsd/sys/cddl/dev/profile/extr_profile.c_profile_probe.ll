; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/profile/extr_profile.c_profile_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/profile/extr_profile.c_profile_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.trapframe* }
%struct.trapframe = type { i32 }
%struct.TYPE_3__ = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@cpu_idle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @profile_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @profile_probe(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load %struct.trapframe*, %struct.trapframe** %11, align 8
  store %struct.trapframe* %12, %struct.trapframe** %6, align 8
  %13 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %14 = icmp ne %struct.trapframe* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %17 = call i64 @TRAPF_USERMODE(%struct.trapframe* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %21 = call i64 @TRAPF_PC(%struct.trapframe* %20)
  store i64 %21, i64* %8, align 8
  br label %25

22:                                               ; preds = %15
  %23 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %24 = call i64 @TRAPF_PC(%struct.trapframe* %23)
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %22, %19
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.thread*, %struct.thread** %5, align 8
  %28 = call i64 @TD_IS_IDLETHREAD(%struct.thread* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i64 ptrtoint (i32* @cpu_idle to i64), i64* %7, align 8
  br label %31

31:                                               ; preds = %30, %26
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dtrace_probe(i32 %35, i64 %36, i64 %37, i32 %38, i32 0, i32 0)
  ret void
}

declare dso_local i64 @TRAPF_USERMODE(%struct.trapframe*) #1

declare dso_local i64 @TRAPF_PC(%struct.trapframe*) #1

declare dso_local i64 @TD_IS_IDLETHREAD(%struct.thread*) #1

declare dso_local i32 @dtrace_probe(i32, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
