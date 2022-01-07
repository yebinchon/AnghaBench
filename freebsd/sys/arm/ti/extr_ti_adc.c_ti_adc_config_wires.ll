; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_config_wires.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_config_wires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adc_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ADC_STEP_XPP_SW = common dso_local global i32 0, align 4
@ADC_STEP_XNN_SW = common dso_local global i32 0, align 4
@ADC_STEP_YPP_SW = common dso_local global i32 0, align 4
@ADC_STEP_YNN_SW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid wire config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_adc_softc*, i32*, i32)* @ti_adc_config_wires to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adc_config_wires(%struct.ti_adc_softc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_adc_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ti_adc_softc* %0, %struct.ti_adc_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %64, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %67

15:                                               ; preds = %11
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 15
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 4
  %28 = and i32 %27, 15
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %58 [
    i32 130, label %30
    i32 131, label %37
    i32 128, label %44
    i32 129, label %51
  ]

30:                                               ; preds = %15
  %31 = load i32, i32* @ADC_STEP_XPP_SW, align 4
  %32 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %5, align 8
  %33 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %5, align 8
  %36 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %63

37:                                               ; preds = %15
  %38 = load i32, i32* @ADC_STEP_XNN_SW, align 4
  %39 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %5, align 8
  %40 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %5, align 8
  %43 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %63

44:                                               ; preds = %15
  %45 = load i32, i32* @ADC_STEP_YPP_SW, align 4
  %46 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %5, align 8
  %47 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %5, align 8
  %50 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  br label %63

51:                                               ; preds = %15
  %52 = load i32, i32* @ADC_STEP_YNN_SW, align 4
  %53 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %5, align 8
  %54 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %5, align 8
  %57 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  br label %63

58:                                               ; preds = %15
  %59 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %5, align 8
  %60 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %68

63:                                               ; preds = %51, %44, %37, %30
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %11

67:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %58
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
