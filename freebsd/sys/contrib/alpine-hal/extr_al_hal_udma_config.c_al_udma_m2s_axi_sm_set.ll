; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_axi_sm_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_axi_sm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma_axi_submaster = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@UDMA_AXI_M2S_COMP_WR_CFG_1_AWID_MASK = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_COMP_WR_CFG_1_AWCACHE_MASK = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_COMP_WR_CFG_1_AWCACHE_SHIFT = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_COMP_WR_CFG_1_AWBURST_MASK = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_COMP_WR_CFG_1_AWBURST_SHIFT = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_COMP_WR_CFG_2_AWUSER_MASK = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_COMP_WR_CFG_2_AWSIZE_MASK = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_COMP_WR_CFG_2_AWSIZE_SHIFT = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_COMP_WR_CFG_2_AWQOS_MASK = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_COMP_WR_CFG_2_AWQOS_SHIFT = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_COMP_WR_CFG_2_AWPROT_MASK = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_COMP_WR_CFG_2_AWPROT_SHIFT = common dso_local global i32 0, align 4
@UDMA_AXI_M2S_DESC_WR_CFG_1_MAX_AXI_BEATS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_udma_axi_submaster*, i32*, i32*, i32*)* @al_udma_m2s_axi_sm_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_udma_m2s_axi_sm_set(%struct.al_udma_axi_submaster* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.al_udma_axi_submaster*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.al_udma_axi_submaster* %0, %struct.al_udma_axi_submaster** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @al_reg_read32(i32* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_1_AWID_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %9, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %9, align 4
  %16 = load %struct.al_udma_axi_submaster*, %struct.al_udma_axi_submaster** %5, align 8
  %17 = getelementptr inbounds %struct.al_udma_axi_submaster, %struct.al_udma_axi_submaster* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_1_AWID_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_1_AWCACHE_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load %struct.al_udma_axi_submaster*, %struct.al_udma_axi_submaster** %5, align 8
  %28 = getelementptr inbounds %struct.al_udma_axi_submaster, %struct.al_udma_axi_submaster* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_1_AWCACHE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_1_AWCACHE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_1_AWBURST_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load %struct.al_udma_axi_submaster*, %struct.al_udma_axi_submaster** %5, align 8
  %41 = getelementptr inbounds %struct.al_udma_axi_submaster, %struct.al_udma_axi_submaster* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_1_AWBURST_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_1_AWBURST_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @al_reg_write32(i32* %49, i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @al_reg_read32(i32* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_2_AWUSER_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load %struct.al_udma_axi_submaster*, %struct.al_udma_axi_submaster** %5, align 8
  %59 = getelementptr inbounds %struct.al_udma_axi_submaster, %struct.al_udma_axi_submaster* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_2_AWUSER_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_2_AWSIZE_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load %struct.al_udma_axi_submaster*, %struct.al_udma_axi_submaster** %5, align 8
  %70 = getelementptr inbounds %struct.al_udma_axi_submaster, %struct.al_udma_axi_submaster* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_2_AWSIZE_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_2_AWSIZE_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_2_AWQOS_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load %struct.al_udma_axi_submaster*, %struct.al_udma_axi_submaster** %5, align 8
  %83 = getelementptr inbounds %struct.al_udma_axi_submaster, %struct.al_udma_axi_submaster* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_2_AWQOS_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_2_AWQOS_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_2_AWPROT_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load %struct.al_udma_axi_submaster*, %struct.al_udma_axi_submaster** %5, align 8
  %96 = getelementptr inbounds %struct.al_udma_axi_submaster, %struct.al_udma_axi_submaster* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_2_AWPROT_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* @UDMA_AXI_M2S_COMP_WR_CFG_2_AWPROT_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @al_reg_write32(i32* %104, i32 %105)
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @al_reg_read32(i32* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* @UDMA_AXI_M2S_DESC_WR_CFG_1_MAX_AXI_BEATS_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %9, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %9, align 4
  %113 = load %struct.al_udma_axi_submaster*, %struct.al_udma_axi_submaster** %5, align 8
  %114 = getelementptr inbounds %struct.al_udma_axi_submaster, %struct.al_udma_axi_submaster* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @UDMA_AXI_M2S_DESC_WR_CFG_1_MAX_AXI_BEATS_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* %9, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %9, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @al_reg_write32(i32* %120, i32 %121)
  ret i32 0
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
