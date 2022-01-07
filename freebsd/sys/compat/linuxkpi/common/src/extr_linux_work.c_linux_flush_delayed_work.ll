; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_work.c_linux_flush_delayed_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_work.c_linux_flush_delayed_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delayed_work = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.taskqueue* }
%struct.taskqueue = type { i32 }

@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"linux_flush_delayed_work() might sleep\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_flush_delayed_work(%struct.delayed_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.delayed_work*, align 8
  %4 = alloca %struct.taskqueue*, align 8
  %5 = alloca i32, align 4
  store %struct.delayed_work* %0, %struct.delayed_work** %3, align 8
  %6 = load i32, i32* @WARN_GIANTOK, align 4
  %7 = load i32, i32* @WARN_SLEEPOK, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @WITNESS_WARN(i32 %8, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %11 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = call i32 @atomic_read(i32* %12)
  switch i32 %13, label %23 [
    i32 129, label %14
    i32 128, label %15
  ]

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %17 = call i32 @linux_cancel_timer(%struct.delayed_work* %16, i32 1)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %21 = call i32 @linux_delayed_work_enqueue(%struct.delayed_work* %20)
  br label %22

22:                                               ; preds = %19, %15
  br label %23

23:                                               ; preds = %1, %22
  %24 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %25 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.taskqueue*, %struct.taskqueue** %28, align 8
  store %struct.taskqueue* %29, %struct.taskqueue** %4, align 8
  %30 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %31 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %32 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @taskqueue_poll_is_busy(%struct.taskqueue* %30, i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %36 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %37 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @taskqueue_drain(%struct.taskqueue* %35, i32* %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %23, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @linux_cancel_timer(%struct.delayed_work*, i32) #1

declare dso_local i32 @linux_delayed_work_enqueue(%struct.delayed_work*) #1

declare dso_local i32 @taskqueue_poll_is_busy(%struct.taskqueue*, i32*) #1

declare dso_local i32 @taskqueue_drain(%struct.taskqueue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
