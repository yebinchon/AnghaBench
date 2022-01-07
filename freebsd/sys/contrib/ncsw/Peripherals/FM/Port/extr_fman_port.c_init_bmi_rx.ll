; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_init_bmi_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_init_bmi_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fman_port_rx_bmi_regs }
%struct.fman_port_rx_bmi_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fman_port_cfg = type { i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fman_port_params = type { i32, i32, i32, i32 }

@BMI_PORT_CFG_IM = common dso_local global i32 0, align 4
@BMI_PORT_CFG_FDOVR = common dso_local global i32 0, align 4
@BMI_DMA_ATTR_SWP_SHIFT = common dso_local global i32 0, align 4
@BMI_DMA_ATTR_IC_STASH_ON = common dso_local global i32 0, align 4
@BMI_DMA_ATTR_HDR_STASH_ON = common dso_local global i32 0, align 4
@BMI_DMA_ATTR_SG_STASH_ON = common dso_local global i32 0, align 4
@BMI_DMA_ATTR_WRITE_OPTIMIZE = common dso_local global i32 0, align 4
@FMAN_PORT_BMI_FIFO_UNITS = common dso_local global i32 0, align 4
@BMI_RX_FIFO_PRI_ELEVATION_SHIFT = common dso_local global i32 0, align 4
@BMI_RX_FIFO_THRESHOLD_ETHE = common dso_local global i32 0, align 4
@BMI_RX_FRAME_END_CS_IGNORE_SHIFT = common dso_local global i32 0, align 4
@BMI_RX_FRAME_END_CUT_SHIFT = common dso_local global i32 0, align 4
@FMAN_PORT_IC_OFFSET_UNITS = common dso_local global i32 0, align 4
@BMI_IC_TO_EXT_SHIFT = common dso_local global i32 0, align 4
@BMI_IC_FROM_INT_SHIFT = common dso_local global i32 0, align 4
@BMI_INT_BUF_MARG_SHIFT = common dso_local global i32 0, align 4
@BMI_EXT_BUF_MARG_START_SHIFT = common dso_local global i32 0, align 4
@BMI_SG_DISABLE = common dso_local global i32 0, align 4
@BMI_CMD_RX_MR_DEF = common dso_local global i32 0, align 4
@BMI_CMD_ATTR_ORDER = common dso_local global i32 0, align 4
@BMI_CMD_ATTR_COLOR_SHIFT = common dso_local global i32 0, align 4
@BMI_CMD_ATTR_SYNC = common dso_local global i32 0, align 4
@NIA_ENG_FM_CTL = common dso_local global i32 0, align 4
@NIA_FM_CTL_AC_IND_MODE_RX = common dso_local global i32 0, align 4
@BMI_NEXT_ENG_FD_BITS_SHIFT = common dso_local global i32 0, align 4
@NIA_ENG_QMI_ENQ = common dso_local global i32 0, align 4
@NIA_ORDER_RESTOR = common dso_local global i32 0, align 4
@BMI_COUNTERS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fman_port*, %struct.fman_port_cfg*, %struct.fman_port_params*)* @init_bmi_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_bmi_rx(%struct.fman_port* %0, %struct.fman_port_cfg* %1, %struct.fman_port_params* %2) #0 {
  %4 = alloca %struct.fman_port*, align 8
  %5 = alloca %struct.fman_port_cfg*, align 8
  %6 = alloca %struct.fman_port_params*, align 8
  %7 = alloca %struct.fman_port_rx_bmi_regs*, align 8
  %8 = alloca i32, align 4
  store %struct.fman_port* %0, %struct.fman_port** %4, align 8
  store %struct.fman_port_cfg* %1, %struct.fman_port_cfg** %5, align 8
  store %struct.fman_port_params* %2, %struct.fman_port_params** %6, align 8
  %9 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %10 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.fman_port_rx_bmi_regs* %12, %struct.fman_port_rx_bmi_regs** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %14 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @BMI_PORT_CFG_IM, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %31

21:                                               ; preds = %3
  %22 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %22, i32 0, i32 25
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @BMI_PORT_CFG_FDOVR, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %26, %21
  br label %31

