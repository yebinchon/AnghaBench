; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtimer.c_am335x_dmtimer_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtimer.c_am335x_dmtimer_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_dmtimer_softc = type { i32, i32, i32*, i32, i32, i32 }

@SYS_CLK = common dso_local global i32 0, align 4
@INVALID_CLK_IDENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SYSCLK_CLK = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DMTimer%d\00", align 1
@ET_TMR_NUM = common dso_local global i64 0, align 8
@TC_TMR_NUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"am335x_dmtimer: bad timer number %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @am335x_dmtimer_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_dmtimer_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.am335x_dmtimer_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.am335x_dmtimer_softc* @device_get_softc(i32 %7)
  store %struct.am335x_dmtimer_softc* %8, %struct.am335x_dmtimer_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %4, align 8
  %11 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @SYS_CLK, align 4
  %13 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %4, align 8
  %14 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %13, i32 0, i32 4
  %15 = call i32 @ti_prcm_clk_get_source_freq(i32 %12, i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %93

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ti_hwmods_get_clock(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @INVALID_CLK_IDENT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %93

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SYSCLK_CLK, align 4
  %29 = call i32 @ti_prcm_clk_set_source(i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %93

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ti_prcm_clk_enable(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %93

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SYS_RES_MEMORY, align 4
  %42 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %4, align 8
  %43 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %42, i32 0, i32 3
  %44 = load i32, i32* @RF_ACTIVE, align 4
  %45 = call i32* @bus_alloc_resource_any(i32 %40, i32 %41, i32* %43, i32 %44)
  %46 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %4, align 8
  %47 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %4, align 8
  %49 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %93

54:                                               ; preds = %39
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @ti_hwmods_get_unit(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %4, align 8
  %58 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %4, align 8
  %60 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %4, align 8
  %63 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @snprintf(i32 %61, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %4, align 8
  %67 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @ET_TMR_NUM, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %54
  %73 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %4, align 8
  %74 = call i32 @am335x_dmtimer_et_init(%struct.am335x_dmtimer_softc* %73)
  br label %92

75:                                               ; preds = %54
  %76 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %4, align 8
  %77 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @TC_TMR_NUM, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %4, align 8
  %84 = call i32 @am335x_dmtimer_tc_init(%struct.am335x_dmtimer_softc* %83)
  br label %91

85:                                               ; preds = %75
  %86 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %4, align 8
  %87 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %89)
  br label %91

91:                                               ; preds = %85, %82
  br label %92

92:                                               ; preds = %91, %72
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %52, %37, %31, %24, %17
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.am335x_dmtimer_softc* @device_get_softc(i32) #1

declare dso_local i32 @ti_prcm_clk_get_source_freq(i32, i32*) #1

declare dso_local i32 @ti_hwmods_get_clock(i32) #1

declare dso_local i32 @ti_prcm_clk_set_source(i32, i32) #1

declare dso_local i32 @ti_prcm_clk_enable(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @ti_hwmods_get_unit(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @am335x_dmtimer_et_init(%struct.am335x_dmtimer_softc*) #1

declare dso_local i32 @am335x_dmtimer_tc_init(%struct.am335x_dmtimer_softc*) #1

declare dso_local i32 @panic(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
