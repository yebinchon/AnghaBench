; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdhci.c_ti_sdhci_update_ios.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdhci.c_ti_sdhci_update_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sdhci_softc = type { i32 }
%struct.sdhci_slot = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i64, i64 }

@MMCHS_CON = common dso_local global i32 0, align 4
@bus_width_8 = common dso_local global i64 0, align 8
@MMCHS_CON_DW8 = common dso_local global i32 0, align 4
@opendrain = common dso_local global i64 0, align 8
@MMCHS_CON_OD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ti_sdhci_update_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sdhci_update_ios(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_sdhci_softc*, align 8
  %6 = alloca %struct.sdhci_slot*, align 8
  %7 = alloca %struct.mmc_ios*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.ti_sdhci_softc* @device_get_softc(i32 %10)
  store %struct.ti_sdhci_softc* %11, %struct.ti_sdhci_softc** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.sdhci_slot* @device_get_ivars(i32 %12)
  store %struct.sdhci_slot* %13, %struct.sdhci_slot** %6, align 8
  %14 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %15 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.mmc_ios* %16, %struct.mmc_ios** %7, align 8
  %17 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %5, align 8
  %18 = load i32, i32* @MMCHS_CON, align 4
  %19 = call i32 @ti_mmchs_read_4(%struct.ti_sdhci_softc* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %22 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @bus_width_8, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @MMCHS_CON_DW8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %35

30:                                               ; preds = %2
  %31 = load i32, i32* @MMCHS_CON_DW8, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %37 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @opendrain, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @MMCHS_CON_OD, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %50

45:                                               ; preds = %35
  %46 = load i32, i32* @MMCHS_CON_OD, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %5, align 8
  %56 = load i32, i32* @MMCHS_CON, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @ti_mmchs_write_4(%struct.ti_sdhci_softc* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @sdhci_generic_update_ios(i32 %60, i32 %61)
  ret i32 %62
}

declare dso_local %struct.ti_sdhci_softc* @device_get_softc(i32) #1

declare dso_local %struct.sdhci_slot* @device_get_ivars(i32) #1

declare dso_local i32 @ti_mmchs_read_4(%struct.ti_sdhci_softc*, i32) #1

declare dso_local i32 @ti_mmchs_write_4(%struct.ti_sdhci_softc*, i32, i32) #1

declare dso_local i32 @sdhci_generic_update_ios(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
