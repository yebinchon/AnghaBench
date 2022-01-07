; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_musb.c_musbotg_vbus_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_musb.c_musbotg_vbus_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_super_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MUSB2_DEVICE_MODE = common dso_local global i64 0, align 8
@USBCTRL_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musbotg_super_softc*)* @musbotg_vbus_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musbotg_vbus_poll(%struct.musbotg_super_softc* %0) #0 {
  %2 = alloca %struct.musbotg_super_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.musbotg_super_softc* %0, %struct.musbotg_super_softc** %2, align 8
  %4 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %2, align 8
  %5 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MUSB2_DEVICE_MODE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %2, align 8
  %12 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %11, i32 0, i32 0
  %13 = call i32 @musbotg_vbus_interrupt(%struct.TYPE_2__* %12, i32 1)
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %2, align 8
  %16 = load i32, i32* @USBCTRL_STAT, align 4
  %17 = call i32 @USBCTRL_READ4(%struct.musbotg_super_softc* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %2, align 8
  %19 = getelementptr inbounds %struct.musbotg_super_softc, %struct.musbotg_super_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 1
  %22 = call i32 @musbotg_vbus_interrupt(%struct.TYPE_2__* %19, i32 %21)
  br label %23

23:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @musbotg_vbus_interrupt(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @USBCTRL_READ4(%struct.musbotg_super_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
