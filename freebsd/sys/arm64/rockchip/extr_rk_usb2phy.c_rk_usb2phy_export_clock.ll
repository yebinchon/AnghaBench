; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_usb2phy.c_rk_usb2phy_export_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_usb2phy.c_rk_usb2phy_export_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_usb2phy_softc = type { i32, i32 }
%struct.clknode_init_def = type { i8*, i32, i32*, i64 }
%struct.rk_usb2phy_clk_sc = type { %struct.rk_usb2phy_regs*, i32, i32 }
%struct.rk_usb2phy_regs = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.clkdom = type { i32 }
%struct.clknode = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"couldn't find parent clock\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@rk_usb2phy_clk_ofw_map = common dso_local global i32 0, align 4
@M_OFWPROP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"cannot get clock %d\0A\00", align 1
@rk_usb2phy_clk_clknode_class = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"cannot create clknode\0A\00", align 1
@compat_data = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"cannot finalize clkdom initialization\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_usb2phy_softc*)* @rk_usb2phy_export_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_usb2phy_export_clock(%struct.rk_usb2phy_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rk_usb2phy_softc*, align 8
  %4 = alloca %struct.clknode_init_def, align 8
  %5 = alloca %struct.rk_usb2phy_clk_sc*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.clkdom*, align 8
  %8 = alloca %struct.clknode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rk_usb2phy_softc* %0, %struct.rk_usb2phy_softc** %3, align 8
  %16 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %3, align 8
  %17 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ofw_bus_get_node(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @ofw_bus_parse_xref_list_get_length(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %24, %1
  %28 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %3, align 8
  %29 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %160

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @ofw_bus_string_list_to_array(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8*** %6)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %160

40:                                               ; preds = %33
  %41 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %3, align 8
  %42 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.clkdom* @clkdom_create(i32 %43)
  store %struct.clkdom* %44, %struct.clkdom** %7, align 8
  %45 = load %struct.clkdom*, %struct.clkdom** %7, align 8
  %46 = load i32, i32* @rk_usb2phy_clk_ofw_map, align 4
  %47 = call i32 @clkdom_set_ofw_mapper(%struct.clkdom* %45, i32 %46)
  %48 = call i32 @memset(%struct.clknode_init_def* %4, i32 0, i32 32)
  %49 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %4, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load i8**, i8*** %6, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %4, i32 0, i32 0
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 8, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @M_OFWPROP, align 4
  %59 = load i32, i32* @M_WAITOK, align 4
  %60 = call i32* @malloc(i32 %57, i32 %58, i32 %59)
  %61 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %4, i32 0, i32 2
  store i32* %60, i32** %61, align 8
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %91, %40
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %62
  %67 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %3, align 8
  %68 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @clk_get_by_ofw_index(i32 %69, i32 0, i32 %70, i32* %9)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %3, align 8
  %76 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %2, align 4
  br label %160

81:                                               ; preds = %66
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @clk_get_name(i32 %82)
  %84 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %4, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @clk_release(i32 %89)
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %62

94:                                               ; preds = %62
  %95 = load i32, i32* %14, align 4
  %96 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %4, i32 0, i32 1
  store i32 %95, i32* %96, align 8
  %97 = load %struct.clkdom*, %struct.clkdom** %7, align 8
  %98 = call %struct.clknode* @clknode_create(%struct.clkdom* %97, i32* @rk_usb2phy_clk_clknode_class, %struct.clknode_init_def* %4)
  store %struct.clknode* %98, %struct.clknode** %8, align 8
  %99 = load %struct.clknode*, %struct.clknode** %8, align 8
  %100 = icmp eq %struct.clknode* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %3, align 8
  %103 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32, i32* @ENXIO, align 4
  store i32 %106, i32* %2, align 4
  br label %160

107:                                              ; preds = %94
  %108 = load %struct.clknode*, %struct.clknode** %8, align 8
  %109 = call %struct.rk_usb2phy_clk_sc* @clknode_get_softc(%struct.clknode* %108)
  store %struct.rk_usb2phy_clk_sc* %109, %struct.rk_usb2phy_clk_sc** %5, align 8
  %110 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %3, align 8
  %111 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @device_get_parent(i32 %112)
  %114 = load %struct.rk_usb2phy_clk_sc*, %struct.rk_usb2phy_clk_sc** %5, align 8
  %115 = getelementptr inbounds %struct.rk_usb2phy_clk_sc, %struct.rk_usb2phy_clk_sc* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %3, align 8
  %117 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.rk_usb2phy_clk_sc*, %struct.rk_usb2phy_clk_sc** %5, align 8
  %120 = getelementptr inbounds %struct.rk_usb2phy_clk_sc, %struct.rk_usb2phy_clk_sc* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %3, align 8
  %122 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @compat_data, align 4
  %125 = call %struct.TYPE_4__* @ofw_bus_search_compatible(i32 %123, i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to %struct.rk_usb2phy_regs*
  %129 = load %struct.rk_usb2phy_clk_sc*, %struct.rk_usb2phy_clk_sc** %5, align 8
  %130 = getelementptr inbounds %struct.rk_usb2phy_clk_sc, %struct.rk_usb2phy_clk_sc* %129, i32 0, i32 0
  store %struct.rk_usb2phy_regs* %128, %struct.rk_usb2phy_regs** %130, align 8
  %131 = load i32, i32* %10, align 4
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %133 = call i32 @OF_getencprop(i32 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %132, i32 8)
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.rk_usb2phy_clk_sc*, %struct.rk_usb2phy_clk_sc** %5, align 8
  %137 = getelementptr inbounds %struct.rk_usb2phy_clk_sc, %struct.rk_usb2phy_clk_sc* %136, i32 0, i32 0
  %138 = load %struct.rk_usb2phy_regs*, %struct.rk_usb2phy_regs** %137, align 8
  %139 = getelementptr inbounds %struct.rk_usb2phy_regs, %struct.rk_usb2phy_regs* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i32 %135, i32* %140, align 4
  %141 = load %struct.clkdom*, %struct.clkdom** %7, align 8
  %142 = load %struct.clknode*, %struct.clknode** %8, align 8
  %143 = call i32 @clknode_register(%struct.clkdom* %141, %struct.clknode* %142)
  %144 = load %struct.clkdom*, %struct.clkdom** %7, align 8
  %145 = call i64 @clkdom_finit(%struct.clkdom* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %107
  %148 = load %struct.rk_usb2phy_softc*, %struct.rk_usb2phy_softc** %3, align 8
  %149 = getelementptr inbounds %struct.rk_usb2phy_softc, %struct.rk_usb2phy_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i8*, ...) @device_printf(i32 %150, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %152 = load i32, i32* @ENXIO, align 4
  store i32 %152, i32* %2, align 4
  br label %160

153:                                              ; preds = %107
  %154 = load i64, i64* @bootverbose, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.clkdom*, %struct.clkdom** %7, align 8
  %158 = call i32 @clkdom_dump(%struct.clkdom* %157)
  br label %159

159:                                              ; preds = %156, %153
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %147, %101, %74, %38, %27
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @ofw_bus_parse_xref_list_get_length(i32, i8*, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ofw_bus_string_list_to_array(i32, i8*, i8***) #1

declare dso_local %struct.clkdom* @clkdom_create(i32) #1

declare dso_local i32 @clkdom_set_ofw_mapper(%struct.clkdom*, i32) #1

declare dso_local i32 @memset(%struct.clknode_init_def*, i32, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @clk_get_by_ofw_index(i32, i32, i32, i32*) #1

declare dso_local i32 @clk_get_name(i32) #1

declare dso_local i32 @clk_release(i32) #1

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, %struct.clknode_init_def*) #1

declare dso_local %struct.rk_usb2phy_clk_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.TYPE_4__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #1

declare dso_local i64 @clkdom_finit(%struct.clkdom*) #1

declare dso_local i32 @clkdom_dump(%struct.clkdom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
