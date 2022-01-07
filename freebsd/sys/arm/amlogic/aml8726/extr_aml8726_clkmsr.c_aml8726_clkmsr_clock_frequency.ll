; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_clkmsr.c_aml8726_clkmsr_clock_frequency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_clkmsr.c_aml8726_clkmsr_clock_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.aml8726_clkmsr_softc = type { i32 }

@AML_CLKMSR_NCLKS = common dso_local global i32 0, align 4
@AML_CLKMSR_0_REG = common dso_local global i32 0, align 4
@aml8726_clkmsr_clks = common dso_local global %struct.TYPE_2__* null, align 8
@AML_CLKMSR_0_MUX_SHIFT = common dso_local global i32 0, align 4
@AML_CLKMSR_DURATION = common dso_local global i32 0, align 4
@AML_CLKMSR_0_DURATION_SHIFT = common dso_local global i32 0, align 4
@AML_CLKMSR_0_MUX_EN = common dso_local global i32 0, align 4
@AML_CLKMSR_0_MEASURE = common dso_local global i32 0, align 4
@AML_CLKMSR_0_BUSY = common dso_local global i32 0, align 4
@AML_CLKMSR_2_REG = common dso_local global i32 0, align 4
@AML_CLKMSR_2_RESULT_MASK = common dso_local global i32 0, align 4
@AML_CLKMSR_2_RESULT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aml8726_clkmsr_softc*, i32)* @aml8726_clkmsr_clock_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_clkmsr_clock_frequency(%struct.aml8726_clkmsr_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_clkmsr_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aml8726_clkmsr_softc* %0, %struct.aml8726_clkmsr_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @AML_CLKMSR_NCLKS, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

11:                                               ; preds = %2
  %12 = load %struct.aml8726_clkmsr_softc*, %struct.aml8726_clkmsr_softc** %4, align 8
  %13 = load i32, i32* @AML_CLKMSR_0_REG, align 4
  %14 = call i32 @CSR_WRITE_4(%struct.aml8726_clkmsr_softc* %12, i32 %13, i32 0)
  %15 = load %struct.aml8726_clkmsr_softc*, %struct.aml8726_clkmsr_softc** %4, align 8
  %16 = load i32, i32* @AML_CLKMSR_0_REG, align 4
  %17 = call i32 @CSR_BARRIER(%struct.aml8726_clkmsr_softc* %15, i32 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aml8726_clkmsr_clks, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AML_CLKMSR_0_MUX_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @AML_CLKMSR_DURATION, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* @AML_CLKMSR_0_DURATION_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %25, %29
  %31 = load i32, i32* @AML_CLKMSR_0_MUX_EN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @AML_CLKMSR_0_MEASURE, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.aml8726_clkmsr_softc*, %struct.aml8726_clkmsr_softc** %4, align 8
  %36 = load i32, i32* @AML_CLKMSR_0_REG, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @CSR_WRITE_4(%struct.aml8726_clkmsr_softc* %35, i32 %36, i32 %37)
  %39 = load %struct.aml8726_clkmsr_softc*, %struct.aml8726_clkmsr_softc** %4, align 8
  %40 = load i32, i32* @AML_CLKMSR_0_REG, align 4
  %41 = call i32 @CSR_BARRIER(%struct.aml8726_clkmsr_softc* %39, i32 %40)
  br label %42

42:                                               ; preds = %49, %11
  %43 = load %struct.aml8726_clkmsr_softc*, %struct.aml8726_clkmsr_softc** %4, align 8
  %44 = load i32, i32* @AML_CLKMSR_0_REG, align 4
  %45 = call i32 @CSR_READ_4(%struct.aml8726_clkmsr_softc* %43, i32 %44)
  %46 = load i32, i32* @AML_CLKMSR_0_BUSY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 (...) @cpu_spinwait()
  br label %42

51:                                               ; preds = %42
  %52 = load i32, i32* @AML_CLKMSR_0_MEASURE, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load %struct.aml8726_clkmsr_softc*, %struct.aml8726_clkmsr_softc** %4, align 8
  %57 = load i32, i32* @AML_CLKMSR_0_REG, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @CSR_WRITE_4(%struct.aml8726_clkmsr_softc* %56, i32 %57, i32 %58)
  %60 = load %struct.aml8726_clkmsr_softc*, %struct.aml8726_clkmsr_softc** %4, align 8
  %61 = load i32, i32* @AML_CLKMSR_0_REG, align 4
  %62 = call i32 @CSR_BARRIER(%struct.aml8726_clkmsr_softc* %60, i32 %61)
  %63 = load %struct.aml8726_clkmsr_softc*, %struct.aml8726_clkmsr_softc** %4, align 8
  %64 = load i32, i32* @AML_CLKMSR_2_REG, align 4
  %65 = call i32 @CSR_READ_4(%struct.aml8726_clkmsr_softc* %63, i32 %64)
  %66 = load i32, i32* @AML_CLKMSR_2_RESULT_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @AML_CLKMSR_2_RESULT_SHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = load i32, i32* @AML_CLKMSR_DURATION, align 4
  %71 = sdiv i32 %70, 2
  %72 = add nsw i32 %69, %71
  %73 = load i32, i32* @AML_CLKMSR_DURATION, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %51, %10
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_clkmsr_softc*, i32, i32) #1

declare dso_local i32 @CSR_BARRIER(%struct.aml8726_clkmsr_softc*, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_clkmsr_softc*, i32) #1

declare dso_local i32 @cpu_spinwait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
