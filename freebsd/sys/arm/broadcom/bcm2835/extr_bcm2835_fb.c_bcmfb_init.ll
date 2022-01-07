; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_fb.c_bcmfb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_fb.c_bcmfb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.bcmsc_softc = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"bcmfb\00", align 1
@dflt_font_16 = common dso_local global i32 0, align 4
@BCMFB_FONT_HEIGHT = common dso_local global i32 0, align 4
@BCMFB_FONT_WIDTH = common dso_local global i32 0, align 4
@COL = common dso_local global i32 0, align 4
@ROW = common dso_local global i32 0, align 4
@bcmfb_static_window = common dso_local global i64 0, align 8
@V_ADP_FONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*, i32)* @bcmfb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmfb_init(i32 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcmsc_softc*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = bitcast %struct.TYPE_6__* %9 to %struct.bcmsc_softc*
  store %struct.bcmsc_softc* %10, %struct.bcmsc_softc** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @vid_init_struct(%struct.TYPE_6__* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 -1, i32 %14)
  %16 = load i32, i32* @dflt_font_16, align 4
  %17 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %7, align 8
  %18 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @BCMFB_FONT_HEIGHT, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @BCMFB_FONT_WIDTH, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %7, align 8
  %26 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %27, %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %7, align 8
  %35 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %36, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @COL, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %3
  %49 = load i32, i32* @COL, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ROW, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @ROW, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %7, align 8
  %64 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = sub nsw i32 %65, %72
  %74 = sdiv i32 %73, 2
  %75 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %7, align 8
  %76 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %7, align 8
  %78 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %82, %85
  %87 = sub nsw i32 %79, %86
  %88 = sdiv i32 %87, 2
  %89 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %7, align 8
  %90 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* @bcmfb_static_window, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* @V_ADP_FONT, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %7, align 8
  %100 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %99, i32 0, i32 4
  %101 = call i32 @vid_register(i32* %100)
  ret i32 0
}

declare dso_local i32 @vid_init_struct(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @vid_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
