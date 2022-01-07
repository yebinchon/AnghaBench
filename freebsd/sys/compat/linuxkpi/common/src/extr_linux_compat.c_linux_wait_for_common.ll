; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_wait_for_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_wait_for_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.completion = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@SLEEPQ_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SLEEPQ_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"completion\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_wait_for_common(%struct.completion* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.completion*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.completion* %0, %struct.completion** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i64 (...) @SCHEDULER_STOPPED()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

11:                                               ; preds = %2
  %12 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %12, %struct.task_struct** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @SLEEPQ_INTERRUPTIBLE, align 4
  %17 = load i32, i32* @SLEEPQ_SLEEP, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %5, align 4
  br label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @SLEEPQ_SLEEP, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %19, %15
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %58, %21
  %23 = load %struct.completion*, %struct.completion** %4, align 8
  %24 = call i32 @sleepq_lock(%struct.completion* %23)
  %25 = load %struct.completion*, %struct.completion** %4, align 8
  %26 = getelementptr inbounds %struct.completion, %struct.completion* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %59

30:                                               ; preds = %22
  %31 = load %struct.completion*, %struct.completion** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @sleepq_add(%struct.completion* %31, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %32, i32 0)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SLEEPQ_INTERRUPTIBLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %30
  %39 = call i32 (...) @DROP_GIANT()
  %40 = load %struct.completion*, %struct.completion** %4, align 8
  %41 = call i32 @sleepq_wait_sig(%struct.completion* %40, i32 0)
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  %43 = call i32 (...) @PICKUP_GIANT()
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @linux_schedule_save_interrupt_value(%struct.task_struct* %47, i32 %48)
  %50 = load i32, i32* @ERESTARTSYS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %73

52:                                               ; preds = %38
  br label %58

53:                                               ; preds = %30
  %54 = call i32 (...) @DROP_GIANT()
  %55 = load %struct.completion*, %struct.completion** %4, align 8
  %56 = call i32 @sleepq_wait(%struct.completion* %55, i32 0)
  %57 = call i32 (...) @PICKUP_GIANT()
  br label %58

58:                                               ; preds = %53, %52
  br label %22

59:                                               ; preds = %29
  %60 = load %struct.completion*, %struct.completion** %4, align 8
  %61 = getelementptr inbounds %struct.completion, %struct.completion* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @UINT_MAX, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.completion*, %struct.completion** %4, align 8
  %67 = getelementptr inbounds %struct.completion, %struct.completion* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %65, %59
  %71 = load %struct.completion*, %struct.completion** %4, align 8
  %72 = call i32 @sleepq_release(%struct.completion* %71)
  br label %73

73:                                               ; preds = %70, %46
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %10
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @sleepq_lock(%struct.completion*) #1

declare dso_local i32 @sleepq_add(%struct.completion*, i32*, i8*, i32, i32) #1

declare dso_local i32 @DROP_GIANT(...) #1

declare dso_local i32 @sleepq_wait_sig(%struct.completion*, i32) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

declare dso_local i32 @linux_schedule_save_interrupt_value(%struct.task_struct*, i32) #1

declare dso_local i32 @sleepq_wait(%struct.completion*, i32) #1

declare dso_local i32 @sleepq_release(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
