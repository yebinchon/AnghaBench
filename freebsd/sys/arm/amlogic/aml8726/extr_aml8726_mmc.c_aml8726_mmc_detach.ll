; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_mmc_softc = type { i32*, i32, i32, i32, i32, i32* }

@EBUSY = common dso_local global i32 0, align 4
@AML_MMC_IRQ_STATUS_REG = common dso_local global i32 0, align 4
@AML_MMC_IRQ_STATUS_CLEAR_IRQ = common dso_local global i32 0, align 4
@aml8726_mmc_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_mmc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_mmc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_mmc_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.aml8726_mmc_softc* @device_get_softc(i32 %5)
  store %struct.aml8726_mmc_softc* %6, %struct.aml8726_mmc_softc** %4, align 8
  %7 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %8 = call i32 @AML_MMC_LOCK(%struct.aml8726_mmc_softc* %7)
  %9 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %10 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %15 = call i32 @AML_MMC_UNLOCK(%struct.aml8726_mmc_softc* %14)
  %16 = load i32, i32* @EBUSY, align 4
  store i32 %16, i32* %2, align 4
  br label %62

17:                                               ; preds = %1
  %18 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %19 = call i32 @aml8726_mmc_power_off(%struct.aml8726_mmc_softc* %18)
  %20 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %21 = call i32 @aml8726_mmc_soft_reset(%struct.aml8726_mmc_softc* %20, i32 0)
  %22 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %23 = load i32, i32* @AML_MMC_IRQ_STATUS_REG, align 4
  %24 = load i32, i32* @AML_MMC_IRQ_STATUS_CLEAR_IRQ, align 4
  %25 = call i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %27 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %26, i32 0, i32 4
  %28 = call i32 @callout_stop(i32* %27)
  %29 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %30 = call i32 @AML_MMC_UNLOCK(%struct.aml8726_mmc_softc* %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @bus_generic_detach(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %35 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %40 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @bus_teardown_intr(i32 %33, i32 %38, i32 %41)
  %43 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %44 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %47 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bus_dmamap_destroy(i32 %45, i32 %48)
  %50 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %51 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @bus_dma_tag_destroy(i32 %52)
  %54 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %55 = call i32 @AML_MMC_LOCK_DESTROY(%struct.aml8726_mmc_softc* %54)
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @aml8726_mmc_spec, align 4
  %58 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %59 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @bus_release_resources(i32 %56, i32 %57, i32* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %17, %13
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.aml8726_mmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @AML_MMC_LOCK(%struct.aml8726_mmc_softc*) #1

declare dso_local i32 @AML_MMC_UNLOCK(%struct.aml8726_mmc_softc*) #1

declare dso_local i32 @aml8726_mmc_power_off(%struct.aml8726_mmc_softc*) #1

declare dso_local i32 @aml8726_mmc_soft_reset(%struct.aml8726_mmc_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc*, i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @AML_MMC_LOCK_DESTROY(%struct.aml8726_mmc_softc*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
