; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_lun_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_lun_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_softc = type { i32*, i32, i32, i32 }
%struct.ctl_be_lun = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ctl_lun_thread starting\0A\00", align 1
@curthread = common dso_local global i32 0, align 4
@PUSER = common dso_local global i64 0, align 8
@links = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ctl_lun_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_lun_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ctl_softc*, align 8
  %4 = alloca %struct.ctl_be_lun*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ctl_softc*
  store %struct.ctl_softc* %6, %struct.ctl_softc** %3, align 8
  %7 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @curthread, align 4
  %9 = call i32 @thread_lock(i32 %8)
  %10 = load i32, i32* @curthread, align 4
  %11 = load i64, i64* @PUSER, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @sched_prio(i32 %10, i64 %12)
  %14 = load i32, i32* @curthread, align 4
  %15 = call i32 @thread_unlock(i32 %14)
  br label %16

16:                                               ; preds = %41, %31, %1
  %17 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %23, i32 0, i32 1
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %26, i32 0, i32 2
  %28 = call %struct.ctl_be_lun* @STAILQ_FIRST(i32* %27)
  store %struct.ctl_be_lun* %28, %struct.ctl_be_lun** %4, align 8
  %29 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %30 = icmp ne %struct.ctl_be_lun* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %32, i32 0, i32 2
  %34 = load i32, i32* @links, align 4
  %35 = call i32 @STAILQ_REMOVE_HEAD(i32* %33, i32 %34)
  %36 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %36, i32 0, i32 1
  %38 = call i32 @mtx_unlock(i32* %37)
  %39 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %40 = call i32 @ctl_create_lun(%struct.ctl_be_lun* %39)
  br label %16

41:                                               ; preds = %22
  %42 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %42, i32 0, i32 2
  %44 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %44, i32 0, i32 1
  %46 = load i32, i32* @PDROP, align 4
  %47 = call i32 @mtx_sleep(i32* %43, i32* %45, i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %16

48:                                               ; preds = %16
  %49 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  %51 = call i32 (...) @kthread_exit()
  ret void
}

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @thread_lock(i32) #1

declare dso_local i32 @sched_prio(i32, i64) #1

declare dso_local i32 @thread_unlock(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.ctl_be_lun* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_create_lun(%struct.ctl_be_lun*) #1

declare dso_local i32 @mtx_sleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @kthread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
