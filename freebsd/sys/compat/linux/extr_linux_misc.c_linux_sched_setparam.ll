; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_sched_setparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_sched_setparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_sched_setparam_args = type { i32, i32 }
%struct.sched_param = type { i32 }

@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_sched_setparam(%struct.thread* %0, %struct.linux_sched_setparam_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_sched_setparam_args*, align 8
  %6 = alloca %struct.sched_param, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_sched_setparam_args* %1, %struct.linux_sched_setparam_args** %5, align 8
  %9 = load %struct.linux_sched_setparam_args*, %struct.linux_sched_setparam_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_sched_setparam_args, %struct.linux_sched_setparam_args* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @copyin(i32 %11, %struct.sched_param* %6, i32 4)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = load %struct.linux_sched_setparam_args*, %struct.linux_sched_setparam_args** %5, align 8
  %20 = getelementptr inbounds %struct.linux_sched_setparam_args, %struct.linux_sched_setparam_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.thread* @linux_tdfind(%struct.thread* %18, i32 %21, i32 -1)
  store %struct.thread* %22, %struct.thread** %7, align 8
  %23 = load %struct.thread*, %struct.thread** %7, align 8
  %24 = icmp eq %struct.thread* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @ESRCH, align 4
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %17
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = load %struct.thread*, %struct.thread** %7, align 8
  %30 = call i32 @kern_sched_setparam(%struct.thread* %28, %struct.thread* %29, %struct.sched_param* %6)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.thread*, %struct.thread** %7, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PROC_UNLOCK(i32 %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %27, %25, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @copyin(i32, %struct.sched_param*, i32) #1

declare dso_local %struct.thread* @linux_tdfind(%struct.thread*, i32, i32) #1

declare dso_local i32 @kern_sched_setparam(%struct.thread*, %struct.thread*, %struct.sched_param*) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
