; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_update_ios.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_update_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.aml8726_sdxc_softc = type { i32, i32*, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i32, i32, i32, i32 }

@AML_SDXC_CNTRL_TX_ENDIAN_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_CNTRL_RX_ENDIAN_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_CNTRL_RX_PERIOD_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_CNTRL_RX_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_CNTRL_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@AML_SDXC_CNTRL_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@AML_SDXC_CNTRL_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AML_SDXC_CNTRL_REG = common dso_local global i32 0, align 4
@AML_SDXC_CLK_CNTRL_REG = common dso_local global i32 0, align 4
@AML_SDXC_CLK_CNTRL_TX_CLK_EN = common dso_local global i32 0, align 4
@AML_SDXC_CLK_CNTRL_RX_CLK_EN = common dso_local global i32 0, align 4
@AML_SDXC_CLK_CNTRL_SD_CLK_EN = common dso_local global i32 0, align 4
@AML_SDXC_CLK_CNTRL_CLK_MODULE_EN = common dso_local global i32 0, align 4
@AML_SDXC_CLK_CNTRL_CLK_SEL_MASK = common dso_local global i32 0, align 4
@AML_SDXC_CLK_CNTRL_CLK_SEL_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_CLK_CNTRL_CLK_DIV_MASK = common dso_local global i32 0, align 4
@AML_SDXC_CLK_CNTRL_CLK_DIV_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_CLK_CNTRL_MEM_PWR_MASK = common dso_local global i32 0, align 4
@AML_SDXC_CLK_CNTRL_MEM_PWR_ON = common dso_local global i32 0, align 4
@aml8726_sdxc_clk_phases = common dso_local global %struct.TYPE_8__* null, align 8
@AML_SDXC_CLK2_SD_PHASE_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_CLK2_RX_PHASE_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_CLK2_REG = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not use gpio to reset card\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @aml8726_sdxc_update_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_sdxc_update_ios(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.aml8726_sdxc_softc*, align 8
  %7 = alloca %struct.mmc_ios*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.aml8726_sdxc_softc* @device_get_softc(i32 %15)
  store %struct.aml8726_sdxc_softc* %16, %struct.aml8726_sdxc_softc** %6, align 8
  %17 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %18 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.mmc_ios* %19, %struct.mmc_ios** %7, align 8
  %20 = load i32, i32* @AML_SDXC_CNTRL_TX_ENDIAN_SHIFT, align 4
  %21 = shl i32 7, %20
  %22 = load i32, i32* @AML_SDXC_CNTRL_RX_ENDIAN_SHIFT, align 4
  %23 = shl i32 7, %22
  %24 = or i32 %21, %23
  %25 = load i32, i32* @AML_SDXC_CNTRL_RX_PERIOD_SHIFT, align 4
  %26 = shl i32 15, %25
  %27 = or i32 %24, %26
  %28 = load i32, i32* @AML_SDXC_CNTRL_RX_TIMEOUT_SHIFT, align 4
  %29 = shl i32 127, %28
  %30 = or i32 %27, %29
  store i32 %30, i32* %13, align 4
  %31 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %32 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %46 [
    i32 131, label %34
    i32 132, label %38
    i32 133, label %42
  ]

34:                                               ; preds = %2
  %35 = load i32, i32* @AML_SDXC_CNTRL_BUS_WIDTH_8, align 4
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  br label %48

38:                                               ; preds = %2
  %39 = load i32, i32* @AML_SDXC_CNTRL_BUS_WIDTH_4, align 4
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %48

42:                                               ; preds = %2
  %43 = load i32, i32* @AML_SDXC_CNTRL_BUS_WIDTH_1, align 4
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  br label %48

46:                                               ; preds = %2
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %3, align 4
  br label %372

48:                                               ; preds = %42, %38, %34
  %49 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %50 = load i32, i32* @AML_SDXC_CNTRL_REG, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %49, i32 %50, i32 %51)
  %53 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %54 = load i32, i32* @AML_SDXC_CLK_CNTRL_REG, align 4
  %55 = call i32 @CSR_READ_4(%struct.aml8726_sdxc_softc* %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @AML_SDXC_CLK_CNTRL_TX_CLK_EN, align 4
  %57 = load i32, i32* @AML_SDXC_CLK_CNTRL_RX_CLK_EN, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @AML_SDXC_CLK_CNTRL_SD_CLK_EN, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %65 = load i32, i32* @AML_SDXC_CLK_CNTRL_REG, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %64, i32 %65, i32 %66)
  %68 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %69 = load i32, i32* @AML_SDXC_CLK_CNTRL_REG, align 4
  %70 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %68, i32 %69)
  %71 = load i32, i32* @AML_SDXC_CLK_CNTRL_CLK_MODULE_EN, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %76 = load i32, i32* @AML_SDXC_CLK_CNTRL_REG, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %75, i32 %76, i32 %77)
  %79 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %80 = load i32, i32* @AML_SDXC_CLK_CNTRL_REG, align 4
  %81 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %79, i32 %80)
  %82 = load i32, i32* @AML_SDXC_CLK_CNTRL_CLK_SEL_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* @AML_SDXC_CLK_CNTRL_CLK_SEL_SHIFT, align 4
  %87 = shl i32 1, %86
  %88 = load i32, i32* %11, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %11, align 4
  %90 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %91 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %94 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sdiv i32 %92, %95
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %48
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %104

