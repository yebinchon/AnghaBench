; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_plle_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_plle_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_sc = type { i32, i32, %struct.mnp_bits }
%struct.mnp_bits = type { i32 }

@PLLE_BASE_LOCK_OVERRIDE = common dso_local global i32 0, align 4
@PLLE_AUX = common dso_local global i32 0, align 4
@PLLE_AUX_ENABLE_SWCTL = common dso_local global i32 0, align 4
@PLLE_AUX_SEQ_ENABLE = common dso_local global i32 0, align 4
@PLLE_MISC_LOCK_ENABLE = common dso_local global i32 0, align 4
@PLLE_MISC_IDDQ_SWCTL = common dso_local global i32 0, align 4
@PLLE_MISC_IDDQ_OVERRIDE_VALUE = common dso_local global i32 0, align 4
@PLLE_MISC_PTS = common dso_local global i32 0, align 4
@PLLE_MISC_VREG_BG_CTRL_MASK = common dso_local global i32 0, align 4
@PLLE_MISC_VREG_CTRL_MASK = common dso_local global i32 0, align 4
@PLLE_SS_CNTL = common dso_local global i32 0, align 4
@PLLE_SS_CNTL_DISABLE = common dso_local global i32 0, align 4
@PLLE_BASE_DIVCML_MASK = common dso_local global i32 0, align 4
@PLLE_BASE_DIVCML_SHIFT = common dso_local global i32 0, align 4
@PLLE_SS_CNTL_SSCCENTER = common dso_local global i32 0, align 4
@PLLE_SS_CNTL_SSCINVERT = common dso_local global i32 0, align 4
@PLLE_SS_CNTL_COEFFICIENTS_MASK = common dso_local global i32 0, align 4
@PLLE_SS_CNTL_COEFFICIENTS_VAL = common dso_local global i32 0, align 4
@PLLE_SS_CNTL_SSCBYP = common dso_local global i32 0, align 4
@PLLE_SS_CNTL_BYPASS_SS = common dso_local global i32 0, align 4
@PLLE_SS_CNTL_INTERP_RESET = common dso_local global i32 0, align 4
@PLLE_AUX_USE_LOCKDET = common dso_local global i32 0, align 4
@PLLE_AUX_SEQ_START_STATE = common dso_local global i32 0, align 4
@PLLE_AUX_SS_SWCTL = common dso_local global i32 0, align 4
@XUSBIO_PLL_CFG0 = common dso_local global i32 0, align 4
@XUSBIO_PLL_CFG0_PADPLL_USE_LOCKDET = common dso_local global i32 0, align 4
@XUSBIO_PLL_CFG0_SEQ_START_STATE = common dso_local global i32 0, align 4
@XUSBIO_PLL_CFG0_CLK_ENABLE_SWCTL = common dso_local global i32 0, align 4
@XUSBIO_PLL_CFG0_PADPLL_RESET_SWCTL = common dso_local global i32 0, align 4
@XUSBIO_PLL_CFG0_SEQ_ENABLE = common dso_local global i32 0, align 4
@SATA_PLL_CFG0 = common dso_local global i32 0, align 4
@SATA_PLL_CFG0_PADPLL_RESET_SWCTL = common dso_local global i32 0, align 4
@SATA_PLL_CFG0_PADPLL_RESET_OVERRIDE_VALUE = common dso_local global i32 0, align 4
@SATA_PLL_CFG0_PADPLL_USE_LOCKDET = common dso_local global i32 0, align 4
@SATA_PLL_CFG0_SEQ_IN_SWCTL = common dso_local global i32 0, align 4
@SATA_PLL_CFG0_SEQ_RESET_INPUT_VALUE = common dso_local global i32 0, align 4
@SATA_PLL_CFG0_SEQ_LANE_PD_INPUT_VALUE = common dso_local global i32 0, align 4
@SATA_PLL_CFG0_SEQ_PADPLL_PD_INPUT_VALUE = common dso_local global i32 0, align 4
@SATA_PLL_CFG0_SEQ_ENABLE = common dso_local global i32 0, align 4
@SATA_PLL_CFG0_SEQ_START_STATE = common dso_local global i32 0, align 4
@PCIE_PLL_CFG0 = common dso_local global i32 0, align 4
@PCIE_PLL_CFG0_SEQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pll_sc*)* @plle_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plle_enable(%struct.pll_sc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pll_sc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mnp_bits*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pll_sc* %0, %struct.pll_sc** %3, align 8
  store i32 1, i32* %7, align 4
  store i32 200, i32* %8, align 4
  store i32 13, i32* %9, align 4
  store i32 13, i32* %10, align 4
  %11 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %12 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %11, i32 0, i32 2
  store %struct.mnp_bits* %12, %struct.mnp_bits** %6, align 8
  %13 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %14 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %15 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @RD4(%struct.pll_sc* %13, i32 %16, i32* %4)
  %18 = load i32, i32* @PLLE_BASE_LOCK_OVERRIDE, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %23 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %24 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @WR4(%struct.pll_sc* %22, i32 %25, i32 %26)
  %28 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %29 = load i32, i32* @PLLE_AUX, align 4
  %30 = call i32 @RD4(%struct.pll_sc* %28, i32 %29, i32* %4)
  %31 = load i32, i32* @PLLE_AUX_ENABLE_SWCTL, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @PLLE_AUX_SEQ_ENABLE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %39 = load i32, i32* @PLLE_AUX, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @WR4(%struct.pll_sc* %38, i32 %39, i32 %40)
  %42 = call i32 @DELAY(i32 10)
  %43 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %44 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %45 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @RD4(%struct.pll_sc* %43, i32 %46, i32* %4)
  %48 = load i32, i32* @PLLE_MISC_LOCK_ENABLE, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @PLLE_MISC_IDDQ_SWCTL, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @PLLE_MISC_IDDQ_OVERRIDE_VALUE, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @PLLE_MISC_PTS, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @PLLE_MISC_VREG_BG_CTRL_MASK, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @PLLE_MISC_VREG_CTRL_MASK, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %68 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %69 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @WR4(%struct.pll_sc* %67, i32 %70, i32 %71)
  %73 = call i32 @DELAY(i32 10)
  %74 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %75 = load i32, i32* @PLLE_SS_CNTL, align 4
  %76 = call i32 @RD4(%struct.pll_sc* %74, i32 %75, i32* %4)
  %77 = load i32, i32* @PLLE_SS_CNTL_DISABLE, align 4
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %81 = load i32, i32* @PLLE_SS_CNTL, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @WR4(%struct.pll_sc* %80, i32 %81, i32 %82)
  %84 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %85 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %86 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @RD4(%struct.pll_sc* %84, i32 %87, i32* %4)
  %89 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @set_divisors(%struct.pll_sc* %89, i32 %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* @PLLE_BASE_DIVCML_MASK, align 4
  %96 = load i32, i32* @PLLE_BASE_DIVCML_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %4, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @PLLE_BASE_DIVCML_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %4, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %107 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %108 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @WR4(%struct.pll_sc* %106, i32 %109, i32 %110)
  %112 = call i32 @DELAY(i32 10)
  %113 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %114 = call i32 @pll_enable(%struct.pll_sc* %113)
  %115 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %116 = call i32 @wait_for_lock(%struct.pll_sc* %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %1
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %301

121:                                              ; preds = %1
  %122 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %123 = load i32, i32* @PLLE_SS_CNTL, align 4
  %124 = call i32 @RD4(%struct.pll_sc* %122, i32 %123, i32* %4)
  %125 = load i32, i32* @PLLE_SS_CNTL_SSCCENTER, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %4, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* @PLLE_SS_CNTL_SSCINVERT, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %4, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* @PLLE_SS_CNTL_COEFFICIENTS_MASK, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %4, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* @PLLE_SS_CNTL_COEFFICIENTS_VAL, align 4
  %138 = load i32, i32* %4, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %4, align 4
  %140 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %141 = load i32, i32* @PLLE_SS_CNTL, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @WR4(%struct.pll_sc* %140, i32 %141, i32 %142)
  %144 = load i32, i32* @PLLE_SS_CNTL_SSCBYP, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %4, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* @PLLE_SS_CNTL_BYPASS_SS, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %4, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %4, align 4
  %152 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %153 = load i32, i32* @PLLE_SS_CNTL, align 4
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @WR4(%struct.pll_sc* %152, i32 %153, i32 %154)
  %156 = call i32 @DELAY(i32 10)
  %157 = load i32, i32* @PLLE_SS_CNTL_INTERP_RESET, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %4, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %4, align 4
  %161 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %162 = load i32, i32* @PLLE_SS_CNTL, align 4
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @WR4(%struct.pll_sc* %161, i32 %162, i32 %163)
  %165 = call i32 @DELAY(i32 10)
  %166 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %167 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %168 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @RD4(%struct.pll_sc* %166, i32 %169, i32* %4)
  %171 = load i32, i32* @PLLE_MISC_IDDQ_SWCTL, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %4, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %4, align 4
  %175 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %176 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %177 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @WR4(%struct.pll_sc* %175, i32 %178, i32 %179)
  %181 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %182 = load i32, i32* @PLLE_AUX, align 4
  %183 = call i32 @RD4(%struct.pll_sc* %181, i32 %182, i32* %4)
  %184 = load i32, i32* @PLLE_AUX_USE_LOCKDET, align 4
  %185 = load i32, i32* %4, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* @PLLE_AUX_SEQ_START_STATE, align 4
  %188 = load i32, i32* %4, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %4, align 4
  %190 = load i32, i32* @PLLE_AUX_ENABLE_SWCTL, align 4
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %4, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %4, align 4
  %194 = load i32, i32* @PLLE_AUX_SS_SWCTL, align 4
  %195 = xor i32 %194, -1
  %196 = load i32, i32* %4, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* %4, align 4
  %198 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %199 = load i32, i32* @PLLE_AUX, align 4
  %200 = load i32, i32* %4, align 4
  %201 = call i32 @WR4(%struct.pll_sc* %198, i32 %199, i32 %200)
  %202 = load i32, i32* @PLLE_AUX_SEQ_START_STATE, align 4
  %203 = load i32, i32* %4, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %4, align 4
  %205 = call i32 @DELAY(i32 10)
  %206 = load i32, i32* @PLLE_AUX_SEQ_ENABLE, align 4
  %207 = load i32, i32* %4, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %4, align 4
  %209 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %210 = load i32, i32* @PLLE_AUX, align 4
  %211 = load i32, i32* %4, align 4
  %212 = call i32 @WR4(%struct.pll_sc* %209, i32 %210, i32 %211)
  %213 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %214 = load i32, i32* @XUSBIO_PLL_CFG0, align 4
  %215 = call i32 @RD4(%struct.pll_sc* %213, i32 %214, i32* %4)
  %216 = load i32, i32* @XUSBIO_PLL_CFG0_PADPLL_USE_LOCKDET, align 4
  %217 = load i32, i32* %4, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %4, align 4
  %219 = load i32, i32* @XUSBIO_PLL_CFG0_SEQ_START_STATE, align 4
  %220 = load i32, i32* %4, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %4, align 4
  %222 = load i32, i32* @XUSBIO_PLL_CFG0_CLK_ENABLE_SWCTL, align 4
  %223 = xor i32 %222, -1
  %224 = load i32, i32* %4, align 4
  %225 = and i32 %224, %223
  store i32 %225, i32* %4, align 4
  %226 = load i32, i32* @XUSBIO_PLL_CFG0_PADPLL_RESET_SWCTL, align 4
  %227 = xor i32 %226, -1
  %228 = load i32, i32* %4, align 4
  %229 = and i32 %228, %227
  store i32 %229, i32* %4, align 4
  %230 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %231 = load i32, i32* @XUSBIO_PLL_CFG0, align 4
  %232 = load i32, i32* %4, align 4
  %233 = call i32 @WR4(%struct.pll_sc* %230, i32 %231, i32 %232)
  %234 = call i32 @DELAY(i32 10)
  %235 = load i32, i32* @XUSBIO_PLL_CFG0_SEQ_ENABLE, align 4
  %236 = load i32, i32* %4, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %4, align 4
  %238 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %239 = load i32, i32* @XUSBIO_PLL_CFG0, align 4
  %240 = load i32, i32* %4, align 4
  %241 = call i32 @WR4(%struct.pll_sc* %238, i32 %239, i32 %240)
  %242 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %243 = load i32, i32* @SATA_PLL_CFG0, align 4
  %244 = call i32 @RD4(%struct.pll_sc* %242, i32 %243, i32* %4)
  %245 = load i32, i32* @SATA_PLL_CFG0_PADPLL_RESET_SWCTL, align 4
  %246 = xor i32 %245, -1
  %247 = load i32, i32* %4, align 4
  %248 = and i32 %247, %246
  store i32 %248, i32* %4, align 4
  %249 = load i32, i32* @SATA_PLL_CFG0_PADPLL_RESET_OVERRIDE_VALUE, align 4
  %250 = xor i32 %249, -1
  %251 = load i32, i32* %4, align 4
  %252 = and i32 %251, %250
  store i32 %252, i32* %4, align 4
  %253 = load i32, i32* @SATA_PLL_CFG0_PADPLL_USE_LOCKDET, align 4
  %254 = load i32, i32* %4, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %4, align 4
  %256 = load i32, i32* @SATA_PLL_CFG0_SEQ_IN_SWCTL, align 4
  %257 = xor i32 %256, -1
  %258 = load i32, i32* %4, align 4
  %259 = and i32 %258, %257
  store i32 %259, i32* %4, align 4
  %260 = load i32, i32* @SATA_PLL_CFG0_SEQ_RESET_INPUT_VALUE, align 4
  %261 = xor i32 %260, -1
  %262 = load i32, i32* %4, align 4
  %263 = and i32 %262, %261
  store i32 %263, i32* %4, align 4
  %264 = load i32, i32* @SATA_PLL_CFG0_SEQ_LANE_PD_INPUT_VALUE, align 4
  %265 = xor i32 %264, -1
  %266 = load i32, i32* %4, align 4
  %267 = and i32 %266, %265
  store i32 %267, i32* %4, align 4
  %268 = load i32, i32* @SATA_PLL_CFG0_SEQ_PADPLL_PD_INPUT_VALUE, align 4
  %269 = xor i32 %268, -1
  %270 = load i32, i32* %4, align 4
  %271 = and i32 %270, %269
  store i32 %271, i32* %4, align 4
  %272 = load i32, i32* @SATA_PLL_CFG0_SEQ_ENABLE, align 4
  %273 = xor i32 %272, -1
  %274 = load i32, i32* %4, align 4
  %275 = and i32 %274, %273
  store i32 %275, i32* %4, align 4
  %276 = load i32, i32* @SATA_PLL_CFG0_SEQ_START_STATE, align 4
  %277 = load i32, i32* %4, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %4, align 4
  %279 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %280 = load i32, i32* @SATA_PLL_CFG0, align 4
  %281 = load i32, i32* %4, align 4
  %282 = call i32 @WR4(%struct.pll_sc* %279, i32 %280, i32 %281)
  %283 = call i32 @DELAY(i32 10)
  %284 = load i32, i32* @SATA_PLL_CFG0_SEQ_ENABLE, align 4
  %285 = load i32, i32* %4, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %4, align 4
  %287 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %288 = load i32, i32* @SATA_PLL_CFG0, align 4
  %289 = load i32, i32* %4, align 4
  %290 = call i32 @WR4(%struct.pll_sc* %287, i32 %288, i32 %289)
  %291 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %292 = load i32, i32* @PCIE_PLL_CFG0, align 4
  %293 = call i32 @RD4(%struct.pll_sc* %291, i32 %292, i32* %4)
  %294 = load i32, i32* @PCIE_PLL_CFG0_SEQ_ENABLE, align 4
  %295 = load i32, i32* %4, align 4
  %296 = or i32 %295, %294
  store i32 %296, i32* %4, align 4
  %297 = load %struct.pll_sc*, %struct.pll_sc** %3, align 8
  %298 = load i32, i32* @PCIE_PLL_CFG0, align 4
  %299 = load i32, i32* %4, align 4
  %300 = call i32 @WR4(%struct.pll_sc* %297, i32 %298, i32 %299)
  store i32 0, i32* %2, align 4
  br label %301

301:                                              ; preds = %121, %119
  %302 = load i32, i32* %2, align 4
  ret i32 %302
}

declare dso_local i32 @RD4(%struct.pll_sc*, i32, i32*) #1

declare dso_local i32 @WR4(%struct.pll_sc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @set_divisors(%struct.pll_sc*, i32, i32, i32, i32) #1

declare dso_local i32 @pll_enable(%struct.pll_sc*) #1

declare dso_local i32 @wait_for_lock(%struct.pll_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
