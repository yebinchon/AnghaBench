; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_stop_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_stop_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sdma_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ti_sdma_sc = common dso_local global %struct.ti_sdma_softc* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA4_CSR_CLEAR_MASK = common dso_local global i32 0, align 4
@NUM_DMA_IRQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_sdma_stop_xfer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_sdma_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** @ti_sdma_sc, align 8
  store %struct.ti_sdma_softc* %6, %struct.ti_sdma_softc** %4, align 8
  %7 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %8 = icmp eq %struct.ti_sdma_softc* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  store i32 %10, i32* %2, align 4
  br label %63

11:                                               ; preds = %1
  %12 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %13 = call i32 @TI_SDMA_LOCK(%struct.ti_sdma_softc* %12)
  %14 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %23 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %22)
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %2, align 4
  br label %63

25:                                               ; preds = %11
  %26 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @DMA4_CICR(i32 %27)
  %29 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %26, i32 %28, i32 0)
  %30 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @DMA4_CCR(i32 %31)
  %33 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %30, i32 %32, i32 0)
  %34 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @DMA4_CSR(i32 %35)
  %37 = load i32, i32* @DMA4_CSR_CLEAR_MASK, align 4
  %38 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %34, i32 %36, i32 %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %50, %25
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @NUM_DMA_IRQS, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @DMA4_IRQSTATUS_L(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = shl i32 1, %47
  %49 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %44, i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %39

53:                                               ; preds = %39
  %54 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %62 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %53, %21, %9
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @TI_SDMA_LOCK(%struct.ti_sdma_softc*) #1

declare dso_local i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc*) #1

declare dso_local i32 @ti_sdma_write_4(%struct.ti_sdma_softc*, i32, i32) #1

declare dso_local i32 @DMA4_CICR(i32) #1

declare dso_local i32 @DMA4_CCR(i32) #1

declare dso_local i32 @DMA4_CSR(i32) #1

declare dso_local i32 @DMA4_IRQSTATUS_L(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
