; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_kthread.c_linux_kthread_parkme.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_kthread.c_linux_kthread_parkme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_PARKED = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@KTHREAD_IS_PARKED_MASK = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_kthread_parkme() #0 {
  %1 = alloca %struct.task_struct*, align 8
  %2 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %2, %struct.task_struct** %1, align 8
  %3 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %4 = load i32, i32* @TASK_PARKED, align 4
  %5 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @set_task_state(%struct.task_struct* %3, i32 %6)
  br label %8

8:                                                ; preds = %24, %0
  %9 = call i64 (...) @linux_kthread_should_park()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %20, %11
  %13 = load i32, i32* @KTHREAD_IS_PARKED_MASK, align 4
  %14 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = call i32 @atomic_fetch_or(i32 %13, i32* %15)
  %17 = load i32, i32* @KTHREAD_IS_PARKED_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 1
  %23 = call i32 @complete(i32* %22)
  br label %12

24:                                               ; preds = %12
  %25 = call i32 (...) @schedule()
  %26 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %27 = load i32, i32* @TASK_PARKED, align 4
  %28 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @set_task_state(%struct.task_struct* %26, i32 %29)
  br label %8

31:                                               ; preds = %8
  %32 = load i32, i32* @KTHREAD_IS_PARKED_MASK, align 4
  %33 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 0
  %35 = call i32 @atomic_andnot(i32 %32, i32* %34)
  %36 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %37 = load i32, i32* @TASK_RUNNING, align 4
  %38 = call i32 @set_task_state(%struct.task_struct* %36, i32 %37)
  ret void
}

declare dso_local i32 @set_task_state(%struct.task_struct*, i32) #1

declare dso_local i64 @linux_kthread_should_park(...) #1

declare dso_local i32 @atomic_fetch_or(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @atomic_andnot(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
