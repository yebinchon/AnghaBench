; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_typec_phy.c_rk_typec_phy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_typec_phy.c_rk_typec_phy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_typec_phy_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phynode_init_def = type { i32, i32 }
%struct.phynode = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot guess phy controller id\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Unknown address %x for typec-phy\0A\00", align 1
@rk_typec_phy_spec = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Cannot get syscon handle\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"tcpdcore\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Cannot get tcpdcore clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"tcpdphy-ref\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Cannot get tcpdphy-ref clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"uphy\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Cannot get uphy reset\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"uphy-pipe\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Cannot get uphy-pipe reset\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"uphy-tcphy\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Cannot get uphy-tcphy reset\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"clk_set_assigned failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"usb3-port\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Cannot find usb3-port child node\0A\00", align 1
@RK3399_TYPEC_PHY_USB3 = common dso_local global i32 0, align 4
@rk_typec_phy_phynode_class = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [32 x i8] c"failed to create phy usb3-port\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"failed to register phy usb3-port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rk_typec_phy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_typec_phy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk_typec_phy_softc*, align 8
  %5 = alloca %struct.phynode_init_def, align 4
  %6 = alloca %struct.phynode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.rk_typec_phy_softc* @device_get_softc(i32 %10)
  store %struct.rk_typec_phy_softc* %11, %struct.rk_typec_phy_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %4, align 8
  %14 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ofw_bus_get_node(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %19 = call i64 @OF_getencprop(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %18, i32 16)
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %169

25:                                               ; preds = %1
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %34 [
    i32 -8650752, label %28
    i32 -8388608, label %31
  ]

28:                                               ; preds = %25
  %29 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %4, align 8
  %30 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %40

31:                                               ; preds = %25
  %32 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %4, align 8
  %33 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %40

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %169

40:                                               ; preds = %31, %28
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @rk_typec_phy_spec, align 4
  %43 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %4, align 8
  %44 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %43, i32 0, i32 1
  %45 = call i64 @bus_alloc_resources(i32 %41, i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %162

50:                                               ; preds = %40
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %4, align 8
  %54 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %53, i32 0, i32 7
  %55 = call i64 @syscon_get_by_ofw_property(i32 %51, i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* %3, align 4
  %59 = call i32 (i32, i8*, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %162

60:                                               ; preds = %50
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %4, align 8
  %63 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %62, i32 0, i32 6
  %64 = call i64 @clk_get_by_ofw_name(i32 %61, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %3, align 4
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %162

69:                                               ; preds = %60
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %4, align 8
  %72 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %71, i32 0, i32 5
  %73 = call i64 @clk_get_by_ofw_name(i32 %70, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* %3, align 4
  %77 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %162

78:                                               ; preds = %69
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %4, align 8
  %81 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %80, i32 0, i32 4
  %82 = call i64 @hwreset_get_by_ofw_name(i32 %79, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* %3, align 4
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %162

87:                                               ; preds = %78
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %4, align 8
  %90 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %89, i32 0, i32 3
  %91 = call i64 @hwreset_get_by_ofw_name(i32 %88, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* %3, align 4
  %95 = call i32 (i32, i8*, ...) @device_printf(i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %162

96:                                               ; preds = %87
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %4, align 8
  %99 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %98, i32 0, i32 2
  %100 = call i64 @hwreset_get_by_ofw_name(i32 %97, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %3, align 4
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  br label %162

105:                                              ; preds = %96
  %106 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %4, align 8
  %107 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @hwreset_assert(i32 %108)
  %110 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %4, align 8
  %111 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @hwreset_assert(i32 %112)
  %114 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %4, align 8
  %115 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @hwreset_assert(i32 %116)
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i64 @clk_set_assigned(i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %105
  %123 = load i32, i32* %3, align 4
  %124 = call i32 (i32, i8*, ...) @device_printf(i32 %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  br label %162

125:                                              ; preds = %105
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @ofw_bus_find_child(i32 %126, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* %3, align 4
  %132 = call i32 (i32, i8*, ...) @device_printf(i32 %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  br label %162

133:                                              ; preds = %125
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @ofw_bus_node_status_okay(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %169

138:                                              ; preds = %133
  %139 = load i32, i32* @RK3399_TYPEC_PHY_USB3, align 4
  %140 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %5, i32 0, i32 1
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* %8, align 4
  %142 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %5, i32 0, i32 0
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %3, align 4
  %144 = call %struct.phynode* @phynode_create(i32 %143, i32* @rk_typec_phy_phynode_class, %struct.phynode_init_def* %5)
  store %struct.phynode* %144, %struct.phynode** %6, align 8
  %145 = load %struct.phynode*, %struct.phynode** %6, align 8
  %146 = icmp eq %struct.phynode* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load i32, i32* %3, align 4
  %149 = call i32 (i32, i8*, ...) @device_printf(i32 %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  br label %162

150:                                              ; preds = %138
  %151 = load %struct.phynode*, %struct.phynode** %6, align 8
  %152 = call i32* @phynode_register(%struct.phynode* %151)
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, i32* %3, align 4
  %156 = call i32 (i32, i8*, ...) @device_printf(i32 %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0))
  br label %162

157:                                              ; preds = %150
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @OF_xref_from_node(i32 %158)
  %160 = load i32, i32* %3, align 4
  %161 = call i32 @OF_device_register_xref(i32 %159, i32 %160)
  store i32 0, i32* %2, align 4
  br label %169

162:                                              ; preds = %154, %147, %130, %122, %102, %93, %84, %75, %66, %57, %47
  %163 = load i32, i32* %3, align 4
  %164 = load i32, i32* @rk_typec_phy_spec, align 4
  %165 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %4, align 8
  %166 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %165, i32 0, i32 1
  %167 = call i32 @bus_release_resources(i32 %163, i32 %164, i32* %166)
  %168 = load i32, i32* @ENXIO, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %162, %157, %137, %34, %21
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.rk_typec_phy_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i64 @syscon_get_by_ofw_property(i32, i32, i8*, i32*) #1

declare dso_local i64 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i64 @hwreset_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @hwreset_assert(i32) #1

declare dso_local i64 @clk_set_assigned(i32, i32) #1

declare dso_local i32 @ofw_bus_find_child(i32, i8*) #1

declare dso_local i32 @ofw_bus_node_status_okay(i32) #1

declare dso_local %struct.phynode* @phynode_create(i32, i32*, %struct.phynode_init_def*) #1

declare dso_local i32* @phynode_register(%struct.phynode*) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
