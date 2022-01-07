; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_mmc_softc = type { i32 }

@AML_MMC_IRQ_STATUS_REG = common dso_local global i32 0, align 4
@AML_MMC_IRQ_STATUS_CMD_BUSY = common dso_local global i32 0, align 4
@MMC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aml8726_mmc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_mmc_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aml8726_mmc_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.aml8726_mmc_softc*
  store %struct.aml8726_mmc_softc* %5, %struct.aml8726_mmc_softc** %3, align 8
  %6 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %7 = call i32 @aml8726_mmc_soft_reset(%struct.aml8726_mmc_softc* %6, i32 0)
  br label %8

8:                                                ; preds = %15, %1
  %9 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %10 = load i32, i32* @AML_MMC_IRQ_STATUS_REG, align 4
  %11 = call i32 @CSR_READ_4(%struct.aml8726_mmc_softc* %9, i32 %10)
  %12 = load i32, i32* @AML_MMC_IRQ_STATUS_CMD_BUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = call i32 (...) @cpu_spinwait()
  br label %8

17:                                               ; preds = %8
  %18 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %19 = load i32, i32* @MMC_ERR_TIMEOUT, align 4
  %20 = call i32 @aml8726_mmc_finish_command(%struct.aml8726_mmc_softc* %18, i32 %19)
  ret void
}

declare dso_local i32 @aml8726_mmc_soft_reset(%struct.aml8726_mmc_softc*, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_mmc_softc*, i32) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @aml8726_mmc_finish_command(%struct.aml8726_mmc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
