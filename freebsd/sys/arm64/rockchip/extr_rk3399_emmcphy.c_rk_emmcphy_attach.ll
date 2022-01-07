; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk3399_emmcphy.c_rk_emmcphy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk3399_emmcphy.c_rk_emmcphy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phynode_init_def = type { i8*, i64 }
%struct.phynode = type { i32 }
%struct.rk_emmcphy_softc = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot get clocks handle\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"arasan,soc-ctl-syscon\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot get grf driver handle\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"failed to get syscon\0A\00", align 1
@rk_emmcphy_phynode_class = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to create eMMC PHY\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to register eMMC PHY\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"Attached phy id: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rk_emmcphy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_emmcphy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.phynode_init_def, align 8
  %5 = alloca %struct.phynode*, align 8
  %6 = alloca %struct.rk_emmcphy_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.rk_emmcphy_softc* @device_get_softc(i32 %11)
  store %struct.rk_emmcphy_softc* %12, %struct.rk_emmcphy_softc** %6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i8* @ofw_bus_get_node(i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i32* %9 to i8*
  %17 = call i64 @OF_getencprop(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %16, i32 4)
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %81

23:                                               ; preds = %1
  %24 = load i32, i32* %9, align 4
  %25 = call i8* @OF_node_from_xref(i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @OF_hasprop(i8* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %33 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %32, i32 0, i32 0
  %34 = call i64 @syscon_get_by_ofw_property(i32 %30, i8* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32** %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %81

40:                                               ; preds = %29, %23
  %41 = load %struct.rk_emmcphy_softc*, %struct.rk_emmcphy_softc** %6, align 8
  %42 = getelementptr inbounds %struct.rk_emmcphy_softc, %struct.rk_emmcphy_softc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %81

49:                                               ; preds = %40
  %50 = call i32 @bzero(%struct.phynode_init_def* %4, i32 16)
  %51 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %4, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i8* @ofw_bus_get_node(i32 %52)
  %54 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %4, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call %struct.phynode* @phynode_create(i32 %55, i32* @rk_emmcphy_phynode_class, %struct.phynode_init_def* %4)
  store %struct.phynode* %56, %struct.phynode** %5, align 8
  %57 = load %struct.phynode*, %struct.phynode** %5, align 8
  %58 = icmp eq %struct.phynode* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32, i32* %3, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %2, align 4
  br label %81

63:                                               ; preds = %49
  %64 = load %struct.phynode*, %struct.phynode** %5, align 8
  %65 = call i32* @phynode_register(%struct.phynode* %64)
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = call i32 (i32, i8*, ...) @device_printf(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %2, align 4
  br label %81

71:                                               ; preds = %63
  %72 = load i64, i64* @bootverbose, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.phynode*, %struct.phynode** %5, align 8
  %76 = call i64 @phynode_get_id(%struct.phynode* %75)
  store i64 %76, i64* %10, align 8
  %77 = load i32, i32* %3, align 4
  %78 = load i64, i64* %10, align 8
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %74, %71
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %67, %59, %45, %36, %19
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.rk_emmcphy_softc* @device_get_softc(i32) #1

declare dso_local i8* @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i8*, i8*, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @OF_node_from_xref(i32) #1

declare dso_local i64 @OF_hasprop(i8*, i8*) #1

declare dso_local i64 @syscon_get_by_ofw_property(i32, i8*, i8*, i32**) #1

declare dso_local i32 @bzero(%struct.phynode_init_def*, i32) #1

declare dso_local %struct.phynode* @phynode_create(i32, i32*, %struct.phynode_init_def*) #1

declare dso_local i32* @phynode_register(%struct.phynode*) #1

declare dso_local i64 @phynode_get_id(%struct.phynode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
