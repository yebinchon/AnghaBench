; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_init_bmi_oh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_init_bmi_oh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fman_port_oh_bmi_regs }
%struct.fman_port_oh_bmi_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fman_port_cfg = type { i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fman_port_params = type { i32, i32, i32, i32 }

@BMI_PORT_CFG_FDOVR = common dso_local global i32 0, align 4
@BMI_DMA_ATTR_SWP_SHIFT = common dso_local global i32 0, align 4
@BMI_DMA_ATTR_IC_STASH_ON = common dso_local global i32 0, align 4
@BMI_DMA_ATTR_HDR_STASH_ON = common dso_local global i32 0, align 4
@BMI_DMA_ATTR_SG_STASH_ON = common dso_local global i32 0, align 4
@BMI_DMA_ATTR_WRITE_OPTIMIZE = common dso_local global i32 0, align 4
@BMI_FIFO_PIPELINE_DEPTH_SHIFT = common dso_local global i32 0, align 4
@FMAN_PORT_IC_OFFSET_UNITS = common dso_local global i32 0, align 4
@BMI_IC_TO_EXT_SHIFT = common dso_local global i32 0, align 4
@BMI_IC_FROM_INT_SHIFT = common dso_local global i32 0, align 4
@BMI_CMD_OP_MR_DEF = common dso_local global i32 0, align 4
@BMI_CMD_ATTR_COLOR_SHIFT = common dso_local global i32 0, align 4
@BMI_CMD_ATTR_SYNC = common dso_local global i32 0, align 4
@E_FMAN_PORT_TYPE_OP = common dso_local global i64 0, align 8
@BMI_CMD_ATTR_ORDER = common dso_local global i32 0, align 4
@BMI_INT_BUF_MARG_SHIFT = common dso_local global i32 0, align 4
@NIA_ENG_QMI_DEQ = common dso_local global i32 0, align 4
@E_FMAN_PORT_TYPE_HC = common dso_local global i64 0, align 8
@NIA_ENG_FM_CTL = common dso_local global i32 0, align 4
@NIA_FM_CTL_AC_HC = common dso_local global i32 0, align 4
@NIA_ENG_QMI_ENQ = common dso_local global i32 0, align 4
@NIA_ORDER_RESTOR = common dso_local global i32 0, align 4
@BMI_COUNTERS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fman_port*, %struct.fman_port_cfg*, %struct.fman_port_params*)* @init_bmi_oh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_bmi_oh(%struct.fman_port* %0, %struct.fman_port_cfg* %1, %struct.fman_port_params* %2) #0 {
  %4 = alloca %struct.fman_port*, align 8
  %5 = alloca %struct.fman_port_cfg*, align 8
  %6 = alloca %struct.fman_port_params*, align 8
  %7 = alloca %struct.fman_port_oh_bmi_regs*, align 8
  %8 = alloca i32, align 4
  store %struct.fman_port* %0, %struct.fman_port** %4, align 8
  store %struct.fman_port_cfg* %1, %struct.fman_port_cfg** %5, align 8
  store %struct.fman_port_params* %2, %struct.fman_port_params** %6, align 8
  %9 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %10 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.fman_port_oh_bmi_regs* %12, %struct.fman_port_oh_bmi_regs** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %14 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %13, i32 0, i32 15
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @BMI_PORT_CFG_FDOVR, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %24 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %23, i32 0, i32 14
  %25 = call i32 @iowrite32be(i32 %22, i32* %24)
  %26 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %27 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %26, i32 0, i32 14
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @BMI_DMA_ATTR_SWP_SHIFT, align 4
  %31 = shl i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %33 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %32, i32 0, i32 13
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
  %42 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %41, i32 0, i32 12
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
  %51 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %50, i32 0, i32 11
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
  %59 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %60 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %59, i32 0, i32 10
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @BMI_DMA_ATTR_WRITE_OPTIMIZE, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %70 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %69, i32 0, i32 13
  %71 = call i32 @iowrite32be(i32 %68, i32* %70)
  %72 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %73 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %72, i32 0, i32 9
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @BMI_FIFO_PIPELINE_DEPTH_SHIFT, align 4
  %78 = shl i32 %76, %77
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %81 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %80, i32 0, i32 12
  %82 = call i32 @iowrite32be(i32 %79, i32* %81)
  %83 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %84 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* @FMAN_PORT_IC_OFFSET_UNITS, align 4
  %88 = sdiv i32 %86, %87
  %89 = load i32, i32* @BMI_IC_TO_EXT_SHIFT, align 4
  %90 = shl i32 %88, %89
  store i32 %90, i32* %8, align 4
  %91 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %92 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i32, i32* @FMAN_PORT_IC_OFFSET_UNITS, align 4
  %96 = sdiv i32 %94, %95
  %97 = load i32, i32* @BMI_IC_FROM_INT_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %102 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @FMAN_PORT_IC_OFFSET_UNITS, align 4
  %105 = sdiv i32 %103, %104
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %110 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %109, i32 0, i32 11
  %111 = call i32 @iowrite32be(i32 %108, i32* %110)
  %112 = load i32, i32* @BMI_CMD_OP_MR_DEF, align 4
  store i32 %112, i32* %8, align 4
  %113 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %114 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* @BMI_CMD_ATTR_COLOR_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %8, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %8, align 4
  %121 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %122 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %67
  %126 = load i32, i32* @BMI_CMD_ATTR_SYNC, align 4
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %125, %67
  %130 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %131 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @E_FMAN_PORT_TYPE_OP, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load i32, i32* @BMI_CMD_ATTR_ORDER, align 4
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %135, %129
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %142 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %141, i32 0, i32 10
  %143 = call i32 @iowrite32be(i32 %140, i32* %142)
  %144 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %145 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = load i32, i32* @FMAN_PORT_IC_OFFSET_UNITS, align 4
  %149 = sdiv i32 %147, %148
  %150 = load i32, i32* @BMI_INT_BUF_MARG_SHIFT, align 4
  %151 = shl i32 %149, %150
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %154 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %153, i32 0, i32 9
  %155 = call i32 @iowrite32be(i32 %152, i32* %154)
  %156 = load i32, i32* @NIA_ENG_QMI_DEQ, align 4
  %157 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %158 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %157, i32 0, i32 8
  %159 = call i32 @iowrite32be(i32 %156, i32* %158)
  %160 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %161 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @E_FMAN_PORT_TYPE_HC, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %139
  %166 = load i32, i32* @NIA_ENG_FM_CTL, align 4
  %167 = load i32, i32* @NIA_FM_CTL_AC_HC, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %170 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %169, i32 0, i32 7
  %171 = call i32 @iowrite32be(i32 %168, i32* %170)
  %172 = load i32, i32* @NIA_ENG_QMI_ENQ, align 4
  %173 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %174 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %173, i32 0, i32 6
  %175 = call i32 @iowrite32be(i32 %172, i32* %174)
  br label %188

