; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtimer.c_am335x_dmtimer_tc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtimer.c_am335x_dmtimer_tc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_dmtimer_softc = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.am335x_dmtimer_softc*, i32, i32, i32 }

@am335x_dmtimer_tc_sc = common dso_local global %struct.am335x_dmtimer_softc* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"already have a timecounter\00", align 1
@DMT_TSICR = common dso_local global i32 0, align 4
@DMT_TSICR_RESET = common dso_local global i32 0, align 4
@DMT_TIOCP_CFG = common dso_local global i32 0, align 4
@DMT_TIOCP_RESET = common dso_local global i32 0, align 4
@DMT_TCLR_START = common dso_local global i32 0, align 4
@DMT_TCLR_AUTOLOAD = common dso_local global i32 0, align 4
@DMT_TLDR = common dso_local global i32 0, align 4
@DMT_TCRR = common dso_local global i32 0, align 4
@DMT_TCLR = common dso_local global i32 0, align 4
@am335x_dmtimer_tc_get_timecount = common dso_local global i32 0, align 4
@am335x_dmtimer_delay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.am335x_dmtimer_softc*)* @am335x_dmtimer_tc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_dmtimer_tc_init(%struct.am335x_dmtimer_softc* %0) #0 {
  %2 = alloca %struct.am335x_dmtimer_softc*, align 8
  store %struct.am335x_dmtimer_softc* %0, %struct.am335x_dmtimer_softc** %2, align 8
  %3 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** @am335x_dmtimer_tc_sc, align 8
  %4 = icmp eq %struct.am335x_dmtimer_softc* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @KASSERT(i32 %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %8 = load i32, i32* @DMT_TSICR, align 4
  %9 = load i32, i32* @DMT_TSICR_RESET, align 4
  %10 = call i32 @DMTIMER_WRITE4(%struct.am335x_dmtimer_softc* %7, i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %18, %1
  %12 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %13 = load i32, i32* @DMT_TIOCP_CFG, align 4
  %14 = call i32 @DMTIMER_READ4(%struct.am335x_dmtimer_softc* %12, i32 %13)
  %15 = load i32, i32* @DMT_TIOCP_RESET, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %11

19:                                               ; preds = %11
  %20 = load i32, i32* @DMT_TCLR_START, align 4
  %21 = load i32, i32* @DMT_TCLR_AUTOLOAD, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %24 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %28 = load i32, i32* @DMT_TLDR, align 4
  %29 = call i32 @DMTIMER_WRITE4(%struct.am335x_dmtimer_softc* %27, i32 %28, i32 0)
  %30 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %31 = load i32, i32* @DMT_TCRR, align 4
  %32 = call i32 @DMTIMER_WRITE4(%struct.am335x_dmtimer_softc* %30, i32 %31, i32 0)
  %33 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %34 = load i32, i32* @DMT_TCLR, align 4
  %35 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %36 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @DMTIMER_WRITE4(%struct.am335x_dmtimer_softc* %33, i32 %34, i32 %37)
  %39 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %40 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %43 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  store i32 %41, i32* %45, align 8
  %46 = load i32, i32* @am335x_dmtimer_tc_get_timecount, align 4
  %47 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %48 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  store i32 %46, i32* %50, align 4
  %51 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %52 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 8
  %55 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %56 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %59 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 %57, i32* %61, align 8
  %62 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %63 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 500, i32* %65, align 4
  %66 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %67 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %68 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store %struct.am335x_dmtimer_softc* %66, %struct.am335x_dmtimer_softc** %70, align 8
  %71 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  store %struct.am335x_dmtimer_softc* %71, %struct.am335x_dmtimer_softc** @am335x_dmtimer_tc_sc, align 8
  %72 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %73 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = call i32 @tc_init(%struct.TYPE_4__* %74)
  %76 = load i32, i32* @am335x_dmtimer_delay, align 4
  %77 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %2, align 8
  %78 = call i32 @arm_set_delay(i32 %76, %struct.am335x_dmtimer_softc* %77)
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DMTIMER_WRITE4(%struct.am335x_dmtimer_softc*, i32, i32) #1

declare dso_local i32 @DMTIMER_READ4(%struct.am335x_dmtimer_softc*, i32) #1

declare dso_local i32 @tc_init(%struct.TYPE_4__*) #1

declare dso_local i32 @arm_set_delay(i32, %struct.am335x_dmtimer_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
