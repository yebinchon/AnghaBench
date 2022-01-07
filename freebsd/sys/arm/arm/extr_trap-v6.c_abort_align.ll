; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_trap-v6.c_abort_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_trap-v6.c_abort_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i32 }
%struct.thread = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.ksig = type { i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@BUS_ADRALN = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapframe*, i32, i32, i32, i32, %struct.thread*, %struct.ksig*)* @abort_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abort_align(%struct.trapframe* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.thread* %5, %struct.ksig* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.trapframe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.thread*, align 8
  %15 = alloca %struct.ksig*, align 8
  %16 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.thread* %5, %struct.thread** %14, align 8
  store %struct.ksig* %6, %struct.ksig** %15, align 8
  %17 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %18 = call i32 @TRAPF_USERMODE(%struct.trapframe* %17)
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %16, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %7
  %22 = load %struct.thread*, %struct.thread** %14, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %21
  %27 = load %struct.thread*, %struct.thread** %14, align 8
  %28 = icmp ne %struct.thread* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load %struct.thread*, %struct.thread** %14, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load i32, i32* @EFAULT, align 4
  %38 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %39 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.thread*, %struct.thread** %14, align 8
  %41 = getelementptr inbounds %struct.thread, %struct.thread* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = ptrtoint i32* %44 to i32
  %46 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %47 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %8, align 4
  br label %67

48:                                               ; preds = %29, %26, %21
  %49 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.thread*, %struct.thread** %14, align 8
  %55 = load %struct.ksig*, %struct.ksig** %15, align 8
  %56 = call i32 @abort_fatal(%struct.trapframe* %49, i32 %50, i32 %51, i32 %52, i32 %53, %struct.thread* %54, %struct.ksig* %55)
  br label %57

57:                                               ; preds = %48, %7
  %58 = load i32, i32* @BUS_ADRALN, align 4
  %59 = load %struct.ksig*, %struct.ksig** %15, align 8
  %60 = getelementptr inbounds %struct.ksig, %struct.ksig* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @SIGBUS, align 4
  %62 = load %struct.ksig*, %struct.ksig** %15, align 8
  %63 = getelementptr inbounds %struct.ksig, %struct.ksig* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.ksig*, %struct.ksig** %15, align 8
  %66 = getelementptr inbounds %struct.ksig, %struct.ksig* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  store i32 1, i32* %8, align 4
  br label %67

67:                                               ; preds = %57, %36
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i32 @TRAPF_USERMODE(%struct.trapframe*) #1

declare dso_local i32 @abort_fatal(%struct.trapframe*, i32, i32, i32, i32, %struct.thread*, %struct.ksig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
