; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_usb2phy.c_rk_usb2phy_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_usb2phy.c_rk_usb2phy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phynode = type { i32 }
%struct.rk_usb2phy_softc = type { i64 }

@RK3399_USBPHY_HOST = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Cannot %sable the regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phynode*, i32)* @rk_usb2phy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_usb2phy_enable(%struct.phynode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phynode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rk_usb2phy_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.phynode* %0, %struct.phynode** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.phynode*, %struct.phynode** %4, align 8
  %11 = call i32 @phynode_get_device(%struct.phynode* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.phynode*, %struct.phynode** %4, align 8
  %13 = call i64 @phynode_get_id(%struct.phynode* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.rk_usb2phy_softc* @device_get_softc(i32 %14)
  store %struct.rk_usb2phy_softc* %15, %struct.rk_usb2phy_softc** %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @RK3399_USBPHY_HOST, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ERANGE, align 4
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %6, align 8
  %23 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %6, align 8
  %31 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @regulator_enable(i64 %32)
  store i32 %33, i32* %9, align 4
  br label %39

34:                                               ; preds = %26
  %35 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %6, align 8
  %36 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @regulator_disable(i64 %37)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %48 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %51

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %21
  store i32 0, i32* %3, align 4
  br label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %50, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @phynode_get_device(%struct.phynode*) #1

declare dso_local i64 @phynode_get_id(%struct.phynode*) #1

declare dso_local %struct.rk_usb2phy_softc* @device_get_softc(i32) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
