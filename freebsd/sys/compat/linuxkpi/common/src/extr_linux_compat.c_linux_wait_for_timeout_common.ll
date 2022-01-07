; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_wait_for_timeout_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_wait_for_timeout_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.completion = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@SLEEPQ_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SLEEPQ_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"completion\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_wait_for_timeout_common(%struct.completion* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.completion*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.completion* %0, %struct.completion** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @jiffies, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = call i64 (...) @SCHEDULER_STOPPED()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %93

17:                                               ; preds = %3
  %18 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %18, %struct.task_struct** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @SLEEPQ_INTERRUPTIBLE, align 4
  %23 = load i32, i32* @SLEEPQ_SLEEP, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %7, align 4
  br label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @SLEEPQ_SLEEP, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %74, %27
  %29 = load %struct.completion*, %struct.completion** %5, align 8
  %30 = call i32 @sleepq_lock(%struct.completion* %29)
  %31 = load %struct.completion*, %struct.completion** %5, align 8
  %32 = getelementptr inbounds %struct.completion, %struct.completion* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %75

36:                                               ; preds = %28
  %37 = load %struct.completion*, %struct.completion** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @sleepq_add(%struct.completion* %37, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %38, i32 0)
  %40 = load %struct.completion*, %struct.completion** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @linux_timer_jiffies_until(i32 %41)
  %43 = call i32 @sleepq_set_timeout(%struct.completion* %40, i32 %42)
  %44 = call i32 (...) @DROP_GIANT()
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SLEEPQ_INTERRUPTIBLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load %struct.completion*, %struct.completion** %5, align 8
  %51 = call i32 @sleepq_timedwait_sig(%struct.completion* %50, i32 0)
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %57

53:                                               ; preds = %36
  %54 = load %struct.completion*, %struct.completion** %5, align 8
  %55 = call i32 @sleepq_timedwait(%struct.completion* %54, i32 0)
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = call i32 (...) @PICKUP_GIANT()
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @EWOULDBLOCK, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %73

67:                                               ; preds = %61
  %68 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @linux_schedule_save_interrupt_value(%struct.task_struct* %68, i32 %69)
  %71 = load i32, i32* @ERESTARTSYS, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %67, %66
  br label %91

74:                                               ; preds = %57
  br label %28

75:                                               ; preds = %35
  %76 = load %struct.completion*, %struct.completion** %5, align 8
  %77 = getelementptr inbounds %struct.completion, %struct.completion* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @UINT_MAX, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.completion*, %struct.completion** %5, align 8
  %83 = getelementptr inbounds %struct.completion, %struct.completion* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %81, %75
  %87 = load %struct.completion*, %struct.completion** %5, align 8
  %88 = call i32 @sleepq_release(%struct.completion* %87)
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @linux_timer_jiffies_until(i32 %89)
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %86, %73
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %16
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @sleepq_lock(%struct.completion*) #1

declare dso_local i32 @sleepq_add(%struct.completion*, i32*, i8*, i32, i32) #1

declare dso_local i32 @sleepq_set_timeout(%struct.completion*, i32) #1

declare dso_local i32 @linux_timer_jiffies_until(i32) #1

declare dso_local i32 @DROP_GIANT(...) #1

declare dso_local i32 @sleepq_timedwait_sig(%struct.completion*, i32) #1

declare dso_local i32 @sleepq_timedwait(%struct.completion*, i32) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

declare dso_local i32 @linux_schedule_save_interrupt_value(%struct.task_struct*, i32) #1

declare dso_local i32 @sleepq_release(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
