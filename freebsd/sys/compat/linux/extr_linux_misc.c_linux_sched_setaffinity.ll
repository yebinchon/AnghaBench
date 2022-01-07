; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_sched_setaffinity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_sched_setaffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }
%struct.linux_sched_setaffinity_args = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@CPU_LEVEL_WHICH = common dso_local global i32 0, align 4
@CPU_WHICH_TID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_sched_setaffinity(%struct.thread* %0, %struct.linux_sched_setaffinity_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_sched_setaffinity_args*, align 8
  %6 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_sched_setaffinity_args* %1, %struct.linux_sched_setaffinity_args** %5, align 8
  %7 = load %struct.linux_sched_setaffinity_args*, %struct.linux_sched_setaffinity_args** %5, align 8
  %8 = getelementptr inbounds %struct.linux_sched_setaffinity_args, %struct.linux_sched_setaffinity_args* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 4
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = load %struct.linux_sched_setaffinity_args*, %struct.linux_sched_setaffinity_args** %5, align 8
  %17 = getelementptr inbounds %struct.linux_sched_setaffinity_args, %struct.linux_sched_setaffinity_args* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.thread* @linux_tdfind(%struct.thread* %15, i32 %18, i32 -1)
  store %struct.thread* %19, %struct.thread** %6, align 8
  %20 = load %struct.thread*, %struct.thread** %6, align 8
  %21 = icmp eq %struct.thread* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @ESRCH, align 4
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %14
  %25 = load %struct.thread*, %struct.thread** %6, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PROC_UNLOCK(i32 %27)
  %29 = load %struct.thread*, %struct.thread** %4, align 8
  %30 = load i32, i32* @CPU_LEVEL_WHICH, align 4
  %31 = load i32, i32* @CPU_WHICH_TID, align 4
  %32 = load %struct.thread*, %struct.thread** %6, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.linux_sched_setaffinity_args*, %struct.linux_sched_setaffinity_args** %5, align 8
  %36 = getelementptr inbounds %struct.linux_sched_setaffinity_args, %struct.linux_sched_setaffinity_args* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @kern_cpuset_setaffinity(%struct.thread* %29, i32 %30, i32 %31, i32 %34, i32 4, i32* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %24, %22, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.thread* @linux_tdfind(%struct.thread*, i32, i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

declare dso_local i32 @kern_cpuset_setaffinity(%struct.thread*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
