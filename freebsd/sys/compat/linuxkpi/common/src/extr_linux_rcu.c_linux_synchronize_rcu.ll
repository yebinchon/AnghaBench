; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_rcu.c_linux_synchronize_rcu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_rcu.c_linux_synchronize_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }

@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"linux_synchronize_rcu() can sleep\00", align 1
@curthread = common dso_local global %struct.thread* null, align 8
@cpuid = common dso_local global i32 0, align 4
@linux_epoch = common dso_local global i32 0, align 4
@linux_synchronize_rcu_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_synchronize_rcu() #0 {
  %1 = alloca %struct.thread*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i64 (...) @RCU_SKIP()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %62

9:                                                ; preds = %0
  %10 = load i32, i32* @WARN_GIANTOK, align 4
  %11 = load i32, i32* @WARN_SLEEPOK, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @WITNESS_WARN(i32 %12, i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %14, %struct.thread** %1, align 8
  %15 = load %struct.thread*, %struct.thread** %1, align 8
  %16 = call i32 @thread_lock(%struct.thread* %15)
  %17 = call i32 (...) @DROP_GIANT()
  %18 = load i32, i32* @cpuid, align 4
  %19 = call i32 @PCPU_GET(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.thread*, %struct.thread** %1, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.thread*, %struct.thread** %1, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load %struct.thread*, %struct.thread** %1, align 8
  %27 = call i32 @sched_is_bound(%struct.thread* %26)
  store i32 %27, i32* %2, align 4
  %28 = load %struct.thread*, %struct.thread** %1, align 8
  %29 = call i32 @sched_unbind(%struct.thread* %28)
  %30 = load %struct.thread*, %struct.thread** %1, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.thread*, %struct.thread** %1, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @sched_bind(%struct.thread* %32, i32 %33)
  %35 = call i32 @ck_epoch_synchronize_wait(i32* @linux_epoch, i32* @linux_synchronize_rcu_cb, i32* null)
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %9
  %39 = load %struct.thread*, %struct.thread** %1, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @sched_bind(%struct.thread* %39, i32 %40)
  br label %52

42:                                               ; preds = %9
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.thread*, %struct.thread** %1, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @sched_bind(%struct.thread* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.thread*, %struct.thread** %1, align 8
  %51 = call i32 @sched_unbind(%struct.thread* %50)
  br label %52

52:                                               ; preds = %49, %38
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.thread*, %struct.thread** %1, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.thread*, %struct.thread** %1, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @sched_prio(%struct.thread* %56, i32 %57)
  %59 = load %struct.thread*, %struct.thread** %1, align 8
  %60 = call i32 @thread_unlock(%struct.thread* %59)
  %61 = call i32 (...) @PICKUP_GIANT()
  br label %62

62:                                               ; preds = %52, %8
  ret void
}

declare dso_local i64 @RCU_SKIP(...) #1

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @DROP_GIANT(...) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @sched_is_bound(%struct.thread*) #1

declare dso_local i32 @sched_unbind(%struct.thread*) #1

declare dso_local i32 @sched_bind(%struct.thread*, i32) #1

declare dso_local i32 @ck_epoch_synchronize_wait(i32*, i32*, i32*) #1

declare dso_local i32 @sched_prio(%struct.thread*, i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
