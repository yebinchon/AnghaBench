; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_trap-v4.c_dab_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_trap-v4.c_dab_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i32 }
%struct.thread = type { %struct.trapframe*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ksig = type { i32, i64 }

@EFAULT = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapframe*, i32, i32, %struct.thread*, %struct.ksig*)* @dab_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dab_align(%struct.trapframe* %0, i32 %1, i32 %2, %struct.thread* %3, %struct.ksig* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.ksig*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.thread* %3, %struct.thread** %10, align 8
  store %struct.ksig* %4, %struct.ksig** %11, align 8
  %12 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %13 = call i32 @TRAP_USERMODE(%struct.trapframe* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %5
  %16 = load %struct.thread*, %struct.thread** %10, align 8
  %17 = icmp ne %struct.thread* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.thread*, %struct.thread** %10, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18, %15
  %26 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.thread*, %struct.thread** %10, align 8
  %30 = load %struct.ksig*, %struct.ksig** %11, align 8
  %31 = call i32 @dab_fatal(%struct.trapframe* %26, i32 %27, i32 %28, %struct.thread* %29, %struct.ksig* %30)
  br label %32

32:                                               ; preds = %25, %18
  %33 = load i32, i32* @EFAULT, align 4
  %34 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %35 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.thread*, %struct.thread** %10, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %43 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %6, align 4
  br label %53

44:                                               ; preds = %5
  %45 = load %struct.ksig*, %struct.ksig** %11, align 8
  %46 = getelementptr inbounds %struct.ksig, %struct.ksig* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @SIGBUS, align 4
  %48 = load %struct.ksig*, %struct.ksig** %11, align 8
  %49 = getelementptr inbounds %struct.ksig, %struct.ksig* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %51 = load %struct.thread*, %struct.thread** %10, align 8
  %52 = getelementptr inbounds %struct.thread, %struct.thread* %51, i32 0, i32 0
  store %struct.trapframe* %50, %struct.trapframe** %52, align 8
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %44, %32
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @TRAP_USERMODE(%struct.trapframe*) #1

declare dso_local i32 @dab_fatal(%struct.trapframe*, i32, i32, %struct.thread*, %struct.ksig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
