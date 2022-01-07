; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdhci.c_ti_sdhci_read_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdhci.c_ti_sdhci_read_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i64 }
%struct.ti_sdhci_softc = type { i32 }

@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@MMCHS_SYSCTL_CLKD_SHIFT = common dso_local global i32 0, align 4
@MMCHS_SYSCTL_CLKD_MASK = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_MASK = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@SDHCI_SPEC_300 = common dso_local global i64 0, align 8
@SDHCI_DIVIDER_MASK_LEN = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_HI_MASK = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_HI_SHIFT = common dso_local global i32 0, align 4
@SDHCI_TRANSFER_MODE = common dso_local global i32 0, align 4
@SDHCI_COMMAND_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sdhci_slot*, i32)* @ti_sdhci_read_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sdhci_read_2(i32 %0, %struct.sdhci_slot* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_sdhci_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.ti_sdhci_softc* @device_get_softc(i32 %11)
  store %struct.ti_sdhci_softc* %12, %struct.ti_sdhci_softc** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %3
  %17 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %8, align 8
  %18 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %19 = call i32 @RD4(%struct.ti_sdhci_softc* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @MMCHS_SYSCTL_CLKD_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @MMCHS_SYSCTL_CLKD_MASK, align 4
  %24 = and i32 %22, %23
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @MMCHS_SYSCTL_CLKD_MASK, align 4
  %27 = load i32, i32* @MMCHS_SYSCTL_CLKD_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @SDHCI_DIVIDER_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @SDHCI_DIVIDER_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %40 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SDHCI_SPEC_300, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %16
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SDHCI_DIVIDER_MASK_LEN, align 4
  %47 = ashr i32 %45, %46
  %48 = load i32, i32* @SDHCI_DIVIDER_HI_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @SDHCI_DIVIDER_HI_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %44, %16
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, 65535
  store i32 %56, i32* %4, align 4
  br label %86

57:                                               ; preds = %3
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %8, align 8
  %63 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 16
  store i32 %65, i32* %4, align 4
  br label %86

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @SDHCI_COMMAND_FLAGS, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %8, align 8
  %72 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 65535
  store i32 %74, i32* %4, align 4
  br label %86

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %8, align 8
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, -4
  %80 = call i32 @RD4(%struct.ti_sdhci_softc* %77, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 3
  %83 = mul nsw i32 %82, 8
  %84 = ashr i32 %80, %83
  %85 = and i32 %84, 65535
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %76, %70, %61, %54
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.ti_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @RD4(%struct.ti_sdhci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
