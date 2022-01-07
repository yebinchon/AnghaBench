; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_usb2_powerdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_usb2_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_softc = type { i32 }
%struct.padctl_lane = type { i32 }
%struct.padctl_port = type { i32* }

@.str = private unnamed_addr constant [31 x i8] c"Cannot find port for lane: %s\0A\00", align 1
@XUSB_PADCTL_USB2_BIAS_PAD_CTL0 = common dso_local global i32 0, align 4
@USB2_BIAS_PAD_CTL0_PD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot disable vbus regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.padctl_softc*, %struct.padctl_lane*)* @usb2_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb2_powerdown(%struct.padctl_softc* %0, %struct.padctl_lane* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.padctl_softc*, align 8
  %5 = alloca %struct.padctl_lane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.padctl_port*, align 8
  %8 = alloca i32, align 4
  store %struct.padctl_softc* %0, %struct.padctl_softc** %4, align 8
  store %struct.padctl_lane* %1, %struct.padctl_lane** %5, align 8
  %9 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %10 = load %struct.padctl_lane*, %struct.padctl_lane** %5, align 8
  %11 = call %struct.padctl_port* @search_lane_port(%struct.padctl_softc* %9, %struct.padctl_lane* %10)
  store %struct.padctl_port* %11, %struct.padctl_port** %7, align 8
  %12 = load %struct.padctl_port*, %struct.padctl_port** %7, align 8
  %13 = icmp eq %struct.padctl_port* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %16 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.padctl_lane*, %struct.padctl_lane** %5, align 8
  %19 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %24 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0, align 4
  %25 = call i32 @RD4(%struct.padctl_softc* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @USB2_BIAS_PAD_CTL0_PD, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %30 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @WR4(%struct.padctl_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.padctl_port*, %struct.padctl_port** %7, align 8
  %34 = icmp ne %struct.padctl_port* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %22
  %36 = load %struct.padctl_port*, %struct.padctl_port** %7, align 8
  %37 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.padctl_port*, %struct.padctl_port** %7, align 8
  %42 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @regulator_enable(i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %49 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %35, %22
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %47
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.padctl_port* @search_lane_port(%struct.padctl_softc*, %struct.padctl_lane*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @RD4(%struct.padctl_softc*, i32) #1

declare dso_local i32 @WR4(%struct.padctl_softc*, i32, i32) #1

declare dso_local i32 @regulator_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
