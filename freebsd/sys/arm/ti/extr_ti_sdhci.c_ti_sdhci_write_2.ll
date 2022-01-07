; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdhci.c_ti_sdhci_write_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdhci.c_ti_sdhci_write_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i64 }
%struct.ti_sdhci_softc = type { i32 }

@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_MASK = common dso_local global i32 0, align 4
@SDHCI_SPEC_300 = common dso_local global i64 0, align 8
@SDHCI_DIVIDER_HI_SHIFT = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_HI_MASK = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_MASK_LEN = common dso_local global i32 0, align 4
@MMCHS_SYSCTL_CLKD_MASK = common dso_local global i32 0, align 4
@MMCHS_SYSCTL_CLKD_SHIFT = common dso_local global i32 0, align 4
@SDHCI_TRANSFER_MODE = common dso_local global i32 0, align 4
@SDHCI_COMMAND_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sdhci_slot*, i32, i32)* @ti_sdhci_write_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sdhci_write_2(i32 %0, %struct.sdhci_slot* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ti_sdhci_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.ti_sdhci_softc* @device_get_softc(i32 %12)
  store %struct.ti_sdhci_softc* %13, %struct.ti_sdhci_softc** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %69

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SDHCI_DIVIDER_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* @SDHCI_DIVIDER_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %24 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SDHCI_SPEC_300, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SDHCI_DIVIDER_HI_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = load i32, i32* @SDHCI_DIVIDER_HI_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @SDHCI_DIVIDER_MASK_LEN, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %28, %17
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @MMCHS_SYSCTL_CLKD_MASK, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @MMCHS_SYSCTL_CLKD_MASK, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %38
  %47 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %9, align 8
  %48 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %49 = call i32 @RD4(%struct.ti_sdhci_softc* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, -65536
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @MMCHS_SYSCTL_CLKD_MASK, align 4
  %54 = load i32, i32* @MMCHS_SYSCTL_CLKD_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = and i32 %52, %56
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @MMCHS_SYSCTL_CLKD_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  %65 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %9, align 8
  %66 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @WR4(%struct.ti_sdhci_softc* %65, i32 %66, i32 %67)
  br label %129

69:                                               ; preds = %4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %9, align 8
  %75 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, -65536
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 65535
  %80 = or i32 %77, %79
  %81 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %9, align 8
  %82 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %129

83:                                               ; preds = %69
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @SDHCI_COMMAND_FLAGS, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %83
  %88 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %9, align 8
  %89 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 65535
  %92 = load i32, i32* %8, align 4
  %93 = shl i32 %92, 16
  %94 = or i32 %91, %93
  %95 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %9, align 8
  %96 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %9, align 8
  %98 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %99 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %9, align 8
  %100 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @WR4(%struct.ti_sdhci_softc* %97, i32 %98, i32 %101)
  br label %129

103:                                              ; preds = %83
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %9, align 8
  %106 = load i32, i32* %7, align 4
  %107 = and i32 %106, -4
  %108 = call i32 @RD4(%struct.ti_sdhci_softc* %105, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, 3
  %111 = mul nsw i32 %110, 8
  %112 = shl i32 65535, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %11, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %8, align 4
  %117 = and i32 %116, 65535
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, 3
  %120 = mul nsw i32 %119, 8
  %121 = shl i32 %117, %120
  %122 = load i32, i32* %11, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %11, align 4
  %124 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %9, align 8
  %125 = load i32, i32* %7, align 4
  %126 = and i32 %125, -4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @WR4(%struct.ti_sdhci_softc* %124, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %104, %87, %73, %46
  ret void
}

declare dso_local %struct.ti_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @RD4(%struct.ti_sdhci_softc*, i32) #1

declare dso_local i32 @WR4(%struct.ti_sdhci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
