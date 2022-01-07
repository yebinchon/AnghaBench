; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_schedule.c_linux_schedule_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_schedule.c_linux_schedule_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@TASK_WAKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_schedule_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %8, %struct.task_struct** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %12
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i32, i32* @ticks, align 4
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = call i32 @sleepq_lock(%struct.task_struct* %22)
  %24 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 0
  %26 = call i32 @atomic_read(i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @TASK_WAKING, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %32 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @linux_add_to_sleepqueue(%struct.task_struct* %31, %struct.task_struct* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %39

36:                                               ; preds = %18
  %37 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %38 = call i32 @sleepq_release(%struct.task_struct* %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %41 = load i32, i32* @TASK_RUNNING, align 4
  %42 = call i32 @set_task_state(%struct.task_struct* %40, i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  store i32 %46, i32* %2, align 4
  br label %73

47:                                               ; preds = %39
  %48 = load i32, i32* @ticks, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ERESTARTSYS, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  br label %71

59:                                               ; preds = %55, %47
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %70

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %63
  br label %70

70:                                               ; preds = %69, %62
  br label %71

71:                                               ; preds = %70, %58
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %45
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @sleepq_lock(%struct.task_struct*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @linux_add_to_sleepqueue(%struct.task_struct*, %struct.task_struct*, i8*, i32, i32) #1

declare dso_local i32 @sleepq_release(%struct.task_struct*) #1

declare dso_local i32 @set_task_state(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
