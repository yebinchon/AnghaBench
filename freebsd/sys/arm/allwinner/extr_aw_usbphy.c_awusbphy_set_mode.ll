; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_usbphy.c_awusbphy_set_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_usbphy.c_awusbphy_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phynode = type { i32 }
%struct.awusbphy_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PHY_CSR = common dso_local global i32 0, align 4
@VBUS_CHANGE_DET = common dso_local global i32 0, align 4
@ID_CHANGE_DET = common dso_local global i32 0, align 4
@DPDM_CHANGE_DET = common dso_local global i32 0, align 4
@ID_PULLUP_EN = common dso_local global i32 0, align 4
@DPDM_PULLUP_EN = common dso_local global i32 0, align 4
@FORCE_ID = common dso_local global i32 0, align 4
@FORCE_ID_LOW = common dso_local global i32 0, align 4
@FORCE_ID_SHIFT = common dso_local global i32 0, align 4
@FORCE_VBUS_VALID = common dso_local global i32 0, align 4
@FORCE_VBUS_VALID_HIGH = common dso_local global i32 0, align 4
@FORCE_VBUS_VALID_SHIFT = common dso_local global i32 0, align 4
@OTG_PHY_CFG = common dso_local global i32 0, align 4
@OTG_PHY_ROUTE_OTG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phynode*, i32)* @awusbphy_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awusbphy_set_mode(%struct.phynode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phynode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.awusbphy_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.phynode* %0, %struct.phynode** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.phynode*, %struct.phynode** %4, align 8
  %13 = call i32 @phynode_get_device(%struct.phynode* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.phynode*, %struct.phynode** %4, align 8
  %15 = call i64 @phynode_get_id(%struct.phynode* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.awusbphy_softc* @device_get_softc(i32 %16)
  store %struct.awusbphy_softc* %17, %struct.awusbphy_softc** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 129
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %108

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %108

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %103 [
    i32 129, label %28
    i32 128, label %102
  ]

28:                                               ; preds = %26
  %29 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %8, align 8
  %30 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PHY_CSR, align 4
  %33 = call i32 @bus_read_4(i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @VBUS_CHANGE_DET, align 4
  %35 = load i32, i32* @ID_CHANGE_DET, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @DPDM_CHANGE_DET, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @ID_PULLUP_EN, align 4
  %43 = load i32, i32* @DPDM_PULLUP_EN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @FORCE_ID, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @FORCE_ID_LOW, align 4
  %52 = load i32, i32* @FORCE_ID_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @FORCE_VBUS_VALID, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @FORCE_VBUS_VALID_HIGH, align 4
  %61 = load i32, i32* @FORCE_VBUS_VALID_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %8, align 8
  %66 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PHY_CSR, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @bus_write_4(i32 %67, i32 %68, i32 %69)
  %71 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %8, align 8
  %72 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %101

77:                                               ; preds = %28
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @awusbphy_vbus_detect(i32 %78, i32* %11)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %107

83:                                               ; preds = %77
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %8, align 8
  %88 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @OTG_PHY_CFG, align 4
  %91 = load i32, i32* @OTG_PHY_ROUTE_OTG, align 4
  %92 = call i32 @CLR4(i32 %89, i32 %90, i32 %91)
  br label %100

93:                                               ; preds = %83
  %94 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %8, align 8
  %95 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @OTG_PHY_CFG, align 4
  %98 = load i32, i32* @OTG_PHY_ROUTE_OTG, align 4
  %99 = call i32 @SET4(i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %93, %86
  br label %101

101:                                              ; preds = %100, %28
  br label %103

102:                                              ; preds = %26
  br label %103

103:                                              ; preds = %26, %102, %101
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %8, align 8
  %106 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %103, %82
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %25, %23
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @phynode_get_device(%struct.phynode*) #1

declare dso_local i64 @phynode_get_id(%struct.phynode*) #1

declare dso_local %struct.awusbphy_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @awusbphy_vbus_detect(i32, i32*) #1

declare dso_local i32 @CLR4(i32, i32, i32) #1

declare dso_local i32 @SET4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
