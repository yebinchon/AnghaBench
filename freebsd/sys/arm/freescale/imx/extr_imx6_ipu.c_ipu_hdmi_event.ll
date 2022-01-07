; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_hdmi_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_hdmi_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_softc = type { i32*, i32 }
%struct.videomode = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"failed to get EDID info from HDMI framer\0A\00", align 1
@mode1024x768 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ipu_hdmi_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_hdmi_event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.videomode*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ipu_softc*
  store %struct.ipu_softc* %10, %struct.ipu_softc** %5, align 8
  store i32* null, i32** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @HDMI_GET_EDID(i32 %11, i32** %6, i64* %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ipu_softc*, %struct.ipu_softc** %5, align 8
  %16 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %14, %2
  store %struct.videomode* null, %struct.videomode** %8, align 8
  %20 = load %struct.ipu_softc*, %struct.ipu_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %20, i32 0, i32 0
  store i32* @mode1024x768, i32** %21, align 8
  %22 = load %struct.ipu_softc*, %struct.ipu_softc** %5, align 8
  %23 = call i32 @ipu_init(%struct.ipu_softc* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.ipu_softc*, %struct.ipu_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @HDMI_SET_VIDEOMODE(i32 %24, i32* %27)
  ret void
}

declare dso_local i64 @HDMI_GET_EDID(i32, i32**, i64*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ipu_init(%struct.ipu_softc*) #1

declare dso_local i32 @HDMI_SET_VIDEOMODE(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
