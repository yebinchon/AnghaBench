; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_init_bmi_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_init_bmi_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fman_port_tx_bmi_regs }
%struct.fman_port_tx_bmi_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fman_port_cfg = type { i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fman_port_params = type { i32, i32, i64 }

@BMI_PORT_CFG_IM = common dso_local global i32 0, align 4
@BMI_DMA_ATTR_SWP_SHIFT = common dso_local global i32 0, align 4
@BMI_DMA_ATTR_IC_STASH_ON = common dso_local global i32 0, align 4
@BMI_DMA_ATTR_HDR_STASH_ON = common dso_local global i32 0, align 4
@BMI_DMA_ATTR_SG_STASH_ON = common dso_local global i32 0, align 4
@FMAN_PORT_BMI_FIFO_UNITS = common dso_local global i32 0, align 4
@BMI_TX_FIFO_MIN_FILL_SHIFT = common dso_local global i32 0, align 4
@BMI_FIFO_PIPELINE_DEPTH_SHIFT = common dso_local global i32 0, align 4
@BMI_FRAME_END_CS_IGNORE_SHIFT = common dso_local global i32 0, align 4
@FMAN_PORT_IC_OFFSET_UNITS = common dso_local global i32 0, align 4
@BMI_IC_TO_EXT_SHIFT = common dso_local global i32 0, align 4
@BMI_IC_FROM_INT_SHIFT = common dso_local global i32 0, align 4
@BMI_CMD_TX_MR_DEF = common dso_local global i32 0, align 4
@BMI_CMD_MR_DEAS = common dso_local global i32 0, align 4
@BMI_CMD_ATTR_ORDER = common dso_local global i32 0, align 4
@BMI_CMD_ATTR_COLOR_SHIFT = common dso_local global i32 0, align 4
@NIA_ENG_FM_CTL = common dso_local global i32 0, align 4
@NIA_FM_CTL_AC_IND_MODE_TX = common dso_local global i32 0, align 4
@NIA_ENG_QMI_DEQ = common dso_local global i32 0, align 4
@NIA_ENG_QMI_ENQ = common dso_local global i32 0, align 4
@NIA_ORDER_RESTOR = common dso_local global i32 0, align 4
@BMI_EBD_EN = common dso_local global i32 0, align 4
@NIA_BMI_AC_FETCH_ALL_FRAME = common dso_local global i32 0, align 4
@NIA_ENG_BMI = common dso_local global i32 0, align 4
@NIA_BMI_AC_TX_RELEASE = common dso_local global i32 0, align 4
@BMI_COUNTERS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fman_port*, %struct.fman_port_cfg*, %struct.fman_port_params*)* @init_bmi_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_bmi_tx(%struct.fman_port* %0, %struct.fman_port_cfg* %1, %struct.fman_port_params* %2) #0 {
  %4 = alloca %struct.fman_port*, align 8
  %5 = alloca %struct.fman_port_cfg*, align 8
  %6 = alloca %struct.fman_port_params*, align 8
  %7 = alloca %struct.fman_port_tx_bmi_regs*, align 8
  %8 = alloca i32, align 4
  store %struct.fman_port* %0, %struct.fman_port** %4, align 8
  store %struct.fman_port_cfg* %1, %struct.fman_port_cfg** %5, align 8
  store %struct.fman_port_params* %2, %struct.fman_port_params** %6, align 8
  %9 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %10 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.fman_port_tx_bmi_regs* %12, %struct.fman_port_tx_bmi_regs** %7, align 8
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
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %24 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %23, i32 0, i32 12
  %25 = call i32 @iowrite32be(i32 %22, i32* %24)
  %26 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %27 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %26, i32 0, i32 15
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @BMI_DMA_ATTR_SWP_SHIFT, align 4
  %31 = shl i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %33 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %32, i32 0, i32 14
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load i32, i32* @BMI_DMA_ATTR_IC_STASH_ON, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %21
  %41 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %42 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %41, i32 0, i32 13
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @BMI_DMA_ATTR_HDR_STASH_ON, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %51 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %50, i32 0, i32 12
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @BMI_DMA_ATTR_SG_STASH_ON, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %61 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %60, i32 0, i32 11
  %62 = call i32 @iowrite32be(i32 %59, i32* %61)
  %63 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %64 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FMAN_PORT_BMI_FIFO_UNITS, align 4
  %67 = sdiv i32 %65, %66
  %68 = load i32, i32* @BMI_TX_FIFO_MIN_FILL_SHIFT, align 4
  %69 = shl i32 %67, %68
  store i32 %69, i32* %8, align 4
  %70 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %71 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %70, i32 0, i32 11
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* @BMI_FIFO_PIPELINE_DEPTH_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %80 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @FMAN_PORT_BMI_FIFO_UNITS, align 4
  %83 = sdiv i32 %81, %82
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %89 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %88, i32 0, i32 10
  %90 = call i32 @iowrite32be(i32 %87, i32* %89)
  %91 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %92 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %91, i32 0, i32 10
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i32, i32* @BMI_FRAME_END_CS_IGNORE_SHIFT, align 4
  %96 = shl i32 %94, %95
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %99 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %98, i32 0, i32 9
  %100 = call i32 @iowrite32be(i32 %97, i32* %99)
  %101 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %102 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %135, label %105

