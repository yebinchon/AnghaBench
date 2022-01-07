; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adc_softc = type { i32, i32 }

@ADC_IRQENABLE_SET = common dso_local global i32 0, align 4
@ADC_IRQ_FIFO0_THRES = common dso_local global i32 0, align 4
@ADC_IRQ_FIFO1_THRES = common dso_local global i32 0, align 4
@ADC_IRQ_END_OF_SEQ = common dso_local global i32 0, align 4
@ADC_CTRL_STEP_WP = common dso_local global i32 0, align 4
@ADC_CTRL_STEP_ID = common dso_local global i32 0, align 4
@ADC_CTRL_TSC_ENABLE = common dso_local global i32 0, align 4
@ADC_CTRL_TSC_4WIRE = common dso_local global i32 0, align 4
@ADC_CTRL_TSC_5WIRE = common dso_local global i32 0, align 4
@ADC_CTRL_TSC_8WIRE = common dso_local global i32 0, align 4
@ADC_CTRL_ENABLE = common dso_local global i32 0, align 4
@ADC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_adc_softc*)* @ti_adc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_adc_enable(%struct.ti_adc_softc* %0) #0 {
  %2 = alloca %struct.ti_adc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ti_adc_softc* %0, %struct.ti_adc_softc** %2, align 8
  %4 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %5 = call i32 @TI_ADC_LOCK_ASSERT(%struct.ti_adc_softc* %4)
  %6 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %13 = load i32, i32* @ADC_IRQENABLE_SET, align 4
  %14 = load i32, i32* @ADC_IRQ_FIFO0_THRES, align 4
  %15 = load i32, i32* @ADC_IRQ_FIFO1_THRES, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ADC_IRQ_END_OF_SEQ, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %12, i32 %13, i32 %18)
  %20 = load i32, i32* @ADC_CTRL_STEP_WP, align 4
  %21 = load i32, i32* @ADC_CTRL_STEP_ID, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %3, align 4
  %23 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %11
  %28 = load i32, i32* @ADC_CTRL_TSC_ENABLE, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %32 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %46 [
    i32 4, label %34
    i32 5, label %38
    i32 8, label %42
  ]

34:                                               ; preds = %27
  %35 = load i32, i32* @ADC_CTRL_TSC_4WIRE, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %27
  %39 = load i32, i32* @ADC_CTRL_TSC_5WIRE, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %27
  %43 = load i32, i32* @ADC_CTRL_TSC_8WIRE, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %27
  br label %47

47:                                               ; preds = %46, %42, %38, %34
  br label %48

48:                                               ; preds = %47, %11
  %49 = load i32, i32* @ADC_CTRL_ENABLE, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %53 = load i32, i32* @ADC_CTRL, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %52, i32 %53, i32 %54)
  %56 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %48, %10
  ret void
}

declare dso_local i32 @TI_ADC_LOCK_ASSERT(%struct.ti_adc_softc*) #1

declare dso_local i32 @ADC_WRITE4(%struct.ti_adc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
