; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_work.c_linux_init_delayed_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_work.c_linux_init_delayed_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delayed_work = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@linux_delayed_work_fn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"lkpi-dwork\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_NOWITNESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_init_delayed_work(%struct.delayed_work* %0, i32 %1) #0 {
  %3 = alloca %struct.delayed_work*, align 8
  %4 = alloca i32, align 4
  store %struct.delayed_work* %0, %struct.delayed_work** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %6 = call i32 @memset(%struct.delayed_work* %5, i32 0, i32 16)
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %9 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 4
  %11 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %12 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* @linux_delayed_work_fn, align 4
  %15 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %16 = call i32 @TASK_INIT(i32* %13, i32 0, i32 %14, %struct.delayed_work* %15)
  %17 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %18 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_name(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = load i32, i32* @MTX_NOWITNESS, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @mtx_init(i32* %19, i32 %20, i32* null, i32 %23)
  %25 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %26 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %29 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @callout_init_mtx(i32* %27, i32* %30, i32 0)
  ret void
}

declare dso_local i32 @memset(%struct.delayed_work*, i32, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.delayed_work*) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @spin_lock_name(i8*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
