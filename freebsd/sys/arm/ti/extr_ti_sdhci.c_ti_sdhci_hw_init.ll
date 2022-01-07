; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdhci.c_ti_sdhci_hw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdhci.c_ti_sdhci_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sdhci_softc = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Error: failed to enable MMC clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Error: failed to get source clock freq\0A\00", align 1
@MMCHS_SYSCONFIG = common dso_local global i32 0, align 4
@MMCHS_SYSCONFIG_RESET = common dso_local global i32 0, align 4
@MMCHS_SYSSTATUS = common dso_local global i32 0, align 4
@MMCHS_SYSSTATUS_RESETDONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Error: Controller reset operation timed out\0A\00", align 1
@SDHCI_SOFTWARE_RESET = common dso_local global i32 0, align 4
@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Error: Software reset operation timed out\0A\00", align 1
@MMCHS_SD_CAPA = common dso_local global i32 0, align 4
@MMC_OCR_LOW_VOLTAGE = common dso_local global i32 0, align 4
@MMCHS_SD_CAPA_VS18 = common dso_local global i32 0, align 4
@MMC_OCR_290_300 = common dso_local global i32 0, align 4
@MMC_OCR_300_310 = common dso_local global i32 0, align 4
@MMCHS_SD_CAPA_VS30 = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@SDHCI_POWER_CONTROL = common dso_local global i32 0, align 4
@MMCHS_CON = common dso_local global i32 0, align 4
@MMCHS_CON_DVAL_8_4MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ti_sdhci_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sdhci_hw_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_sdhci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ti_sdhci_softc* @device_get_softc(i32 %6)
  store %struct.ti_sdhci_softc* %7, %struct.ti_sdhci_softc** %3, align 8
  %8 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @ti_prcm_clk_enable(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %132

16:                                               ; preds = %1
  %17 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %20, i32 0, i32 1
  %22 = call i64 @ti_prcm_clk_get_source_freq(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %132

27:                                               ; preds = %16
  %28 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %3, align 8
  %29 = load i32, i32* @MMCHS_SYSCONFIG, align 4
  %30 = load i32, i32* @MMCHS_SYSCONFIG_RESET, align 4
  %31 = call i32 @ti_mmchs_write_4(%struct.ti_sdhci_softc* %28, i32 %29, i32 %30)
  store i64 1000, i64* %5, align 8
  br label %32

32:                                               ; preds = %47, %27
  %33 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %3, align 8
  %34 = load i32, i32* @MMCHS_SYSSTATUS, align 4
  %35 = call i32 @ti_mmchs_read_4(%struct.ti_sdhci_softc* %33, i32 %34)
  %36 = load i32, i32* @MMCHS_SYSSTATUS_RESETDONE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %5, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %49

47:                                               ; preds = %40
  %48 = call i32 @DELAY(i32 100)
  br label %32

49:                                               ; preds = %44, %32
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @SDHCI_SOFTWARE_RESET, align 4
  %52 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %53 = call i32 @ti_sdhci_write_1(i32 %50, i32* null, i32 %51, i32 %52)
  store i64 10000, i64* %5, align 8
  br label %54

54:                                               ; preds = %67, %49
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @SDHCI_SOFTWARE_RESET, align 4
  %57 = call i32 @ti_sdhci_read_1(i32 %55, i32* null, i32 %56)
  %58 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %5, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %69

67:                                               ; preds = %62
  %68 = call i32 @DELAY(i32 1)
  br label %54

69:                                               ; preds = %66, %54
  store i64 10000, i64* %5, align 8
  br label %70

70:                                               ; preds = %84, %69
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @SDHCI_SOFTWARE_RESET, align 4
  %73 = call i32 @ti_sdhci_read_1(i32 %71, i32* null, i32 %72)
  %74 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, -1
  store i64 %79, i64* %5, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %86

84:                                               ; preds = %77
  %85 = call i32 @DELAY(i32 100)
  br label %70

86:                                               ; preds = %81, %70
  %87 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %3, align 8
  %88 = load i32, i32* @MMCHS_SD_CAPA, align 4
  %89 = call i32 @ti_mmchs_read_4(%struct.ti_sdhci_softc* %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %3, align 8
  %91 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MMC_OCR_LOW_VOLTAGE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %86
  %99 = load i32, i32* @MMCHS_SD_CAPA_VS18, align 4
  %100 = load i32, i32* %4, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %86
  %103 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %3, align 8
  %104 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MMC_OCR_290_300, align 4
  %109 = load i32, i32* @MMC_OCR_300_310, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %102
  %114 = load i32, i32* @MMCHS_SD_CAPA_VS30, align 4
  %115 = load i32, i32* %4, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %113, %102
  %118 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %3, align 8
  %119 = load i32, i32* @MMCHS_SD_CAPA, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @ti_mmchs_write_4(%struct.ti_sdhci_softc* %118, i32 %119, i32 %120)
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %124 = call i32 @ti_sdhci_write_1(i32 %122, i32* null, i32 %123, i32 0)
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %127 = call i32 @ti_sdhci_write_1(i32 %125, i32* null, i32 %126, i32 0)
  %128 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %3, align 8
  %129 = load i32, i32* @MMCHS_CON, align 4
  %130 = load i32, i32* @MMCHS_CON_DVAL_8_4MS, align 4
  %131 = call i32 @ti_mmchs_write_4(%struct.ti_sdhci_softc* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %117, %24, %13
  ret void
}

declare dso_local %struct.ti_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i64 @ti_prcm_clk_enable(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @ti_prcm_clk_get_source_freq(i32, i32*) #1

declare dso_local i32 @ti_mmchs_write_4(%struct.ti_sdhci_softc*, i32, i32) #1

declare dso_local i32 @ti_mmchs_read_4(%struct.ti_sdhci_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ti_sdhci_write_1(i32, i32*, i32, i32) #1

declare dso_local i32 @ti_sdhci_read_1(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
