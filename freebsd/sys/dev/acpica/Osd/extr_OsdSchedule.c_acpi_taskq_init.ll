; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdSchedule.c_acpi_taskq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdSchedule.c_acpi_taskq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"acpi_task\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@acpi_taskq = common dso_local global i32 0, align 4
@acpi_max_threads = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@acpi_task_count = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"AcpiOsExecute: enqueue %d pending tasks\0A\00", align 1
@acpi_max_tasks = common dso_local global i32 0, align 4
@acpi_tasks = common dso_local global %struct.TYPE_2__* null, align 8
@ACPI_TASK_USED = common dso_local global i32 0, align 4
@ACPI_TASK_ENQUEUED = common dso_local global i32 0, align 4
@acpi_taskq_started = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @acpi_taskq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_taskq_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @M_NOWAIT, align 4
  %5 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4, i32* @taskqueue_thread_enqueue, i32* @acpi_taskq)
  store i32 %5, i32* @acpi_taskq, align 4
  %6 = load i32, i32* @acpi_max_threads, align 4
  %7 = load i32, i32* @PWAIT, align 4
  %8 = call i32 @taskqueue_start_threads(i32* @acpi_taskq, i32 %6, i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* @acpi_task_count, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %1
  %12 = load i64, i64* @bootverbose, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, i64* @acpi_task_count, align 8
  %16 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  br label %17

17:                                               ; preds = %14, %11
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @acpi_max_tasks, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_tasks, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* @ACPI_TASK_USED, align 4
  %29 = load i32, i32* @ACPI_TASK_USED, align 4
  %30 = load i32, i32* @ACPI_TASK_ENQUEUED, align 4
  %31 = or i32 %29, %30
  %32 = call i64 @atomic_cmpset_int(i32* %27, i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load i32, i32* @acpi_taskq, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_tasks, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @taskqueue_enqueue(i32 %35, i32* %40)
  br label %42

42:                                               ; preds = %34, %22
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %18

46:                                               ; preds = %18
  br label %47

47:                                               ; preds = %46, %1
  store i32 1, i32* @acpi_taskq_started, align 4
  ret void
}

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32*, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i64 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