103:                                              ; preds = %100, %48
  store i32 1, i32* %8, align 4
  br label %104

104:                                              ; preds = %103, %100
  %105 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %106 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = add i32 %108, 1
  %110 = udiv i32 %107, %109
  %111 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %112 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ugt i32 %110, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %115, %104
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @AML_SDXC_CLK_CNTRL_CLK_DIV_MASK, align 4
  %121 = load i32, i32* @AML_SDXC_CLK_CNTRL_CLK_DIV_SHIFT, align 4
  %122 = lshr i32 %120, %121
  %123 = icmp ugt i32 %119, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* @AML_SDXC_CLK_CNTRL_CLK_DIV_MASK, align 4
  %126 = load i32, i32* @AML_SDXC_CLK_CNTRL_CLK_DIV_SHIFT, align 4
  %127 = lshr i32 %125, %126
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %124, %118
  %129 = load i32, i32* @AML_SDXC_CLK_CNTRL_CLK_DIV_MASK, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %11, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @AML_SDXC_CLK_CNTRL_CLK_DIV_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = load i32, i32* %11, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* @AML_SDXC_CLK_CNTRL_MEM_PWR_MASK, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %11, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* @AML_SDXC_CLK_CNTRL_MEM_PWR_ON, align 4
  %143 = load i32, i32* %11, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %11, align 4
  %145 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %146 = load i32, i32* @AML_SDXC_CLK_CNTRL_REG, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %145, i32 %146, i32 %147)
  %149 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %150 = load i32, i32* @AML_SDXC_CLK_CNTRL_REG, align 4
  %151 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %149, i32 %150)
  %152 = load i32, i32* @AML_SDXC_CLK_CNTRL_CLK_MODULE_EN, align 4
  %153 = load i32, i32* %11, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %11, align 4
  %155 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %156 = load i32, i32* @AML_SDXC_CLK_CNTRL_REG, align 4
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %155, i32 %156, i32 %157)
  %159 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %160 = load i32, i32* @AML_SDXC_CLK_CNTRL_REG, align 4
  %161 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %159, i32 %160)
  %162 = load i32, i32* @AML_SDXC_CLK_CNTRL_TX_CLK_EN, align 4
  %163 = load i32, i32* @AML_SDXC_CLK_CNTRL_RX_CLK_EN, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @AML_SDXC_CLK_CNTRL_SD_CLK_EN, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* %11, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %11, align 4
  %169 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %170 = load i32, i32* @AML_SDXC_CLK_CNTRL_REG, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %169, i32 %170, i32 %171)
  %173 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %174 = load i32, i32* @AML_SDXC_CLK_CNTRL_REG, align 4
  %175 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %173, i32 %174)
  %176 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %177 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = udiv i32 %178, %179
  store i32 %180, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %181

181:                                              ; preds = %222, %128
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** @aml8726_sdxc_clk_phases, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %225

189:                                              ; preds = %181
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** @aml8726_sdxc_clk_phases, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %197 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = shl i32 1, %198
  %200 = and i32 %195, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %189
  %203 = load i32, i32* %14, align 4
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** @aml8726_sdxc_clk_phases, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp sgt i32 %203, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %202
  br label %225

212:                                              ; preds = %202, %189
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** @aml8726_sdxc_clk_phases, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %212
  br label %225

221:                                              ; preds = %212
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  br label %181

225:                                              ; preds = %220, %211, %181
  %226 = load i32, i32* @AML_SDXC_CLK2_SD_PHASE_SHIFT, align 4
  %227 = shl i32 1, %226
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** @aml8726_sdxc_clk_phases, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @AML_SDXC_CLK2_RX_PHASE_SHIFT, align 4
  %235 = shl i32 %233, %234
  %236 = or i32 %227, %235
  store i32 %236, i32* %12, align 4
  %237 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %238 = load i32, i32* @AML_SDXC_CLK2_REG, align 4
  %239 = load i32, i32* %12, align 4
  %240 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %237, i32 %238, i32 %239)
  %241 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %242 = load i32, i32* @AML_SDXC_CLK2_REG, align 4
  %243 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %241, i32 %242)
  store i32 0, i32* %9, align 4
  %244 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %245 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  switch i32 %246, label %368 [
    i32 128, label %247
    i32 129, label %293
    i32 130, label %365
  ]

