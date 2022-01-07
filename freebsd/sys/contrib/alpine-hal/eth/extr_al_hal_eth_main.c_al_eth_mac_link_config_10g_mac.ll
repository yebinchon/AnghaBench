; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mac_link_config_10g_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_mac_link_config_10g_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ETH_10G_MAC_IF_MODE_SGMII_EN_MASK = common dso_local global i32 0, align 4
@ETH_10G_MAC_CONTROL_AN_EN_MASK = common dso_local global i32 0, align 4
@ETH_10G_MAC_IF_MODE_SGMII_AN_MASK = common dso_local global i32 0, align 4
@ETH_10G_MAC_IF_MODE_SGMII_SPEED_1G = common dso_local global i32 0, align 4
@ETH_10G_MAC_IF_MODE_SGMII_SPEED_100M = common dso_local global i32 0, align 4
@ETH_10G_MAC_IF_MODE_SGMII_SPEED_10M = common dso_local global i32 0, align 4
@ETH_10G_MAC_IF_MODE_SGMII_SPEED_MASK = common dso_local global i32 0, align 4
@ETH_10G_MAC_IF_MODE_SGMII_SPEED_SHIFT = common dso_local global i32 0, align 4
@ETH_10G_MAC_IF_MODE_SGMII_DUPLEX_MASK = common dso_local global i32 0, align 4
@ETH_10G_MAC_IF_MODE_SGMII_DUPLEX_SHIFT = common dso_local global i32 0, align 4
@ETH_10G_MAC_IF_MODE_SGMII_DUPLEX_FULL = common dso_local global i32 0, align 4
@ETH_10G_MAC_IF_MODE_SGMII_DUPLEX_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_hal_eth_adapter*, i64, i64, i32, i64)* @al_eth_mac_link_config_10g_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_mac_link_config_10g_mac(%struct.al_hal_eth_adapter* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.al_hal_eth_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @al_reg_read32(i32* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @ETH_10G_MAC_IF_MODE_SGMII_EN_MASK, align 4
  %25 = call i32 @AL_REG_MASK_CLEAR(i32 %23, i32 %24)
  %26 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = call i32 @al_reg_read32(i32* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @ETH_10G_MAC_CONTROL_AN_EN_MASK, align 4
  %37 = call i32 @AL_REG_MASK_SET(i32 %35, i32 %36)
  br label %42

38:                                               ; preds = %22
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @ETH_10G_MAC_CONTROL_AN_EN_MASK, align 4
  %41 = call i32 @AL_REG_MASK_CLEAR(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @al_reg_write32(i32* %47, i32 %48)
  br label %95

50:                                               ; preds = %5
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @ETH_10G_MAC_IF_MODE_SGMII_EN_MASK, align 4
  %53 = call i32 @AL_REG_MASK_SET(i32 %51, i32 %52)
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @ETH_10G_MAC_IF_MODE_SGMII_AN_MASK, align 4
  %59 = call i32 @AL_REG_MASK_SET(i32 %57, i32 %58)
  br label %94

60:                                               ; preds = %50
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @ETH_10G_MAC_IF_MODE_SGMII_AN_MASK, align 4
  %63 = call i32 @AL_REG_MASK_CLEAR(i32 %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 1000
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @ETH_10G_MAC_IF_MODE_SGMII_SPEED_1G, align 4
  store i32 %67, i32* %12, align 4
  br label %76

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 100
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @ETH_10G_MAC_IF_MODE_SGMII_SPEED_100M, align 4
  store i32 %72, i32* %12, align 4
  br label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @ETH_10G_MAC_IF_MODE_SGMII_SPEED_10M, align 4
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %73, %71
  br label %76

76:                                               ; preds = %75, %66
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @ETH_10G_MAC_IF_MODE_SGMII_SPEED_MASK, align 4
  %79 = load i32, i32* @ETH_10G_MAC_IF_MODE_SGMII_SPEED_SHIFT, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @AL_REG_FIELD_SET(i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @ETH_10G_MAC_IF_MODE_SGMII_DUPLEX_MASK, align 4
  %84 = load i32, i32* @ETH_10G_MAC_IF_MODE_SGMII_DUPLEX_SHIFT, align 4
  %85 = load i64, i64* %10, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32, i32* @ETH_10G_MAC_IF_MODE_SGMII_DUPLEX_FULL, align 4
  br label %91

89:                                               ; preds = %76
  %90 = load i32, i32* @ETH_10G_MAC_IF_MODE_SGMII_DUPLEX_HALF, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = call i32 @AL_REG_FIELD_SET(i32 %82, i32 %83, i32 %84, i32 %92)
  br label %94

94:                                               ; preds = %91, %56
  br label %95

95:                                               ; preds = %94, %42
  %96 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %6, align 8
  %97 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @al_reg_write32(i32* %100, i32 %101)
  ret void
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @AL_REG_MASK_CLEAR(i32, i32) #1

declare dso_local i32 @AL_REG_MASK_SET(i32, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @AL_REG_FIELD_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