176:                                              ; preds = %139
  %177 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %178 = call i32 @get_no_pcd_nia_bmi_ac_enc_frame(%struct.fman_port_cfg* %177)
  %179 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %180 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %179, i32 0, i32 7
  %181 = call i32 @iowrite32be(i32 %178, i32* %180)
  %182 = load i32, i32* @NIA_ENG_QMI_ENQ, align 4
  %183 = load i32, i32* @NIA_ORDER_RESTOR, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %186 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %185, i32 0, i32 6
  %187 = call i32 @iowrite32be(i32 %184, i32* %186)
  br label %188

188:                                              ; preds = %176, %165
  %189 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %190 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %191, 16777215
  %193 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %194 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %193, i32 0, i32 5
  %195 = call i32 @iowrite32be(i32 %192, i32* %194)
  %196 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %197 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 16777215
  %200 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %201 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %200, i32 0, i32 4
  %202 = call i32 @iowrite32be(i32 %199, i32* %201)
  %203 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %204 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @E_FMAN_PORT_TYPE_OP, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %188
  %209 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %210 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %213 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %212, i32 0, i32 3
  %214 = call i32 @iowrite32be(i32 %211, i32* %213)
  %215 = load %struct.fman_port_params*, %struct.fman_port_params** %6, align 8
  %216 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %219 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %218, i32 0, i32 2
  %220 = call i32 @iowrite32be(i32 %217, i32* %219)
  br label %221

221:                                              ; preds = %208, %188
  store i32 0, i32* %8, align 4
  %222 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %223 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = load i32, i32* @BMI_COUNTERS_EN, align 4
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %226, %221
  %229 = load i32, i32* %8, align 4
  %230 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %231 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %230, i32 0, i32 1
  %232 = call i32 @iowrite32be(i32 %229, i32* %231)
  %233 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %234 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %235 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %234, i32 0, i32 2
  %236 = call i32 @fman_port_set_perf_cnt_params(%struct.fman_port* %233, i32* %235)
  store i32 0, i32* %8, align 4
  %237 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %238 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %228
  %242 = load i32, i32* @BMI_COUNTERS_EN, align 4
  store i32 %242, i32* %8, align 4
  br label %243

243:                                              ; preds = %241, %228
  %244 = load i32, i32* %8, align 4
  %245 = load %struct.fman_port_oh_bmi_regs*, %struct.fman_port_oh_bmi_regs** %7, align 8
  %246 = getelementptr inbounds %struct.fman_port_oh_bmi_regs, %struct.fman_port_oh_bmi_regs* %245, i32 0, i32 0
  %247 = call i32 @iowrite32be(i32 %244, i32* %246)
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
