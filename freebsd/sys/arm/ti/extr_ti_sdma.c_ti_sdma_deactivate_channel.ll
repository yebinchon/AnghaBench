; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_deactivate_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_deactivate_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sdma_softc = type { i32 }

@ti_sdma_sc = common dso_local global %struct.ti_sdma_softc* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DMA4_CSR_CLEAR_MASK = common dso_local global i32 0, align 4
@NUM_DMA_IRQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_sdma_deactivate_channel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_sdma_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** @ti_sdma_sc, align 8
  store %struct.ti_sdma_softc* %7, %struct.ti_sdma_softc** %4, align 8
  %8 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %9 = icmp eq %struct.ti_sdma_softc* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  store i32 %11, i32* %2, align 4
  br label %79

12:                                               ; preds = %1
  %13 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %14 = call i32 @TI_SDMA_LOCK(%struct.ti_sdma_softc* %13)
  %15 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %24 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %23)
  %25 = load i32, i32* @EBUSY, align 4
  store i32 %25, i32* %2, align 4
  br label %79

26:                                               ; preds = %12
  %27 = load i32, i32* %3, align 4
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @DMA4_CICR(i32 %35)
  %37 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %34, i32 %36, i32 0)
  %38 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @DMA4_CCR(i32 %39)
  %41 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %38, i32 %40, i32 0)
  %42 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @DMA4_CSR(i32 %43)
  %45 = load i32, i32* @DMA4_CSR_CLEAR_MASK, align 4
  %46 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %42, i32 %44, i32 %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %58, %26
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @NUM_DMA_IRQS, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @DMA4_IRQSTATUS_L(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = shl i32 1, %55
  %57 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %52, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %47

61:                                               ; preds = %47
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @DMA4_CCR(i32 %62)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %73, %61
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @DMA4_COLOR(i32 %66)
  %68 = icmp ule i32 %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, 4
  store i32 %75, i32* %6, align 4
  br label %64

76:                                               ; preds = %64
  %77 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %78 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %22, %10
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @TI_SDMA_LOCK(%struct.ti_sdma_softc*) #1

declare dso_local i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc*) #1

declare dso_local i32 @ti_sdma_write_4(%struct.ti_sdma_softc*, i32, i32) #1

declare dso_local i32 @DMA4_CICR(i32) #1

declare dso_local i32 @DMA4_CCR(i32) #1

declare dso_local i32 @DMA4_CSR(i32) #1

declare dso_local i32 @DMA4_IRQSTATUS_L(i32) #1

declare dso_local i32 @DMA4_COLOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
