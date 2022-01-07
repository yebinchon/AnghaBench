; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdSchedule.c_acpi_task_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdSchedule.c_acpi_task_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_task_ctx = type { i32, i32, i8*, i32 }

@acpi_max_tasks = common dso_local global i32 0, align 4
@acpi_tasks = common dso_local global %struct.acpi_task_ctx* null, align 8
@ACPI_TASK_FREE = common dso_local global i32 0, align 4
@ACPI_TASK_USED = common dso_local global i32 0, align 4
@acpi_task_count = common dso_local global i32 0, align 4
@acpi_tasks_hiwater = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"AcpiOsExecute: failed to enqueue task, consider increasing the debug.acpi.max_tasks tunable\0A\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@acpi_task_execute = common dso_local global i32 0, align 4
@acpi_taskq_started = common dso_local global i64 0, align 8
@ACPI_TASK_ENQUEUED = common dso_local global i32 0, align 4
@acpi_taskq = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"AcpiOsExecute: task queue not started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @acpi_task_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_task_enqueue(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.acpi_task_ctx*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.acpi_task_ctx* null, %struct.acpi_task_ctx** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %32, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @acpi_max_tasks, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.acpi_task_ctx*, %struct.acpi_task_ctx** @acpi_tasks, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.acpi_task_ctx, %struct.acpi_task_ctx* %15, i64 %17
  %19 = getelementptr inbounds %struct.acpi_task_ctx, %struct.acpi_task_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* @ACPI_TASK_FREE, align 4
  %21 = load i32, i32* @ACPI_TASK_USED, align 4
  %22 = call i32 @atomic_cmpset_int(i32* %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = load %struct.acpi_task_ctx*, %struct.acpi_task_ctx** @acpi_tasks, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.acpi_task_ctx, %struct.acpi_task_ctx* %25, i64 %27
  store %struct.acpi_task_ctx* %28, %struct.acpi_task_ctx** %8, align 8
  %29 = load i32, i32* @acpi_task_count, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @acpi_task_count, align 4
  br label %35

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %10

35:                                               ; preds = %24, %10
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @acpi_tasks_hiwater, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @acpi_tasks_hiwater, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @atomic_cmpset_int(i32* @acpi_tasks_hiwater, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.acpi_task_ctx*, %struct.acpi_task_ctx** %8, align 8
  %45 = icmp eq %struct.acpi_task_ctx* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i32 @printf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %48, i32* %4, align 4
  br label %81

49:                                               ; preds = %43
  %50 = load %struct.acpi_task_ctx*, %struct.acpi_task_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.acpi_task_ctx, %struct.acpi_task_ctx* %50, i32 0, i32 1
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @acpi_task_execute, align 4
  %54 = load %struct.acpi_task_ctx*, %struct.acpi_task_ctx** %8, align 8
  %55 = call i32 @TASK_INIT(i32* %51, i32 %52, i32 %53, %struct.acpi_task_ctx* %54)
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.acpi_task_ctx*, %struct.acpi_task_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.acpi_task_ctx, %struct.acpi_task_ctx* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.acpi_task_ctx*, %struct.acpi_task_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.acpi_task_ctx, %struct.acpi_task_ctx* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i64, i64* @acpi_taskq_started, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %49
  %65 = load %struct.acpi_task_ctx*, %struct.acpi_task_ctx** %8, align 8
  %66 = getelementptr inbounds %struct.acpi_task_ctx, %struct.acpi_task_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* @ACPI_TASK_ENQUEUED, align 4
  %68 = call i32 @atomic_set_int(i32* %66, i32 %67)
  %69 = load i32, i32* @acpi_taskq, align 4
  %70 = load %struct.acpi_task_ctx*, %struct.acpi_task_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.acpi_task_ctx, %struct.acpi_task_ctx* %70, i32 0, i32 1
  %72 = call i32 @taskqueue_enqueue(i32 %69, i32* %71)
  %73 = load i32, i32* @AE_OK, align 4
  store i32 %73, i32* %4, align 4
  br label %81

74:                                               ; preds = %49
  %75 = load i64, i64* @bootverbose, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, i32* @AE_OK, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %64, %46
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.acpi_task_ctx*) #1

declare dso_local i32 @atomic_set_int(i32*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
