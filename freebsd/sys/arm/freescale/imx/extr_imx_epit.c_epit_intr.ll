; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_epit.c_epit_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_epit.c_epit_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epit_softc = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)*, i64 }

@EPIT_CR = common dso_local global i32 0, align 4
@EPIT_SR = common dso_local global i32 0, align 4
@EPIT_SR_OCIF = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @epit_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epit_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.epit_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.epit_softc*
  store %struct.epit_softc* %7, %struct.epit_softc** %4, align 8
  %8 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %9 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %14 = load i32, i32* @EPIT_CR, align 4
  %15 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %16 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @WR4(%struct.epit_softc* %13, i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %21 = load i32, i32* @EPIT_SR, align 4
  %22 = call i32 @RD4(%struct.epit_softc* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %24 = load i32, i32* @EPIT_SR, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @WR4B(%struct.epit_softc* %23, i32 %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @EPIT_SR_OCIF, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %32, i32* %2, align 4
  br label %53

33:                                               ; preds = %19
  %34 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %35 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %41 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %42, align 8
  %44 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %45 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %44, i32 0, i32 0
  %46 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %47 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %43(%struct.TYPE_2__* %45, i32 %49)
  br label %51

51:                                               ; preds = %39, %33
  %52 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %31
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @WR4(%struct.epit_softc*, i32, i32) #1

declare dso_local i32 @RD4(%struct.epit_softc*, i32) #1

declare dso_local i32 @WR4B(%struct.epit_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