105:                                              ; preds = %58
  %106 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %107 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %106, i32 0, i32 9
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* @FMAN_PORT_IC_OFFSET_UNITS, align 4
  %111 = sdiv i32 %109, %110
  %112 = load i32, i32* @BMI_IC_TO_EXT_SHIFT, align 4
  %113 = shl i32 %111, %112
  store i32 %113, i32* %8, align 4
  %114 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %115 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %114, i32 0, i32 8
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* @FMAN_PORT_IC_OFFSET_UNITS, align 4
  %119 = sdiv i32 %117, %118
  %120 = load i32, i32* @BMI_IC_FROM_INT_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %125 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @FMAN_PORT_IC_OFFSET_UNITS, align 4
  %128 = sdiv i32 %126, %127
  %129 = load i32, i32* %8, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %133 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %132, i32 0, i32 8
  %134 = call i32 @iowrite32be(i32 %131, i32* %133)
  br label %135

135:                                              ; preds = %105, %58
  %136 = load i32, i32* @BMI_CMD_TX_MR_DEF, align 4
  store i32 %136, i32* %8, align 4
  %137 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %138 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load i32, i32* @BMI_CMD_MR_DEAS, align 4
  %143 = load i32, i32* %8, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %8, align 4
  br label %157

145:                                              ; preds = %135
  %146 = load i32, i32* @BMI_CMD_ATTR_ORDER, align 4
  %147 = load i32, i32* %8, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %8, align 4
  %149 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %150 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = load i32, i32* @BMI_CMD_ATTR_COLOR_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* %8, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %145, %141
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %160 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %159, i32 0, i32 7
  %161 = call i32 @iowrite32be(i32 %158, i32* %160)
  %162 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %163 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %157
  %167 = load i32, i32* @NIA_ENG_FM_CTL, align 4
  %168 = load i32, i32* @NIA_FM_CTL_AC_IND_MODE_TX, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %171 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %170, i32 0, i32 6
  %172 = call i32 @iowrite32be(i32 %169, i32* %171)
  %173 = load i32, i32* @NIA_ENG_FM_CTL, align 4
  %174 = load i32, i32* @NIA_FM_CTL_AC_IND_MODE_TX, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %177 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %176, i32 0, i32 5
  %178 = call i32 @iowrite32be(i32 %175, i32* %177)
  br label %246

179:                                              ; preds = %157
  %180 = load i32, i32* @NIA_ENG_QMI_DEQ, align 4
  %181 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %182 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %181, i32 0, i32 6
  %183 = call i32 @iowrite32be(i32 %180, i32* %182)
  %184 = load i32, i32* @NIA_ENG_QMI_ENQ, align 4
  %185 = load i32, i32* @NIA_ORDER_RESTOR, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %188 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %187, i32 0, i32 5
  %189 = call i32 @iowrite32be(i32 %186, i32* %188)
  %190 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %191 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %179
  %195 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %196 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %194
  %200 = load i32, i32* @BMI_EBD_EN, align 4
  %201 = load i32, i32* @NIA_BMI_AC_FETCH_ALL_FRAME, align 4
  %202 = or i32 %200, %201
  br label %205

