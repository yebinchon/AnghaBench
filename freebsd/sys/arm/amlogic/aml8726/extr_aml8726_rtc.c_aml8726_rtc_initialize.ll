; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_rtc.c_aml8726_rtc_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_rtc.c_aml8726_rtc_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_rtc_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@AML_RTC_0_REG = common dso_local global i32 0, align 4
@AML_RTC_SCLK = common dso_local global i32 0, align 4
@AML_RTC_SEN = common dso_local global i32 0, align 4
@AML_RTC_SDI = common dso_local global i32 0, align 4
@AML_RTC_1_REG = common dso_local global i32 0, align 4
@AML_RTC_SRDY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@AML_RTC_4_REG = common dso_local global i32 0, align 4
@AML_RTC_AS = common dso_local global i32 0, align 4
@AML_RTC_IRQ_DIS = common dso_local global i32 0, align 4
@AML_RTC_ABSY = common dso_local global i32 0, align 4
@AML_RTC_GPO_SREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aml8726_rtc_softc*)* @aml8726_rtc_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_rtc_initialize(%struct.aml8726_rtc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aml8726_rtc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aml8726_rtc_softc* %0, %struct.aml8726_rtc_softc** %3, align 8
  %6 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %7 = load i32, i32* @AML_RTC_0_REG, align 4
  %8 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %9 = load i32, i32* @AML_RTC_0_REG, align 4
  %10 = call i32 @CSR_READ_4(%struct.aml8726_rtc_softc* %8, i32 %9)
  %11 = load i32, i32* @AML_RTC_SCLK, align 4
  %12 = load i32, i32* @AML_RTC_SEN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AML_RTC_SDI, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %10, %16
  %18 = call i32 @CSR_WRITE_4(%struct.aml8726_rtc_softc* %6, i32 %7, i32 %17)
  %19 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %20 = load i32, i32* @AML_RTC_0_REG, align 4
  %21 = call i32 @CSR_BARRIER(%struct.aml8726_rtc_softc* %19, i32 %20)
  store i32 40, i32* %5, align 4
  br label %22

22:                                               ; preds = %35, %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = call i32 @DELAY(i32 5)
  %27 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %28 = load i32, i32* @AML_RTC_1_REG, align 4
  %29 = call i32 @CSR_READ_4(%struct.aml8726_rtc_softc* %27, i32 %28)
  %30 = load i32, i32* @AML_RTC_SRDY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %38

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %5, align 4
  br label %22

38:                                               ; preds = %33, %22
  %39 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %40 = getelementptr inbounds %struct.aml8726_rtc_softc, %struct.aml8726_rtc_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TRUE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %47 = load i32, i32* @AML_RTC_1_REG, align 4
  %48 = call i32 @CSR_READ_4(%struct.aml8726_rtc_softc* %46, i32 %47)
  %49 = load i32, i32* @AML_RTC_SRDY, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %45, %38
  %53 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %54 = load i32, i32* @AML_RTC_4_REG, align 4
  %55 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %56 = getelementptr inbounds %struct.aml8726_rtc_softc, %struct.aml8726_rtc_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 255
  %61 = call i32 @CSR_WRITE_4(%struct.aml8726_rtc_softc* %53, i32 %54, i32 %60)
  %62 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %63 = load i32, i32* @AML_RTC_0_REG, align 4
  %64 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %65 = load i32, i32* @AML_RTC_0_REG, align 4
  %66 = call i32 @CSR_READ_4(%struct.aml8726_rtc_softc* %64, i32 %65)
  %67 = and i32 %66, 16777215
  %68 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %69 = getelementptr inbounds %struct.aml8726_rtc_softc, %struct.aml8726_rtc_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 255
  %73 = shl i32 %72, 24
  %74 = or i32 %67, %73
  %75 = load i32, i32* @AML_RTC_AS, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @AML_RTC_IRQ_DIS, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @CSR_WRITE_4(%struct.aml8726_rtc_softc* %62, i32 %63, i32 %78)
  br label %80

80:                                               ; preds = %87, %52
  %81 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %82 = load i32, i32* @AML_RTC_0_REG, align 4
  %83 = call i32 @CSR_READ_4(%struct.aml8726_rtc_softc* %81, i32 %82)
  %84 = load i32, i32* @AML_RTC_ABSY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = call i32 (...) @cpu_spinwait()
  br label %80

89:                                               ; preds = %80
  %90 = call i32 @DELAY(i32 2)
  %91 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %92 = load i32, i32* @AML_RTC_GPO_SREG, align 4
  %93 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %94 = getelementptr inbounds %struct.aml8726_rtc_softc, %struct.aml8726_rtc_softc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @aml8726_rtc_sreg_write(%struct.aml8726_rtc_softc* %91, i32 %92, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %104

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %45
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %100
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_rtc_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_rtc_softc*, i32) #1

declare dso_local i32 @CSR_BARRIER(%struct.aml8726_rtc_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @aml8726_rtc_sreg_write(%struct.aml8726_rtc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
