; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adc_softc = type { i64 }

@ADC_STEPENABLE = common dso_local global i32 0, align 4
@ADC_CTRL = common dso_local global i32 0, align 4
@ADC_CTRL_ENABLE = common dso_local global i32 0, align 4
@ADC_IRQENABLE_CLR = common dso_local global i32 0, align 4
@ADC_IRQ_FIFO0_THRES = common dso_local global i32 0, align 4
@ADC_IRQ_FIFO1_THRES = common dso_local global i32 0, align 4
@ADC_IRQ_END_OF_SEQ = common dso_local global i32 0, align 4
@ADC_IRQSTATUS = common dso_local global i32 0, align 4
@ADC_FIFO0COUNT = common dso_local global i32 0, align 4
@ADC_FIFO_COUNT_MSK = common dso_local global i32 0, align 4
@ADC_FIFO0DATA = common dso_local global i32 0, align 4
@ADC_FIFO1COUNT = common dso_local global i32 0, align 4
@ADC_FIFO1DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_adc_softc*)* @ti_adc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_adc_disable(%struct.ti_adc_softc* %0) #0 {
  %2 = alloca %struct.ti_adc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ti_adc_softc* %0, %struct.ti_adc_softc** %2, align 8
  %5 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %6 = call i32 @TI_ADC_LOCK_ASSERT(%struct.ti_adc_softc* %5)
  %7 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %77

12:                                               ; preds = %1
  %13 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %14 = load i32, i32* @ADC_STEPENABLE, align 4
  %15 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %13, i32 %14, i32 0)
  %16 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %17 = load i32, i32* @ADC_CTRL, align 4
  %18 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %19 = load i32, i32* @ADC_CTRL, align 4
  %20 = call i32 @ADC_READ4(%struct.ti_adc_softc* %18, i32 %19)
  %21 = load i32, i32* @ADC_CTRL_ENABLE, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %16, i32 %17, i32 %23)
  %25 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %26 = load i32, i32* @ADC_IRQENABLE_CLR, align 4
  %27 = load i32, i32* @ADC_IRQ_FIFO0_THRES, align 4
  %28 = load i32, i32* @ADC_IRQ_FIFO1_THRES, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ADC_IRQ_END_OF_SEQ, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %25, i32 %26, i32 %31)
  %33 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %34 = load i32, i32* @ADC_IRQSTATUS, align 4
  %35 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %36 = load i32, i32* @ADC_IRQSTATUS, align 4
  %37 = call i32 @ADC_READ4(%struct.ti_adc_softc* %35, i32 %36)
  %38 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %33, i32 %34, i32 %37)
  %39 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %40 = load i32, i32* @ADC_FIFO0COUNT, align 4
  %41 = call i32 @ADC_READ4(%struct.ti_adc_softc* %39, i32 %40)
  %42 = load i32, i32* @ADC_FIFO_COUNT_MSK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %47, %12
  %45 = load i32, i32* %3, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %49 = load i32, i32* @ADC_FIFO0DATA, align 4
  %50 = call i32 @ADC_READ4(%struct.ti_adc_softc* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %52 = load i32, i32* @ADC_FIFO0COUNT, align 4
  %53 = call i32 @ADC_READ4(%struct.ti_adc_softc* %51, i32 %52)
  %54 = load i32, i32* @ADC_FIFO_COUNT_MSK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %3, align 4
  br label %44

56:                                               ; preds = %44
  %57 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %58 = load i32, i32* @ADC_FIFO1COUNT, align 4
  %59 = call i32 @ADC_READ4(%struct.ti_adc_softc* %57, i32 %58)
  %60 = load i32, i32* @ADC_FIFO_COUNT_MSK, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %65, %56
  %63 = load i32, i32* %3, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %67 = load i32, i32* @ADC_FIFO1DATA, align 4
  %68 = call i32 @ADC_READ4(%struct.ti_adc_softc* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %70 = load i32, i32* @ADC_FIFO1COUNT, align 4
  %71 = call i32 @ADC_READ4(%struct.ti_adc_softc* %69, i32 %70)
  %72 = load i32, i32* @ADC_FIFO_COUNT_MSK, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %3, align 4
  br label %62

74:                                               ; preds = %62
  %75 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %76 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %11
  ret void
}

declare dso_local i32 @TI_ADC_LOCK_ASSERT(%struct.ti_adc_softc*) #1

declare dso_local i32 @ADC_WRITE4(%struct.ti_adc_softc*, i32, i32) #1

declare dso_local i32 @ADC_READ4(%struct.ti_adc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
