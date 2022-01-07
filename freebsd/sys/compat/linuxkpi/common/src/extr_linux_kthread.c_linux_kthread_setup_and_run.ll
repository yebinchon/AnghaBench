; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_kthread.c_linux_kthread_setup_and_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_kthread.c_linux_kthread_setup_and_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i8*, i32* }
%struct.thread = type { %struct.task_struct* }

@SWI_NET = common dso_local global i32 0, align 4
@SRQ_BORING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.task_struct* @linux_kthread_setup_and_run(%struct.thread* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.task_struct*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = call i32 @linux_set_current(%struct.thread* %8)
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  store %struct.task_struct* %12, %struct.task_struct** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = call i32 @thread_lock(%struct.thread* %19)
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = load i32, i32* @SWI_NET, align 4
  %23 = call i32 @PI_SWI(i32 %22)
  %24 = call i32 @sched_prio(%struct.thread* %21, i32 %23)
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = load i32, i32* @SRQ_BORING, align 4
  %27 = call i32 @sched_add(%struct.thread* %25, i32 %26)
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = call i32 @thread_unlock(%struct.thread* %28)
  %30 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  ret %struct.task_struct* %30
}

declare dso_local i32 @linux_set_current(%struct.thread*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @sched_prio(%struct.thread*, i32) #1

declare dso_local i32 @PI_SWI(i32) #1

declare dso_local i32 @sched_add(%struct.thread*, i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
