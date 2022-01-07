; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_axi_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_axi_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udma_gen_axi = type { i32, i32, i32 }
%struct.al_udma_axi_conf = type { i64, i64, i64, i64, i64, i32, i32 }

@UDMA_GEN_AXI_CFG_2_ARB_PROMOTION_MASK = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i64 0, align 8
@UDMA_GEN_AXI_ENDIAN_CFG_SWAP_64B_EN = common dso_local global i32 0, align 4
@UDMA_GEN_AXI_ENDIAN_CFG_SWAP_S2M_DATA = common dso_local global i32 0, align 4
@UDMA_GEN_AXI_ENDIAN_CFG_SWAP_S2M_DESC = common dso_local global i32 0, align 4
@UDMA_GEN_AXI_ENDIAN_CFG_SWAP_M2S_DATA = common dso_local global i32 0, align 4
@UDMA_GEN_AXI_ENDIAN_CFG_SWAP_M2S_DESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_axi_set(%struct.udma_gen_axi* %0, %struct.al_udma_axi_conf* %1) #0 {
  %3 = alloca %struct.udma_gen_axi*, align 8
  %4 = alloca %struct.al_udma_axi_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.udma_gen_axi* %0, %struct.udma_gen_axi** %3, align 8
  store %struct.al_udma_axi_conf* %1, %struct.al_udma_axi_conf** %4, align 8
  %6 = load %struct.udma_gen_axi*, %struct.udma_gen_axi** %3, align 8
  %7 = getelementptr inbounds %struct.udma_gen_axi, %struct.udma_gen_axi* %6, i32 0, i32 2
  %8 = load %struct.al_udma_axi_conf*, %struct.al_udma_axi_conf** %4, align 8
  %9 = getelementptr inbounds %struct.al_udma_axi_conf, %struct.al_udma_axi_conf* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @al_reg_write32(i32* %7, i32 %10)
  %12 = load %struct.udma_gen_axi*, %struct.udma_gen_axi** %3, align 8
  %13 = getelementptr inbounds %struct.udma_gen_axi, %struct.udma_gen_axi* %12, i32 0, i32 1
  %14 = call i32 @al_reg_read32(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @UDMA_GEN_AXI_CFG_2_ARB_PROMOTION_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.al_udma_axi_conf*, %struct.al_udma_axi_conf** %4, align 8
  %20 = getelementptr inbounds %struct.al_udma_axi_conf, %struct.al_udma_axi_conf* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.udma_gen_axi*, %struct.udma_gen_axi** %3, align 8
  %25 = getelementptr inbounds %struct.udma_gen_axi, %struct.udma_gen_axi* %24, i32 0, i32 1
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @al_reg_write32(i32* %25, i32 %26)
  %28 = load %struct.udma_gen_axi*, %struct.udma_gen_axi** %3, align 8
  %29 = getelementptr inbounds %struct.udma_gen_axi, %struct.udma_gen_axi* %28, i32 0, i32 0
  %30 = call i32 @al_reg_read32(i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.al_udma_axi_conf*, %struct.al_udma_axi_conf** %4, align 8
  %32 = getelementptr inbounds %struct.al_udma_axi_conf, %struct.al_udma_axi_conf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AL_TRUE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load i32, i32* @UDMA_GEN_AXI_ENDIAN_CFG_SWAP_64B_EN, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %45

40:                                               ; preds = %2
  %41 = load i32, i32* @UDMA_GEN_AXI_ENDIAN_CFG_SWAP_64B_EN, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.al_udma_axi_conf*, %struct.al_udma_axi_conf** %4, align 8
  %47 = getelementptr inbounds %struct.al_udma_axi_conf, %struct.al_udma_axi_conf* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AL_TRUE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @UDMA_GEN_AXI_ENDIAN_CFG_SWAP_S2M_DATA, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %60

55:                                               ; preds = %45
  %56 = load i32, i32* @UDMA_GEN_AXI_ENDIAN_CFG_SWAP_S2M_DATA, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load %struct.al_udma_axi_conf*, %struct.al_udma_axi_conf** %4, align 8
  %62 = getelementptr inbounds %struct.al_udma_axi_conf, %struct.al_udma_axi_conf* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AL_TRUE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @UDMA_GEN_AXI_ENDIAN_CFG_SWAP_S2M_DESC, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %75

70:                                               ; preds = %60
  %71 = load i32, i32* @UDMA_GEN_AXI_ENDIAN_CFG_SWAP_S2M_DESC, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %66
  %76 = load %struct.al_udma_axi_conf*, %struct.al_udma_axi_conf** %4, align 8
  %77 = getelementptr inbounds %struct.al_udma_axi_conf, %struct.al_udma_axi_conf* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AL_TRUE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @UDMA_GEN_AXI_ENDIAN_CFG_SWAP_M2S_DATA, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %90

85:                                               ; preds = %75
  %86 = load i32, i32* @UDMA_GEN_AXI_ENDIAN_CFG_SWAP_M2S_DATA, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %85, %81
  %91 = load %struct.al_udma_axi_conf*, %struct.al_udma_axi_conf** %4, align 8
  %92 = getelementptr inbounds %struct.al_udma_axi_conf, %struct.al_udma_axi_conf* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AL_TRUE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* @UDMA_GEN_AXI_ENDIAN_CFG_SWAP_M2S_DESC, align 4
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  br label %105

100:                                              ; preds = %90
  %101 = load i32, i32* @UDMA_GEN_AXI_ENDIAN_CFG_SWAP_M2S_DESC, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %5, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %100, %96
  %106 = load %struct.udma_gen_axi*, %struct.udma_gen_axi** %3, align 8
  %107 = getelementptr inbounds %struct.udma_gen_axi, %struct.udma_gen_axi* %106, i32 0, i32 0
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @al_reg_write32(i32* %107, i32 %108)
  ret i32 0
}

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_reg_read32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
