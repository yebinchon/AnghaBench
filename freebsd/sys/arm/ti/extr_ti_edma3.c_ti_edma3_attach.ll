; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_edma3.c_ti_edma3_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_edma3.c_ti_edma3_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_edma3_softc = type { i32*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@ti_edma3_sc = common dso_local global %struct.ti_edma3_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@ti_edma3_mem_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error: could not allocate mem resources\0A\00", align 1
@ti_edma3_irq_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error: could not allocate irq resources\0A\00", align 1
@EDMA_TPCC_CLK = common dso_local global i32 0, align 4
@TI_EDMA3CC_PID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"EDMA revision %08x\0A\00", align 1
@TI_EDMA3_NUM_IRQS = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ti_edma3_intrs = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"could not setup %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_edma3_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_edma3_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_edma3_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ti_edma3_softc* @device_get_softc(i32 %8)
  store %struct.ti_edma3_softc* %9, %struct.ti_edma3_softc** %4, align 8
  %10 = load %struct.ti_edma3_softc*, %struct.ti_edma3_softc** @ti_edma3_sc, align 8
  %11 = icmp ne %struct.ti_edma3_softc* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %100

14:                                               ; preds = %1
  %15 = load %struct.ti_edma3_softc*, %struct.ti_edma3_softc** %4, align 8
  store %struct.ti_edma3_softc* %15, %struct.ti_edma3_softc** @ti_edma3_sc, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.ti_edma3_softc*, %struct.ti_edma3_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ti_edma3_softc, %struct.ti_edma3_softc* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ti_edma3_mem_spec, align 4
  %21 = load %struct.ti_edma3_softc*, %struct.ti_edma3_softc** %4, align 8
  %22 = getelementptr inbounds %struct.ti_edma3_softc, %struct.ti_edma3_softc* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @bus_alloc_resources(i32 %19, i32 %20, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %100

31:                                               ; preds = %14
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @ti_edma3_irq_spec, align 4
  %34 = load %struct.ti_edma3_softc*, %struct.ti_edma3_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ti_edma3_softc, %struct.ti_edma3_softc* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @bus_alloc_resources(i32 %32, i32 %33, i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* %3, align 4
  %42 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %100

44:                                               ; preds = %31
  %45 = load i32, i32* @EDMA_TPCC_CLK, align 4
  %46 = call i32 @ti_prcm_clk_enable(i32 %45)
  %47 = load i32, i32* @TI_EDMA3CC_PID, align 4
  %48 = call i32 @ti_edma3_cc_rd_4(i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %96, %44
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @TI_EDMA3_NUM_IRQS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %99

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.ti_edma3_softc*, %struct.ti_edma3_softc** %4, align 8
  %59 = getelementptr inbounds %struct.ti_edma3_softc, %struct.ti_edma3_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @INTR_TYPE_MISC, align 4
  %66 = load i32, i32* @INTR_MPSAFE, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_edma3_intrs, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ti_edma3_softc*, %struct.ti_edma3_softc** %4, align 8
  %76 = load %struct.ti_edma3_softc*, %struct.ti_edma3_softc** %4, align 8
  %77 = getelementptr inbounds %struct.ti_edma3_softc, %struct.ti_edma3_softc* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @bus_setup_intr(i32 %57, i32 %64, i32 %67, i32* null, i32 %74, %struct.ti_edma3_softc* %75, i32* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %56
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_edma3_intrs, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %100

95:                                               ; preds = %56
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %52

99:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %85, %40, %27, %12
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.ti_edma3_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ti_prcm_clk_enable(i32) #1

declare dso_local i32 @ti_edma3_cc_rd_4(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.ti_edma3_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
