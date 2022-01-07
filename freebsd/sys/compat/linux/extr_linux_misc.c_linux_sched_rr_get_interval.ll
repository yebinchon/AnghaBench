; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_sched_rr_get_interval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_sched_rr_get_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_sched_rr_get_interval_args = type { i64, i32 }
%struct.timespec = type { i32 }
%struct.l_timespec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_sched_rr_get_interval(%struct.thread* %0, %struct.linux_sched_rr_get_interval_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_sched_rr_get_interval_args*, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.l_timespec, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_sched_rr_get_interval_args* %1, %struct.linux_sched_rr_get_interval_args** %5, align 8
  %10 = load %struct.linux_sched_rr_get_interval_args*, %struct.linux_sched_rr_get_interval_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_sched_rr_get_interval_args, %struct.linux_sched_rr_get_interval_args* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = load %struct.linux_sched_rr_get_interval_args*, %struct.linux_sched_rr_get_interval_args** %5, align 8
  %19 = getelementptr inbounds %struct.linux_sched_rr_get_interval_args, %struct.linux_sched_rr_get_interval_args* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.thread* @linux_tdfind(%struct.thread* %17, i64 %20, i32 -1)
  store %struct.thread* %21, %struct.thread** %8, align 8
  %22 = load %struct.thread*, %struct.thread** %8, align 8
  %23 = icmp eq %struct.thread* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @ESRCH, align 4
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %16
  %27 = load %struct.thread*, %struct.thread** %4, align 8
  %28 = load %struct.thread*, %struct.thread** %8, align 8
  %29 = call i32 @kern_sched_rr_get_interval_td(%struct.thread* %27, %struct.thread* %28, %struct.timespec* %6)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.thread*, %struct.thread** %8, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PROC_UNLOCK(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %49

38:                                               ; preds = %26
  %39 = call i32 @native_to_linux_timespec(%struct.l_timespec* %7, %struct.timespec* %6)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %38
  %45 = load %struct.linux_sched_rr_get_interval_args*, %struct.linux_sched_rr_get_interval_args** %5, align 8
  %46 = getelementptr inbounds %struct.linux_sched_rr_get_interval_args, %struct.linux_sched_rr_get_interval_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @copyout(%struct.l_timespec* %7, i32 %47, i32 4)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %42, %36, %24, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.thread* @linux_tdfind(%struct.thread*, i64, i32) #1

declare dso_local i32 @kern_sched_rr_get_interval_td(%struct.thread*, %struct.thread*, %struct.timespec*) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

declare dso_local i32 @native_to_linux_timespec(%struct.l_timespec*, %struct.timespec*) #1

declare dso_local i32 @copyout(%struct.l_timespec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
