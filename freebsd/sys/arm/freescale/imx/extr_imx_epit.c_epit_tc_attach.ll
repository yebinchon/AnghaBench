; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_epit.c_epit_tc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_epit.c_epit_tc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epit_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32, %struct.epit_softc*, i32, i32 }

@EPIT_LR = common dso_local global i32 0, align 4
@EPIT_CR = common dso_local global i32 0, align 4
@EPIT_CR_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"EPIT\00", align 1
@epit_tc_get_timecount = common dso_local global i32 0, align 4
@epit_do_delay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.epit_softc*)* @epit_tc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epit_tc_attach(%struct.epit_softc* %0) #0 {
  %2 = alloca %struct.epit_softc*, align 8
  store %struct.epit_softc* %0, %struct.epit_softc** %2, align 8
  %3 = load %struct.epit_softc*, %struct.epit_softc** %2, align 8
  %4 = load i32, i32* @EPIT_LR, align 4
  %5 = call i32 @WR4(%struct.epit_softc* %3, i32 %4, i32 -1)
  %6 = load %struct.epit_softc*, %struct.epit_softc** %2, align 8
  %7 = load i32, i32* @EPIT_CR, align 4
  %8 = load %struct.epit_softc*, %struct.epit_softc** %2, align 8
  %9 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @EPIT_CR_EN, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @WR4(%struct.epit_softc* %6, i32 %7, i32 %12)
  %14 = load %struct.epit_softc*, %struct.epit_softc** %2, align 8
  %15 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load %struct.epit_softc*, %struct.epit_softc** %2, align 8
  %18 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 1000, i32* %19, align 8
  %20 = load %struct.epit_softc*, %struct.epit_softc** %2, align 8
  %21 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.epit_softc*, %struct.epit_softc** %2, align 8
  %24 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  store i32 %22, i32* %25, align 4
  %26 = load %struct.epit_softc*, %struct.epit_softc** %2, align 8
  %27 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 -1, i32* %28, align 4
  %29 = load i32, i32* @epit_tc_get_timecount, align 4
  %30 = load %struct.epit_softc*, %struct.epit_softc** %2, align 8
  %31 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  store i32 %29, i32* %32, align 8
  %33 = load %struct.epit_softc*, %struct.epit_softc** %2, align 8
  %34 = load %struct.epit_softc*, %struct.epit_softc** %2, align 8
  %35 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store %struct.epit_softc* %33, %struct.epit_softc** %36, align 8
  %37 = load %struct.epit_softc*, %struct.epit_softc** %2, align 8
  %38 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %37, i32 0, i32 1
  %39 = call i32 @tc_init(%struct.TYPE_2__* %38)
  %40 = load i32, i32* @epit_do_delay, align 4
  %41 = load %struct.epit_softc*, %struct.epit_softc** %2, align 8
  %42 = call i32 @arm_set_delay(i32 %40, %struct.epit_softc* %41)
  ret i32 0
}

declare dso_local i32 @WR4(%struct.epit_softc*, i32, i32) #1

declare dso_local i32 @tc_init(%struct.TYPE_2__*) #1

declare dso_local i32 @arm_set_delay(i32, %struct.epit_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
