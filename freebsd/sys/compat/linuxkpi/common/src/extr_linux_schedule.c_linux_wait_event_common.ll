; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_schedule.c_linux_wait_event_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_schedule.c_linux_wait_event_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@TASK_WAKING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"wevent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_wait_event_common(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.task_struct*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @spin_unlock_irq(i32* %16)
  br label %18

18:                                               ; preds = %15, %5
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %28

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %22
  br label %28

28:                                               ; preds = %27, %21
  %29 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %29, %struct.task_struct** %11, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PHOLD(i32 %34)
  %36 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %37 = call i32 @sleepq_lock(%struct.task_struct* %36)
  %38 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %39 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 1
  %40 = call i64 @atomic_read(i32* %39)
  %41 = load i64, i64* @TASK_WAKING, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %28
  %44 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %45 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @linux_add_to_sleepqueue(%struct.task_struct* %44, %struct.task_struct* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  store i32 %48, i32* %12, align 4
  br label %52

49:                                               ; preds = %28
  %50 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %51 = call i32 @sleepq_release(%struct.task_struct* %50)
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %49, %43
  %53 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %54 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PRELE(i32 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @spin_lock_irq(i32* %62)
  br label %64

64:                                               ; preds = %61, %52
  %65 = load i32, i32* %12, align 4
  ret i32 %65
}

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @PHOLD(i32) #1

declare dso_local i32 @sleepq_lock(%struct.task_struct*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @linux_add_to_sleepqueue(%struct.task_struct*, %struct.task_struct*, i8*, i32, i32) #1

declare dso_local i32 @sleepq_release(%struct.task_struct*) #1

declare dso_local i32 @PRELE(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
