; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_input_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_input_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adc_input = type { i64, i64 }
%struct.ti_adc_softc = type { i32 }

@ti_adc_inputs = common dso_local global %struct.ti_adc_input* null, align 8
@ADC_STEP_DIFF_CNTRL = common dso_local global i64 0, align 8
@ADC_STEP_RFM_MSK = common dso_local global i64 0, align 8
@ADC_STEP_RFP_MSK = common dso_local global i64 0, align 8
@ADC_STEP_AVG_MSK = common dso_local global i64 0, align 8
@ADC_STEP_AVG_SHIFT = common dso_local global i64 0, align 8
@ADC_STEP_INP_MSK = common dso_local global i64 0, align 8
@ADC_STEP_INP_SHIFT = common dso_local global i64 0, align 8
@ADC_STEP_MODE_MSK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_adc_softc*, i64)* @ti_adc_input_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_adc_input_setup(%struct.ti_adc_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ti_adc_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ti_adc_input*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ti_adc_softc* %0, %struct.ti_adc_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %3, align 8
  %9 = call i32 @TI_ADC_LOCK_ASSERT(%struct.ti_adc_softc* %8)
  %10 = load %struct.ti_adc_input*, %struct.ti_adc_input** @ti_adc_inputs, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.ti_adc_input, %struct.ti_adc_input* %10, i64 %11
  store %struct.ti_adc_input* %12, %struct.ti_adc_input** %5, align 8
  %13 = load %struct.ti_adc_input*, %struct.ti_adc_input** %5, align 8
  %14 = getelementptr inbounds %struct.ti_adc_input, %struct.ti_adc_input* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @ADC_READ4(%struct.ti_adc_softc* %16, i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* @ADC_STEP_DIFF_CNTRL, align 8
  %20 = xor i64 %19, -1
  %21 = load i64, i64* %7, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* @ADC_STEP_RFM_MSK, align 8
  %24 = xor i64 %23, -1
  %25 = load i64, i64* %7, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* @ADC_STEP_RFP_MSK, align 8
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %7, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* @ADC_STEP_AVG_MSK, align 8
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %7, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %7, align 8
  %35 = load %struct.ti_adc_input*, %struct.ti_adc_input** %5, align 8
  %36 = getelementptr inbounds %struct.ti_adc_input, %struct.ti_adc_input* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ADC_STEP_AVG_SHIFT, align 8
  %39 = shl i64 %37, %38
  %40 = load i64, i64* %7, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* @ADC_STEP_INP_MSK, align 8
  %43 = xor i64 %42, -1
  %44 = load i64, i64* %7, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @ADC_STEP_INP_SHIFT, align 8
  %48 = shl i64 %46, %47
  %49 = load i64, i64* %7, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* @ADC_STEP_MODE_MSK, align 8
  %52 = xor i64 %51, -1
  %53 = load i64, i64* %7, align 8
  %54 = and i64 %53, %52
  store i64 %54, i64* %7, align 8
  %55 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %3, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %55, i64 %56, i64 %57)
  ret void
}

declare dso_local i32 @TI_ADC_LOCK_ASSERT(%struct.ti_adc_softc*) #1

declare dso_local i64 @ADC_READ4(%struct.ti_adc_softc*, i64) #1

declare dso_local i32 @ADC_WRITE4(%struct.ti_adc_softc*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
