; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ti_adc_softc = type { i32, i32, i32* }

@ti_adc_inputs = common dso_local global %struct.TYPE_2__* null, align 8
@ADC_STEPENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_adc_softc*)* @ti_adc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adc_setup(%struct.ti_adc_softc* %0) #0 {
  %2 = alloca %struct.ti_adc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ti_adc_softc* %0, %struct.ti_adc_softc** %2, align 8
  %6 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %7 = call i32 @TI_ADC_LOCK_ASSERT(%struct.ti_adc_softc* %6)
  %8 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %39, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %11
  %18 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_adc_inputs, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %17
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  %35 = shl i32 1, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %32, %17
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %47 = call i32 @ti_adc_enable(%struct.ti_adc_softc* %46)
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %50 = load i32, i32* @ADC_STEPENABLE, align 4
  %51 = call i32 @ADC_READ4(%struct.ti_adc_softc* %49, i32 %50)
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %55 = load i32, i32* @ADC_STEPENABLE, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %45
  br label %62

59:                                               ; preds = %42
  %60 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %61 = call i32 @ti_adc_disable(%struct.ti_adc_softc* %60)
  br label %62

62:                                               ; preds = %59, %58
  ret i32 0
}

declare dso_local i32 @TI_ADC_LOCK_ASSERT(%struct.ti_adc_softc*) #1

declare dso_local i32 @ti_adc_enable(%struct.ti_adc_softc*) #1

declare dso_local i32 @ADC_READ4(%struct.ti_adc_softc*, i32) #1

declare dso_local i32 @ADC_WRITE4(%struct.ti_adc_softc*, i32, i32) #1

declare dso_local i32 @ti_adc_disable(%struct.ti_adc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
