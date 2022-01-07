; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_tsc_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_tsc_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adc_softc = type { i32, i32, i32, i32 }

@ADC_FIFO1COUNT = common dso_local global i32 0, align 4
@ADC_FIFO_COUNT_MSK = common dso_local global i32 0, align 4
@ADC_FIFO1DATA = common dso_local global i32 0, align 4
@ADC_FIFO_DATA_MSK = common dso_local global i32 0, align 4
@cmp_values = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_adc_softc*)* @ti_adc_tsc_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_adc_tsc_read_data(%struct.ti_adc_softc* %0) #0 {
  %2 = alloca %struct.ti_adc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [16 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ti_adc_softc* %0, %struct.ti_adc_softc** %2, align 8
  %10 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %11 = call i32 @TI_ADC_LOCK_ASSERT(%struct.ti_adc_softc* %10)
  %12 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %13 = load i32, i32* @ADC_FIFO1COUNT, align 4
  %14 = call i32 @ADC_READ4(%struct.ti_adc_softc* %12, i32 %13)
  %15 = load i32, i32* @ADC_FIFO_COUNT_MSK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %121

20:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %24, %20
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %26 = load i32, i32* @ADC_FIFO1DATA, align 4
  %27 = call i32 @ADC_READ4(%struct.ti_adc_softc* %25, i32 %26)
  %28 = load i32, i32* @ADC_FIFO_DATA_MSK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %35 = load i32, i32* @ADC_FIFO1COUNT, align 4
  %36 = call i32 @ADC_READ4(%struct.ti_adc_softc* %34, i32 %35)
  %37 = load i32, i32* @ADC_FIFO_COUNT_MSK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %3, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %41 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 3
  br i1 %43, label %44, label %64

44:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  %45 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %46 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %50 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @qsort(i32* %49, i32 %52, i32 4, i32* @cmp_values)
  %54 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %55 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %58
  %60 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %61 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @qsort(i32* %59, i32 %62, i32 4, i32* @cmp_values)
  br label %68

64:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  %65 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %66 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %64, %44
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %81, %68
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %70

84:                                               ; preds = %70
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i32, i32* %6, align 4
  %89 = sdiv i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %91 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 2
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %112, %84
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %2, align 8
  %99 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 2
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = icmp slt i32 %97, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %96
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %96

115:                                              ; preds = %96
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %5, align 4
  %120 = sdiv i32 %119, %118
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %115, %19
  ret void
}

declare dso_local i32 @TI_ADC_LOCK_ASSERT(%struct.ti_adc_softc*) #1

declare dso_local i32 @ADC_READ4(%struct.ti_adc_softc*, i32) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
