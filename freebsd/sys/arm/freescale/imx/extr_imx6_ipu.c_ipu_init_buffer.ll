; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_init_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_init_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ipu_cpmem_ch_param = type { i32 }

@MODE_BPP = common dso_local global i32 0, align 4
@IPU_PIX_FORMAT_BPP_16 = common dso_local global i32 0, align 4
@IPU_PIX_FORMAT_RGB = common dso_local global i32 0, align 4
@DMA_CHANNEL = common dso_local global i32 0, align 4
@DMFC_IC_CTRL = common dso_local global i32 0, align 4
@DMFC_IC_CTRL_DISABLED = common dso_local global i64 0, align 8
@DMFC_WR_CHAN = common dso_local global i32 0, align 4
@DMFC_WR_CHAN_BURST_SIZE_8 = common dso_local global i64 0, align 8
@DMFC_WR_CHAN_FIFO_SIZE_128 = common dso_local global i64 0, align 8
@DMFC_WR_CHAN_DEF = common dso_local global i32 0, align 4
@DMFC_WR_CHAN_DEF_WM_EN_1 = common dso_local global i64 0, align 8
@DMFC_DP_CHAN = common dso_local global i32 0, align 4
@DMFC_DP_CHAN_BURST_SIZE_8 = common dso_local global i32 0, align 4
@DMFC_DP_CHAN_FIFO_SIZE_128 = common dso_local global i32 0, align 4
@DMFC_DP_CHAN_FIFO_SIZE_256 = common dso_local global i32 0, align 4
@DMFC_DP_CHAN_DEF = common dso_local global i32 0, align 4
@DMFC_DP_CHAN_DEF_WM_EN_5F = common dso_local global i64 0, align 8
@DMFC_DP_CHAN_DEF_WM_EN_5B = common dso_local global i64 0, align 8
@DMFC_GENERAL_1 = common dso_local global i32 0, align 4
@DMFC_GENERAL_1_WAIT4EOT_5B = common dso_local global i32 0, align 4
@IPU_CH_DB_MODE_SEL_0 = common dso_local global i32 0, align 4
@IPU_CUR_BUF_0 = common dso_local global i32 0, align 4
@IPU_CH_DB_MODE_SEL_1 = common dso_local global i32 0, align 4
@IPU_CUR_BUF_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_softc*)* @ipu_init_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_init_buffer(%struct.ipu_softc* %0) #0 {
  %2 = alloca %struct.ipu_softc*, align 8
  %3 = alloca %struct.ipu_cpmem_ch_param, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipu_softc* %0, %struct.ipu_softc** %2, align 8
  %8 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MODE_BPP, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sdiv i32 %14, 8
  store i32 %15, i32* %4, align 4
  %16 = call i32 @CH_PARAM_RESET(%struct.ipu_cpmem_ch_param* %3)
  %17 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @CH_PARAM_SET_FW(%struct.ipu_cpmem_ch_param* %3, i32 %22)
  %24 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @CH_PARAM_SET_FH(%struct.ipu_cpmem_ch_param* %3, i64 %29)
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @CH_PARAM_SET_SLY(%struct.ipu_cpmem_ch_param* %3, i32 %32)
  %34 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 3
  %38 = call i32 @CH_PARAM_SET_EBA0(%struct.ipu_cpmem_ch_param* %3, i32 %37)
  %39 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %41, 3
  %43 = call i32 @CH_PARAM_SET_EBA1(%struct.ipu_cpmem_ch_param* %3, i32 %42)
  %44 = load i32, i32* @IPU_PIX_FORMAT_BPP_16, align 4
  %45 = call i32 @CH_PARAM_SET_BPP(%struct.ipu_cpmem_ch_param* %3, i32 %44)
  %46 = load i32, i32* @IPU_PIX_FORMAT_RGB, align 4
  %47 = call i32 @CH_PARAM_SET_PFS(%struct.ipu_cpmem_ch_param* %3, i32 %46)
  %48 = call i32 @CH_PARAM_SET_NPB(%struct.ipu_cpmem_ch_param* %3, i32 15)
  %49 = call i32 @CH_PARAM_SET_RED_OFFSET(%struct.ipu_cpmem_ch_param* %3, i32 0)
  %50 = call i32 @CH_PARAM_SET_RED_WIDTH(%struct.ipu_cpmem_ch_param* %3, i32 4)
  %51 = call i32 @CH_PARAM_SET_GREEN_OFFSET(%struct.ipu_cpmem_ch_param* %3, i32 5)
  %52 = call i32 @CH_PARAM_SET_GREEN_WIDTH(%struct.ipu_cpmem_ch_param* %3, i32 5)
  %53 = call i32 @CH_PARAM_SET_BLUE_OFFSET(%struct.ipu_cpmem_ch_param* %3, i32 11)
  %54 = call i32 @CH_PARAM_SET_BLUE_WIDTH(%struct.ipu_cpmem_ch_param* %3, i32 4)
  %55 = call i32 @CH_PARAM_SET_ALPHA_OFFSET(%struct.ipu_cpmem_ch_param* %3, i32 16)
  %56 = call i32 @CH_PARAM_SET_ALPHA_WIDTH(%struct.ipu_cpmem_ch_param* %3, i32 7)
  %57 = call i32 @CH_PARAM_SET_UBO(%struct.ipu_cpmem_ch_param* %3, i32 0)
  %58 = call i32 @CH_PARAM_SET_VBO(%struct.ipu_cpmem_ch_param* %3, i32 0)
  %59 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %60 = load i32, i32* @DMA_CHANNEL, align 4
  %61 = call i32 @IPU_WRITE_CH_PARAM(%struct.ipu_softc* %59, i32 %60, %struct.ipu_cpmem_ch_param* %3)
  %62 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %63 = load i32, i32* @DMFC_IC_CTRL, align 4
  %64 = load i64, i64* @DMFC_IC_CTRL_DISABLED, align 8
  %65 = call i32 @IPU_WRITE4(%struct.ipu_softc* %62, i32 %63, i64 %64)
  %66 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %67 = load i32, i32* @DMFC_WR_CHAN, align 4
  %68 = load i64, i64* @DMFC_WR_CHAN_BURST_SIZE_8, align 8
  %69 = load i64, i64* @DMFC_WR_CHAN_FIFO_SIZE_128, align 8
  %70 = or i64 %68, %69
  %71 = call i32 @IPU_WRITE4(%struct.ipu_softc* %66, i32 %67, i64 %70)
  %72 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %73 = load i32, i32* @DMFC_WR_CHAN_DEF, align 4
  %74 = call i64 @DMFC_WR_CHAN_DEF_WM_CLR_2C(i32 1)
  %75 = call i64 @DMFC_WR_CHAN_DEF_WM_CLR_1C(i32 1)
  %76 = or i64 %74, %75
  %77 = call i64 @DMFC_WR_CHAN_DEF_WM_CLR_2(i32 1)
  %78 = or i64 %76, %77
  %79 = call i64 @DMFC_WR_CHAN_DEF_WM_CLR_1(i32 7)
  %80 = or i64 %78, %79
  %81 = call i64 @DMFC_WR_CHAN_DEF_WM_SET_1(i32 5)
  %82 = or i64 %80, %81
  %83 = load i64, i64* @DMFC_WR_CHAN_DEF_WM_EN_1, align 8
  %84 = or i64 %82, %83
  %85 = call i32 @IPU_WRITE4(%struct.ipu_softc* %72, i32 %73, i64 %84)
  %86 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %87 = load i32, i32* @DMFC_DP_CHAN, align 4
  %88 = load i32, i32* @DMFC_DP_CHAN_BURST_SIZE_8, align 4
  %89 = call i64 @DMFC_DP_CHAN_BURST_SIZE_5F(i32 %88)
  %90 = load i32, i32* @DMFC_DP_CHAN_FIFO_SIZE_128, align 4
  %91 = call i64 @DMFC_DP_CHAN_FIFO_SIZE_5F(i32 %90)
  %92 = or i64 %89, %91
  %93 = call i64 @DMFC_DP_CHAN_ST_ADDR_SIZE_5F(i32 6)
  %94 = or i64 %92, %93
  %95 = load i32, i32* @DMFC_DP_CHAN_BURST_SIZE_8, align 4
  %96 = call i64 @DMFC_DP_CHAN_BURST_SIZE_5B(i32 %95)
  %97 = or i64 %94, %96
  %98 = load i32, i32* @DMFC_DP_CHAN_FIFO_SIZE_256, align 4
  %99 = call i64 @DMFC_DP_CHAN_FIFO_SIZE_5B(i32 %98)
  %100 = or i64 %97, %99
  %101 = call i64 @DMFC_DP_CHAN_ST_ADDR_SIZE_5B(i32 2)
  %102 = or i64 %100, %101
  %103 = call i32 @IPU_WRITE4(%struct.ipu_softc* %86, i32 %87, i64 %102)
  %104 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %105 = load i32, i32* @DMFC_DP_CHAN_DEF, align 4
  %106 = call i64 @DMFC_DP_CHAN_DEF_WM_CLR_6F(i32 1)
  %107 = call i64 @DMFC_DP_CHAN_DEF_WM_CLR_6B(i32 1)
  %108 = or i64 %106, %107
  %109 = call i64 @DMFC_DP_CHAN_DEF_WM_CLR_5F(i32 7)
  %110 = or i64 %108, %109
  %111 = call i64 @DMFC_DP_CHAN_DEF_WM_SET_5F(i32 5)
  %112 = or i64 %110, %111
  %113 = load i64, i64* @DMFC_DP_CHAN_DEF_WM_EN_5F, align 8
  %114 = or i64 %112, %113
  %115 = call i64 @DMFC_DP_CHAN_DEF_WM_CLR_5B(i32 7)
  %116 = or i64 %114, %115
  %117 = call i64 @DMFC_DP_CHAN_DEF_WM_SET_5B(i32 5)
  %118 = or i64 %116, %117
  %119 = load i64, i64* @DMFC_DP_CHAN_DEF_WM_EN_5B, align 8
  %120 = or i64 %118, %119
  %121 = call i32 @IPU_WRITE4(%struct.ipu_softc* %104, i32 %105, i64 %120)
  %122 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %123 = load i32, i32* @DMFC_GENERAL_1, align 4
  %124 = call i32 @IPU_READ4(%struct.ipu_softc* %122, i32 %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* @DMFC_GENERAL_1_WAIT4EOT_5B, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %5, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %130 = load i32, i32* @DMFC_GENERAL_1, align 4
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = call i32 @IPU_WRITE4(%struct.ipu_softc* %129, i32 %130, i64 %132)
  %134 = load i32, i32* @DMA_CHANNEL, align 4
  %135 = icmp slt i32 %134, 32
  br i1 %135, label %136, label %139

136:                                              ; preds = %1
  %137 = load i32, i32* @IPU_CH_DB_MODE_SEL_0, align 4
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* @IPU_CUR_BUF_0, align 4
  store i32 %138, i32* %7, align 4
  br label %142

139:                                              ; preds = %1
  %140 = load i32, i32* @IPU_CH_DB_MODE_SEL_1, align 4
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* @IPU_CUR_BUF_1, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @IPU_READ4(%struct.ipu_softc* %143, i32 %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* @DMA_CHANNEL, align 4
  %147 = and i32 %146, 31
  %148 = zext i32 %147 to i64
  %149 = shl i64 1, %148
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = or i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %5, align 4
  %154 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = call i32 @IPU_WRITE4(%struct.ipu_softc* %154, i32 %155, i64 %157)
  %159 = load %struct.ipu_softc*, %struct.ipu_softc** %2, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @DMA_CHANNEL, align 4
  %162 = and i32 %161, 31
  %163 = zext i32 %162 to i64
  %164 = shl i64 1, %163
  %165 = call i32 @IPU_WRITE4(%struct.ipu_softc* %159, i32 %160, i64 %164)
  ret void
}

declare dso_local i32 @CH_PARAM_RESET(%struct.ipu_cpmem_ch_param*) #1

declare dso_local i32 @CH_PARAM_SET_FW(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_FH(%struct.ipu_cpmem_ch_param*, i64) #1

declare dso_local i32 @CH_PARAM_SET_SLY(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_EBA0(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_EBA1(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_BPP(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_PFS(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_NPB(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_RED_OFFSET(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_RED_WIDTH(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_GREEN_OFFSET(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_GREEN_WIDTH(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_BLUE_OFFSET(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_BLUE_WIDTH(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_ALPHA_OFFSET(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_ALPHA_WIDTH(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_UBO(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @CH_PARAM_SET_VBO(%struct.ipu_cpmem_ch_param*, i32) #1

declare dso_local i32 @IPU_WRITE_CH_PARAM(%struct.ipu_softc*, i32, %struct.ipu_cpmem_ch_param*) #1

declare dso_local i32 @IPU_WRITE4(%struct.ipu_softc*, i32, i64) #1

declare dso_local i64 @DMFC_WR_CHAN_DEF_WM_CLR_2C(i32) #1

declare dso_local i64 @DMFC_WR_CHAN_DEF_WM_CLR_1C(i32) #1

declare dso_local i64 @DMFC_WR_CHAN_DEF_WM_CLR_2(i32) #1

declare dso_local i64 @DMFC_WR_CHAN_DEF_WM_CLR_1(i32) #1

declare dso_local i64 @DMFC_WR_CHAN_DEF_WM_SET_1(i32) #1

declare dso_local i64 @DMFC_DP_CHAN_BURST_SIZE_5F(i32) #1

declare dso_local i64 @DMFC_DP_CHAN_FIFO_SIZE_5F(i32) #1

declare dso_local i64 @DMFC_DP_CHAN_ST_ADDR_SIZE_5F(i32) #1

declare dso_local i64 @DMFC_DP_CHAN_BURST_SIZE_5B(i32) #1

declare dso_local i64 @DMFC_DP_CHAN_FIFO_SIZE_5B(i32) #1

declare dso_local i64 @DMFC_DP_CHAN_ST_ADDR_SIZE_5B(i32) #1

declare dso_local i64 @DMFC_DP_CHAN_DEF_WM_CLR_6F(i32) #1

declare dso_local i64 @DMFC_DP_CHAN_DEF_WM_CLR_6B(i32) #1

declare dso_local i64 @DMFC_DP_CHAN_DEF_WM_CLR_5F(i32) #1

declare dso_local i64 @DMFC_DP_CHAN_DEF_WM_SET_5F(i32) #1

declare dso_local i64 @DMFC_DP_CHAN_DEF_WM_CLR_5B(i32) #1

declare dso_local i64 @DMFC_DP_CHAN_DEF_WM_SET_5B(i32) #1

declare dso_local i32 @IPU_READ4(%struct.ipu_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
