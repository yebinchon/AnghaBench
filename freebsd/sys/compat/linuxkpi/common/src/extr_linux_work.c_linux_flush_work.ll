; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_work.c_linux_flush_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_work.c_linux_flush_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.taskqueue* }
%struct.taskqueue = type { i32 }

@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"linux_flush_work() might sleep\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_flush_work(%struct.work_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.work_struct*, align 8
  %4 = alloca %struct.taskqueue*, align 8
  %5 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %3, align 8
  %6 = load i32, i32* @WARN_GIANTOK, align 4
  %7 = load i32, i32* @WARN_SLEEPOK, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @WITNESS_WARN(i32 %8, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %11 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %10, i32 0, i32 2
  %12 = call i32 @atomic_read(i32* %11)
  switch i32 %12, label %14 [
    i32 128, label %13
  ]

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %16 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.taskqueue*, %struct.taskqueue** %18, align 8
  store %struct.taskqueue* %19, %struct.taskqueue** %4, align 8
  %20 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %21 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %22 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %21, i32 0, i32 0
  %23 = call i32 @taskqueue_poll_is_busy(%struct.taskqueue* %20, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %25 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %26 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %25, i32 0, i32 0
  %27 = call i32 @taskqueue_drain(%struct.taskqueue* %24, i32* %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %14, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @taskqueue_poll_is_busy(%struct.taskqueue*, i32*) #1

declare dso_local i32 @taskqueue_drain(%struct.taskqueue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
