; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_ft5406.c_ft5406ts_callout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_ft5406.c_ft5406ts_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft5406ts_softc = type { i32*, i32, i32, i32, i32, i32 }

@FT5406_WINDOW_SIZE = common dso_local global i32 0, align 4
@NO_POINTS = common dso_local global i32 0, align 4
@FT5406_NUM_POINTS = common dso_local global i64 0, align 8
@MAX_TOUCH_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bad touch id: %d\00", align 1
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_SLOT = common dso_local global i32 0, align 4
@ABS_MT_TRACKING_ID = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ft5406ts_callout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft5406ts_callout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ft5406ts_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.ft5406ts_softc*
  store %struct.ft5406ts_softc* %10, %struct.ft5406ts_softc** %3, align 8
  %11 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %12 = call i32 @FT5406_LOCK_ASSERT(%struct.ft5406ts_softc* %11)
  %13 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @FT5406_WINDOW_SIZE, align 4
  %20 = call i32 @memcpy(i32 %15, i32* %18, i32 %19)
  %21 = load i32, i32* @NO_POINTS, align 4
  %22 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @FT5406_NUM_POINTS, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %21, i32* %26, align 4
  %27 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @GET_NUM_POINTS(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @NO_POINTS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %102

35:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %94, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %97

40:                                               ; preds = %36
  %41 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @GET_TOUCH_ID(i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @GET_X(i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @GET_Y(i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MAX_TOUCH_ID, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %40
  %60 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %94

65:                                               ; preds = %40
  %66 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @EV_ABS, align 4
  %70 = load i32, i32* @ABS_MT_SLOT, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @evdev_push_event(i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @EV_ABS, align 4
  %77 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @evdev_push_event(i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @EV_ABS, align 4
  %84 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @evdev_push_event(i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @EV_ABS, align 4
  %91 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @evdev_push_event(i32 %89, i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %65, %59
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %36

97:                                               ; preds = %36
  %98 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %99 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @evdev_sync(i32 %100)
  br label %102

102:                                              ; preds = %97, %34
  %103 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %104 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %103, i32 0, i32 2
  %105 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %106 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %109 = call i32 @callout_reset(i32* %104, i32 %107, void (i8*)* @ft5406ts_callout, %struct.ft5406ts_softc* %108)
  ret void
}

declare dso_local i32 @FT5406_LOCK_ASSERT(%struct.ft5406ts_softc*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @GET_NUM_POINTS(i32) #1

declare dso_local i32 @GET_TOUCH_ID(i32, i32) #1

declare dso_local i32 @GET_X(i32, i32) #1

declare dso_local i32 @GET_Y(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @evdev_push_event(i32, i32, i32, i32) #1

declare dso_local i32 @evdev_sync(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.ft5406ts_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
