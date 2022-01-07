; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_rtc.c_aml8726_rtc_check_xo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_rtc.c_aml8726_rtc_check_xo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_rtc_softc = type { i32 }

@AML_RTC_3_REG = common dso_local global i32 0, align 4
@AML_RTC_MSR_CA = common dso_local global i32 0, align 4
@AML_RTC_2_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aml8726_rtc_softc*)* @aml8726_rtc_check_xo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_rtc_check_xo(%struct.aml8726_rtc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aml8726_rtc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aml8726_rtc_softc* %0, %struct.aml8726_rtc_softc** %3, align 8
  %7 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %8 = load i32, i32* @AML_RTC_3_REG, align 4
  %9 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %10 = load i32, i32* @AML_RTC_3_REG, align 4
  %11 = call i32 @CSR_READ_4(%struct.aml8726_rtc_softc* %9, i32 %10)
  %12 = load i32, i32* @AML_RTC_MSR_CA, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @CSR_WRITE_4(%struct.aml8726_rtc_softc* %7, i32 %8, i32 %13)
  %15 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %16 = load i32, i32* @AML_RTC_2_REG, align 4
  %17 = call i32 @CSR_READ_4(%struct.aml8726_rtc_softc* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %31, %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = call i32 @DELAY(i32 50)
  %23 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %24 = load i32, i32* @AML_RTC_2_REG, align 4
  %25 = call i32 @CSR_READ_4(%struct.aml8726_rtc_softc* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %34

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %18

34:                                               ; preds = %29, %18
  %35 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %36 = load i32, i32* @AML_RTC_3_REG, align 4
  %37 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %38 = load i32, i32* @AML_RTC_3_REG, align 4
  %39 = call i32 @CSR_READ_4(%struct.aml8726_rtc_softc* %37, i32 %38)
  %40 = load i32, i32* @AML_RTC_MSR_CA, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = call i32 @CSR_WRITE_4(%struct.aml8726_rtc_softc* %35, i32 %36, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_rtc_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_rtc_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
