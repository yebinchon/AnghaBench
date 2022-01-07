; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_tasklet.c_tasklet_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_tasklet.c_tasklet_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tasklet_worker = type { i32 }
%struct.tasklet_struct = type { i32, i32 (i32)*, i32 }

@curthread = common dso_local global i32 0, align 4
@tasklet_list = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@TASKLET_ST_EXEC = common dso_local global i32 0, align 4
@TASKLET_ST_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tasklet_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tasklet_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tasklet_worker*, align 8
  %4 = alloca %struct.tasklet_struct*, align 8
  %5 = alloca %struct.tasklet_struct*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.tasklet_worker*
  store %struct.tasklet_worker* %7, %struct.tasklet_worker** %3, align 8
  %8 = load i32, i32* @curthread, align 4
  %9 = call i32 @linux_set_current(i32 %8)
  %10 = load %struct.tasklet_worker*, %struct.tasklet_worker** %3, align 8
  %11 = call i32 @TASKLET_WORKER_LOCK(%struct.tasklet_worker* %10)
  %12 = load %struct.tasklet_worker*, %struct.tasklet_worker** %3, align 8
  %13 = getelementptr inbounds %struct.tasklet_worker, %struct.tasklet_worker* %12, i32 0, i32 0
  %14 = load i32, i32* @tasklet_list, align 4
  %15 = call %struct.tasklet_struct* @TAILQ_LAST(i32* %13, i32 %14)
  store %struct.tasklet_struct* %15, %struct.tasklet_struct** %5, align 8
  br label %16

16:                                               ; preds = %1, %67
  %17 = load %struct.tasklet_worker*, %struct.tasklet_worker** %3, align 8
  %18 = getelementptr inbounds %struct.tasklet_worker, %struct.tasklet_worker* %17, i32 0, i32 0
  %19 = call %struct.tasklet_struct* @TAILQ_FIRST(i32* %18)
  store %struct.tasklet_struct* %19, %struct.tasklet_struct** %4, align 8
  %20 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %21 = icmp eq %struct.tasklet_struct* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %68

23:                                               ; preds = %16
  %24 = load %struct.tasklet_worker*, %struct.tasklet_worker** %3, align 8
  %25 = getelementptr inbounds %struct.tasklet_worker, %struct.tasklet_worker* %24, i32 0, i32 0
  %26 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %27 = load i32, i32* @entry, align 4
  %28 = call i32 @TAILQ_REMOVE(i32* %25, %struct.tasklet_struct* %26, i32 %27)
  %29 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %30 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %29, i32 0, i32 2
  %31 = call i32 @atomic_read(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %23
  %34 = load %struct.tasklet_worker*, %struct.tasklet_worker** %3, align 8
  %35 = call i32 @TASKLET_WORKER_UNLOCK(%struct.tasklet_worker* %34)
  br label %36

36:                                               ; preds = %47, %33
  %37 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %38 = load i32, i32* @TASKLET_ST_EXEC, align 4
  %39 = call i32 @TASKLET_ST_SET(%struct.tasklet_struct* %37, i32 %38)
  %40 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %41 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %40, i32 0, i32 1
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %44 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %42(i32 %45)
  br label %47

47:                                               ; preds = %36
  %48 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %49 = load i32, i32* @TASKLET_ST_EXEC, align 4
  %50 = load i32, i32* @TASKLET_ST_IDLE, align 4
  %51 = call i64 @TASKLET_ST_CMPSET(%struct.tasklet_struct* %48, i32 %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %36, label %53

53:                                               ; preds = %47
  %54 = load %struct.tasklet_worker*, %struct.tasklet_worker** %3, align 8
  %55 = call i32 @TASKLET_WORKER_LOCK(%struct.tasklet_worker* %54)
  br label %62

56:                                               ; preds = %23
  %57 = load %struct.tasklet_worker*, %struct.tasklet_worker** %3, align 8
  %58 = getelementptr inbounds %struct.tasklet_worker, %struct.tasklet_worker* %57, i32 0, i32 0
  %59 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %60 = load i32, i32* @entry, align 4
  %61 = call i32 @TAILQ_INSERT_TAIL(i32* %58, %struct.tasklet_struct* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %64 = load %struct.tasklet_struct*, %struct.tasklet_struct** %5, align 8
  %65 = icmp eq %struct.tasklet_struct* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %68

67:                                               ; preds = %62
  br label %16

68:                                               ; preds = %66, %22
  %69 = load %struct.tasklet_worker*, %struct.tasklet_worker** %3, align 8
  %70 = call i32 @TASKLET_WORKER_UNLOCK(%struct.tasklet_worker* %69)
  ret void
}

declare dso_local i32 @linux_set_current(i32) #1

declare dso_local i32 @TASKLET_WORKER_LOCK(%struct.tasklet_worker*) #1

declare dso_local %struct.tasklet_struct* @TAILQ_LAST(i32*, i32) #1

declare dso_local %struct.tasklet_struct* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tasklet_struct*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @TASKLET_WORKER_UNLOCK(%struct.tasklet_worker*) #1

declare dso_local i32 @TASKLET_ST_SET(%struct.tasklet_struct*, i32) #1

declare dso_local i64 @TASKLET_ST_CMPSET(%struct.tasklet_struct*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.tasklet_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
