; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adc_input = type { i64, i64 }
%struct.ti_adc_softc = type { i32 }

@ADC_FIFO0COUNT = common dso_local global i32 0, align 4
@ADC_FIFO_COUNT_MSK = common dso_local global i32 0, align 4
@ADC_FIFO0DATA = common dso_local global i32 0, align 4
@ADC_FIFO_STEP_ID_MSK = common dso_local global i32 0, align 4
@ADC_FIFO_STEP_ID_SHIFT = common dso_local global i32 0, align 4
@ti_adc_inputs = common dso_local global %struct.ti_adc_input* null, align 8
@ADC_FIFO_DATA_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_adc_softc*)* @ti_adc_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_adc_read_data(%struct.ti_adc_softc* %0) #0 {
  %2 = alloca %struct.ti_adc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_adc_input*, align 8
  %6 = alloca i32, align 4
  store %struct.ti_adc_softc* %0, %struct.ti_adc_softc** %2, align 8
  %7 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %8 = call i32 @TI_ADC_LOCK_ASSERT(%struct.ti_adc_softc* %7)
  %9 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %10 = load i32, i32* @ADC_FIFO0COUNT, align 4
  %11 = call i32 @ADC_READ4(%struct.ti_adc_softc* %9, i32 %10)
  %12 = load i32, i32* @ADC_FIFO_COUNT_MSK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %44, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %19 = load i32, i32* @ADC_FIFO0DATA, align 4
  %20 = call i32 @ADC_READ4(%struct.ti_adc_softc* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ADC_FIFO_STEP_ID_MSK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @ADC_FIFO_STEP_ID_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.ti_adc_input*, %struct.ti_adc_input** @ti_adc_inputs, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ti_adc_input, %struct.ti_adc_input* %26, i64 %28
  store %struct.ti_adc_input* %29, %struct.ti_adc_input** %5, align 8
  %30 = load %struct.ti_adc_input*, %struct.ti_adc_input** %5, align 8
  %31 = getelementptr inbounds %struct.ti_adc_input, %struct.ti_adc_input* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %17
  %35 = load %struct.ti_adc_input*, %struct.ti_adc_input** %5, align 8
  %36 = getelementptr inbounds %struct.ti_adc_input, %struct.ti_adc_input* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %44

37:                                               ; preds = %17
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ADC_FIFO_DATA_MSK, align 4
  %40 = and i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = load %struct.ti_adc_input*, %struct.ti_adc_input** %5, align 8
  %43 = getelementptr inbounds %struct.ti_adc_input, %struct.ti_adc_input* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %37, %34
  %45 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %46 = load i32, i32* @ADC_FIFO0COUNT, align 4
  %47 = call i32 @ADC_READ4(%struct.ti_adc_softc* %45, i32 %46)
  %48 = load i32, i32* @ADC_FIFO_COUNT_MSK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %3, align 4
  br label %14

50:                                               ; preds = %14
  ret void
}

declare dso_local i32 @TI_ADC_LOCK_ASSERT(%struct.ti_adc_softc*) #1

declare dso_local i32 @ADC_READ4(%struct.ti_adc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
