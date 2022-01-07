; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_wdt.c_mv_watchdog_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_wdt.c_mv_watchdog_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (...)*, i32, i32 (...)* }
%struct.mv_wdt_softc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@wdt_softc = common dso_local global %struct.TYPE_6__* null, align 8
@WD_INTERVAL = common dso_local global i32 0, align 4
@MAX_WATCHDOG_TICKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @mv_watchdog_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_watchdog_event(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mv_wdt_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.mv_wdt_softc*
  store %struct.mv_wdt_softc* %11, %struct.mv_wdt_softc** %7, align 8
  %12 = load %struct.mv_wdt_softc*, %struct.mv_wdt_softc** %7, align 8
  %13 = getelementptr inbounds %struct.mv_wdt_softc, %struct.mv_wdt_softc* %12, i32 0, i32 0
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wdt_softc, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32 (...)*, i32 (...)** %21, align 8
  %23 = icmp ne i32 (...)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wdt_softc, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32 (...)*, i32 (...)** %28, align 8
  %30 = call i32 (...) %29()
  br label %31

31:                                               ; preds = %24, %17
  br label %87

32:                                               ; preds = %3
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @WD_INTERVAL, align 4
  %35 = and i32 %33, %34
  %36 = shl i32 1, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.mv_wdt_softc*, %struct.mv_wdt_softc** %7, align 8
  %39 = getelementptr inbounds %struct.mv_wdt_softc, %struct.mv_wdt_softc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul i32 %37, %42
  %44 = udiv i32 %43, 1000000000
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MAX_WATCHDOG_TICKS, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %32
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wdt_softc, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32 (...)*, i32 (...)** %52, align 8
  %54 = icmp ne i32 (...)* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wdt_softc, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32 (...)*, i32 (...)** %59, align 8
  %61 = call i32 (...) %60()
  br label %62

62:                                               ; preds = %55, %48
  br label %86

63:                                               ; preds = %32
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wdt_softc, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @mv_set_timer(i32 %68, i32 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wdt_softc, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32 (...)*, i32 (...)** %74, align 8
  %76 = icmp ne i32 (...)* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %63
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wdt_softc, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32 (...)*, i32 (...)** %81, align 8
  %83 = call i32 (...) %82()
  br label %84

84:                                               ; preds = %77, %63
  %85 = load i32*, i32** %6, align 8
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %62
  br label %87

87:                                               ; preds = %86, %31
  %88 = load %struct.mv_wdt_softc*, %struct.mv_wdt_softc** %7, align 8
  %89 = getelementptr inbounds %struct.mv_wdt_softc, %struct.mv_wdt_softc* %88, i32 0, i32 0
  %90 = call i32 @mtx_unlock(i32* %89)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mv_set_timer(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
