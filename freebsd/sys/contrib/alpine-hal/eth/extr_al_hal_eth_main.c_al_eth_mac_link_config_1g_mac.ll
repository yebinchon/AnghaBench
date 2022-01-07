; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mac_link_config_1g_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mac_link_config_1g_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@AL_ETH_MAC_MODE_SGMII = common dso_local global i64 0, align 8
@ETH_MAC_SGMII_REG_ADDR_CTRL_REG = common dso_local global i32 0, align 4
@AL_FALSE = common dso_local global i64 0, align 8
@ETH_MAC_SGMII_REG_DATA_IF_MODE_SGMII_EN = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i64 0, align 8
@ETH_MAC_SGMII_REG_DATA_IF_MODE_SGMII_AN = common dso_local global i32 0, align 4
@ETH_MAC_SGMII_REG_DATA_CTRL_AN_ENABLE = common dso_local global i32 0, align 4
@AL_ETH_MAC_MODE_RGMII = common dso_local global i64 0, align 8
@ETH_MAC_GEN_RGMII_CFG_ENA_AUTO = common dso_local global i32 0, align 4
@ETH_MAC_GEN_RGMII_CFG_SET_1000_SEL = common dso_local global i32 0, align 4
@ETH_MAC_GEN_RGMII_CFG_SET_10_SEL = common dso_local global i32 0, align 4
@ETH_1G_MAC_CMD_CFG_HD_EN = common dso_local global i32 0, align 4
@ETH_MAC_SGMII_REG_DATA_IF_MODE_SGMII_DUPLEX = common dso_local global i32 0, align 4
@ETH_1G_MAC_CMD_CFG_1G_SPD = common dso_local global i32 0, align 4
@ETH_MAC_SGMII_REG_DATA_IF_MODE_SGMII_SPEED_1000 = common dso_local global i32 0, align 4
@ETH_1G_MAC_CMD_CFG_10M_SPD = common dso_local global i32 0, align 4
@ETH_MAC_SGMII_REG_DATA_IF_MODE_SGMII_SPEED_100 = common dso_local global i32 0, align 4
@ETH_MAC_SGMII_REG_ADDR_IF_MODE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_hal_eth_adapter*, i64, i64, i32, i64)* @al_eth_mac_link_config_1g_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_mac_link_config_1g_mac(%struct.al_hal_eth_adapter* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.al_hal_eth_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = call i32 @al_reg_read32(i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AL_ETH_MAC_MODE_SGMII, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %5
  %27 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* @ETH_MAC_SGMII_REG_ADDR_CTRL_REG, align 4
  %33 = call i32 @al_reg_write32(i32* %31, i32 %32)
  %34 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %35 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @al_reg_read32(i32* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @AL_FALSE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %26
  %44 = load i32, i32* @ETH_MAC_SGMII_REG_DATA_IF_MODE_SGMII_EN, align 4
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %43, %26
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @AL_TRUE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* @ETH_MAC_SGMII_REG_DATA_IF_MODE_SGMII_AN, align 4
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* @ETH_MAC_SGMII_REG_DATA_CTRL_AN_ENABLE, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %61

56:                                               ; preds = %45
  %57 = load i32, i32* @ETH_MAC_SGMII_REG_DATA_CTRL_AN_ENABLE, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %56, %49
  br label %62

62:                                               ; preds = %61, %5
  %63 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AL_ETH_MAC_MODE_RGMII, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %70 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = call i32 @al_reg_read32(i32* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @ETH_MAC_GEN_RGMII_CFG_ENA_AUTO, align 4
  %77 = call i32 @AL_REG_MASK_CLEAR(i32 %75, i32 %76)
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @ETH_MAC_GEN_RGMII_CFG_SET_1000_SEL, align 4
  %80 = call i32 @AL_REG_MASK_CLEAR(i32 %78, i32 %79)
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @ETH_MAC_GEN_RGMII_CFG_SET_10_SEL, align 4
  %83 = call i32 @AL_REG_MASK_CLEAR(i32 %81, i32 %82)
  %84 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %85 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @al_reg_write32(i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %68, %62
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @AL_TRUE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @ETH_1G_MAC_CMD_CFG_HD_EN, align 4
  %98 = call i32 @AL_REG_MASK_CLEAR(i32 %96, i32 %97)
  br label %106

99:                                               ; preds = %91
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @ETH_1G_MAC_CMD_CFG_HD_EN, align 4
  %102 = call i32 @AL_REG_MASK_SET(i32 %100, i32 %101)
  %103 = load i32, i32* @ETH_MAC_SGMII_REG_DATA_IF_MODE_SGMII_DUPLEX, align 4
  %104 = load i32, i32* %13, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %99, %95
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 1000
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @ETH_1G_MAC_CMD_CFG_1G_SPD, align 4
  %112 = call i32 @AL_REG_MASK_SET(i32 %110, i32 %111)
  %113 = load i32, i32* @ETH_MAC_SGMII_REG_DATA_IF_MODE_SGMII_SPEED_1000, align 4
  %114 = load i32, i32* %13, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %13, align 4
  br label %134

116:                                              ; preds = %106
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @ETH_1G_MAC_CMD_CFG_1G_SPD, align 4
  %119 = call i32 @AL_REG_MASK_CLEAR(i32 %117, i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %120, 10
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @ETH_1G_MAC_CMD_CFG_10M_SPD, align 4
  %125 = call i32 @AL_REG_MASK_SET(i32 %123, i32 %124)
  br label %133

126:                                              ; preds = %116
  %127 = load i32, i32* @ETH_MAC_SGMII_REG_DATA_IF_MODE_SGMII_SPEED_100, align 4
  %128 = load i32, i32* %13, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @ETH_1G_MAC_CMD_CFG_10M_SPD, align 4
  %132 = call i32 @AL_REG_MASK_CLEAR(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %126, %122
  br label %134

134:                                              ; preds = %133, %109
  %135 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %136 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @AL_ETH_MAC_MODE_SGMII, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %169

140:                                              ; preds = %134
  %141 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %142 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* @ETH_MAC_SGMII_REG_ADDR_IF_MODE_REG, align 4
  %147 = call i32 @al_reg_write32(i32* %145, i32 %146)
  %148 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %149 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %148, i32 0, i32 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @al_reg_write32(i32* %152, i32 %153)
  %155 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %156 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %155, i32 0, i32 1
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i32, i32* @ETH_MAC_SGMII_REG_ADDR_CTRL_REG, align 4
  %161 = call i32 @al_reg_write32(i32* %159, i32 %160)
  %162 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %163 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %162, i32 0, i32 1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @al_reg_write32(i32* %166, i32 %167)
  br label %169

169:                                              ; preds = %140, %134
  %170 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %171 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %170, i32 0, i32 1
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @al_reg_write32(i32* %174, i32 %175)
  ret void
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @AL_REG_MASK_CLEAR(i32, i32) #1

declare dso_local i32 @AL_REG_MASK_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
