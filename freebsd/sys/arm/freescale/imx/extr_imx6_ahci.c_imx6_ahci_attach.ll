; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ahci.c_imx6_ahci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ahci.c_imx6_ahci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller = type { i32, i32*, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"error enabling controller and phy\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@IOMUX_GPR13 = common dso_local global i32 0, align 4
@SATA_PHY_CLOCK_RESET = common dso_local global i32 0, align 4
@SATA_PHY_CLOCK_RESET_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot reset PHY\0A\00", align 1
@SATA_PHY_LANE0_OUT_STAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot read LANE0 status\0A\00", align 1
@SATA_PHY_LANE0_OUT_STAT_RX_PLL_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"time out reading LANE0 status\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@AHCI_CAP = common dso_local global i32 0, align 4
@AHCI_CAP_SSS = common dso_local global i32 0, align 4
@AHCI_PI = common dso_local global i32 0, align 4
@SATA_TIMER1MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @imx6_ahci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6_ahci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ahci_controller* @device_get_softc(i32 %9)
  store %struct.ahci_controller* %10, %struct.ahci_controller** %4, align 8
  %11 = call i32 (...) @imx6_ccm_sata_enable()
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %175

18:                                               ; preds = %1
  %19 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %20 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %22 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %24 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %26 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %28 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %30 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SYS_RES_MEMORY, align 4
  %33 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %34 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %33, i32 0, i32 2
  %35 = load i32, i32* @RF_ACTIVE, align 4
  %36 = call i32* @bus_alloc_resource_any(i32 %31, i32 %32, i64* %34, i32 %35)
  %37 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %38 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = icmp eq i32* %36, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %18
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %175

42:                                               ; preds = %18
  %43 = load i32, i32* @IOMUX_GPR13, align 4
  %44 = call i32 @imx_iomux_gpr_get(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = call i32 @IOMUX_GPR13_SATA_PHY_8(i32 7)
  %46 = call i32 @IOMUX_GPR13_SATA_PHY_7(i32 31)
  %47 = or i32 %45, %46
  %48 = call i32 @IOMUX_GPR13_SATA_PHY_6(i32 7)
  %49 = or i32 %47, %48
  %50 = call i32 @IOMUX_GPR13_SATA_SPEED(i32 1)
  %51 = or i32 %49, %50
  %52 = call i32 @IOMUX_GPR13_SATA_PHY_5(i32 1)
  %53 = or i32 %51, %52
  %54 = call i32 @IOMUX_GPR13_SATA_PHY_4(i32 7)
  %55 = or i32 %53, %54
  %56 = call i32 @IOMUX_GPR13_SATA_PHY_3(i32 15)
  %57 = or i32 %55, %56
  %58 = call i32 @IOMUX_GPR13_SATA_PHY_2(i32 31)
  %59 = or i32 %57, %58
  %60 = call i32 @IOMUX_GPR13_SATA_PHY_1(i32 1)
  %61 = or i32 %59, %60
  %62 = call i32 @IOMUX_GPR13_SATA_PHY_0(i32 1)
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = call i32 @IOMUX_GPR13_SATA_PHY_8(i32 5)
  %68 = call i32 @IOMUX_GPR13_SATA_PHY_7(i32 18)
  %69 = or i32 %67, %68
  %70 = call i32 @IOMUX_GPR13_SATA_PHY_6(i32 3)
  %71 = or i32 %69, %70
  %72 = call i32 @IOMUX_GPR13_SATA_SPEED(i32 1)
  %73 = or i32 %71, %72
  %74 = call i32 @IOMUX_GPR13_SATA_PHY_5(i32 0)
  %75 = or i32 %73, %74
  %76 = call i32 @IOMUX_GPR13_SATA_PHY_4(i32 4)
  %77 = or i32 %75, %76
  %78 = call i32 @IOMUX_GPR13_SATA_PHY_3(i32 0)
  %79 = or i32 %77, %78
  %80 = call i32 @IOMUX_GPR13_SATA_PHY_2(i32 17)
  %81 = or i32 %79, %80
  %82 = call i32 @IOMUX_GPR13_SATA_PHY_1(i32 1)
  %83 = or i32 %81, %82
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* @IOMUX_GPR13, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @imx_iomux_gpr_set(i32 %86, i32 %87)
  %89 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %90 = load i32, i32* @SATA_PHY_CLOCK_RESET, align 4
  %91 = load i32, i32* @SATA_PHY_CLOCK_RESET_RST, align 4
  %92 = call i32 @imx6_ahci_phy_write(%struct.ahci_controller* %89, i32 %90, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %42
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @device_printf(i32 %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %164

98:                                               ; preds = %42
  store i32 50, i32* %8, align 4
  br label %99

99:                                               ; preds = %119, %98
  %100 = load i32, i32* %8, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %99
  %103 = call i32 @DELAY(i32 100)
  %104 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %105 = load i32, i32* @SATA_PHY_LANE0_OUT_STAT, align 4
  %106 = call i32 @imx6_ahci_phy_read(%struct.ahci_controller* %104, i32 %105, i32* %5)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %164

112:                                              ; preds = %102
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @SATA_PHY_LANE0_OUT_STAT_RX_PLL_STATE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %122

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %8, align 4
  br label %99

122:                                              ; preds = %117, %99
  %123 = load i32, i32* %8, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @device_printf(i32 %126, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %128, i32* %7, align 4
  br label %164

129:                                              ; preds = %122
  %130 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %131 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* @AHCI_CAP, align 4
  %134 = call i32 @ATA_INL(i32* %132, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %136 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* @AHCI_CAP, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @AHCI_CAP_SSS, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @ATA_OUTL(i32* %137, i32 %138, i32 %141)
  %143 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %144 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* @AHCI_PI, align 4
  %147 = call i32 @ATA_INL(i32* %145, i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %149 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* @AHCI_PI, align 4
  %152 = load i32, i32* %6, align 4
  %153 = or i32 %152, 1
  %154 = call i32 @ATA_OUTL(i32* %150, i32 %151, i32 %153)
  %155 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %156 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* @SATA_TIMER1MS, align 4
  %159 = call i32 (...) @imx_ccm_ahb_hz()
  %160 = sdiv i32 %159, 1000
  %161 = call i32 @ATA_OUTL(i32* %157, i32 %158, i32 %160)
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @ahci_attach(i32 %162)
  store i32 %163, i32* %2, align 4
  br label %175

164:                                              ; preds = %125, %109, %95
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* @SYS_RES_MEMORY, align 4
  %167 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %168 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %171 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @bus_release_resource(i32 %165, i32 %166, i64 %169, i32* %172)
  %174 = load i32, i32* %7, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %164, %129, %40, %14
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.ahci_controller* @device_get_softc(i32) #1

declare dso_local i32 @imx6_ccm_sata_enable(...) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @imx_iomux_gpr_get(i32) #1

declare dso_local i32 @IOMUX_GPR13_SATA_PHY_8(i32) #1

declare dso_local i32 @IOMUX_GPR13_SATA_PHY_7(i32) #1

declare dso_local i32 @IOMUX_GPR13_SATA_PHY_6(i32) #1

declare dso_local i32 @IOMUX_GPR13_SATA_SPEED(i32) #1

declare dso_local i32 @IOMUX_GPR13_SATA_PHY_5(i32) #1

declare dso_local i32 @IOMUX_GPR13_SATA_PHY_4(i32) #1

declare dso_local i32 @IOMUX_GPR13_SATA_PHY_3(i32) #1

declare dso_local i32 @IOMUX_GPR13_SATA_PHY_2(i32) #1

declare dso_local i32 @IOMUX_GPR13_SATA_PHY_1(i32) #1

declare dso_local i32 @IOMUX_GPR13_SATA_PHY_0(i32) #1

declare dso_local i32 @imx_iomux_gpr_set(i32, i32) #1

declare dso_local i32 @imx6_ahci_phy_write(%struct.ahci_controller*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @imx6_ahci_phy_read(%struct.ahci_controller*, i32, i32*) #1

declare dso_local i32 @ATA_INL(i32*, i32) #1

declare dso_local i32 @ATA_OUTL(i32*, i32, i32) #1

declare dso_local i32 @imx_ccm_ahb_hz(...) #1

declare dso_local i32 @ahci_attach(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
