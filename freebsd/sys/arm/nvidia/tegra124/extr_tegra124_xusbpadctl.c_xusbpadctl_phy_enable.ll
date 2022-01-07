; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_xusbpadctl_phy_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_xusbpadctl_phy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_lane = type { i64, %struct.padctl_pad*, i32 }
%struct.padctl_pad = type { i32 (%struct.padctl_softc*, %struct.padctl_lane.0*)*, i32 (%struct.padctl_softc*, %struct.padctl_lane.1*)* }
%struct.padctl_softc = type { i32 }
%struct.padctl_lane.0 = type opaque
%struct.padctl_lane.1 = type opaque
%struct.phynode = type { i32 }

@lanes_tbl = common dso_local global %struct.padctl_lane* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Unknown phy: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Lane is not enabled/configured: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phynode*, i32)* @xusbpadctl_phy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xusbpadctl_phy_enable(%struct.phynode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phynode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.padctl_softc*, align 8
  %9 = alloca %struct.padctl_lane*, align 8
  %10 = alloca %struct.padctl_pad*, align 8
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
  %17 = call %struct.padctl_softc* @device_get_softc(i32 %16)
  store %struct.padctl_softc* %17, %struct.padctl_softc** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.padctl_lane*, %struct.padctl_lane** @lanes_tbl, align 8
  %23 = call i64 @nitems(%struct.padctl_lane* %22)
  %24 = icmp sge i64 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20, %2
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %3, align 4
  br label %115

30:                                               ; preds = %20
  %31 = load %struct.padctl_lane*, %struct.padctl_lane** @lanes_tbl, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %31, i64 %32
  store %struct.padctl_lane* %33, %struct.padctl_lane** %9, align 8
  %34 = load %struct.padctl_lane*, %struct.padctl_lane** %9, align 8
  %35 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.padctl_lane*, %struct.padctl_lane** %9, align 8
  %41 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %3, align 4
  br label %115

45:                                               ; preds = %30
  %46 = load %struct.padctl_lane*, %struct.padctl_lane** %9, align 8
  %47 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %46, i32 0, i32 1
  %48 = load %struct.padctl_pad*, %struct.padctl_pad** %47, align 8
  store %struct.padctl_pad* %48, %struct.padctl_pad** %10, align 8
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load %struct.padctl_softc*, %struct.padctl_softc** %8, align 8
  %53 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.padctl_softc*, %struct.padctl_softc** %8, align 8
  %58 = call i32 @phy_powerup(%struct.padctl_softc* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %3, align 4
  br label %115

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %51
  %65 = load %struct.padctl_softc*, %struct.padctl_softc** %8, align 8
  %66 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %45
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.padctl_pad*, %struct.padctl_pad** %10, align 8
  %74 = getelementptr inbounds %struct.padctl_pad, %struct.padctl_pad* %73, i32 0, i32 0
  %75 = load i32 (%struct.padctl_softc*, %struct.padctl_lane.0*)*, i32 (%struct.padctl_softc*, %struct.padctl_lane.0*)** %74, align 8
  %76 = load %struct.padctl_softc*, %struct.padctl_softc** %8, align 8
  %77 = load %struct.padctl_lane*, %struct.padctl_lane** %9, align 8
  %78 = bitcast %struct.padctl_lane* %77 to %struct.padctl_lane.0*
  %79 = call i32 %75(%struct.padctl_softc* %76, %struct.padctl_lane.0* %78)
  store i32 %79, i32* %11, align 4
  br label %88

80:                                               ; preds = %69
  %81 = load %struct.padctl_pad*, %struct.padctl_pad** %10, align 8
  %82 = getelementptr inbounds %struct.padctl_pad, %struct.padctl_pad* %81, i32 0, i32 1
  %83 = load i32 (%struct.padctl_softc*, %struct.padctl_lane.1*)*, i32 (%struct.padctl_softc*, %struct.padctl_lane.1*)** %82, align 8
  %84 = load %struct.padctl_softc*, %struct.padctl_softc** %8, align 8
  %85 = load %struct.padctl_lane*, %struct.padctl_lane** %9, align 8
  %86 = bitcast %struct.padctl_lane* %85 to %struct.padctl_lane.1*
  %87 = call i32 %83(%struct.padctl_softc* %84, %struct.padctl_lane.1* %86)
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %80, %72
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %3, align 4
  br label %115

93:                                               ; preds = %88
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %114, label %96

96:                                               ; preds = %93
  %97 = load %struct.padctl_softc*, %struct.padctl_softc** %8, align 8
  %98 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.padctl_softc*, %struct.padctl_softc** %8, align 8
  %103 = call i32 @phy_powerdown(%struct.padctl_softc* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %3, align 4
  br label %115

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %96
  %110 = load %struct.padctl_softc*, %struct.padctl_softc** %8, align 8
  %111 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %109, %93
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %106, %91, %61, %38, %25
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @phynode_get_device(%struct.phynode*) #1

declare dso_local i64 @phynode_get_id(%struct.phynode*) #1

declare dso_local %struct.padctl_softc* @device_get_softc(i32) #1

declare dso_local i64 @nitems(%struct.padctl_lane*) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @phy_powerup(%struct.padctl_softc*) #1

declare dso_local i32 @phy_powerdown(%struct.padctl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
