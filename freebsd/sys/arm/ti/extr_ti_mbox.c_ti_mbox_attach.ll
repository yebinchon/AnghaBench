; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_mbox.c_ti_mbox_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_mbox.c_ti_mbox_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_mbox_softc = type { i32, i32*, i32*, i32, i32, i32 }

@MAILBOX0_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not enable MBOX clock\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"TI mbox\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"could not allocate interrupt resource\0A\00", align 1
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@ti_mbox_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"unable to setup the interrupt handler\0A\00", align 1
@TI_MBOX_SYSCONFIG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"initial sysconfig %d\0A\00", align 1
@TI_MBOX_SYSCONFIG_SOFTRST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"controller reset failed\0A\00", align 1
@TI_MBOX_SYSCONFIG_SMARTIDLE = common dso_local global i32 0, align 4
@TI_MBOX_REVISION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"rev %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"revision %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_mbox_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_mbox_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_mbox_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @MAILBOX0_CLK, align 4
  %11 = call i64 @ti_prcm_clk_enable(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i32, i8*, ...) @device_printf(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %151

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.ti_mbox_softc* @device_get_softc(i32 %18)
  store %struct.ti_mbox_softc* %19, %struct.ti_mbox_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %20 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ti_mbox_softc, %struct.ti_mbox_softc* %20, i32 0, i32 5
  %22 = load i32, i32* @MTX_DEF, align 4
  %23 = call i32 @mtx_init(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SYS_RES_MEMORY, align 4
  %26 = load i32, i32* @RF_ACTIVE, align 4
  %27 = call i8* @bus_alloc_resource_any(i32 %24, i32 %25, i32* %5, i32 %26)
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ti_mbox_softc, %struct.ti_mbox_softc* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ti_mbox_softc, %struct.ti_mbox_softc* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %17
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i32, i8*, ...) @device_printf(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %151

39:                                               ; preds = %17
  %40 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ti_mbox_softc, %struct.ti_mbox_softc* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @rman_get_bustag(i32* %42)
  %44 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ti_mbox_softc, %struct.ti_mbox_softc* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %47 = getelementptr inbounds %struct.ti_mbox_softc, %struct.ti_mbox_softc* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @rman_get_bushandle(i32* %48)
  %50 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %51 = getelementptr inbounds %struct.ti_mbox_softc, %struct.ti_mbox_softc* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %5, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SYS_RES_IRQ, align 4
  %54 = load i32, i32* @RF_ACTIVE, align 4
  %55 = call i8* @bus_alloc_resource_any(i32 %52, i32 %53, i32* %5, i32 %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %58 = getelementptr inbounds %struct.ti_mbox_softc, %struct.ti_mbox_softc* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %60 = getelementptr inbounds %struct.ti_mbox_softc, %struct.ti_mbox_softc* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %39
  %64 = load i32, i32* %3, align 4
  %65 = call i32 (i32, i8*, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @ti_mbox_detach(i32 %66)
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %2, align 4
  br label %151

69:                                               ; preds = %39
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %72 = getelementptr inbounds %struct.ti_mbox_softc, %struct.ti_mbox_softc* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @INTR_MPSAFE, align 4
  %75 = load i32, i32* @INTR_TYPE_MISC, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @ti_mbox_intr, align 4
  %78 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %79 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %80 = getelementptr inbounds %struct.ti_mbox_softc, %struct.ti_mbox_softc* %79, i32 0, i32 0
  %81 = call i64 @bus_setup_intr(i32 %70, i32* %73, i32 %76, i32* null, i32 %77, %struct.ti_mbox_softc* %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %69
  %84 = load i32, i32* %3, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @ti_mbox_detach(i32 %86)
  %88 = load i32, i32* @ENXIO, align 4
  store i32 %88, i32* %2, align 4
  br label %151

89:                                               ; preds = %69
  %90 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %91 = load i32, i32* @TI_MBOX_SYSCONFIG, align 4
  %92 = call i32 @ti_mbox_reg_read(%struct.ti_mbox_softc* %90, i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @TI_MBOX_SYSCONFIG_SOFTRST, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  store i32 100, i32* %6, align 4
  br label %98

98:                                               ; preds = %105, %89
  %99 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %100 = load i32, i32* @TI_MBOX_SYSCONFIG, align 4
  %101 = call i32 @ti_mbox_reg_read(%struct.ti_mbox_softc* %99, i32 %100)
  %102 = load i32, i32* @TI_MBOX_SYSCONFIG_SOFTRST, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %6, align 4
  %108 = call i32 @DELAY(i32 10)
  br label %98

109:                                              ; preds = %98
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %3, align 4
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @ti_mbox_detach(i32 %115)
  %117 = load i32, i32* @ENXIO, align 4
  store i32 %117, i32* %2, align 4
  br label %151

118:                                              ; preds = %109
  %119 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %120 = load i32, i32* @TI_MBOX_SYSCONFIG, align 4
  %121 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %122 = load i32, i32* @TI_MBOX_SYSCONFIG, align 4
  %123 = call i32 @ti_mbox_reg_read(%struct.ti_mbox_softc* %121, i32 %122)
  %124 = load i32, i32* @TI_MBOX_SYSCONFIG_SMARTIDLE, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @ti_mbox_reg_write(%struct.ti_mbox_softc* %119, i32 %120, i32 %125)
  %127 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %128 = load i32, i32* @TI_MBOX_REVISION, align 4
  %129 = call i32 @ti_mbox_reg_read(%struct.ti_mbox_softc* %127, i32 %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @DPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* %8, align 4
  %134 = ashr i32 %133, 8
  %135 = and i32 %134, 4
  %136 = load i32, i32* %8, align 4
  %137 = and i32 %136, 64
  %138 = call i32 (i32, i8*, ...) @device_printf(i32 %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %135, i32 %137)
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %147, %118
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 8
  br i1 %141, label %142, label %150

142:                                              ; preds = %139
  %143 = load %struct.ti_mbox_softc*, %struct.ti_mbox_softc** %4, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @TI_MBOX_IRQENABLE_SET(i32 %144)
  %146 = call i32 @ti_mbox_reg_write(%struct.ti_mbox_softc* %143, i32 %145, i32 1)
  br label %147

147:                                              ; preds = %142
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %139

150:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %112, %83, %63, %35, %13
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i64 @ti_prcm_clk_enable(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.ti_mbox_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @ti_mbox_detach(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ti_mbox_softc*, i32*) #1

declare dso_local i32 @ti_mbox_reg_read(%struct.ti_mbox_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ti_mbox_reg_write(%struct.ti_mbox_softc*, i32, i32) #1

declare dso_local i32 @TI_MBOX_IRQENABLE_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
