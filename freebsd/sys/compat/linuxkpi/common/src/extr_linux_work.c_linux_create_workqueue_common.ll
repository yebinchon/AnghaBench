; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_work.c_linux_create_workqueue_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_work.c_linux_create_workqueue_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32, i32, i32, i32 }

@linux_default_wq_cpus = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"linux_wq_exec\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.workqueue_struct* @linux_create_workqueue_common(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.workqueue_struct*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @linux_default_wq_cpus, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.workqueue_struct* @kmalloc(i32 16, i32 %13)
  store %struct.workqueue_struct* %14, %struct.workqueue_struct** %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %18 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %19 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %18, i32 0, i32 2
  %20 = call i32 @taskqueue_create(i8* %15, i32 %16, i32 %17, i32* %19)
  %21 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %22 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %24 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %23, i32 0, i32 3
  %25 = call i32 @atomic_set(i32* %24, i32 0)
  %26 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %27 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %26, i32 0, i32 2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PWAIT, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @taskqueue_start_threads(i32* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %33 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %32, i32 0, i32 1
  %34 = call i32 @TAILQ_INIT(i32* %33)
  %35 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %36 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %35, i32 0, i32 0
  %37 = load i32, i32* @MTX_DEF, align 4
  %38 = call i32 @mtx_init(i32* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %37)
  %39 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  ret %struct.workqueue_struct* %39
}

declare dso_local %struct.workqueue_struct* @kmalloc(i32, i32) #1

declare dso_local i32 @taskqueue_create(i8*, i32, i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
