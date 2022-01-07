; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_schedule.c_linux_wait_on_atomic_t.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_schedule.c_linux_wait_on_atomic_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"watomic\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_wait_on_atomic_t(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %8, %struct.task_struct** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to i8*
  store i8* %10, i8** %6, align 8
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @sleepq_lock(i8* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @sleepq_release(i8* %18)
  store i32 0, i32* %7, align 4
  br label %32

20:                                               ; preds = %11
  %21 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @set_task_state(%struct.task_struct* %21, i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @linux_add_to_sleepqueue(i8* %24, %struct.task_struct* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %32

31:                                               ; preds = %20
  br label %11

32:                                               ; preds = %30, %17
  %33 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %34 = load i32, i32* @TASK_RUNNING, align 4
  %35 = call i32 @set_task_state(%struct.task_struct* %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @sleepq_lock(i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @sleepq_release(i8*) #1

declare dso_local i32 @set_task_state(%struct.task_struct*, i32) #1

declare dso_local i32 @linux_add_to_sleepqueue(i8*, %struct.task_struct*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
