; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_rtc.c_aml8726_rtc_start_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_rtc.c_aml8726_rtc_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_rtc_softc = type { i32 }

@AML_RTC_0_REG = common dso_local global i32 0, align 4
@AML_RTC_SCLK = common dso_local global i32 0, align 4
@AML_RTC_SEN = common dso_local global i32 0, align 4
@AML_RTC_SDI = common dso_local global i32 0, align 4
@AML_RTC_1_REG = common dso_local global i32 0, align 4
@AML_RTC_SRDY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aml8726_rtc_softc*)* @aml8726_rtc_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_rtc_start_transfer(%struct.aml8726_rtc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aml8726_rtc_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.aml8726_rtc_softc* %0, %struct.aml8726_rtc_softc** %3, align 8
  %5 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %6 = load i32, i32* @AML_RTC_0_REG, align 4
  %7 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %8 = load i32, i32* @AML_RTC_0_REG, align 4
  %9 = call i32 @CSR_READ_4(%struct.aml8726_rtc_softc* %7, i32 %8)
  %10 = load i32, i32* @AML_RTC_SCLK, align 4
  %11 = load i32, i32* @AML_RTC_SEN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @AML_RTC_SDI, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %9, %15
  %17 = call i32 @CSR_WRITE_4(%struct.aml8726_rtc_softc* %5, i32 %6, i32 %16)
  %18 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %19 = load i32, i32* @AML_RTC_0_REG, align 4
  %20 = call i32 @CSR_BARRIER(%struct.aml8726_rtc_softc* %18, i32 %19)
  store i32 40, i32* %4, align 4
  br label %21

21:                                               ; preds = %34, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = call i32 @DELAY(i32 5)
  %26 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %27 = load i32, i32* @AML_RTC_1_REG, align 4
  %28 = call i32 @CSR_READ_4(%struct.aml8726_rtc_softc* %26, i32 %27)
  %29 = load i32, i32* @AML_RTC_SRDY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %37

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %4, align 4
  br label %21

37:                                               ; preds = %32, %21
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @EIO, align 4
  store i32 %41, i32* %2, align 4
  br label %51

42:                                               ; preds = %37
  %43 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %44 = load i32, i32* @AML_RTC_0_REG, align 4
  %45 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %46 = load i32, i32* @AML_RTC_0_REG, align 4
  %47 = call i32 @CSR_READ_4(%struct.aml8726_rtc_softc* %45, i32 %46)
  %48 = load i32, i32* @AML_RTC_SEN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @CSR_WRITE_4(%struct.aml8726_rtc_softc* %43, i32 %44, i32 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %42, %40
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_rtc_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_rtc_softc*, i32) #1

declare dso_local i32 @CSR_BARRIER(%struct.aml8726_rtc_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
