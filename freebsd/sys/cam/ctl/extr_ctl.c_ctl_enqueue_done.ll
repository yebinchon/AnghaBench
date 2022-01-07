; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_enqueue_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_enqueue_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ctl_softc = type { %struct.ctl_thread* }
%struct.ctl_thread = type { i32, i32 }

@worker_threads = common dso_local global i64 0, align 8
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @ctl_enqueue_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_enqueue_done(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_softc*, align 8
  %4 = alloca %struct.ctl_thread*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %5 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %6 = call %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io* %5)
  store %struct.ctl_softc* %6, %struct.ctl_softc** %3, align 8
  %7 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %7, i32 0, i32 0
  %9 = load %struct.ctl_thread*, %struct.ctl_thread** %8, align 8
  %10 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %11 = bitcast %union.ctl_io* %10 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @worker_threads, align 8
  %16 = urem i64 %14, %15
  %17 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %9, i64 %16
  store %struct.ctl_thread* %17, %struct.ctl_thread** %4, align 8
  %18 = load %struct.ctl_thread*, %struct.ctl_thread** %4, align 8
  %19 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %18, i32 0, i32 0
  %20 = call i32 @mtx_lock(i32* %19)
  %21 = load %struct.ctl_thread*, %struct.ctl_thread** %4, align 8
  %22 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %21, i32 0, i32 1
  %23 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %24 = bitcast %union.ctl_io* %23 to %struct.TYPE_4__*
  %25 = load i32, i32* @links, align 4
  %26 = call i32 @STAILQ_INSERT_TAIL(i32* %22, %struct.TYPE_4__* %24, i32 %25)
  %27 = load %struct.ctl_thread*, %struct.ctl_thread** %4, align 8
  %28 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %27, i32 0, i32 0
  %29 = call i32 @mtx_unlock(i32* %28)
  %30 = load %struct.ctl_thread*, %struct.ctl_thread** %4, align 8
  %31 = call i32 @wakeup(%struct.ctl_thread* %30)
  ret void
}

declare dso_local %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(%struct.ctl_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
