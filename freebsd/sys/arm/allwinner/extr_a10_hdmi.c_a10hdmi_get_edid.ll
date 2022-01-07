; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_get_edid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10hdmi_softc = type { i64, i64, i32* }

@DDC_READ_RETRY = common dso_local global i32 0, align 4
@DDC_FIFO_CTRL = common dso_local global i32 0, align 4
@DDC_CTRL = common dso_local global i32 0, align 4
@CTRL_DDC_EN = common dso_local global i32 0, align 4
@CTRL_DDC_SWRST = common dso_local global i32 0, align 4
@SWRST_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DDC software reset failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DDC_CLOCK = common dso_local global i32 0, align 4
@DDC_CLOCK_M = common dso_local global i32 0, align 4
@DDC_CLOCK_N = common dso_local global i32 0, align 4
@DDC_CTRL_LINE = common dso_local global i32 0, align 4
@DDC_LINE_SCL_ENABLE = common dso_local global i32 0, align 4
@DDC_LINE_SDA_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i32*)* @a10hdmi_get_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10hdmi_get_edid(i32 %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.a10hdmi_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.a10hdmi_softc* @device_get_softc(i32 %11)
  store %struct.a10hdmi_softc* %12, %struct.a10hdmi_softc** %8, align 8
  %13 = load i32, i32* @DDC_READ_RETRY, align 4
  store i32 %13, i32* %10, align 4
  br label %14

14:                                               ; preds = %66, %3
  %15 = load i32, i32* %10, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %14
  %19 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %8, align 8
  %20 = load i32, i32* @DDC_FIFO_CTRL, align 4
  %21 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %19, i32 %20, i32 0)
  %22 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %8, align 8
  %23 = load i32, i32* @DDC_CTRL, align 4
  %24 = load i32, i32* @CTRL_DDC_EN, align 4
  %25 = load i32, i32* @CTRL_DDC_SWRST, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %22, i32 %23, i32 %26)
  %28 = load i32, i32* @SWRST_DELAY, align 4
  %29 = call i32 @DELAY(i32 %28)
  %30 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %8, align 8
  %31 = load i32, i32* @DDC_CTRL, align 4
  %32 = call i32 @HDMI_READ(%struct.a10hdmi_softc* %30, i32 %31)
  %33 = load i32, i32* @CTRL_DDC_SWRST, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %18
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %4, align 4
  br label %84

40:                                               ; preds = %18
  %41 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %8, align 8
  %42 = load i32, i32* @DDC_CLOCK, align 4
  %43 = load i32, i32* @DDC_CLOCK_M, align 4
  %44 = load i32, i32* @DDC_CLOCK_N, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %41, i32 %42, i32 %45)
  %47 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %8, align 8
  %48 = load i32, i32* @DDC_CTRL_LINE, align 4
  %49 = load i32, i32* @DDC_LINE_SCL_ENABLE, align 4
  %50 = load i32, i32* @DDC_LINE_SDA_ENABLE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %47, i32 %48, i32 %51)
  %53 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %8, align 8
  %54 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %8, align 8
  %55 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @a10hdmi_ddc_read(%struct.a10hdmi_softc* %53, i32 0, i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %40
  %61 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %8, align 8
  %62 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32**, i32*** %6, align 8
  store i32* %63, i32** %64, align 8
  %65 = load i32*, i32** %7, align 8
  store i32 8, i32* %65, align 4
  br label %67

66:                                               ; preds = %40
  br label %14

67:                                               ; preds = %60, %14
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %8, align 8
  %72 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %8, align 8
  %73 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %72, i32 0, i32 1
  %74 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %8, align 8
  %75 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %74, i32 0, i32 0
  %76 = call i32 @a10hdmi_detect_hdmi(%struct.a10hdmi_softc* %71, i64* %73, i64* %75)
  br label %82

77:                                               ; preds = %67
  %78 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %8, align 8
  %79 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %8, align 8
  %81 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %77, %70
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %36
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.a10hdmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @HDMI_WRITE(%struct.a10hdmi_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @HDMI_READ(%struct.a10hdmi_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @a10hdmi_ddc_read(%struct.a10hdmi_softc*, i32, i32*) #1

declare dso_local i32 @a10hdmi_detect_hdmi(%struct.a10hdmi_softc*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
