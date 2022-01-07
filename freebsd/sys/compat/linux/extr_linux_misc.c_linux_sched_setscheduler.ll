; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_sched_setscheduler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_sched_setscheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_sched_setscheduler_args = type { i32, i32, i32 }
%struct.sched_param = type { i32 }

@SCHED_OTHER = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@SCHED_RR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_sched_setscheduler(%struct.thread* %0, %struct.linux_sched_setscheduler_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_sched_setscheduler_args*, align 8
  %6 = alloca %struct.sched_param, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_sched_setscheduler_args* %1, %struct.linux_sched_setscheduler_args** %5, align 8
  %10 = load %struct.linux_sched_setscheduler_args*, %struct.linux_sched_setscheduler_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_sched_setscheduler_args, %struct.linux_sched_setscheduler_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %19 [
    i32 129, label %13
    i32 130, label %15
    i32 128, label %17
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @SCHED_OTHER, align 4
  store i32 %14, i32* %9, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @SCHED_FIFO, align 4
  store i32 %16, i32* %9, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @SCHED_RR, align 4
  store i32 %18, i32* %9, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %50

21:                                               ; preds = %17, %15, %13
  %22 = load %struct.linux_sched_setscheduler_args*, %struct.linux_sched_setscheduler_args** %5, align 8
  %23 = getelementptr inbounds %struct.linux_sched_setscheduler_args, %struct.linux_sched_setscheduler_args* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @copyin(i32 %24, %struct.sched_param* %6, i32 4)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %50

30:                                               ; preds = %21
  %31 = load %struct.thread*, %struct.thread** %4, align 8
  %32 = load %struct.linux_sched_setscheduler_args*, %struct.linux_sched_setscheduler_args** %5, align 8
  %33 = getelementptr inbounds %struct.linux_sched_setscheduler_args, %struct.linux_sched_setscheduler_args* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.thread* @linux_tdfind(%struct.thread* %31, i32 %34, i32 -1)
  store %struct.thread* %35, %struct.thread** %7, align 8
  %36 = load %struct.thread*, %struct.thread** %7, align 8
  %37 = icmp eq %struct.thread* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @ESRCH, align 4
  store i32 %39, i32* %3, align 4
  br label %50

40:                                               ; preds = %30
  %41 = load %struct.thread*, %struct.thread** %4, align 8
  %42 = load %struct.thread*, %struct.thread** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @kern_sched_setscheduler(%struct.thread* %41, %struct.thread* %42, i32 %43, %struct.sched_param* %6)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.thread*, %struct.thread** %7, align 8
  %46 = getelementptr inbounds %struct.thread, %struct.thread* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PROC_UNLOCK(i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %40, %38, %28, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @copyin(i32, %struct.sched_param*, i32) #1

declare dso_local %struct.thread* @linux_tdfind(%struct.thread*, i32, i32) #1

declare dso_local i32 @kern_sched_setscheduler(%struct.thread*, %struct.thread*, i32, %struct.sched_param*) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
