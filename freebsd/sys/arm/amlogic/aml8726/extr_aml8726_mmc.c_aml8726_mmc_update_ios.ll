; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_update_ios.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_update_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_mmc_softc = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i32, i32, i32, i32 }

@AML_MMC_CONFIG_WR_CRC_STAT_SHIFT = common dso_local global i32 0, align 4
@AML_MMC_CONFIG_WR_DELAY_SHIFT = common dso_local global i32 0, align 4
@AML_MMC_CONFIG_DMA_ENDIAN_SBW = common dso_local global i32 0, align 4
@AML_MMC_CONFIG_CMD_ARG_BITS_SHIFT = common dso_local global i32 0, align 4
@AML_MMC_CONFIG_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@AML_MMC_CONFIG_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AML_MMC_CONFIG_CMD_CLK_DIV_SHIFT = common dso_local global i32 0, align 4
@AML_MMC_CONFIG_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @aml8726_mmc_update_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_mmc_update_ios(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.aml8726_mmc_softc*, align 8
  %7 = alloca %struct.mmc_ios*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.aml8726_mmc_softc* @device_get_softc(i32 %11)
  store %struct.aml8726_mmc_softc* %12, %struct.aml8726_mmc_softc** %6, align 8
  %13 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %6, align 8
  %14 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.mmc_ios* %15, %struct.mmc_ios** %7, align 8
  %16 = load i32, i32* @AML_MMC_CONFIG_WR_CRC_STAT_SHIFT, align 4
  %17 = shl i32 2, %16
  %18 = load i32, i32* @AML_MMC_CONFIG_WR_DELAY_SHIFT, align 4
  %19 = shl i32 2, %18
  %20 = or i32 %17, %19
  %21 = load i32, i32* @AML_MMC_CONFIG_DMA_ENDIAN_SBW, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @AML_MMC_CONFIG_CMD_ARG_BITS_SHIFT, align 4
  %24 = shl i32 39, %23
  %25 = or i32 %22, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %27 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %37 [
    i32 131, label %29
    i32 132, label %33
  ]

29:                                               ; preds = %2
  %30 = load i32, i32* @AML_MMC_CONFIG_BUS_WIDTH_4, align 4
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  br label %39

33:                                               ; preds = %2
  %34 = load i32, i32* @AML_MMC_CONFIG_BUS_WIDTH_1, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  br label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %3, align 4
  br label %112

39:                                               ; preds = %33, %29
  %40 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %6, align 8
  %41 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %42 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @aml8726_mmc_div(%struct.aml8726_mmc_softc* %40, i32 %43)
  %45 = load i32, i32* @AML_MMC_CONFIG_CMD_CLK_DIV_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %6, align 8
  %50 = load i32, i32* @AML_MMC_CONFIG_REG, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc* %49, i32 %50, i32 %51)
  store i32 0, i32* %8, align 4
  %53 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %54 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %108 [
    i32 128, label %56
    i32 129, label %102
    i32 130, label %105
  ]

56:                                               ; preds = %39
  %57 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %6, align 8
  %58 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %101

62:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %82, %62
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %6, align 8
  %68 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %75 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 1, %76
  %78 = and i32 %73, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %85

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %63

85:                                               ; preds = %80, %63
  %86 = load i32, i32* %9, align 4
  %87 = icmp sge i32 %86, 2
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %3, align 4
  br label %112

90:                                               ; preds = %85
  %91 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %6, align 8
  %92 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %6, align 8
  %96 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @GPIO_PIN_SET(i32* %94, i32 %98, i32 %99)
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %90, %56
  br label %110

102:                                              ; preds = %39
  %103 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %6, align 8
  %104 = call i32 @aml8726_mmc_power_on(%struct.aml8726_mmc_softc* %103)
  store i32 %104, i32* %8, align 4
  br label %110

105:                                              ; preds = %39
  %106 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %6, align 8
  %107 = call i32 @aml8726_mmc_power_off(%struct.aml8726_mmc_softc* %106)
  store i32 %107, i32* %8, align 4
  br label %110

108:                                              ; preds = %39
  %109 = load i32, i32* @EINVAL, align 4
  store i32 %109, i32* %3, align 4
  br label %112

110:                                              ; preds = %105, %102, %101
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %108, %88, %37
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.aml8726_mmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @aml8726_mmc_div(%struct.aml8726_mmc_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc*, i32, i32) #1

declare dso_local i32 @GPIO_PIN_SET(i32*, i32, i32) #1

declare dso_local i32 @aml8726_mmc_power_on(%struct.aml8726_mmc_softc*) #1

declare dso_local i32 @aml8726_mmc_power_off(%struct.aml8726_mmc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
