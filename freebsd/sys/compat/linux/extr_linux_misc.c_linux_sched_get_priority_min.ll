; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_sched_get_priority_min.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_sched_get_priority_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_sched_get_priority_min_args = type { i32 }
%struct.sched_get_priority_min_args = type { i32 }

@SCHED_OTHER = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@SCHED_RR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_sched_get_priority_min(%struct.thread* %0, %struct.linux_sched_get_priority_min_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_sched_get_priority_min_args*, align 8
  %6 = alloca %struct.sched_get_priority_min_args, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_sched_get_priority_min_args* %1, %struct.linux_sched_get_priority_min_args** %5, align 8
  %7 = load %struct.linux_sched_get_priority_min_args*, %struct.linux_sched_get_priority_min_args** %5, align 8
  %8 = getelementptr inbounds %struct.linux_sched_get_priority_min_args, %struct.linux_sched_get_priority_min_args* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %19 [
    i32 129, label %10
    i32 130, label %13
    i32 128, label %16
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @SCHED_OTHER, align 4
  %12 = getelementptr inbounds %struct.sched_get_priority_min_args, %struct.sched_get_priority_min_args* %6, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  br label %21

13:                                               ; preds = %2
  %14 = load i32, i32* @SCHED_FIFO, align 4
  %15 = getelementptr inbounds %struct.sched_get_priority_min_args, %struct.sched_get_priority_min_args* %6, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @SCHED_RR, align 4
  %18 = getelementptr inbounds %struct.sched_get_priority_min_args, %struct.sched_get_priority_min_args* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %16, %13, %10
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = call i32 @sys_sched_get_priority_min(%struct.thread* %22, %struct.sched_get_priority_min_args* %6)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %19
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @sys_sched_get_priority_min(%struct.thread*, %struct.sched_get_priority_min_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
