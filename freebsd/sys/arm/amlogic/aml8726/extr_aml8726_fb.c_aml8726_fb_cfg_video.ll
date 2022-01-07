; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_fb.c_aml8726_fb_cfg_video.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_fb.c_aml8726_fb_cfg_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_fb_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AML_VIU_OSD_FIFO_CTRL_DEPTH_SHIFT = common dso_local global i32 0, align 4
@AML_VIU_OSD_FIFO_CTRL_BURST_LEN_64 = common dso_local global i32 0, align 4
@AML_VIU_OSD_FIFO_CTRL_HOLD_LINES_SHIFT = common dso_local global i32 0, align 4
@AML_VIU_OSD1_FIFO_CTRL_REG = common dso_local global i32 0, align 4
@AML_VIU_OSD2_FIFO_CTRL_REG = common dso_local global i32 0, align 4
@AML_VPP_MISC_REG = common dso_local global i32 0, align 4
@AML_VPP_MISC_PREBLEND_EN = common dso_local global i32 0, align 4
@AML_VPP_MISC_POSTBLEND_EN = common dso_local global i32 0, align 4
@AML_VPP_MISC_OSD1_POSTBLEND = common dso_local global i32 0, align 4
@AML_VPP_MISC_OSD2_POSTBLEND = common dso_local global i32 0, align 4
@AML_VPP_MISC_VD1_POSTBLEND = common dso_local global i32 0, align 4
@AML_VPP_MISC_VD2_POSTBLEND = common dso_local global i32 0, align 4
@AML_VIU_OSD_CTRL_OSD_EN = common dso_local global i32 0, align 4
@AML_VIU_OSD_CTRL_GLOBAL_ALPHA_SHIFT = common dso_local global i32 0, align 4
@AML_VIU_OSD1_CTRL_REG = common dso_local global i32 0, align 4
@AML_VIU_OSD2_CTRL_REG = common dso_local global i32 0, align 4
@AML_CAV_OSD1_INDEX = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W0_INDEX_SHIFT = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W0_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W0_BLKMODE_24 = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W0_RGB_EN = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W0_CMATRIX_RGB = common dso_local global i32 0, align 4
@AML_VIU_OSD1_BLK0_CFG_W0_REG = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W1_X_END_SHIFT = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W1_X_END_MASK = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W1_X_START_SHIFT = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W1_X_START_MASK = common dso_local global i32 0, align 4
@AML_VIU_OSD1_BLK0_CFG_W1_REG = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W2_Y_END_SHIFT = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W2_Y_END_MASK = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W2_Y_START_SHIFT = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W2_Y_START_MASK = common dso_local global i32 0, align 4
@AML_VIU_OSD1_BLK0_CFG_W2_REG = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W3_H_END_SHIFT = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W3_H_END_MASK = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W3_H_START_SHIFT = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W3_H_START_MASK = common dso_local global i32 0, align 4
@AML_VIU_OSD1_BLK0_CFG_W3_REG = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W4_V_END_SHIFT = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W4_V_END_MASK = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W4_V_START_SHIFT = common dso_local global i32 0, align 4
@AML_VIU_OSD_BLK_CFG_W4_V_START_MASK = common dso_local global i32 0, align 4
@AML_VIU_OSD1_BLK0_CFG_W4_REG = common dso_local global i32 0, align 4
@AML_VIU_OSD_CTRL_OSD_BLK_EN_MASK = common dso_local global i32 0, align 4
@AML_VIU_OSD_CTRL_OSD_BLK_EN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aml8726_fb_softc*)* @aml8726_fb_cfg_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_fb_cfg_video(%struct.aml8726_fb_softc* %0) #0 {
  %2 = alloca %struct.aml8726_fb_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.aml8726_fb_softc* %0, %struct.aml8726_fb_softc** %2, align 8
  %4 = load i32, i32* @AML_VIU_OSD_FIFO_CTRL_DEPTH_SHIFT, align 4
  %5 = shl i32 32, %4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @AML_VIU_OSD_FIFO_CTRL_BURST_LEN_64, align 4
  %7 = load i32, i32* %3, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @AML_VIU_OSD_FIFO_CTRL_HOLD_LINES_SHIFT, align 4
  %10 = shl i32 4, %9
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %14 = load i32, i32* @AML_VIU_OSD1_FIFO_CTRL_REG, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @VIU_WRITE_4(%struct.aml8726_fb_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %18 = load i32, i32* @AML_VIU_OSD2_FIFO_CTRL_REG, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @VIU_WRITE_4(%struct.aml8726_fb_softc* %17, i32 %18, i32 %19)
  %21 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %22 = load i32, i32* @AML_VPP_MISC_REG, align 4
  %23 = call i32 @VPP_READ_4(%struct.aml8726_fb_softc* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @AML_VPP_MISC_PREBLEND_EN, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @AML_VPP_MISC_POSTBLEND_EN, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @AML_VPP_MISC_OSD1_POSTBLEND, align 4
  %32 = load i32, i32* @AML_VPP_MISC_OSD2_POSTBLEND, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @AML_VPP_MISC_VD1_POSTBLEND, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @AML_VPP_MISC_VD2_POSTBLEND, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %42 = load i32, i32* @AML_VPP_MISC_REG, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @VPP_WRITE_4(%struct.aml8726_fb_softc* %41, i32 %42, i32 %43)
  %45 = load i32, i32* @AML_VIU_OSD_CTRL_OSD_EN, align 4
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @AML_VIU_OSD_CTRL_GLOBAL_ALPHA_SHIFT, align 4
  %47 = shl i32 255, %46
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %51 = load i32, i32* @AML_VIU_OSD1_CTRL_REG, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @VIU_WRITE_4(%struct.aml8726_fb_softc* %50, i32 %51, i32 %52)
  %54 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %55 = load i32, i32* @AML_VIU_OSD2_CTRL_REG, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @VIU_WRITE_4(%struct.aml8726_fb_softc* %54, i32 %55, i32 %56)
  %58 = load i32, i32* @AML_CAV_OSD1_INDEX, align 4
  %59 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W0_INDEX_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W0_LITTLE_ENDIAN, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W0_BLKMODE_24, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W0_RGB_EN, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W0_CMATRIX_RGB, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %3, align 4
  %69 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %70 = load i32, i32* @AML_VIU_OSD1_BLK0_CFG_W0_REG, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @VIU_WRITE_4(%struct.aml8726_fb_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %74 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W1_X_END_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W1_X_END_MASK, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W1_X_START_SHIFT, align 4
  %83 = shl i32 0, %82
  %84 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W1_X_START_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %3, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %3, align 4
  %88 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %89 = load i32, i32* @AML_VIU_OSD1_BLK0_CFG_W1_REG, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @VIU_WRITE_4(%struct.aml8726_fb_softc* %88, i32 %89, i32 %90)
  %92 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %93 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W2_Y_END_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W2_Y_END_MASK, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W2_Y_START_SHIFT, align 4
  %102 = shl i32 0, %101
  %103 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W2_Y_START_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* %3, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %3, align 4
  %107 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %108 = load i32, i32* @AML_VIU_OSD1_BLK0_CFG_W2_REG, align 4
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @VIU_WRITE_4(%struct.aml8726_fb_softc* %107, i32 %108, i32 %109)
  %111 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %112 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  %116 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W3_H_END_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W3_H_END_MASK, align 4
  %119 = and i32 %117, %118
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W3_H_START_SHIFT, align 4
  %121 = shl i32 0, %120
  %122 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W3_H_START_MASK, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* %3, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %3, align 4
  %126 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %127 = load i32, i32* @AML_VIU_OSD1_BLK0_CFG_W3_REG, align 4
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @VIU_WRITE_4(%struct.aml8726_fb_softc* %126, i32 %127, i32 %128)
  %130 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %131 = getelementptr inbounds %struct.aml8726_fb_softc, %struct.aml8726_fb_softc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, 1
  %135 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W4_V_END_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W4_V_END_MASK, align 4
  %138 = and i32 %136, %137
  store i32 %138, i32* %3, align 4
  %139 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W4_V_START_SHIFT, align 4
  %140 = shl i32 0, %139
  %141 = load i32, i32* @AML_VIU_OSD_BLK_CFG_W4_V_START_MASK, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* %3, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %3, align 4
  %145 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %146 = load i32, i32* @AML_VIU_OSD1_BLK0_CFG_W4_REG, align 4
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @VIU_WRITE_4(%struct.aml8726_fb_softc* %145, i32 %146, i32 %147)
  %149 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %150 = load i32, i32* @AML_VIU_OSD1_CTRL_REG, align 4
  %151 = call i32 @VIU_READ_4(%struct.aml8726_fb_softc* %149, i32 %150)
  store i32 %151, i32* %3, align 4
  %152 = load i32, i32* @AML_VIU_OSD_CTRL_OSD_BLK_EN_MASK, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %3, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %3, align 4
  %156 = load i32, i32* @AML_VIU_OSD_CTRL_OSD_BLK_EN_SHIFT, align 4
  %157 = shl i32 1, %156
  %158 = load i32, i32* %3, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %3, align 4
  %160 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %161 = load i32, i32* @AML_VIU_OSD1_CTRL_REG, align 4
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @VIU_WRITE_4(%struct.aml8726_fb_softc* %160, i32 %161, i32 %162)
  %164 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %165 = load i32, i32* @AML_VPP_MISC_REG, align 4
  %166 = call i32 @VPP_READ_4(%struct.aml8726_fb_softc* %164, i32 %165)
  store i32 %166, i32* %3, align 4
  %167 = load i32, i32* @AML_VPP_MISC_OSD1_POSTBLEND, align 4
  %168 = load i32, i32* %3, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %3, align 4
  %170 = load %struct.aml8726_fb_softc*, %struct.aml8726_fb_softc** %2, align 8
  %171 = load i32, i32* @AML_VPP_MISC_REG, align 4
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @VPP_WRITE_4(%struct.aml8726_fb_softc* %170, i32 %171, i32 %172)
  ret void
}

declare dso_local i32 @VIU_WRITE_4(%struct.aml8726_fb_softc*, i32, i32) #1

declare dso_local i32 @VPP_READ_4(%struct.aml8726_fb_softc*, i32) #1

declare dso_local i32 @VPP_WRITE_4(%struct.aml8726_fb_softc*, i32, i32) #1

declare dso_local i32 @VIU_READ_4(%struct.aml8726_fb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
