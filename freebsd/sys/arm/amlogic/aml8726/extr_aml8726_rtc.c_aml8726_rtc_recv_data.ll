; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_rtc.c_aml8726_rtc_recv_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_rtc.c_aml8726_rtc_recv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_rtc_softc = type { i32 }

@AML_RTC_1_REG = common dso_local global i32 0, align 4
@AML_RTC_SDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aml8726_rtc_softc*, i32*)* @aml8726_rtc_recv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_rtc_recv_data(%struct.aml8726_rtc_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.aml8726_rtc_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aml8726_rtc_softc* %0, %struct.aml8726_rtc_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp ult i32 %8, 32
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %12 = call i32 @aml8726_rtc_sclk_pulse(%struct.aml8726_rtc_softc* %11)
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %3, align 8
  %16 = load i32, i32* @AML_RTC_1_REG, align 4
  %17 = call i32 @CSR_READ_4(%struct.aml8726_rtc_softc* %15, i32 %16)
  %18 = load i32, i32* @AML_RTC_SDO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  ret void
}

declare dso_local i32 @aml8726_rtc_sclk_pulse(%struct.aml8726_rtc_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_rtc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