31:                                               ; preds = %30, %17
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %34 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %33, i32 0, i32 16
  %35 = call i32 @iowrite32be(i32 %32, i32* %34)
  %36 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %37 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %36, i32 0, i32 24
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @BMI_DMA_ATTR_SWP_SHIFT, align 4
  %41 = shl i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %43 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %42, i32 0, i32 23
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load i32, i32* @BMI_DMA_ATTR_IC_STASH_ON, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %31
  %51 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %52 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %51, i32 0, i32 22
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @BMI_DMA_ATTR_HDR_STASH_ON, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %61 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %60, i32 0, i32 21
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @BMI_DMA_ATTR_SG_STASH_ON, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %70 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %69, i32 0, i32 20
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @BMI_DMA_ATTR_WRITE_OPTIMIZE, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %80 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %79, i32 0, i32 15
  %81 = call i32 @iowrite32be(i32 %78, i32* %80)
  %82 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %83 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @FMAN_PORT_BMI_FIFO_UNITS, align 4
  %86 = sdiv i32 %84, %85
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* @BMI_RX_FIFO_PRI_ELEVATION_SHIFT, align 4
  %89 = shl i32 %87, %88
  store i32 %89, i32* %8, align 4
  %90 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %91 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @FMAN_PORT_BMI_FIFO_UNITS, align 4
  %94 = sdiv i32 %92, %93
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %100 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %99, i32 0, i32 14
  %101 = call i32 @iowrite32be(i32 %98, i32* %100)
  %102 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %103 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %102, i32 0, i32 19
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %77
  %107 = load i32, i32* @BMI_RX_FIFO_THRESHOLD_ETHE, align 4
  %108 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %109 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %108, i32 0, i32 13
  %110 = call i32 @iowrite32be(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %106, %77
  %112 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %113 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %112, i32 0, i32 18
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i32, i32* @BMI_RX_FRAME_END_CS_IGNORE_SHIFT, align 4
  %117 = shl i32 %115, %116
  store i32 %117, i32* %8, align 4
  %118 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %119 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %118, i32 0, i32 17
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* @BMI_RX_FRAME_END_CUT_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %127 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %126, i32 0, i32 16
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %111
  %131 = load i32, i32* %8, align 4
  %132 = and i32 %131, -2031617
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %130, %111
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %136 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %135, i32 0, i32 12
  %137 = call i32 @iowrite32be(i32 %134, i32* %136)
  %138 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %139 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %138, i32 0, i32 15
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = load i32, i32* @FMAN_PORT_IC_OFFSET_UNITS, align 4
  %143 = sdiv i32 %141, %142
  %144 = load i32, i32* @BMI_IC_TO_EXT_SHIFT, align 4
  %145 = shl i32 %143, %144
  store i32 %145, i32* %8, align 4
  %146 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %147 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %146, i32 0, i32 14
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* @FMAN_PORT_IC_OFFSET_UNITS, align 4
  %151 = sdiv i32 %149, %150
  %152 = load i32, i32* @BMI_IC_FROM_INT_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %8, align 4
  %156 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %157 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @FMAN_PORT_IC_OFFSET_UNITS, align 4
  %160 = sdiv i32 %158, %159
  %161 = load i32, i32* %8, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %165 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %164, i32 0, i32 11
  %166 = call i32 @iowrite32be(i32 %163, i32* %165)
  %167 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %168 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %167, i32 0, i32 13
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = load i32, i32* @FMAN_PORT_IC_OFFSET_UNITS, align 4
  %172 = sdiv i32 %170, %171
  %173 = load i32, i32* @BMI_INT_BUF_MARG_SHIFT, align 4
  %174 = shl i32 %172, %173
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %177 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %176, i32 0, i32 10
  %178 = call i32 @iowrite32be(i32 %175, i32* %177)
  %179 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %180 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %214, label %183

183:                                              ; preds = %133
  %184 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %185 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %184, i32 0, i32 12
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = load i32, i32* @BMI_EXT_BUF_MARG_START_SHIFT, align 4
  %189 = shl i32 %187, %188
  store i32 %189, i32* %8, align 4
  %190 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %191 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %190, i32 0, i32 11
  %192 = load i64, i64* %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = load i32, i32* %8, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %8, align 4
  %196 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %197 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %196, i32 0, i32 10
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %183
  %201 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %202 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %201, i32 0, i32 9
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load i32, i32* @BMI_SG_DISABLE, align 4
  %207 = load i32, i32* %8, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %205, %200, %183
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %212 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %211, i32 0, i32 9
  %213 = call i32 @iowrite32be(i32 %210, i32* %212)
  br label %214

214:                                              ; preds = %209, %133
  %215 = load i32, i32* @BMI_CMD_RX_MR_DEF, align 4
  store i32 %215, i32* %8, align 4
  %216 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %217 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %241, label %220

220:                                              ; preds = %214
  %221 = load i32, i32* @BMI_CMD_ATTR_ORDER, align 4
  %222 = load i32, i32* %8, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %8, align 4
  %224 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %225 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %224, i32 0, i32 8
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = load i32, i32* @BMI_CMD_ATTR_COLOR_SHIFT, align 4
  %229 = shl i32 %227, %228
  %230 = load i32, i32* %8, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %8, align 4
  %232 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %233 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %232, i32 0, i32 7
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %220
  %237 = load i32, i32* @BMI_CMD_ATTR_SYNC, align 4
  %238 = load i32, i32* %8, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %236, %220
  br label %241

241:                                              ; preds = %240, %214
  %242 = load i32, i32* %8, align 4
  %243 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %244 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %243, i32 0, i32 8
  %245 = call i32 @iowrite32be(i32 %242, i32* %244)
  %246 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %247 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %241
  %251 = load i32, i32* @NIA_ENG_FM_CTL, align 4
  %252 = load i32, i32* @NIA_FM_CTL_AC_IND_MODE_RX, align 4
  %253 = or i32 %251, %252
  store i32 %253, i32* %8, align 4
  br label %265

254:                                              ; preds = %241
  %255 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %256 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %255, i32 0, i32 6
  %257 = load i64, i64* %256, align 8
  %258 = trunc i64 %257 to i32
  %259 = load i32, i32* @BMI_NEXT_ENG_FD_BITS_SHIFT, align 4
  %260 = shl i32 %258, %259
  store i32 %260, i32* %8, align 4
  %261 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %262 = call i32 @get_no_pcd_nia_bmi_ac_enc_frame(%struct.fman_port_cfg* %261)
  %263 = load i32, i32* %8, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %8, align 4
  br label %265

265:                                              ; preds = %254, %250
  %266 = load i32, i32* %8, align 4
  %267 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %268 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %267, i32 0, i32 7
  %269 = call i32 @iowrite32be(i32 %266, i32* %268)
  %270 = load i32, i32* @NIA_ENG_QMI_ENQ, align 4
  %271 = load i32, i32* @NIA_ORDER_RESTOR, align 4
  %272 = or i32 %270, %271
  %273 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %274 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %273, i32 0, i32 6
  %275 = call i32 @iowrite32be(i32 %272, i32* %274)
  %276 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %277 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %295, label %280

280:                                              ; preds = %265
  %281 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %282 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = and i32 %283, 16777215
  %285 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %286 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %285, i32 0, i32 5
  %287 = call i32 @iowrite32be(i32 %284, i32* %286)
  %288 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %289 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = and i32 %290, 16777215
  %292 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %293 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %292, i32 0, i32 4
  %294 = call i32 @iowrite32be(i32 %291, i32* %293)
  br label %295

295:                                              ; preds = %280, %265
  %296 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %297 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %300 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %299, i32 0, i32 3
  %301 = call i32 @iowrite32be(i32 %298, i32* %300)
  %302 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %303 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %306 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %305, i32 0, i32 2
  %307 = call i32 @iowrite32be(i32 %304, i32* %306)
  store i32 0, i32* %8, align 4
  %308 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %309 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %308, i32 0, i32 5
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %295
  %313 = load i32, i32* @BMI_COUNTERS_EN, align 4
  store i32 %313, i32* %8, align 4
  br label %314

314:                                              ; preds = %312, %295
  %315 = load i32, i32* %8, align 4
  %316 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %317 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %316, i32 0, i32 1
  %318 = call i32 @iowrite32be(i32 %315, i32* %317)
  %319 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %320 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %321 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %320, i32 0, i32 4
  %322 = call i32 @fman_port_set_perf_cnt_params(%struct.fman_port* %319, i32* %321)
  store i32 0, i32* %8, align 4
  %323 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %324 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %314
  %328 = load i32, i32* @BMI_COUNTERS_EN, align 4
  store i32 %328, i32* %8, align 4
  br label %329

329:                                              ; preds = %327, %314
  %330 = load i32, i32* %8, align 4
  %331 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %332 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %331, i32 0, i32 0
  %333 = call i32 @iowrite32be(i32 %330, i32* %332)
  ret i32 0
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @get_no_pcd_nia_bmi_ac_enc_frame(%struct.fman_port_cfg*) #1

declare dso_local i32 @fman_port_set_perf_cnt_params(%struct.fman_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
