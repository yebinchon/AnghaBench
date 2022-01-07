; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_schedule.c_linux_wait_on_bit_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_schedule.c_linux_wait_on_bit_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"wbit\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_wait_on_bit_timeout(i64* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 1, i32* %8, align 4
  br label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %15
  br label %21

21:                                               ; preds = %20, %14
  %22 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %22, %struct.task_struct** %9, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @bit_to_wchan(i64* %23, i32 %24)
  store i8* %25, i8** %10, align 8
  br label %26

26:                                               ; preds = %51, %21
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @sleepq_lock(i8* %27)
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 1, %31
  %33 = sext i32 %32 to i64
  %34 = and i64 %30, %33
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @sleepq_release(i8* %37)
  store i32 0, i32* %11, align 4
  br label %52

39:                                               ; preds = %26
  %40 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @set_task_state(%struct.task_struct* %40, i32 %41)
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @linux_add_to_sleepqueue(i8* %43, %struct.task_struct* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %52

51:                                               ; preds = %39
  br label %26

52:                                               ; preds = %50, %36
  %53 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %54 = load i32, i32* @TASK_RUNNING, align 4
  %55 = call i32 @set_task_state(%struct.task_struct* %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

declare dso_local i8* @bit_to_wchan(i64*, i32) #1

declare dso_local i32 @sleepq_lock(i8*) #1

declare dso_local i32 @sleepq_release(i8*) #1

declare dso_local i32 @set_task_state(%struct.task_struct*, i32) #1

declare dso_local i32 @linux_add_to_sleepqueue(i8*, %struct.task_struct*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
