; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_epit.c_epit_et_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_epit.c_epit_et_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventtimer = type { i64, i64 }
%struct.epit_softc = type { i32, i32 }

@EPIT_CR = common dso_local global i32 0, align 4
@EPIT_SR = common dso_local global i32 0, align 4
@EPIT_SR_OCIF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPIT_LR = common dso_local global i32 0, align 4
@EPIT_CR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*, i32, i32)* @epit_et_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epit_et_start(%struct.eventtimer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eventtimer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.epit_softc*, align 8
  %9 = alloca i32, align 4
  store %struct.eventtimer* %0, %struct.eventtimer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %11 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.epit_softc*
  store %struct.epit_softc* %13, %struct.epit_softc** %8, align 8
  %14 = load %struct.epit_softc*, %struct.epit_softc** %8, align 8
  %15 = load i32, i32* @EPIT_CR, align 4
  %16 = load %struct.epit_softc*, %struct.epit_softc** %8, align 8
  %17 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @WR4(%struct.epit_softc* %14, i32 %15, i32 %18)
  %20 = load %struct.epit_softc*, %struct.epit_softc** %8, align 8
  %21 = load i32, i32* @EPIT_SR, align 4
  %22 = load i32, i32* @EPIT_SR_OCIF, align 4
  %23 = call i32 @WR4(%struct.epit_softc* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.epit_softc*, %struct.epit_softc** %8, align 8
  %28 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %30 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %32, %33
  %35 = ashr i32 %34, 32
  store i32 %35, i32* %9, align 4
  br label %52

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.epit_softc*, %struct.epit_softc** %8, align 8
  %41 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %43 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %45, %46
  %48 = ashr i32 %47, 32
  store i32 %48, i32* %9, align 4
  br label %51

49:                                               ; preds = %36
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %4, align 4
  br label %65

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %26
  %53 = load %struct.epit_softc*, %struct.epit_softc** %8, align 8
  %54 = load i32, i32* @EPIT_LR, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @WR4(%struct.epit_softc* %53, i32 %54, i32 %55)
  %57 = load %struct.epit_softc*, %struct.epit_softc** %8, align 8
  %58 = load i32, i32* @EPIT_CR, align 4
  %59 = load %struct.epit_softc*, %struct.epit_softc** %8, align 8
  %60 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @EPIT_CR_EN, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @WR4B(%struct.epit_softc* %57, i32 %58, i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %52, %49
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @WR4(%struct.epit_softc*, i32, i32) #1

declare dso_local i32 @WR4B(%struct.epit_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
