; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_soft_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_mmc_softc = type { i32 }

@AML_MMC_IRQ_CONFIG_SOFT_RESET = common dso_local global i32 0, align 4
@AML_MMC_IRQ_CONFIG_CMD_DONE_EN = common dso_local global i32 0, align 4
@AML_MMC_IRQ_CONFIG_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aml8726_mmc_softc*, i32)* @aml8726_mmc_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_mmc_soft_reset(%struct.aml8726_mmc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.aml8726_mmc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aml8726_mmc_softc* %0, %struct.aml8726_mmc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @AML_MMC_IRQ_CONFIG_SOFT_RESET, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @AML_MMC_IRQ_CONFIG_CMD_DONE_EN, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %15 = load i32, i32* @AML_MMC_IRQ_CONFIG_REG, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %19 = load i32, i32* @AML_MMC_IRQ_CONFIG_REG, align 4
  %20 = call i32 @CSR_BARRIER(%struct.aml8726_mmc_softc* %18, i32 %19)
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc*, i32, i32) #1

declare dso_local i32 @CSR_BARRIER(%struct.aml8726_mmc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
