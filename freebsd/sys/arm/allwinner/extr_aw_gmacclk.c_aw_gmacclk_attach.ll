; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gmacclk.c_aw_gmacclk_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gmacclk.c_aw_gmacclk_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode_init_def = type { i32, i32, i32*, i32 }
%struct.aw_gmacclk_sc = type { i32, i32, i32, i32 }
%struct.clkdom = type { i32 }
%struct.clknode = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"cannot parse 'reg' property\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@CLK_IDX_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"couldn't find parent clocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot parse clock name\0A\00", align 1
@M_OFWPROP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"cannot get clock %d\0A\00", align 1
@aw_gmacclk_clknode_class = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"cannot create clknode\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"tx-delay\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"rx-delay\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"cannot finalize clkdom initialization\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aw_gmacclk_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_gmacclk_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode_init_def, align 8
  %5 = alloca %struct.aw_gmacclk_sc*, align 8
  %6 = alloca %struct.clkdom*, align 8
  %7 = alloca %struct.clknode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ofw_bus_get_node(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i64 @ofw_reg_to_paddr(i32 %17, i32 0, i32* %9, i32* %10, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %140

24:                                               ; preds = %1
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @ofw_bus_parse_xref_list_get_length(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @CLK_IDX_COUNT, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %140

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = call %struct.clkdom* @clkdom_create(i32 %38)
  store %struct.clkdom* %39, %struct.clkdom** %6, align 8
  %40 = call i32 @memset(%struct.clknode_init_def* %4, i32 0, i32 24)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %11, align 4
  %43 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %4, i32 0, i32 3
  %44 = call i32 @clk_parse_ofw_clk_name(i32 %41, i32 %42, i32* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %12, align 4
  br label %138

51:                                               ; preds = %37
  %52 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %4, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 8, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @M_OFWPROP, align 4
  %58 = load i32, i32* @M_WAITOK, align 4
  %59 = call i32* @malloc(i32 %56, i32 %57, i32 %58)
  %60 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %4, i32 0, i32 2
  store i32* %59, i32** %60, align 8
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %85, %51
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @clk_get_by_ofw_index(i32 %66, i32 0, i32 %67, i32* %8)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  br label %138

75:                                               ; preds = %65
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @clk_get_name(i32 %76)
  %78 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %4, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @clk_release(i32 %83)
  br label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %61

88:                                               ; preds = %61
  %89 = load i32, i32* %13, align 4
  %90 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %4, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load %struct.clkdom*, %struct.clkdom** %6, align 8
  %92 = call %struct.clknode* @clknode_create(%struct.clkdom* %91, i32* @aw_gmacclk_clknode_class, %struct.clknode_init_def* %4)
  store %struct.clknode* %92, %struct.clknode** %7, align 8
  %93 = load %struct.clknode*, %struct.clknode** %7, align 8
  %94 = icmp eq %struct.clknode* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* %3, align 4
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %98 = load i32, i32* @ENXIO, align 4
  store i32 %98, i32* %12, align 4
  br label %138

99:                                               ; preds = %88
  %100 = load %struct.clknode*, %struct.clknode** %7, align 8
  %101 = call %struct.aw_gmacclk_sc* @clknode_get_softc(%struct.clknode* %100)
  store %struct.aw_gmacclk_sc* %101, %struct.aw_gmacclk_sc** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.aw_gmacclk_sc*, %struct.aw_gmacclk_sc** %5, align 8
  %104 = getelementptr inbounds %struct.aw_gmacclk_sc, %struct.aw_gmacclk_sc* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @device_get_parent(i32 %105)
  %107 = load %struct.aw_gmacclk_sc*, %struct.aw_gmacclk_sc** %5, align 8
  %108 = getelementptr inbounds %struct.aw_gmacclk_sc, %struct.aw_gmacclk_sc* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.aw_gmacclk_sc*, %struct.aw_gmacclk_sc** %5, align 8
  %110 = getelementptr inbounds %struct.aw_gmacclk_sc, %struct.aw_gmacclk_sc* %109, i32 0, i32 1
  store i32 -1, i32* %110, align 4
  %111 = load %struct.aw_gmacclk_sc*, %struct.aw_gmacclk_sc** %5, align 8
  %112 = getelementptr inbounds %struct.aw_gmacclk_sc, %struct.aw_gmacclk_sc* %111, i32 0, i32 0
  store i32 -1, i32* %112, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.aw_gmacclk_sc*, %struct.aw_gmacclk_sc** %5, align 8
  %115 = getelementptr inbounds %struct.aw_gmacclk_sc, %struct.aw_gmacclk_sc* %114, i32 0, i32 0
  %116 = call i32 @OF_getencprop(i32 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %115, i32 4)
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.aw_gmacclk_sc*, %struct.aw_gmacclk_sc** %5, align 8
  %119 = getelementptr inbounds %struct.aw_gmacclk_sc, %struct.aw_gmacclk_sc* %118, i32 0, i32 1
  %120 = call i32 @OF_getencprop(i32 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %119, i32 4)
  %121 = load %struct.clkdom*, %struct.clkdom** %6, align 8
  %122 = load %struct.clknode*, %struct.clknode** %7, align 8
  %123 = call i32 @clknode_register(%struct.clkdom* %121, %struct.clknode* %122)
  %124 = load %struct.clkdom*, %struct.clkdom** %6, align 8
  %125 = call i64 @clkdom_finit(%struct.clkdom* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %99
  %128 = load i32, i32* %3, align 4
  %129 = call i32 (i32, i8*, ...) @device_printf(i32 %128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %130 = load i32, i32* @ENXIO, align 4
  store i32 %130, i32* %12, align 4
  br label %138

131:                                              ; preds = %99
  %132 = load i64, i64* @bootverbose, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.clkdom*, %struct.clkdom** %6, align 8
  %136 = call i32 @clkdom_dump(%struct.clkdom* %135)
  br label %137

137:                                              ; preds = %134, %131
  store i32 0, i32* %2, align 4
  br label %140

138:                                              ; preds = %127, %95, %71, %47
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %138, %137, %33, %20
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @ofw_reg_to_paddr(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ofw_bus_parse_xref_list_get_length(i32, i8*, i8*, i32*) #1

declare dso_local %struct.clkdom* @clkdom_create(i32) #1

declare dso_local i32 @memset(%struct.clknode_init_def*, i32, i32) #1

declare dso_local i32 @clk_parse_ofw_clk_name(i32, i32, i32*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @clk_get_by_ofw_index(i32, i32, i32, i32*) #1

declare dso_local i32 @clk_get_name(i32) #1

declare dso_local i32 @clk_release(i32) #1

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, %struct.clknode_init_def*) #1

declare dso_local %struct.aw_gmacclk_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @device_get_parent(i32) #1

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
