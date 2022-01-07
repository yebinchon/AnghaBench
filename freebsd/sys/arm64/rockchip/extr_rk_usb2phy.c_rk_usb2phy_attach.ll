; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_usb2phy.c_rk_usb2phy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_usb2phy.c_rk_usb2phy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_usb2phy_softc = type { i32, i32, i32, i32 }
%struct.phynode_init_def = type { i64, i32 }
%struct.phynode = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Cannot get syscon handle\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"phyclk\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Cannot get clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Could not enable clock %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"host-port\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Cannot find host-port child node\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"host-port isn't okay\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"phy-supply\00", align 1
@RK3399_USBPHY_HOST = common dso_local global i32 0, align 4
@rk_usb2phy_phynode_class = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to create host USB2PHY\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"failed to register host USB2PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rk_usb2phy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_usb2phy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk_usb2phy_softc*, align 8
  %5 = alloca %struct.phynode_init_def, align 8
  %6 = alloca %struct.phynode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.rk_usb2phy_softc* @device_get_softc(i32 %10)
  store %struct.rk_usb2phy_softc* %11, %struct.rk_usb2phy_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %4, align 8
  %14 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @ofw_bus_get_node(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %4, align 8
  %19 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %18, i32 0, i32 2
  %20 = call i64 @syscon_get_handle_default(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %105

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %4, align 8
  %29 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %28, i32 0, i32 1
  %30 = call i64 @clk_get_by_ofw_name(i32 %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %105

36:                                               ; preds = %26
  %37 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %4, align 8
  %38 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_enable(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %4, align 8
  %46 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clk_get_name(i32 %47)
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %2, align 4
  br label %105

51:                                               ; preds = %36
  %52 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %4, align 8
  %53 = call i32 @rk_usb2phy_export_clock(%struct.rk_usb2phy_softc* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %2, align 4
  br label %105

58:                                               ; preds = %51
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @ofw_bus_find_child(i64 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = call i32 (i32, i8*, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %2, align 4
  br label %105

67:                                               ; preds = %58
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @ofw_bus_node_status_okay(i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %3, align 4
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %105

74:                                               ; preds = %67
  %75 = load i32, i32* %3, align 4
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %4, align 8
  %78 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %77, i32 0, i32 0
  %79 = call i32 @regulator_get_by_ofw_property(i32 %75, i64 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32* %78)
  %80 = load i32, i32* @RK3399_USBPHY_HOST, align 4
  %81 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %5, i32 0, i32 1
  store i32 %80, i32* %81, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %5, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call %struct.phynode* @phynode_create(i32 %84, i32* @rk_usb2phy_phynode_class, %struct.phynode_init_def* %5)
  store %struct.phynode* %85, %struct.phynode** %6, align 8
  %86 = load %struct.phynode*, %struct.phynode** %6, align 8
  %87 = icmp eq %struct.phynode* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %74
  %89 = load i32, i32* %3, align 4
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %2, align 4
  br label %105

92:                                               ; preds = %74
  %93 = load %struct.phynode*, %struct.phynode** %6, align 8
  %94 = call i32* @phynode_register(%struct.phynode* %93)
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* %3, align 4
  %98 = call i32 (i32, i8*, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %99 = load i32, i32* @ENXIO, align 4
  store i32 %99, i32* %2, align 4
  br label %105

100:                                              ; preds = %92
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @OF_xref_from_node(i64 %101)
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @OF_device_register_xref(i32 %102, i32 %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %100, %96, %88, %71, %63, %56, %43, %32, %22
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.rk_usb2phy_softc* @device_get_softc(i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i64 @syscon_get_handle_default(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_name(i32) #1

declare dso_local i32 @rk_usb2phy_export_clock(%struct.rk_usb2phy_softc*) #1

declare dso_local i64 @ofw_bus_find_child(i64, i8*) #1

declare dso_local i32 @ofw_bus_node_status_okay(i64) #1

declare dso_local i32 @regulator_get_by_ofw_property(i32, i64, i8*, i32*) #1

declare dso_local %struct.phynode* @phynode_create(i32, i32*, %struct.phynode_init_def*) #1

declare dso_local i32* @phynode_register(%struct.phynode*) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
