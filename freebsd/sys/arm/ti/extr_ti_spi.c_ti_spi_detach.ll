; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_spi.c_ti_spi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_spi.c_ti_spi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_spi_softc = type { i64, i64, i64, i32 }

@MCSPI_IRQENABLE = common dso_local global i32 0, align 4
@MCSPI_IRQSTATUS = common dso_local global i32 0, align 4
@MCSPI_SYSCONFIG = common dso_local global i32 0, align 4
@MCSPI_SYSCONFIG_SOFTRESET = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_spi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_spi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_spi_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ti_spi_softc* @device_get_softc(i32 %4)
  store %struct.ti_spi_softc* %5, %struct.ti_spi_softc** %3, align 8
  %6 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %7 = load i32, i32* @MCSPI_IRQENABLE, align 4
  %8 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %6, i32 %7, i32 0)
  %9 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %10 = load i32, i32* @MCSPI_IRQSTATUS, align 4
  %11 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %9, i32 %10, i32 65535)
  %12 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %13 = load i32, i32* @MCSPI_SYSCONFIG, align 4
  %14 = load i32, i32* @MCSPI_SYSCONFIG_SOFTRESET, align 4
  %15 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @bus_generic_detach(i32 %16)
  %18 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %18, i32 0, i32 3
  %20 = call i32 @mtx_destroy(i32* %19)
  %21 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @bus_teardown_intr(i32 %26, i64 %29, i64 %32)
  br label %34

34:                                               ; preds = %25, %1
  %35 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @SYS_RES_IRQ, align 4
  %42 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @bus_release_resource(i32 %40, i32 %41, i32 0, i64 %44)
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @SYS_RES_MEMORY, align 4
  %54 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @bus_release_resource(i32 %52, i32 %53, i32 0, i64 %56)
  br label %58

58:                                               ; preds = %51, %46
  ret i32 0
}

declare dso_local %struct.ti_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @TI_SPI_WRITE(%struct.ti_spi_softc*, i32, i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
