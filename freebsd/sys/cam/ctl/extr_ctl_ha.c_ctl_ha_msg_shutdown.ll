; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_ctl_ha_msg_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_ctl_ha_msg_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ha_softc = type { i32, i32, i32 }
%struct.ctl_softc = type { i32 }

@ha_softc = common dso_local global %struct.ha_softc zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_ha_msg_shutdown(%struct.ctl_softc* %0) #0 {
  %2 = alloca %struct.ctl_softc*, align 8
  %3 = alloca %struct.ha_softc*, align 8
  store %struct.ctl_softc* %0, %struct.ctl_softc** %2, align 8
  store %struct.ha_softc* @ha_softc, %struct.ha_softc** %3, align 8
  %4 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %5 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %4, i32 0, i32 2
  %6 = call i32 @mtx_lock(i32* %5)
  %7 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %16, i32 0, i32 1
  %18 = call i32 @wakeup(i32* %17)
  br label %19

19:                                               ; preds = %30, %11
  %20 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = call i32 (...) @SCHEDULER_STOPPED()
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  br i1 %29, label %30, label %37

30:                                               ; preds = %28
  %31 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %31, i32 0, i32 1
  %33 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %33, i32 0, i32 2
  %35 = load i32, i32* @hz, align 4
  %36 = call i32 @msleep(i32* %32, i32* %34, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %19

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %39, i32 0, i32 2
  %41 = call i32 @mtx_unlock(i32* %40)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
