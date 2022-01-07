; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_wdog.c_aw_wdog_watchdog_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_wdog.c_aw_wdog_watchdog_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.aw_wdog_softc = type { i32, i32, i32, i32, i32, i64, i32, i64, i64 }

@WD_INTERVAL = common dso_local global i32 0, align 4
@wd_intervals = common dso_local global %struct.TYPE_2__* null, align 8
@WDOG_CTRL_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Can't arm, timeout is more than 16 sec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @aw_wdog_watchdog_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_wdog_watchdog_fn(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.aw_wdog_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.aw_wdog_softc*
  store %struct.aw_wdog_softc* %11, %struct.aw_wdog_softc** %7, align 8
  %12 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %13 = getelementptr inbounds %struct.aw_wdog_softc, %struct.aw_wdog_softc* %12, i32 0, i32 4
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load i32, i32* @WD_INTERVAL, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %115

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @WD_INTERVAL, align 4
  %23 = and i32 %21, %22
  %24 = shl i32 1, %23
  %25 = sdiv i32 %24, 1000000
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %45, %20
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd_intervals, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd_intervals, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %35, %41
  br label %43

43:                                               ; preds = %34, %26
  %44 = phi i1 [ false, %26 ], [ %42, %34 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %26

48:                                               ; preds = %43
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd_intervals, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %101

56:                                               ; preds = %48
  %57 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %58 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %59 = getelementptr inbounds %struct.aw_wdog_softc, %struct.aw_wdog_softc* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd_intervals, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %68 = getelementptr inbounds %struct.aw_wdog_softc, %struct.aw_wdog_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 %66, %69
  %71 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %72 = getelementptr inbounds %struct.aw_wdog_softc, %struct.aw_wdog_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %70, %73
  %75 = call i32 @WRITE(%struct.aw_wdog_softc* %57, i64 %60, i32 %74)
  %76 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %77 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %78 = getelementptr inbounds %struct.aw_wdog_softc, %struct.aw_wdog_softc* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @WDOG_CTRL_RESTART, align 4
  %81 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %82 = getelementptr inbounds %struct.aw_wdog_softc, %struct.aw_wdog_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %80, %83
  %85 = call i32 @WRITE(%struct.aw_wdog_softc* %76, i64 %79, i32 %84)
  %86 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %87 = getelementptr inbounds %struct.aw_wdog_softc, %struct.aw_wdog_softc* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %56
  %91 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %92 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %93 = getelementptr inbounds %struct.aw_wdog_softc, %struct.aw_wdog_softc* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %96 = getelementptr inbounds %struct.aw_wdog_softc, %struct.aw_wdog_softc* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @WRITE(%struct.aw_wdog_softc* %91, i64 %94, i32 %97)
  br label %99

99:                                               ; preds = %90, %56
  %100 = load i32*, i32** %6, align 8
  store i32 0, i32* %100, align 4
  br label %114

101:                                              ; preds = %48
  %102 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %103 = getelementptr inbounds %struct.aw_wdog_softc, %struct.aw_wdog_softc* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @device_printf(i32 %104, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %107 = getelementptr inbounds %struct.aw_wdog_softc, %struct.aw_wdog_softc* %106, i32 0, i32 4
  %108 = call i32 @mtx_unlock(i32* %107)
  %109 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %110 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %111 = getelementptr inbounds %struct.aw_wdog_softc, %struct.aw_wdog_softc* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @WRITE(%struct.aw_wdog_softc* %109, i64 %112, i32 0)
  br label %125

114:                                              ; preds = %99
  br label %121

115:                                              ; preds = %3
  %116 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %117 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %118 = getelementptr inbounds %struct.aw_wdog_softc, %struct.aw_wdog_softc* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @WRITE(%struct.aw_wdog_softc* %116, i64 %119, i32 0)
  br label %121

121:                                              ; preds = %115, %114
  %122 = load %struct.aw_wdog_softc*, %struct.aw_wdog_softc** %7, align 8
  %123 = getelementptr inbounds %struct.aw_wdog_softc, %struct.aw_wdog_softc* %122, i32 0, i32 4
  %124 = call i32 @mtx_unlock(i32* %123)
  br label %125

125:                                              ; preds = %121, %101
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @WRITE(%struct.aw_wdog_softc*, i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
