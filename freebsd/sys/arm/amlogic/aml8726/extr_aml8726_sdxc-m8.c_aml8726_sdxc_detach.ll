; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_sdxc_softc = type { i32*, i32, i32, i32, i32* }

@EBUSY = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_ENABLE_REG = common dso_local global i32 0, align 4
@aml8726_sdxc_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_sdxc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_sdxc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_sdxc_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.aml8726_sdxc_softc* @device_get_softc(i32 %5)
  store %struct.aml8726_sdxc_softc* %6, %struct.aml8726_sdxc_softc** %4, align 8
  %7 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %8 = call i32 @AML_SDXC_LOCK(%struct.aml8726_sdxc_softc* %7)
  %9 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %10 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %15 = call i32 @AML_SDXC_UNLOCK(%struct.aml8726_sdxc_softc* %14)
  %16 = load i32, i32* @EBUSY, align 4
  store i32 %16, i32* %2, align 4
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %19 = call i32 @aml8726_sdxc_power_off(%struct.aml8726_sdxc_softc* %18)
  %20 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %21 = call i32 @aml8726_sdxc_soft_reset(%struct.aml8726_sdxc_softc* %20)
  %22 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %23 = load i32, i32* @AML_SDXC_IRQ_ENABLE_REG, align 4
  %24 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %22, i32 %23, i32 0)
  %25 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %26 = call i32 @AML_SDXC_UNLOCK(%struct.aml8726_sdxc_softc* %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @bus_generic_detach(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %31 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %36 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bus_teardown_intr(i32 %29, i32 %34, i32 %37)
  %39 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %40 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %43 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bus_dmamap_destroy(i32 %41, i32 %44)
  %46 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %47 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @bus_dma_tag_destroy(i32 %48)
  %50 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %51 = call i32 @AML_SDXC_LOCK_DESTROY(%struct.aml8726_sdxc_softc* %50)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @aml8726_sdxc_spec, align 4
  %54 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %55 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @bus_release_resources(i32 %52, i32 %53, i32* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %17, %13
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.aml8726_sdxc_softc* @device_get_softc(i32) #1

declare dso_local i32 @AML_SDXC_LOCK(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @AML_SDXC_UNLOCK(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @aml8726_sdxc_power_off(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @aml8726_sdxc_soft_reset(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc*, i32, i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @AML_SDXC_LOCK_DESTROY(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
