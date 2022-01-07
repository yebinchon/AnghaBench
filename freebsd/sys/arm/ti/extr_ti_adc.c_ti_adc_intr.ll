; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adc_softc = type { i32 }

@ADC_IRQSTATUS_RAW = common dso_local global i32 0, align 4
@ADC_IRQSTATUS = common dso_local global i32 0, align 4
@ADC_IRQ_HW_PEN_ASYNC = common dso_local global i32 0, align 4
@ADC_IRQENABLE_CLR = common dso_local global i32 0, align 4
@ADC_IRQ_PEN_UP = common dso_local global i32 0, align 4
@ADC_IRQ_FIFO0_THRES = common dso_local global i32 0, align 4
@ADC_IRQ_FIFO1_THRES = common dso_local global i32 0, align 4
@ADC_IRQ_END_OF_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ti_adc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_adc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ti_adc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ti_adc_softc*
  store %struct.ti_adc_softc* %7, %struct.ti_adc_softc** %3, align 8
  %8 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %3, align 8
  %9 = call i32 @TI_ADC_LOCK(%struct.ti_adc_softc* %8)
  %10 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %3, align 8
  %11 = load i32, i32* @ADC_IRQSTATUS_RAW, align 4
  %12 = call i32 @ADC_READ4(%struct.ti_adc_softc* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %3, align 8
  %14 = load i32, i32* @ADC_IRQSTATUS, align 4
  %15 = call i32 @ADC_READ4(%struct.ti_adc_softc* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ADC_IRQ_HW_PEN_ASYNC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* @ADC_IRQ_HW_PEN_ASYNC, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %3, align 8
  %27 = load i32, i32* @ADC_IRQENABLE_CLR, align 4
  %28 = load i32, i32* @ADC_IRQ_HW_PEN_ASYNC, align 4
  %29 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %20, %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ADC_IRQ_PEN_UP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @ADC_IRQ_PEN_UP, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @ADC_IRQ_FIFO0_THRES, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @ti_adc_intr_locked(%struct.ti_adc_softc* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @ADC_IRQ_FIFO1_THRES, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @ti_adc_tsc_intr_locked(%struct.ti_adc_softc* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %3, align 8
  %64 = load i32, i32* @ADC_IRQSTATUS, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @ADC_IRQ_END_OF_SEQ, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %3, align 8
  %74 = call i32 @ti_adc_setup(%struct.ti_adc_softc* %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %3, align 8
  %77 = call i32 @TI_ADC_UNLOCK(%struct.ti_adc_softc* %76)
  ret void
}

declare dso_local i32 @TI_ADC_LOCK(%struct.ti_adc_softc*) #1

declare dso_local i32 @ADC_READ4(%struct.ti_adc_softc*, i32) #1

declare dso_local i32 @ADC_WRITE4(%struct.ti_adc_softc*, i32, i32) #1

declare dso_local i32 @ti_adc_intr_locked(%struct.ti_adc_softc*, i32) #1

declare dso_local i32 @ti_adc_tsc_intr_locked(%struct.ti_adc_softc*, i32) #1

declare dso_local i32 @ti_adc_setup(%struct.ti_adc_softc*) #1

declare dso_local i32 @TI_ADC_UNLOCK(%struct.ti_adc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
