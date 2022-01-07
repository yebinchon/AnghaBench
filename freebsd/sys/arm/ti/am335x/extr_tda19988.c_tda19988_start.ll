; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda19988_softc = type { i32, i32 }

@TDA_CEC_ENAMODS = common dso_local global i32 0, align 4
@ENAMODS_RXSENS = common dso_local global i32 0, align 4
@ENAMODS_HDMI = common dso_local global i32 0, align 4
@TDA_SOFTRESET = common dso_local global i32 0, align 4
@TDA_MAIN_CNTRL0 = common dso_local global i32 0, align 4
@MAIN_CNTRL0_SR = common dso_local global i32 0, align 4
@TDA_PLL_SERIAL_1 = common dso_local global i32 0, align 4
@TDA_PLL_SERIAL_2 = common dso_local global i32 0, align 4
@TDA_PLL_SERIAL_3 = common dso_local global i32 0, align 4
@TDA_SERIALIZER = common dso_local global i32 0, align 4
@TDA_BUFFER_OUT = common dso_local global i32 0, align 4
@TDA_PLL_SCG1 = common dso_local global i32 0, align 4
@TDA_SEL_CLK = common dso_local global i32 0, align 4
@SEL_CLK_SEL_CLK1 = common dso_local global i32 0, align 4
@SEL_CLK_ENA_SC_CLK = common dso_local global i32 0, align 4
@TDA_PLL_SCGN1 = common dso_local global i32 0, align 4
@TDA_PLL_SCGN2 = common dso_local global i32 0, align 4
@TDA_PLL_SCGR1 = common dso_local global i32 0, align 4
@TDA_PLL_SCGR2 = common dso_local global i32 0, align 4
@TDA_PLL_SCG2 = common dso_local global i32 0, align 4
@TDA_MUX_VP_VIP_OUT = common dso_local global i32 0, align 4
@TDA_VERSION = common dso_local global i32 0, align 4
@TDA_VERSION_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"TDA19988\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown device: %04x\0A\00", align 1
@TDA_DDC_CTRL = common dso_local global i32 0, align 4
@DDC_ENABLE = common dso_local global i32 0, align 4
@TDA_TX3 = common dso_local global i32 0, align 4
@TDA_CEC_FRO_IM_CLK_CTRL = common dso_local global i32 0, align 4
@CEC_FRO_IM_CLK_CTRL_GHOST_DIS = common dso_local global i32 0, align 4
@CEC_FRO_IM_CLK_CTRL_IMCLK_SEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to read EDID\0A\00", align 1
@TDA_VIP_CNTRL_0 = common dso_local global i32 0, align 4
@TDA_VIP_CNTRL_1 = common dso_local global i32 0, align 4
@TDA_VIP_CNTRL_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda19988_softc*)* @tda19988_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda19988_start(%struct.tda19988_softc* %0) #0 {
  %2 = alloca %struct.tda19988_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tda19988_softc* %0, %struct.tda19988_softc** %2, align 8
  %6 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %7 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %10 = load i32, i32* @TDA_CEC_ENAMODS, align 4
  %11 = load i32, i32* @ENAMODS_RXSENS, align 4
  %12 = load i32, i32* @ENAMODS_HDMI, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @tda19988_cec_write(%struct.tda19988_softc* %9, i32 %10, i32 %13)
  %15 = call i32 @DELAY(i32 1000)
  %16 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %17 = call i32 @tda19988_cec_read(%struct.tda19988_softc* %16, i32 254, i32* %4)
  %18 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %19 = load i32, i32* @TDA_SOFTRESET, align 4
  %20 = call i32 @tda19988_reg_set(%struct.tda19988_softc* %18, i32 %19, i32 3)
  %21 = call i32 @DELAY(i32 100)
  %22 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %23 = load i32, i32* @TDA_SOFTRESET, align 4
  %24 = call i32 @tda19988_reg_clear(%struct.tda19988_softc* %22, i32 %23, i32 3)
  %25 = call i32 @DELAY(i32 100)
  %26 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %27 = load i32, i32* @TDA_MAIN_CNTRL0, align 4
  %28 = load i32, i32* @MAIN_CNTRL0_SR, align 4
  %29 = call i32 @tda19988_reg_set(%struct.tda19988_softc* %26, i32 %27, i32 %28)
  %30 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %31 = load i32, i32* @TDA_MAIN_CNTRL0, align 4
  %32 = load i32, i32* @MAIN_CNTRL0_SR, align 4
  %33 = call i32 @tda19988_reg_clear(%struct.tda19988_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %35 = load i32, i32* @TDA_PLL_SERIAL_1, align 4
  %36 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %34, i32 %35, i32 0)
  %37 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %38 = load i32, i32* @TDA_PLL_SERIAL_2, align 4
  %39 = call i32 @PLL_SERIAL_2_SRL_NOSC(i32 1)
  %40 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %42 = load i32, i32* @TDA_PLL_SERIAL_3, align 4
  %43 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %41, i32 %42, i32 0)
  %44 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %45 = load i32, i32* @TDA_SERIALIZER, align 4
  %46 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %44, i32 %45, i32 0)
  %47 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %48 = load i32, i32* @TDA_BUFFER_OUT, align 4
  %49 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %47, i32 %48, i32 0)
  %50 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %51 = load i32, i32* @TDA_PLL_SCG1, align 4
  %52 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %50, i32 %51, i32 0)
  %53 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %54 = load i32, i32* @TDA_SEL_CLK, align 4
  %55 = load i32, i32* @SEL_CLK_SEL_CLK1, align 4
  %56 = load i32, i32* @SEL_CLK_ENA_SC_CLK, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %53, i32 %54, i32 %57)
  %59 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %60 = load i32, i32* @TDA_PLL_SCGN1, align 4
  %61 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %59, i32 %60, i32 250)
  %62 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %63 = load i32, i32* @TDA_PLL_SCGN2, align 4
  %64 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %62, i32 %63, i32 0)
  %65 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %66 = load i32, i32* @TDA_PLL_SCGR1, align 4
  %67 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %65, i32 %66, i32 91)
  %68 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %69 = load i32, i32* @TDA_PLL_SCGR2, align 4
  %70 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %68, i32 %69, i32 0)
  %71 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %72 = load i32, i32* @TDA_PLL_SCG2, align 4
  %73 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %71, i32 %72, i32 16)
  %74 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %75 = load i32, i32* @TDA_MUX_VP_VIP_OUT, align 4
  %76 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %74, i32 %75, i32 36)
  store i32 0, i32* %5, align 4
  %77 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %78 = load i32, i32* @TDA_VERSION, align 4
  %79 = call i32 @tda19988_reg_read(%struct.tda19988_softc* %77, i32 %78, i32* %4)
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %84 = load i32, i32* @TDA_VERSION_MSB, align 4
  %85 = call i32 @tda19988_reg_read(%struct.tda19988_softc* %83, i32 %84, i32* %4)
  %86 = load i32, i32* %4, align 4
  %87 = shl i32 %86, 8
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = and i32 %90, -49
  %92 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %93 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %95 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %100 [
    i32 128, label %97
  ]

