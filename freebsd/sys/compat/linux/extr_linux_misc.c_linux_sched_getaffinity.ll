; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_sched_getaffinity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_sched_getaffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, i32, i32 }
%struct.linux_sched_getaffinity_args = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@CPU_LEVEL_WHICH = common dso_local global i32 0, align 4
@CPU_WHICH_TID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_sched_getaffinity(%struct.thread* %0, %struct.linux_sched_getaffinity_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_sched_getaffinity_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_sched_getaffinity_args* %1, %struct.linux_sched_getaffinity_args** %5, align 8
  %8 = load %struct.linux_sched_getaffinity_args*, %struct.linux_sched_getaffinity_args** %5, align 8
  %9 = getelementptr inbounds %struct.linux_sched_getaffinity_args, %struct.linux_sched_getaffinity_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 4
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = load %struct.linux_sched_getaffinity_args*, %struct.linux_sched_getaffinity_args** %5, align 8
  %18 = getelementptr inbounds %struct.linux_sched_getaffinity_args, %struct.linux_sched_getaffinity_args* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.thread* @linux_tdfind(%struct.thread* %16, i32 %19, i32 -1)
  store %struct.thread* %20, %struct.thread** %7, align 8
  %21 = load %struct.thread*, %struct.thread** %7, align 8
  %22 = icmp eq %struct.thread* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @ESRCH, align 4
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %15
  %26 = load %struct.thread*, %struct.thread** %7, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PROC_UNLOCK(i32 %28)
  %30 = load %struct.thread*, %struct.thread** %4, align 8
  %31 = load i32, i32* @CPU_LEVEL_WHICH, align 4
  %32 = load i32, i32* @CPU_WHICH_TID, align 4
  %33 = load %struct.thread*, %struct.thread** %7, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.linux_sched_getaffinity_args*, %struct.linux_sched_getaffinity_args** %5, align 8
  %37 = getelementptr inbounds %struct.linux_sched_getaffinity_args, %struct.linux_sched_getaffinity_args* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = call i32 @kern_cpuset_getaffinity(%struct.thread* %30, i32 %31, i32 %32, i32 %35, i32 4, i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %25
  %44 = load %struct.thread*, %struct.thread** %4, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 4, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %25
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %23, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.thread* @linux_tdfind(%struct.thread*, i32, i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

declare dso_local i32 @kern_cpuset_getaffinity(%struct.thread*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
