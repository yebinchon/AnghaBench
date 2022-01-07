; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_enqueue_incoming.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_enqueue_incoming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ctl_softc = type { %struct.ctl_thread* }
%struct.ctl_thread = type { i32, i32 }

@worker_threads = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @ctl_enqueue_incoming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_enqueue_incoming(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_softc*, align 8
  %4 = alloca %struct.ctl_thread*, align 8
  %5 = alloca i64, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %6 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %7 = call %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io* %6)
  store %struct.ctl_softc* %7, %struct.ctl_softc** %3, align 8
  %8 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %9 = bitcast %union.ctl_io* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 127
  %14 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %15 = bitcast %union.ctl_io* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %13, %18
  %20 = load i32, i32* @worker_threads, align 4
  %21 = srem i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %5, align 8
  %23 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %23, i32 0, i32 0
  %25 = load %struct.ctl_thread*, %struct.ctl_thread** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %25, i64 %26
  store %struct.ctl_thread* %27, %struct.ctl_thread** %4, align 8
  %28 = load %struct.ctl_thread*, %struct.ctl_thread** %4, align 8
  %29 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %28, i32 0, i32 0
  %30 = call i32 @mtx_lock(i32* %29)
  %31 = load %struct.ctl_thread*, %struct.ctl_thread** %4, align 8
  %32 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %31, i32 0, i32 1
  %33 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %34 = bitcast %union.ctl_io* %33 to %struct.TYPE_4__*
  %35 = load i32, i32* @links, align 4
  %36 = call i32 @STAILQ_INSERT_TAIL(i32* %32, %struct.TYPE_4__* %34, i32 %35)
  %37 = load %struct.ctl_thread*, %struct.ctl_thread** %4, align 8
  %38 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %37, i32 0, i32 0
  %39 = call i32 @mtx_unlock(i32* %38)
  %40 = load %struct.ctl_thread*, %struct.ctl_thread** %4, align 8
  %41 = call i32 @wakeup(%struct.ctl_thread* %40)
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
