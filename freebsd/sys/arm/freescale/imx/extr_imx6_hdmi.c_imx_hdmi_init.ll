; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_hdmi.c_imx_hdmi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_hdmi.c_imx_hdmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_hdmi_softc = type { i32*, i32 }

@device_attach = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Waiting for DDC i2c device\0A\00", align 1
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @imx_hdmi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_hdmi_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.imx_hdmi_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = ptrtoint i8* %4 to i32
  %6 = call %struct.imx_hdmi_softc* @device_get_softc(i32 %5)
  store %struct.imx_hdmi_softc* %6, %struct.imx_hdmi_softc** %3, align 8
  %7 = load %struct.imx_hdmi_softc*, %struct.imx_hdmi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.imx_hdmi_softc, %struct.imx_hdmi_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32* @OF_device_from_xref(i32 %9)
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.imx_hdmi_softc*, %struct.imx_hdmi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.imx_hdmi_softc, %struct.imx_hdmi_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* @device_attach, align 4
  %19 = load %struct.imx_hdmi_softc*, %struct.imx_hdmi_softc** %3, align 8
  %20 = getelementptr inbounds %struct.imx_hdmi_softc, %struct.imx_hdmi_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @EVENTHANDLER_DEREGISTER_NOWAIT(i32 %18, i32* %21)
  br label %23

23:                                               ; preds = %17, %12
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @dwc_hdmi_init(i8* %24)
  br label %45

26:                                               ; preds = %1
  %27 = load i64, i64* @bootverbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8*, i8** %2, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.imx_hdmi_softc*, %struct.imx_hdmi_softc** %3, align 8
  %35 = getelementptr inbounds %struct.imx_hdmi_softc, %struct.imx_hdmi_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* @device_attach, align 4
  %40 = load i8*, i8** %2, align 8
  %41 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %42 = call i32* @EVENTHANDLER_REGISTER(i32 %39, void (i8*)* @imx_hdmi_init, i8* %40, i32 %41)
  %43 = load %struct.imx_hdmi_softc*, %struct.imx_hdmi_softc** %3, align 8
  %44 = getelementptr inbounds %struct.imx_hdmi_softc, %struct.imx_hdmi_softc* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  br label %45

45:                                               ; preds = %23, %38, %33
  ret void
}

declare dso_local %struct.imx_hdmi_softc* @device_get_softc(i32) #1

declare dso_local i32* @OF_device_from_xref(i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER_NOWAIT(i32, i32*) #1

declare dso_local i32 @dwc_hdmi_init(i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @EVENTHANDLER_REGISTER(i32, void (i8*)*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
