; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_daemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.aac_softc = type { i32, i32 }
%struct.aac_fib = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@SendHostTime = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aac_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_daemon(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca %struct.aac_fib*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.aac_softc*
  store %struct.aac_softc* %7, %struct.aac_softc** %4, align 8
  %8 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %9 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %8, i32 0, i32 1
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  %12 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %13 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %12, i32 0, i32 0
  %14 = call i64 @callout_pending(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %18 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %17, i32 0, i32 0
  %19 = call i64 @callout_active(i32* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %1
  br label %43

22:                                               ; preds = %16
  %23 = call i32 @getmicrotime(%struct.timeval* %3)
  %24 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %25 = call i32 @aac_alloc_sync_fib(%struct.aac_softc* %24, %struct.aac_fib** %5)
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.aac_fib*, %struct.aac_fib** %5, align 8
  %29 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32 %27, i32* %31, align 4
  %32 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %33 = load i32, i32* @SendHostTime, align 4
  %34 = load %struct.aac_fib*, %struct.aac_fib** %5, align 8
  %35 = call i32 @aac_sync_fib(%struct.aac_softc* %32, i32 %33, i32 0, %struct.aac_fib* %34, i32 4)
  %36 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %37 = call i32 @aac_release_sync_fib(%struct.aac_softc* %36)
  %38 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %39 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %38, i32 0, i32 0
  %40 = load i32, i32* @hz, align 4
  %41 = mul nsw i32 1800, %40
  %42 = call i32 @callout_schedule(i32* %39, i32 %41)
  br label %43

43:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i64 @callout_active(i32*) #1

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @aac_alloc_sync_fib(%struct.aac_softc*, %struct.aac_fib**) #1

declare dso_local i32 @aac_sync_fib(%struct.aac_softc*, i32, i32, %struct.aac_fib*, i32) #1

declare dso_local i32 @aac_release_sync_fib(%struct.aac_softc*) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
