; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sdma_softc = type { i32, i32, i32*, i32, i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: Cannot map registers\00", align 1
@SDMA_CLK = common dso_local global i32 0, align 4
@DMA4_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"sDMA revision %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"error - unknown sDMA H/W revision\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NUM_DMA_IRQS = common dso_local global i32 0, align 4
@DMA4_OCP_SYSCONFIG = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@DMA4_SYSSTATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"DMARESET\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"sDMA reset operation timed out\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Unable to setup the dma irq handler.\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ti_sdma_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"%s: Cannot register IRQ\00", align 1
@ti_sdma_sc = common dso_local global %struct.ti_sdma_softc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_sdma_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sdma_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_sdma_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.ti_sdma_softc* @device_get_softc(i32 %10)
  store %struct.ti_sdma_softc* %11, %struct.ti_sdma_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %14 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %18 = call i32 @TI_SDMA_LOCK_INIT(%struct.ti_sdma_softc* %17)
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SYS_RES_MEMORY, align 4
  %21 = load i32, i32* @RF_ACTIVE, align 4
  %22 = call i8* @bus_alloc_resource_any(i32 %19, i32 %20, i32* %7, i32 %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %24, i32 0, i32 4
  store i32* %23, i32** %25, align 8
  %26 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_get_name(i32 %31)
  %33 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %1
  %35 = load i32, i32* @SDMA_CLK, align 4
  %36 = call i32 @ti_prcm_clk_enable(i32 %35)
  %37 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %38 = load i32, i32* @DMA4_REVISION, align 4
  %39 = call i32 @ti_sdma_read_4(%struct.ti_sdma_softc* %37, i32 %38)
  %40 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %48 = call i32 @ti_sdma_is_omap4_rev(%struct.ti_sdma_softc* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %34
  %51 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %52 = call i64 @ti_sdma_is_omap3_rev(%struct.ti_sdma_softc* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %56 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %2, align 4
  br label %143

60:                                               ; preds = %50, %34
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %70, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @NUM_DMA_IRQS, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @DMA4_IRQENABLE_L(i32 %67)
  %69 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %66, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %61

73:                                               ; preds = %61
  %74 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %75 = call i64 @ti_sdma_is_omap3_rev(%struct.ti_sdma_softc* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %73
  %78 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %79 = load i32, i32* @DMA4_OCP_SYSCONFIG, align 4
  %80 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %78, i32 %79, i32 2)
  %81 = load i32, i32* @hz, align 4
  %82 = icmp slt i32 %81, 10
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @hz, align 4
  %86 = mul nsw i32 100, %85
  %87 = sdiv i32 %86, 1000
  br label %88

88:                                               ; preds = %84, %83
  %89 = phi i32 [ 1, %83 ], [ %87, %84 ]
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %107, %88
  %91 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %92 = load i32, i32* @DMA4_SYSSTATUS, align 4
  %93 = call i32 @ti_sdma_read_4(%struct.ti_sdma_softc* %91, i32 %92)
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %98 = load i32, i32* %5, align 4
  %99 = add i32 %98, -1
  store i32 %99, i32* %5, align 4
  %100 = icmp eq i32 %98, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %103 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  store i32 %106, i32* %2, align 4
  br label %143

107:                                              ; preds = %96
  br label %90

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %73
  store i32 0, i32* %7, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @SYS_RES_IRQ, align 4
  %112 = load i32, i32* @RF_ACTIVE, align 4
  %113 = load i32, i32* @RF_SHAREABLE, align 4
  %114 = or i32 %112, %113
  %115 = call i8* @bus_alloc_resource_any(i32 %110, i32 %111, i32* %7, i32 %114)
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %118 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %117, i32 0, i32 2
  store i32* %116, i32** %118, align 8
  %119 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %120 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %109
  %124 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %109
  %126 = load i32, i32* %3, align 4
  %127 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  %128 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* @INTR_TYPE_MISC, align 4
  %131 = load i32, i32* @INTR_MPSAFE, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @ti_sdma_intr, align 4
  %134 = call i32 @bus_setup_intr(i32 %126, i32* %129, i32 %132, i32* null, i32 %133, i32* null, i8** %8)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %125
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @device_get_name(i32 %138)
  %140 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %137, %125
  %142 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %4, align 8
  store %struct.ti_sdma_softc* %142, %struct.ti_sdma_softc** @ti_sdma_sc, align 8
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %141, %101, %54
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.ti_sdma_softc* @device_get_softc(i32) #1

declare dso_local i32 @TI_SDMA_LOCK_INIT(%struct.ti_sdma_softc*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @ti_prcm_clk_enable(i32) #1

declare dso_local i32 @ti_sdma_read_4(%struct.ti_sdma_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ti_sdma_is_omap4_rev(%struct.ti_sdma_softc*) #1

declare dso_local i64 @ti_sdma_is_omap3_rev(%struct.ti_sdma_softc*) #1

declare dso_local i32 @ti_sdma_write_4(%struct.ti_sdma_softc*, i32, i32) #1

declare dso_local i32 @DMA4_IRQENABLE_L(i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