97:                                               ; preds = %1
  %98 = load i32, i32* %3, align 4
  %99 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %106

100:                                              ; preds = %1
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %103 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %136

106:                                              ; preds = %97
  %107 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %108 = load i32, i32* @TDA_DDC_CTRL, align 4
  %109 = load i32, i32* @DDC_ENABLE, align 4
  %110 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %107, i32 %108, i32 %109)
  %111 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %112 = load i32, i32* @TDA_TX3, align 4
  %113 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %111, i32 %112, i32 39)
  %114 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %115 = load i32, i32* @TDA_CEC_FRO_IM_CLK_CTRL, align 4
  %116 = load i32, i32* @CEC_FRO_IM_CLK_CTRL_GHOST_DIS, align 4
  %117 = load i32, i32* @CEC_FRO_IM_CLK_CTRL_IMCLK_SEL, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @tda19988_cec_write(%struct.tda19988_softc* %114, i32 %115, i32 %118)
  %120 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %121 = call i64 @tda19988_read_edid(%struct.tda19988_softc* %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %106
  %124 = load i32, i32* %3, align 4
  %125 = call i32 (i32, i8*, ...) @device_printf(i32 %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %136

126:                                              ; preds = %106
  %127 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %128 = load i32, i32* @TDA_VIP_CNTRL_0, align 4
  %129 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %127, i32 %128, i32 35)
  %130 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %131 = load i32, i32* @TDA_VIP_CNTRL_1, align 4
  %132 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %130, i32 %131, i32 1)
  %133 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %134 = load i32, i32* @TDA_VIP_CNTRL_2, align 4
  %135 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %133, i32 %134, i32 69)
  br label %136

136:                                              ; preds = %126, %123, %100
  ret void
}

declare dso_local i32 @tda19988_cec_write(%struct.tda19988_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @tda19988_cec_read(%struct.tda19988_softc*, i32, i32*) #1

declare dso_local i32 @tda19988_reg_set(%struct.tda19988_softc*, i32, i32) #1

declare dso_local i32 @tda19988_reg_clear(%struct.tda19988_softc*, i32, i32) #1

declare dso_local i32 @tda19988_reg_write(%struct.tda19988_softc*, i32, i32) #1

declare dso_local i32 @PLL_SERIAL_2_SRL_NOSC(i32) #1

declare dso_local i32 @tda19988_reg_read(%struct.tda19988_softc*, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @tda19988_read_edid(%struct.tda19988_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
