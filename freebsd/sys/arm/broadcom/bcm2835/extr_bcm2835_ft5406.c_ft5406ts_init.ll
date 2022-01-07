; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_ft5406.c_ft5406ts_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_ft5406.c_ft5406ts_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft5406ts_softc = type { i32, i32, i32, i32*, i32*, i32, i32 }
%struct.bcm2835_mbox_tag_touchbuf = type { %struct.TYPE_8__, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@BCM2835_MBOX_CODE_REQ = common dso_local global i32 0, align 4
@BCM2835_MBOX_TAG_GET_TOUCHBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to get touchbuf address\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"touchscreen not detected\0A\00", align 1
@FT5406_WINDOW_SIZE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@ft5406ts_evdev_methods = common dso_local global i32 0, align 4
@EVDEV_FLAG_MT_STCOMPAT = common dso_local global i32 0, align 4
@EVDEV_FLAG_MT_AUTOREL = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_SLOT = common dso_local global i32 0, align 4
@MAX_TOUCH_ID = common dso_local global i32 0, align 4
@ABS_MT_TRACKING_ID = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@SCREEN_RES_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@SCREEN_HEIGHT = common dso_local global i32 0, align 4
@SCREEN_RES_Y = common dso_local global i32 0, align 4
@NO_POINTS = common dso_local global i32 0, align 4
@FT5406_NUM_POINTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ft5406ts_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft5406ts_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ft5406ts_softc*, align 8
  %4 = alloca %struct.bcm2835_mbox_tag_touchbuf, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ft5406ts_softc*
  store %struct.ft5406ts_softc* %8, %struct.ft5406ts_softc** %3, align 8
  %9 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %9, i32 0, i32 6
  %11 = call i32 @config_intrhook_disestablish(i32* %10)
  %12 = call i32 @memset(%struct.bcm2835_mbox_tag_touchbuf* %4, i32 0, i32 40)
  %13 = getelementptr inbounds %struct.bcm2835_mbox_tag_touchbuf, %struct.bcm2835_mbox_tag_touchbuf* %4, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 40, i32* %14, align 4
  %15 = load i32, i32* @BCM2835_MBOX_CODE_REQ, align 4
  %16 = getelementptr inbounds %struct.bcm2835_mbox_tag_touchbuf, %struct.bcm2835_mbox_tag_touchbuf* %4, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @BCM2835_MBOX_TAG_GET_TOUCHBUF, align 4
  %19 = getelementptr inbounds %struct.bcm2835_mbox_tag_touchbuf, %struct.bcm2835_mbox_tag_touchbuf* %4, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds %struct.bcm2835_mbox_tag_touchbuf, %struct.bcm2835_mbox_tag_touchbuf* %4, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 8, i32* %22, align 8
  %23 = getelementptr inbounds %struct.bcm2835_mbox_tag_touchbuf, %struct.bcm2835_mbox_tag_touchbuf* %4, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 8, i32* %24, align 4
  %25 = getelementptr inbounds %struct.bcm2835_mbox_tag_touchbuf, %struct.bcm2835_mbox_tag_touchbuf* %4, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = call i32 @bcm2835_mbox_property(%struct.bcm2835_mbox_tag_touchbuf* %4, i32 40)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %177

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.bcm2835_mbox_tag_touchbuf, %struct.bcm2835_mbox_tag_touchbuf* %4, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %177

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.bcm2835_mbox_tag_touchbuf, %struct.bcm2835_mbox_tag_touchbuf* %4, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @VCBUS_TO_PHYS(i64 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @FT5406_WINDOW_SIZE, align 4
  %53 = call i64 @pmap_mapdev(i32 %51, i32 %52)
  %54 = inttoptr i64 %53 to i32*
  %55 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  %57 = load i32, i32* @hz, align 4
  %58 = mul nsw i32 %57, 17
  %59 = sdiv i32 %58, 1000
  %60 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %45
  %67 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %68 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %45
  %70 = call i32* (...) @evdev_alloc()
  %71 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %72 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %71, i32 0, i32 4
  store i32* %70, i32** %72, align 8
  %73 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %77 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @device_get_desc(i32 %78)
  %80 = call i32 @evdev_set_name(i32* %75, i32 %79)
  %81 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %85 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @device_get_nameunit(i32 %86)
  %88 = call i32 @evdev_set_phys(i32* %83, i32 %87)
  %89 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %90 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @BUS_HOST, align 4
  %93 = call i32 @evdev_set_id(i32* %91, i32 %92, i32 0, i32 0, i32 0)
  %94 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %95 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %98 = call i32 @evdev_set_methods(i32* %96, %struct.ft5406ts_softc* %97, i32* @ft5406ts_evdev_methods)
  %99 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %100 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @EVDEV_FLAG_MT_STCOMPAT, align 4
  %103 = call i32 @evdev_set_flag(i32* %101, i32 %102)
  %104 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %105 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @EVDEV_FLAG_MT_AUTOREL, align 4
  %108 = call i32 @evdev_set_flag(i32* %106, i32 %107)
  %109 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %110 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* @INPUT_PROP_DIRECT, align 4
  %113 = call i32 @evdev_support_prop(i32* %111, i32 %112)
  %114 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %115 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* @EV_SYN, align 4
  %118 = call i32 @evdev_support_event(i32* %116, i32 %117)
  %119 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %120 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @EV_ABS, align 4
  %123 = call i32 @evdev_support_event(i32* %121, i32 %122)
  %124 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %125 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* @ABS_MT_SLOT, align 4
  %128 = load i32, i32* @MAX_TOUCH_ID, align 4
  %129 = call i32 @evdev_support_abs(i32* %126, i32 %127, i32 0, i32 0, i32 %128, i32 0, i32 0, i32 0)
  %130 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %131 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %134 = load i32, i32* @MAX_TOUCH_ID, align 4
  %135 = call i32 @evdev_support_abs(i32* %132, i32 %133, i32 0, i32 -1, i32 %134, i32 0, i32 0, i32 0)
  %136 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %137 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %140 = load i32, i32* @SCREEN_WIDTH, align 4
  %141 = load i32, i32* @SCREEN_RES_X, align 4
  %142 = call i32 @evdev_support_abs(i32* %138, i32 %139, i32 0, i32 0, i32 %140, i32 0, i32 0, i32 %141)
  %143 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %144 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %147 = load i32, i32* @SCREEN_HEIGHT, align 4
  %148 = load i32, i32* @SCREEN_RES_Y, align 4
  %149 = call i32 @evdev_support_abs(i32* %145, i32 %146, i32 0, i32 0, i32 %147, i32 0, i32 0, i32 %148)
  %150 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %151 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %154 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %153, i32 0, i32 1
  %155 = call i32 @evdev_register_mtx(i32* %152, i32* %154)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %69
  %159 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %160 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @evdev_free(i32* %161)
  %163 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %164 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %163, i32 0, i32 4
  store i32* null, i32** %164, align 8
  br label %177

165:                                              ; preds = %69
  %166 = load i32, i32* @NO_POINTS, align 4
  %167 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %168 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @FT5406_NUM_POINTS, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 %166, i32* %171, align 4
  %172 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %173 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %172, i32 0, i32 2
  %174 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %3, align 8
  %175 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %174, i32 0, i32 1
  %176 = call i32 @callout_init_mtx(i32* %173, i32* %175, i32 0)
  br label %177

177:                                              ; preds = %165, %158, %40, %29
  ret void
}

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

declare dso_local i32 @memset(%struct.bcm2835_mbox_tag_touchbuf*, i32, i32) #1

declare dso_local i32 @bcm2835_mbox_property(%struct.bcm2835_mbox_tag_touchbuf*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @VCBUS_TO_PHYS(i64) #1

declare dso_local i64 @pmap_mapdev(i32, i32) #1

declare dso_local i32* @evdev_alloc(...) #1

declare dso_local i32 @evdev_set_name(i32*, i32) #1

declare dso_local i32 @device_get_desc(i32) #1

declare dso_local i32 @evdev_set_phys(i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @evdev_set_id(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @evdev_set_methods(i32*, %struct.ft5406ts_softc*, i32*) #1

declare dso_local i32 @evdev_set_flag(i32*, i32) #1

declare dso_local i32 @evdev_support_prop(i32*, i32) #1

declare dso_local i32 @evdev_support_event(i32*, i32) #1

declare dso_local i32 @evdev_support_abs(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @evdev_register_mtx(i32*, i32*) #1

declare dso_local i32 @evdev_free(i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
