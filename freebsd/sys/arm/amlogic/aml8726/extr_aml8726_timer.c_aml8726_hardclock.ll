; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_timer.c_aml8726_hardclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_timer.c_aml8726_hardclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_timer_softc = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)*, i64 }

@AML_TIMER_A_REG = common dso_local global i32 0, align 4
@AML_TIMER_MUX_REG = common dso_local global i32 0, align 4
@AML_TIMER_A_PERIODIC = common dso_local global i32 0, align 4
@AML_TIMER_A_EN = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @aml8726_hardclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_hardclock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aml8726_timer_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.aml8726_timer_softc*
  store %struct.aml8726_timer_softc* %5, %struct.aml8726_timer_softc** %3, align 8
  %6 = load %struct.aml8726_timer_softc*, %struct.aml8726_timer_softc** %3, align 8
  %7 = call i32 @AML_TIMER_LOCK(%struct.aml8726_timer_softc* %6)
  %8 = load %struct.aml8726_timer_softc*, %struct.aml8726_timer_softc** %3, align 8
  %9 = getelementptr inbounds %struct.aml8726_timer_softc, %struct.aml8726_timer_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  %13 = load %struct.aml8726_timer_softc*, %struct.aml8726_timer_softc** %3, align 8
  %14 = getelementptr inbounds %struct.aml8726_timer_softc, %struct.aml8726_timer_softc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load %struct.aml8726_timer_softc*, %struct.aml8726_timer_softc** %3, align 8
  %19 = getelementptr inbounds %struct.aml8726_timer_softc, %struct.aml8726_timer_softc* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.aml8726_timer_softc*, %struct.aml8726_timer_softc** %3, align 8
  %21 = load i32, i32* @AML_TIMER_A_REG, align 4
  %22 = load %struct.aml8726_timer_softc*, %struct.aml8726_timer_softc** %3, align 8
  %23 = getelementptr inbounds %struct.aml8726_timer_softc, %struct.aml8726_timer_softc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @CSR_WRITE_4(%struct.aml8726_timer_softc* %20, i32 %21, i32 %25)
  %27 = load %struct.aml8726_timer_softc*, %struct.aml8726_timer_softc** %3, align 8
  %28 = load i32, i32* @AML_TIMER_MUX_REG, align 4
  %29 = load %struct.aml8726_timer_softc*, %struct.aml8726_timer_softc** %3, align 8
  %30 = load i32, i32* @AML_TIMER_MUX_REG, align 4
  %31 = call i32 @CSR_READ_4(%struct.aml8726_timer_softc* %29, i32 %30)
  %32 = load i32, i32* @AML_TIMER_A_PERIODIC, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @AML_TIMER_A_EN, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @CSR_WRITE_4(%struct.aml8726_timer_softc* %27, i32 %28, i32 %35)
  br label %37

37:                                               ; preds = %17, %12, %1
  %38 = load %struct.aml8726_timer_softc*, %struct.aml8726_timer_softc** %3, align 8
  %39 = call i32 @AML_TIMER_UNLOCK(%struct.aml8726_timer_softc* %38)
  %40 = load %struct.aml8726_timer_softc*, %struct.aml8726_timer_softc** %3, align 8
  %41 = getelementptr inbounds %struct.aml8726_timer_softc, %struct.aml8726_timer_softc* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load %struct.aml8726_timer_softc*, %struct.aml8726_timer_softc** %3, align 8
  %47 = getelementptr inbounds %struct.aml8726_timer_softc, %struct.aml8726_timer_softc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %48, align 8
  %50 = load %struct.aml8726_timer_softc*, %struct.aml8726_timer_softc** %3, align 8
  %51 = getelementptr inbounds %struct.aml8726_timer_softc, %struct.aml8726_timer_softc* %50, i32 0, i32 2
  %52 = load %struct.aml8726_timer_softc*, %struct.aml8726_timer_softc** %3, align 8
  %53 = getelementptr inbounds %struct.aml8726_timer_softc, %struct.aml8726_timer_softc* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %49(%struct.TYPE_2__* %51, i32 %55)
  br label %57

57:                                               ; preds = %45, %37
  %58 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %58
}

declare dso_local i32 @AML_TIMER_LOCK(%struct.aml8726_timer_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_timer_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_timer_softc*, i32) #1

declare dso_local i32 @AML_TIMER_UNLOCK(%struct.aml8726_timer_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
