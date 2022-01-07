; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_enable_channel_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_enable_channel_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sdma_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ti_sdma_sc = common dso_local global %struct.ti_sdma_softc* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA4_CICR_TRANS_ERR_IE = common dso_local global i32 0, align 4
@DMA4_CICR_SECURE_ERR_IE = common dso_local global i32 0, align 4
@DMA4_CICR_SUPERVISOR_ERR_IE = common dso_local global i32 0, align 4
@DMA4_CICR_MISALIGNED_ADRS_ERR_IE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_sdma_enable_channel_irq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_sdma_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** @ti_sdma_sc, align 8
  store %struct.ti_sdma_softc* %8, %struct.ti_sdma_softc** %6, align 8
  %9 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %6, align 8
  %10 = icmp eq %struct.ti_sdma_softc* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  store i32 %12, i32* %3, align 4
  br label %70

13:                                               ; preds = %2
  %14 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %6, align 8
  %15 = call i32 @TI_SDMA_LOCK(%struct.ti_sdma_softc* %14)
  %16 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %6, align 8
  %17 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %6, align 8
  %25 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %24)
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %13
  %28 = load i32, i32* @DMA4_CICR_TRANS_ERR_IE, align 4
  %29 = load i32, i32* @DMA4_CICR_SECURE_ERR_IE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DMA4_CICR_SUPERVISOR_ERR_IE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DMA4_CICR_MISALIGNED_ADRS_ERR_IE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %6, align 8
  %39 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %37, i32* %44, align 4
  %45 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %6, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @DMA4_CICR(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %45, i32 %47, i32 %48)
  %50 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %6, align 8
  %51 = call i32 @DMA4_IRQENABLE_L(i32 0)
  %52 = call i32 @ti_sdma_read_4(%struct.ti_sdma_softc* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 1, %53
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %6, align 8
  %58 = call i32 @DMA4_IRQENABLE_L(i32 0)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %57, i32 %58, i32 %59)
  %61 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %6, align 8
  %62 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %6, align 8
  %69 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %27, %23, %11
  %71 = load i32, i32* %3, align 4
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
