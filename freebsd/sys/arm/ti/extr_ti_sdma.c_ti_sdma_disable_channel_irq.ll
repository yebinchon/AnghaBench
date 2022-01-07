; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_disable_channel_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_disable_channel_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sdma_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ti_sdma_sc = common dso_local global %struct.ti_sdma_softc* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NUM_DMA_IRQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_sdma_disable_channel_irq(i32 %0) #0 {
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
  br label %70

12:                                               ; preds = %1
  %13 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %14 = call i32 @TI_SDMA_LOCK(%struct.ti_sdma_softc* %13)
  %15 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %24 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %23)
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %2, align 4
  br label %70

26:                                               ; preds = %12
  %27 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %28 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @DMA4_CICR(i32 %35)
  %37 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %34, i32 %36, i32 0)
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %57, %26
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @NUM_DMA_IRQS, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @DMA4_IRQENABLE_L(i32 %44)
  %46 = call i32 @ti_sdma_read_4(%struct.ti_sdma_softc* %43, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %3, align 4
  %48 = shl i32 1, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @DMA4_IRQENABLE_L(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %52, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %38

60:                                               ; preds = %38
  %61 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %62 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %69 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %60, %22, %10
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @TI_SDMA_LOCK(%struct.ti_sdma_softc*) #1

declare dso_local i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc*) #1

declare dso_local i32 @ti_sdma_write_4(%struct.ti_sdma_softc*, i32, i32) #1

declare dso_local i32 @DMA4_CICR(i32) #1

declare dso_local i32 @ti_sdma_read_4(%struct.ti_sdma_softc*, i32) #1

declare dso_local i32 @DMA4_IRQENABLE_L(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