203:                                              ; preds = %194
  %204 = load i32, i32* @NIA_BMI_AC_FETCH_ALL_FRAME, align 4
  br label %205

205:                                              ; preds = %203, %199
  %206 = phi i32 [ %202, %199 ], [ %204, %203 ]
  %207 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %208 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %207, i32 0, i32 4
  %209 = call i32 @iowrite32be(i32 %206, i32* %208)
  br label %210

210:                                              ; preds = %205, %179
  %211 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %212 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %245, label %215

215:                                              ; preds = %210
  %216 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %217 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %245

220:                                              ; preds = %215
  %221 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %222 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %221, i32 0, i32 3
  %223 = call i32 @iowrite32be(i32 16777215, i32* %222)
  %224 = load i32, i32* @NIA_ENG_BMI, align 4
  %225 = load i32, i32* @NIA_BMI_AC_TX_RELEASE, align 4
  %226 = or i32 %224, %225
  %227 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %228 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %227, i32 0, i32 5
  %229 = call i32 @iowrite32be(i32 %226, i32* %228)
  %230 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %231 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %220
  %235 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %236 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %235, i32 0, i32 4
  %237 = call i32 @ioread32be(i32* %236)
  %238 = load i32, i32* @BMI_EBD_EN, align 4
  %239 = xor i32 %238, -1
  %240 = and i32 %237, %239
  %241 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %242 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %241, i32 0, i32 4
  %243 = call i32 @iowrite32be(i32 %240, i32* %242)
  br label %244

244:                                              ; preds = %234, %220
  br label %245

245:                                              ; preds = %244, %215, %210
  br label %246

246:                                              ; preds = %245, %166
  %247 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %248 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %277, label %251

251:                                              ; preds = %246
  %252 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %253 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %251
  %257 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %258 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %269, label %261

261:                                              ; preds = %256, %251
  %262 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %263 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %264, 16777215
  %266 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %267 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %266, i32 0, i32 3
  %268 = call i32 @iowrite32be(i32 %265, i32* %267)
  br label %269

269:                                              ; preds = %261, %256
  %270 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %271 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, 16777215
  %274 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %275 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %274, i32 0, i32 2
  %276 = call i32 @iowrite32be(i32 %273, i32* %275)
  br label %277

277:                                              ; preds = %269, %246
  store i32 0, i32* %8, align 4
  %278 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %279 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %278, i32 0, i32 5
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = load i32, i32* @BMI_COUNTERS_EN, align 4
  store i32 %283, i32* %8, align 4
  br label %284

284:                                              ; preds = %282, %277
  %285 = load i32, i32* %8, align 4
  %286 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %287 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %286, i32 0, i32 1
  %288 = call i32 @iowrite32be(i32 %285, i32* %287)
  %289 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %290 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %291 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %290, i32 0, i32 4
  %292 = call i32 @fman_port_set_perf_cnt_params(%struct.fman_port* %289, i32* %291)
  store i32 0, i32* %8, align 4
  %293 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %294 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %284
  %298 = load i32, i32* @BMI_COUNTERS_EN, align 4
  store i32 %298, i32* %8, align 4
  br label %299

299:                                              ; preds = %297, %284
  %300 = load i32, i32* %8, align 4
  %301 = load %struct.fman_port_tx_bmi_regs*, %struct.fman_port_tx_bmi_regs** %7, align 8
  %302 = getelementptr inbounds %struct.fman_port_tx_bmi_regs, %struct.fman_port_tx_bmi_regs* %301, i32 0, i32 0
  %303 = call i32 @iowrite32be(i32 %300, i32* %302)
  ret i32 0
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @fman_port_set_perf_cnt_params(%struct.fman_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
