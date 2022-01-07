; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_efuse.c_tegra_efuse_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_efuse.c_tegra_efuse_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_efuse_softc = type { i32*, i32*, i32*, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cannot map registers.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"fuse\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Cannot get fuse clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Cannot enable clock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Cannot get fuse reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Cannot clear reset\0A\00", align 1
@TEGRA124_FUSE_BEGIN = common dso_local global i32 0, align 4
@tegra_sku_info = common dso_local global i32 0, align 4
@dev_sc = common dso_local global %struct.tegra_efuse_softc* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_efuse_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_efuse_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_efuse_softc*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.tegra_efuse_softc* @device_get_softc(i32 %8)
  store %struct.tegra_efuse_softc* %9, %struct.tegra_efuse_softc** %7, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %12 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @ofw_bus_get_node(i32 %13)
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i32* @bus_alloc_resource_any(i32 %15, i32 %16, i32* %5, i32 %17)
  %19 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %20 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %22 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %4, align 4
  br label %89

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %32 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %31, i32 0, i32 2
  %33 = call i32 @clk_get_by_ofw_name(i32 %30, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32** %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %89

40:                                               ; preds = %29
  %41 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %42 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @clk_enable(i32* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  br label %89

51:                                               ; preds = %40
  %52 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %53 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %56 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %55, i32 0, i32 1
  %57 = call i32 @hwreset_get_by_ofw_name(i32 %54, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32** %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (i32, i8*, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %89

63:                                               ; preds = %51
  %64 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %65 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @hwreset_deassert(i32* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %72 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %89

75:                                               ; preds = %63
  %76 = load i32, i32* @TEGRA124_FUSE_BEGIN, align 4
  %77 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %78 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %80 = call i32 @tegra124_init_speedo(%struct.tegra_efuse_softc* %79, i32* @tegra_sku_info)
  %81 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  store %struct.tegra_efuse_softc* %81, %struct.tegra_efuse_softc** @dev_sc, align 8
  %82 = load i64, i64* @bootverbose, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = call i32 (...) @tegra_efuse_dump_sku()
  br label %86

86:                                               ; preds = %84, %75
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @bus_generic_attach(i32 %87)
  store i32 %88, i32* %2, align 4
  br label %123

89:                                               ; preds = %70, %60, %47, %36, %25
  store %struct.tegra_efuse_softc* null, %struct.tegra_efuse_softc** @dev_sc, align 8
  %90 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %91 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %96 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @clk_release(i32* %97)
  br label %99

99:                                               ; preds = %94, %89
  %100 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %101 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %106 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @hwreset_release(i32* %107)
  br label %109

109:                                              ; preds = %104, %99
  %110 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %111 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @SYS_RES_MEMORY, align 4
  %117 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %7, align 8
  %118 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @bus_release_resource(i32 %115, i32 %116, i32 0, i32* %119)
  br label %121

121:                                              ; preds = %114, %109
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %86
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.tegra_efuse_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32**) #1

declare dso_local i32 @clk_enable(i32*) #1

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32**) #1

declare dso_local i32 @hwreset_deassert(i32*) #1

declare dso_local i32 @tegra124_init_speedo(%struct.tegra_efuse_softc*, i32*) #1

declare dso_local i32 @tegra_efuse_dump_sku(...) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @hwreset_release(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
