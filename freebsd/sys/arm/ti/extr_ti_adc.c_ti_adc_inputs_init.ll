; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_inputs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_inputs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adc_input = type { i32, i64, i64, i64, %struct.ti_adc_softc* }
%struct.ti_adc_softc = type { i32, i32* }

@ti_adc_inputs = common dso_local global %struct.ti_adc_input* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_adc_softc*)* @ti_adc_inputs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_adc_inputs_init(%struct.ti_adc_softc* %0) #0 {
  %2 = alloca %struct.ti_adc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_adc_input*, align 8
  store %struct.ti_adc_softc* %0, %struct.ti_adc_softc** %2, align 8
  %6 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %7 = call i32 @TI_ADC_LOCK(%struct.ti_adc_softc* %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %41, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %8
  %15 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  %22 = load %struct.ti_adc_input*, %struct.ti_adc_input** @ti_adc_inputs, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ti_adc_input, %struct.ti_adc_input* %22, i64 %24
  store %struct.ti_adc_input* %25, %struct.ti_adc_input** %5, align 8
  %26 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %27 = load %struct.ti_adc_input*, %struct.ti_adc_input** %5, align 8
  %28 = getelementptr inbounds %struct.ti_adc_input, %struct.ti_adc_input* %27, i32 0, i32 4
  store %struct.ti_adc_softc* %26, %struct.ti_adc_softc** %28, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.ti_adc_input*, %struct.ti_adc_input** %5, align 8
  %31 = getelementptr inbounds %struct.ti_adc_input, %struct.ti_adc_input* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ti_adc_input*, %struct.ti_adc_input** %5, align 8
  %33 = getelementptr inbounds %struct.ti_adc_input, %struct.ti_adc_input* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.ti_adc_input*, %struct.ti_adc_input** %5, align 8
  %35 = getelementptr inbounds %struct.ti_adc_input, %struct.ti_adc_input* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.ti_adc_input*, %struct.ti_adc_input** %5, align 8
  %37 = getelementptr inbounds %struct.ti_adc_input, %struct.ti_adc_input* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ti_adc_input_setup(%struct.ti_adc_softc* %38, i32 %39)
  br label %41

41:                                               ; preds = %14
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %8

44:                                               ; preds = %8
  %45 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %46 = call i32 @TI_ADC_UNLOCK(%struct.ti_adc_softc* %45)
  ret void
}

declare dso_local i32 @TI_ADC_LOCK(%struct.ti_adc_softc*) #1

declare dso_local i32 @ti_adc_input_setup(%struct.ti_adc_softc*, i32) #1

declare dso_local i32 @TI_ADC_UNLOCK(%struct.ti_adc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
