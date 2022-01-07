; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10hdmi_softc = type { i32 }

@HDMI_VID_CTRL = common dso_local global i32 0, align 4
@VID_CTRL_VIDEO_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @a10hdmi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10hdmi_enable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.a10hdmi_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.a10hdmi_softc* @device_get_softc(i32 %7)
  store %struct.a10hdmi_softc* %8, %struct.a10hdmi_softc** %5, align 8
  %9 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %10 = load i32, i32* @HDMI_VID_CTRL, align 4
  %11 = call i32 @HDMI_READ(%struct.a10hdmi_softc* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @VID_CTRL_VIDEO_EN, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @VID_CTRL_VIDEO_EN, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %25 = load i32, i32* @HDMI_VID_CTRL, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @HDMI_WRITE(%struct.a10hdmi_softc* %24, i32 %25, i32 %26)
  ret i32 0
}

declare dso_local %struct.a10hdmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @HDMI_READ(%struct.a10hdmi_softc*, i32) #1

declare dso_local i32 @HDMI_WRITE(%struct.a10hdmi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
