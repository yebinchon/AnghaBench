; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_pmc.c_tegra124_pmc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_pmc.c_tegra124_pmc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_pmc_softc = type { i64, i32*, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Cannot parse FDT data\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Cannot get \22pclk\22 clock\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@PMC_CNTRL = common dso_local global i32 0, align 4
@PMC_CNTRL_CPU_PWRREQ_OE = common dso_local global i32 0, align 4
@PMC_CNTRL_SYSCLK_POLARITY = common dso_local global i32 0, align 4
@PMC_CNTRL_SYSCLK_OE = common dso_local global i32 0, align 4
@PMC_IO_DPD_STATUS = common dso_local global i32 0, align 4
@PMC_IO_DPD_STATUS_HDMI = common dso_local global i32 0, align 4
@PMC_IO_DPD2_STATUS = common dso_local global i32 0, align 4
@PMC_IO_DPD2_STATUS_HV = common dso_local global i32 0, align 4
@pmc_sc = common dso_local global %struct.tegra124_pmc_softc* null, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"tegra124_pmc: double driver attach\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra124_pmc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_pmc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra124_pmc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.tegra124_pmc_softc* @device_get_softc(i32 %9)
  store %struct.tegra124_pmc_softc* %10, %struct.tegra124_pmc_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %13 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ofw_bus_get_node(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @tegra124_pmc_parse_fdt(%struct.tegra124_pmc_softc* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %23 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %129

27:                                               ; preds = %1
  %28 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %29 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %32 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %31, i32 0, i32 3
  %33 = call i32 @clk_get_by_ofw_name(i32 %30, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %38 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %129

42:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SYS_RES_MEMORY, align 4
  %45 = load i32, i32* @RF_ACTIVE, align 4
  %46 = call i32* @bus_alloc_resource_any(i32 %43, i32 %44, i32* %5, i32 %45)
  %47 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %48 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %50 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %129

57:                                               ; preds = %42
  %58 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %59 = call i32 @PMC_LOCK_INIT(%struct.tegra124_pmc_softc* %58)
  %60 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %61 = load i32, i32* @PMC_CNTRL, align 4
  %62 = call i32 @RD4(%struct.tegra124_pmc_softc* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @PMC_CNTRL_CPU_PWRREQ_OE, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %67 = load i32, i32* @PMC_CNTRL, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @WR4(%struct.tegra124_pmc_softc* %66, i32 %67, i32 %68)
  %70 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %71 = load i32, i32* @PMC_CNTRL, align 4
  %72 = call i32 @RD4(%struct.tegra124_pmc_softc* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %74 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %57
  %78 = load i32, i32* @PMC_CNTRL_SYSCLK_POLARITY, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %86

82:                                               ; preds = %57
  %83 = load i32, i32* @PMC_CNTRL_SYSCLK_POLARITY, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %88 = load i32, i32* @PMC_CNTRL, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @WR4(%struct.tegra124_pmc_softc* %87, i32 %88, i32 %89)
  %91 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %92 = load i32, i32* @PMC_CNTRL, align 4
  %93 = call i32 @RD4(%struct.tegra124_pmc_softc* %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @PMC_CNTRL_SYSCLK_OE, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %98 = load i32, i32* @PMC_CNTRL, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @WR4(%struct.tegra124_pmc_softc* %97, i32 %98, i32 %99)
  %101 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %102 = load i32, i32* @PMC_IO_DPD_STATUS, align 4
  %103 = call i32 @RD4(%struct.tegra124_pmc_softc* %101, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* @PMC_IO_DPD_STATUS_HDMI, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %7, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %7, align 4
  %108 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %109 = load i32, i32* @PMC_IO_DPD_STATUS, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @WR4(%struct.tegra124_pmc_softc* %108, i32 %109, i32 %110)
  %112 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %113 = load i32, i32* @PMC_IO_DPD2_STATUS, align 4
  %114 = call i32 @RD4(%struct.tegra124_pmc_softc* %112, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* @PMC_IO_DPD2_STATUS_HV, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %7, align 4
  %119 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %120 = load i32, i32* @PMC_IO_DPD2_STATUS, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @WR4(%struct.tegra124_pmc_softc* %119, i32 %120, i32 %121)
  %123 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** @pmc_sc, align 8
  %124 = icmp ne %struct.tegra124_pmc_softc* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %86
  %126 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %86
  %128 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  store %struct.tegra124_pmc_softc* %128, %struct.tegra124_pmc_softc** @pmc_sc, align 8
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %53, %36, %21
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.tegra124_pmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @tegra124_pmc_parse_fdt(%struct.tegra124_pmc_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @PMC_LOCK_INIT(%struct.tegra124_pmc_softc*) #1

declare dso_local i32 @RD4(%struct.tegra124_pmc_softc*, i32) #1

declare dso_local i32 @WR4(%struct.tegra124_pmc_softc*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