247:                                              ; preds = %225
  %248 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %249 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %292

253:                                              ; preds = %247
  store i32 0, i32* %10, align 4
  br label %254

254:                                              ; preds = %273, %253
  %255 = load i32, i32* %10, align 4
  %256 = icmp slt i32 %255, 2
  br i1 %256, label %257, label %276

257:                                              ; preds = %254
  %258 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %259 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %266 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = shl i32 1, %267
  %269 = and i32 %264, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %257
  br label %276

272:                                              ; preds = %257
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %10, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %10, align 4
  br label %254

276:                                              ; preds = %271, %254
  %277 = load i32, i32* %10, align 4
  %278 = icmp sge i32 %277, 2
  br i1 %278, label %279, label %281

279:                                              ; preds = %276
  %280 = load i32, i32* @EINVAL, align 4
  store i32 %280, i32* %3, align 4
  br label %372

281:                                              ; preds = %276
  %282 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %283 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %287 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %10, align 4
  %291 = call i32 @GPIO_PIN_SET(i32* %285, i32 %289, i32 %290)
  store i32 %291, i32* %9, align 4
  br label %292

292:                                              ; preds = %281, %247
  br label %370

293:                                              ; preds = %225
  %294 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %295 = call i32 @aml8726_sdxc_power_on(%struct.aml8726_sdxc_softc* %294)
  store i32 %295, i32* %9, align 4
  %296 = load i32, i32* %9, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  br label %370

299:                                              ; preds = %293
  %300 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %301 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = icmp ne i32* %303, null
  br i1 %304, label %305, label %364

305:                                              ; preds = %299
  %306 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %307 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %306, i32 0, i32 3
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 2
  %309 = load i32*, i32** %308, align 8
  %310 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %311 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %310, i32 0, i32 3
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %315 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @PIN_ON_FLAG(i32 %317)
  %319 = call i32 @GPIO_PIN_SET(i32* %309, i32 %313, i32 %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %333, label %321

321:                                              ; preds = %305
  %322 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %323 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 2
  %325 = load i32*, i32** %324, align 8
  %326 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %327 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %331 = call i32 @GPIO_PIN_SETFLAGS(i32* %325, i32 %329, i32 %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %321, %305
  %334 = load i32, i32* @ENXIO, align 4
  store i32 %334, i32* %9, align 4
  br label %335

335:                                              ; preds = %333, %321
  %336 = call i32 @DELAY(i32 5)
  %337 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %338 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 2
  %340 = load i32*, i32** %339, align 8
  %341 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %342 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %341, i32 0, i32 3
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %346 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @PIN_OFF_FLAG(i32 %348)
  %350 = call i32 @GPIO_PIN_SET(i32* %340, i32 %344, i32 %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %335
  %353 = load i32, i32* @ENXIO, align 4
  store i32 %353, i32* %9, align 4
  br label %354

354:                                              ; preds = %352, %335
  %355 = call i32 @DELAY(i32 5)
  %356 = load i32, i32* %9, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %354
  %359 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %360 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @device_printf(i32 %361, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %370

363:                                              ; preds = %354
  br label %364

364:                                              ; preds = %363, %299
  br label %370

365:                                              ; preds = %225
  %366 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %6, align 8
  %367 = call i32 @aml8726_sdxc_power_off(%struct.aml8726_sdxc_softc* %366)
  store i32 %367, i32* %9, align 4
  br label %370

368:                                              ; preds = %225
  %369 = load i32, i32* @EINVAL, align 4
  store i32 %369, i32* %3, align 4
  br label %372

370:                                              ; preds = %365, %364, %358, %298, %292
  %371 = load i32, i32* %9, align 4
  store i32 %371, i32* %3, align 4
  br label %372

372:                                              ; preds = %370, %368, %279, %46
  %373 = load i32, i32* %3, align 4
  ret i32 %373
}

declare dso_local %struct.aml8726_sdxc_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_sdxc_softc*, i32) #1

declare dso_local i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc*, i32) #1

declare dso_local i32 @GPIO_PIN_SET(i32*, i32, i32) #1

declare dso_local i32 @aml8726_sdxc_power_on(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @PIN_ON_FLAG(i32) #1

declare dso_local i32 @GPIO_PIN_SETFLAGS(i32*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @PIN_OFF_FLAG(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @aml8726_sdxc_power_off(%struct.aml8726_sdxc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
