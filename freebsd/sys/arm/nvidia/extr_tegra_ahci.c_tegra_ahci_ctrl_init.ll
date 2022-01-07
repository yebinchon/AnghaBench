; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_ahci.c_tegra_ahci_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_ahci.c_tegra_ahci_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sata_pad_calibration = type { i32, i32, i32, i32 }
%struct.tegra_ahci_sc = type { i32 }

@SATA_CONFIGURATION = common dso_local global i64 0, align 8
@SATA_CONFIGURATION_EN_FPCI = common dso_local global i32 0, align 4
@FUSE_SATA_CALIB = common dso_local global i32 0, align 4
@tegra124_pad_calibration = common dso_local global %struct.sata_pad_calibration* null, align 8
@FUSE_SATA_CALIB_MASK = common dso_local global i32 0, align 4
@SCFG_OFFSET = common dso_local global i64 0, align 8
@T_SATA0_INDEX = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL1_GEN1 = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL1_GEN1_TX_AMP_MASK = common dso_local global i32 0, align 4
@T_SATA0_CHX_PHY_CTRL1_GEN1_TX_AMP_SHIFT = common dso_local global i32 0, align 4
@T_SATA0_CHX_PHY_CTRL1_GEN1_TX_PEAK_MASK = common dso_local global i32 0, align 4
@T_SATA0_CHX_PHY_CTRL1_GEN1_TX_PEAK_SHIFT = common dso_local global i32 0, align 4
@T_SATA0_CHX_PHY_CTRL1_GEN2 = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL1_GEN2_TX_AMP_MASK = common dso_local global i32 0, align 4
@T_SATA0_CHX_PHY_CTRL1_GEN2_TX_AMP_SHIFT = common dso_local global i32 0, align 4
@T_SATA0_CHX_PHY_CTRL1_GEN2_TX_PEAK_MASK = common dso_local global i32 0, align 4
@T_SATA0_CHX_PHY_CTRL1_GEN2_TX_PEAK_SHIFT = common dso_local global i32 0, align 4
@T_SATA0_CHX_PHY_CTRL11 = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL11_GEN2_RX_EQ = common dso_local global i32 0, align 4
@T_SATA0_CHX_PHY_CTRL2 = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL2_CDR_CNTL_GEN1 = common dso_local global i32 0, align 4
@T_SATA0_CFG_SATA = common dso_local global i64 0, align 8
@T_SATA0_CFG_SATA_BACKDOOR_PROG_IF_EN = common dso_local global i32 0, align 4
@T_SATA0_BKDOOR_CC = common dso_local global i64 0, align 8
@T_SATA0_CFG_1 = common dso_local global i64 0, align 8
@T_SATA0_CFG_1_IO_SPACE = common dso_local global i32 0, align 4
@T_SATA0_CFG_1_MEMORY_SPACE = common dso_local global i32 0, align 4
@T_SATA0_CFG_1_BUS_MASTER = common dso_local global i32 0, align 4
@T_SATA0_CFG_1_SERR = common dso_local global i32 0, align 4
@SATA_FPCI_BAR5 = common dso_local global i64 0, align 8
@SATA_FPCI_BAR5_START_SHIFT = common dso_local global i32 0, align 4
@T_SATA0_CFG_9 = common dso_local global i64 0, align 8
@T_SATA0_CFG_9_BASE_ADDRESS_SHIFT = common dso_local global i32 0, align 4
@SATA_INTR_MASK = common dso_local global i64 0, align 8
@SATA_INTR_MASK_IP_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_ahci_sc*)* @tegra_ahci_ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_ahci_ctrl_init(%struct.tegra_ahci_sc* %0) #0 {
  %2 = alloca %struct.tegra_ahci_sc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sata_pad_calibration*, align 8
  store %struct.tegra_ahci_sc* %0, %struct.tegra_ahci_sc** %2, align 8
  %5 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %6 = load i64, i64* @SATA_CONFIGURATION, align 8
  %7 = call i32 @SATA_RD4(%struct.tegra_ahci_sc* %5, i64 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @SATA_CONFIGURATION_EN_FPCI, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %12 = load i64, i64* @SATA_CONFIGURATION, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @SATA_WR4(%struct.tegra_ahci_sc* %11, i64 %12, i32 %13)
  %15 = load i32, i32* @FUSE_SATA_CALIB, align 4
  %16 = call i32 @tegra_fuse_read_4(i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.sata_pad_calibration*, %struct.sata_pad_calibration** @tegra124_pad_calibration, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @FUSE_SATA_CALIB_MASK, align 4
  %20 = and i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.sata_pad_calibration, %struct.sata_pad_calibration* %17, i64 %21
  store %struct.sata_pad_calibration* %22, %struct.sata_pad_calibration** %4, align 8
  %23 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %24 = load i64, i64* @SCFG_OFFSET, align 8
  %25 = load i64, i64* @T_SATA0_INDEX, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @SATA_WR4(%struct.tegra_ahci_sc* %23, i64 %26, i32 1)
  %28 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %29 = load i64, i64* @SCFG_OFFSET, align 8
  %30 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN1, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @SATA_RD4(%struct.tegra_ahci_sc* %28, i64 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @T_SATA0_CHX_PHY_CTRL1_GEN1_TX_AMP_MASK, align 4
  %34 = load i32, i32* @T_SATA0_CHX_PHY_CTRL1_GEN1_TX_AMP_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @T_SATA0_CHX_PHY_CTRL1_GEN1_TX_PEAK_MASK, align 4
  %40 = load i32, i32* @T_SATA0_CHX_PHY_CTRL1_GEN1_TX_PEAK_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load %struct.sata_pad_calibration*, %struct.sata_pad_calibration** %4, align 8
  %46 = getelementptr inbounds %struct.sata_pad_calibration, %struct.sata_pad_calibration* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @T_SATA0_CHX_PHY_CTRL1_GEN1_TX_AMP_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load %struct.sata_pad_calibration*, %struct.sata_pad_calibration** %4, align 8
  %53 = getelementptr inbounds %struct.sata_pad_calibration, %struct.sata_pad_calibration* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @T_SATA0_CHX_PHY_CTRL1_GEN1_TX_PEAK_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %60 = load i64, i64* @SCFG_OFFSET, align 8
  %61 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN1, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @SATA_WR4(%struct.tegra_ahci_sc* %59, i64 %62, i32 %63)
  %65 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %66 = load i64, i64* @SCFG_OFFSET, align 8
  %67 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN2, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @SATA_RD4(%struct.tegra_ahci_sc* %65, i64 %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* @T_SATA0_CHX_PHY_CTRL1_GEN2_TX_AMP_MASK, align 4
  %71 = load i32, i32* @T_SATA0_CHX_PHY_CTRL1_GEN2_TX_AMP_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %3, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @T_SATA0_CHX_PHY_CTRL1_GEN2_TX_PEAK_MASK, align 4
  %77 = load i32, i32* @T_SATA0_CHX_PHY_CTRL1_GEN2_TX_PEAK_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %3, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %3, align 4
  %82 = load %struct.sata_pad_calibration*, %struct.sata_pad_calibration** %4, align 8
  %83 = getelementptr inbounds %struct.sata_pad_calibration, %struct.sata_pad_calibration* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @T_SATA0_CHX_PHY_CTRL1_GEN2_TX_AMP_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %3, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %3, align 4
  %89 = load %struct.sata_pad_calibration*, %struct.sata_pad_calibration** %4, align 8
  %90 = getelementptr inbounds %struct.sata_pad_calibration, %struct.sata_pad_calibration* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @T_SATA0_CHX_PHY_CTRL1_GEN2_TX_PEAK_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* %3, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %3, align 4
  %96 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %97 = load i64, i64* @SCFG_OFFSET, align 8
  %98 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN2, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @SATA_WR4(%struct.tegra_ahci_sc* %96, i64 %99, i32 %100)
  %102 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %103 = load i64, i64* @SCFG_OFFSET, align 8
  %104 = load i64, i64* @T_SATA0_CHX_PHY_CTRL11, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i32, i32* @T_SATA0_CHX_PHY_CTRL11_GEN2_RX_EQ, align 4
  %107 = call i32 @SATA_WR4(%struct.tegra_ahci_sc* %102, i64 %105, i32 %106)
  %108 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %109 = load i64, i64* @SCFG_OFFSET, align 8
  %110 = load i64, i64* @T_SATA0_CHX_PHY_CTRL2, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i32, i32* @T_SATA0_CHX_PHY_CTRL2_CDR_CNTL_GEN1, align 4
  %113 = call i32 @SATA_WR4(%struct.tegra_ahci_sc* %108, i64 %111, i32 %112)
  %114 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %115 = load i64, i64* @SCFG_OFFSET, align 8
  %116 = load i64, i64* @T_SATA0_INDEX, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @SATA_WR4(%struct.tegra_ahci_sc* %114, i64 %117, i32 0)
  %119 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %120 = load i64, i64* @SCFG_OFFSET, align 8
  %121 = load i64, i64* @T_SATA0_CFG_SATA, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @SATA_RD4(%struct.tegra_ahci_sc* %119, i64 %122)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* @T_SATA0_CFG_SATA_BACKDOOR_PROG_IF_EN, align 4
  %125 = load i32, i32* %3, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %3, align 4
  %127 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %128 = load i64, i64* @SCFG_OFFSET, align 8
  %129 = load i64, i64* @T_SATA0_CFG_SATA, align 8
  %130 = add nsw i64 %128, %129
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @SATA_WR4(%struct.tegra_ahci_sc* %127, i64 %130, i32 %131)
  %133 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %134 = load i64, i64* @SCFG_OFFSET, align 8
  %135 = load i64, i64* @T_SATA0_BKDOOR_CC, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @SATA_WR4(%struct.tegra_ahci_sc* %133, i64 %136, i32 17170688)
  %138 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %139 = load i64, i64* @SCFG_OFFSET, align 8
  %140 = load i64, i64* @T_SATA0_CFG_SATA, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @SATA_RD4(%struct.tegra_ahci_sc* %138, i64 %141)
  store i32 %142, i32* %3, align 4
  %143 = load i32, i32* @T_SATA0_CFG_SATA_BACKDOOR_PROG_IF_EN, align 4
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %3, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %3, align 4
  %147 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %148 = load i64, i64* @SCFG_OFFSET, align 8
  %149 = load i64, i64* @T_SATA0_CFG_SATA, align 8
  %150 = add nsw i64 %148, %149
  %151 = load i32, i32* %3, align 4
  %152 = call i32 @SATA_WR4(%struct.tegra_ahci_sc* %147, i64 %150, i32 %151)
  %153 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %154 = load i64, i64* @SCFG_OFFSET, align 8
  %155 = load i64, i64* @T_SATA0_CFG_1, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @SATA_RD4(%struct.tegra_ahci_sc* %153, i64 %156)
  store i32 %157, i32* %3, align 4
  %158 = load i32, i32* @T_SATA0_CFG_1_IO_SPACE, align 4
  %159 = load i32, i32* %3, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %3, align 4
  %161 = load i32, i32* @T_SATA0_CFG_1_MEMORY_SPACE, align 4
  %162 = load i32, i32* %3, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %3, align 4
  %164 = load i32, i32* @T_SATA0_CFG_1_BUS_MASTER, align 4
  %165 = load i32, i32* %3, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %3, align 4
  %167 = load i32, i32* @T_SATA0_CFG_1_SERR, align 4
  %168 = load i32, i32* %3, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %3, align 4
  %170 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %171 = load i64, i64* @SCFG_OFFSET, align 8
  %172 = load i64, i64* @T_SATA0_CFG_1, align 8
  %173 = add nsw i64 %171, %172
  %174 = load i32, i32* %3, align 4
  %175 = call i32 @SATA_WR4(%struct.tegra_ahci_sc* %170, i64 %173, i32 %174)
  %176 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %177 = load i64, i64* @SATA_FPCI_BAR5, align 8
  %178 = load i32, i32* @SATA_FPCI_BAR5_START_SHIFT, align 4
  %179 = shl i32 65536, %178
  %180 = call i32 @SATA_WR4(%struct.tegra_ahci_sc* %176, i64 %177, i32 %179)
  %181 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %182 = load i64, i64* @SCFG_OFFSET, align 8
  %183 = load i64, i64* @T_SATA0_CFG_9, align 8
  %184 = add nsw i64 %182, %183
  %185 = load i32, i32* @T_SATA0_CFG_9_BASE_ADDRESS_SHIFT, align 4
  %186 = shl i32 32768, %185
  %187 = call i32 @SATA_WR4(%struct.tegra_ahci_sc* %181, i64 %184, i32 %186)
  %188 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %189 = load i64, i64* @SATA_INTR_MASK, align 8
  %190 = call i32 @SATA_RD4(%struct.tegra_ahci_sc* %188, i64 %189)
  store i32 %190, i32* %3, align 4
  %191 = load i32, i32* @SATA_INTR_MASK_IP_INT_MASK, align 4
  %192 = load i32, i32* %3, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %3, align 4
  %194 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %2, align 8
  %195 = load i64, i64* @SATA_INTR_MASK, align 8
  %196 = load i32, i32* %3, align 4
  %197 = call i32 @SATA_WR4(%struct.tegra_ahci_sc* %194, i64 %195, i32 %196)
  ret i32 0
}

declare dso_local i32 @SATA_RD4(%struct.tegra_ahci_sc*, i64) #1

declare dso_local i32 @SATA_WR4(%struct.tegra_ahci_sc*, i64, i32) #1

declare dso_local i32 @tegra_fuse_read_4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
