; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_usb3phy.c_awusb3phy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_usb3phy.c_awusb3phy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phynode = type { i32 }
%struct.phynode_init_def = type { i8* }
%struct.awusb3phy_softc = type { i32, i32 }

@aw_usb3phy_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"couldn't enable clock %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"couldn't de-assert reset %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"phy-supply\00", align 1
@awusb3phy_phynode_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to create USB PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @awusb3phy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awusb3phy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.phynode*, align 8
  %5 = alloca %struct.phynode_init_def, align 8
  %6 = alloca %struct.awusb3phy_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.awusb3phy_softc* @device_get_softc(i32 %12)
  store %struct.awusb3phy_softc* %13, %struct.awusb3phy_softc** %6, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @ofw_bus_get_node(i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @aw_usb3phy_spec, align 4
  %18 = load %struct.awusb3phy_softc*, %struct.awusb3phy_softc** %6, align 8
  %19 = getelementptr inbounds %struct.awusb3phy_softc, %struct.awusb3phy_softc* %18, i32 0, i32 1
  %20 = call i64 @bus_alloc_resources(i32 %16, i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %94

26:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %44, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @clk_get_by_ofw_index(i32 %28, i32 0, i32 %29, i32* %7)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @clk_enable(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @clk_get_name(i32 %39)
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %2, align 4
  br label %94

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %27

47:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @hwreset_get_by_ofw_idx(i32 %49, i32 0, i32 %50, i32* %8)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @hwreset_deassert(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %2, align 4
  br label %94

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %48

67:                                               ; preds = %48
  %68 = load i32, i32* %3, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.awusb3phy_softc*, %struct.awusb3phy_softc** %6, align 8
  %71 = getelementptr inbounds %struct.awusb3phy_softc, %struct.awusb3phy_softc* %70, i32 0, i32 0
  %72 = call i32 @regulator_get_by_ofw_property(i32 %68, i8* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %71)
  %73 = load i32, i32* %3, align 4
  %74 = call i8* @ofw_bus_get_node(i32 %73)
  %75 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %5, i32 0, i32 0
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call %struct.phynode* @phynode_create(i32 %76, i32* @awusb3phy_phynode_class, %struct.phynode_init_def* %5)
  store %struct.phynode* %77, %struct.phynode** %4, align 8
  %78 = load %struct.phynode*, %struct.phynode** %4, align 8
  %79 = icmp eq %struct.phynode* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = load i32, i32* %3, align 4
  %82 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %2, align 4
  br label %94

84:                                               ; preds = %67
  %85 = load %struct.phynode*, %struct.phynode** %4, align 8
  %86 = call i32* @phynode_register(%struct.phynode* %85)
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* %3, align 4
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %2, align 4
  br label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %88, %80, %58, %37, %22
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.awusb3phy_softc* @device_get_softc(i32) #1

declare dso_local i8* @ofw_bus_get_node(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @clk_get_by_ofw_index(i32, i32, i32, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_name(i32) #1

declare dso_local i64 @hwreset_get_by_ofw_idx(i32, i32, i32, i32*) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @regulator_get_by_ofw_property(i32, i8*, i8*, i32*) #1

declare dso_local %struct.phynode* @phynode_create(i32, i32*, %struct.phynode_init_def*) #1

declare dso_local i32* @phynode_register(%struct.phynode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
