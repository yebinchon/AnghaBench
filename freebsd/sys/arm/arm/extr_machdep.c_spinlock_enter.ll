; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep.c_spinlock_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep.c_spinlock_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@PSR_I = common dso_local global i32 0, align 4
@PSR_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spinlock_enter() #0 {
  %1 = alloca %struct.thread*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %3, %struct.thread** %1, align 8
  %4 = load %struct.thread*, %struct.thread** %1, align 8
  %5 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %0
  %10 = load i32, i32* @PSR_I, align 4
  %11 = load i32, i32* @PSR_F, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @disable_interrupts(i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load %struct.thread*, %struct.thread** %1, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.thread*, %struct.thread** %1, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  br label %27

21:                                               ; preds = %0
  %22 = load %struct.thread*, %struct.thread** %1, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %9
  %28 = call i32 (...) @critical_enter()
  ret void
}

declare dso_local i32 @disable_interrupts(i32) #1

declare dso_local i32 @critical_enter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
