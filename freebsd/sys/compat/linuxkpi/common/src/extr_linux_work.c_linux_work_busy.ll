; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_work.c_linux_work_busy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_work.c_linux_work_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.taskqueue* }
%struct.taskqueue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_work_busy(%struct.work_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.work_struct*, align 8
  %4 = alloca %struct.taskqueue*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %3, align 8
  %5 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %6 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %5, i32 0, i32 2
  %7 = call i32 @atomic_read(i32* %6)
  switch i32 %7, label %19 [
    i32 128, label %8
    i32 129, label %9
  ]

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %11 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.taskqueue*, %struct.taskqueue** %13, align 8
  store %struct.taskqueue* %14, %struct.taskqueue** %4, align 8
  %15 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %16 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %17 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %16, i32 0, i32 0
  %18 = call i32 @taskqueue_poll_is_busy(%struct.taskqueue* %15, i32* %17)
  store i32 %18, i32* %2, align 4
  br label %20

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %9, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @taskqueue_poll_is_busy(%struct.taskqueue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
