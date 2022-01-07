; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_tx_protocol_detect_table_entry_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_tx_protocol_detect_table_entry_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.al_eth_tx_gpd_cam_entry = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@AL_ETH_TX_GPD_L3_PROTO_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GPD_L3_PROTO_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GPD_L4_PROTO_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GPD_L4_PROTO_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GPD_TUNNEL_CTRL_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GPD_TUNNEL_CTRL_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GPD_SRC_VLAN_CNT_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GPD_SRC_VLAN_CNT_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GPD_CAM_CTRL_VALID_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"al_eth_tx_generic_crc_entry_set, line [%d], tx_gpd_cam_ctrl: %#x\00", align 1
@AL_ETH_TX_GPD_CAM_MASK_2_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"al_eth_tx_generic_crc_entry_set, line [%d], tx_gpd_cam_mask_2: %#x\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"al_eth_tx_generic_crc_entry_set, line [%d], tx_gpd_cam_mask_1: %#x\00", align 1
@AL_ETH_TX_GPD_CAM_DATA_2_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"al_eth_tx_generic_crc_entry_set, line [%d], tx_gpd_cam_data_2: %#x\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"al_eth_tx_generic_crc_entry_set, line [%d], tx_gpd_cam_data_1: %#x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_tx_protocol_detect_table_entry_set(%struct.al_hal_eth_adapter* %0, i32 %1, %struct.al_eth_tx_gpd_cam_entry* %2) #0 {
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_eth_tx_gpd_cam_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.al_eth_tx_gpd_cam_entry* %2, %struct.al_eth_tx_gpd_cam_entry** %6, align 8
  %9 = load %struct.al_eth_tx_gpd_cam_entry*, %struct.al_eth_tx_gpd_cam_entry** %6, align 8
  %10 = getelementptr inbounds %struct.al_eth_tx_gpd_cam_entry, %struct.al_eth_tx_gpd_cam_entry* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @AL_ETH_TX_GPD_L3_PROTO_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @AL_ETH_TX_GPD_L3_PROTO_SHIFT, align 4
  %16 = shl i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.al_eth_tx_gpd_cam_entry*, %struct.al_eth_tx_gpd_cam_entry** %6, align 8
  %18 = getelementptr inbounds %struct.al_eth_tx_gpd_cam_entry, %struct.al_eth_tx_gpd_cam_entry* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @AL_ETH_TX_GPD_L4_PROTO_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @AL_ETH_TX_GPD_L4_PROTO_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.al_eth_tx_gpd_cam_entry*, %struct.al_eth_tx_gpd_cam_entry** %6, align 8
  %28 = getelementptr inbounds %struct.al_eth_tx_gpd_cam_entry, %struct.al_eth_tx_gpd_cam_entry* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @AL_ETH_TX_GPD_TUNNEL_CTRL_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @AL_ETH_TX_GPD_TUNNEL_CTRL_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.al_eth_tx_gpd_cam_entry*, %struct.al_eth_tx_gpd_cam_entry** %6, align 8
  %38 = getelementptr inbounds %struct.al_eth_tx_gpd_cam_entry, %struct.al_eth_tx_gpd_cam_entry* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @AL_ETH_TX_GPD_SRC_VLAN_CNT_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @AL_ETH_TX_GPD_SRC_VLAN_CNT_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.al_eth_tx_gpd_cam_entry*, %struct.al_eth_tx_gpd_cam_entry** %6, align 8
  %48 = getelementptr inbounds %struct.al_eth_tx_gpd_cam_entry, %struct.al_eth_tx_gpd_cam_entry* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @AL_ETH_TX_GPD_L3_PROTO_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @AL_ETH_TX_GPD_L3_PROTO_SHIFT, align 4
  %54 = shl i32 %52, %53
  store i32 %54, i32* %8, align 4
  %55 = load %struct.al_eth_tx_gpd_cam_entry*, %struct.al_eth_tx_gpd_cam_entry** %6, align 8
  %56 = getelementptr inbounds %struct.al_eth_tx_gpd_cam_entry, %struct.al_eth_tx_gpd_cam_entry* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @AL_ETH_TX_GPD_L4_PROTO_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @AL_ETH_TX_GPD_L4_PROTO_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load %struct.al_eth_tx_gpd_cam_entry*, %struct.al_eth_tx_gpd_cam_entry** %6, align 8
  %66 = getelementptr inbounds %struct.al_eth_tx_gpd_cam_entry, %struct.al_eth_tx_gpd_cam_entry* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @AL_ETH_TX_GPD_TUNNEL_CTRL_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @AL_ETH_TX_GPD_TUNNEL_CTRL_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load %struct.al_eth_tx_gpd_cam_entry*, %struct.al_eth_tx_gpd_cam_entry** %6, align 8
  %76 = getelementptr inbounds %struct.al_eth_tx_gpd_cam_entry, %struct.al_eth_tx_gpd_cam_entry* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* @AL_ETH_TX_GPD_SRC_VLAN_CNT_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @AL_ETH_TX_GPD_SRC_VLAN_CNT_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @al_reg_write32(i32* %89, i32 %90)
  %92 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %93 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  %97 = load %struct.al_eth_tx_gpd_cam_entry*, %struct.al_eth_tx_gpd_cam_entry** %6, align 8
  %98 = getelementptr inbounds %struct.al_eth_tx_gpd_cam_entry, %struct.al_eth_tx_gpd_cam_entry* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @AL_ETH_TX_GPD_CAM_CTRL_VALID_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = call i32 @al_reg_write32(i32* %96, i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.al_eth_tx_gpd_cam_entry*, %struct.al_eth_tx_gpd_cam_entry** %6, align 8
  %105 = getelementptr inbounds %struct.al_eth_tx_gpd_cam_entry, %struct.al_eth_tx_gpd_cam_entry* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @al_dbg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %106)
  %108 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %109 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @AL_ETH_TX_GPD_CAM_MASK_2_SHIFT, align 4
  %115 = ashr i32 %113, %114
  %116 = call i32 @al_reg_write32(i32* %112, i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @AL_ETH_TX_GPD_CAM_MASK_2_SHIFT, align 4
  %120 = ashr i32 %118, %119
  %121 = call i32 @al_dbg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %120)
  %122 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %123 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @al_reg_write32(i32* %126, i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @al_dbg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %133 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @AL_ETH_TX_GPD_CAM_DATA_2_SHIFT, align 4
  %139 = ashr i32 %137, %138
  %140 = call i32 @al_reg_write32(i32* %136, i32 %139)
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @AL_ETH_TX_GPD_CAM_DATA_2_SHIFT, align 4
  %144 = ashr i32 %142, %143
  %145 = call i32 @al_dbg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %141, i32 %144)
  %146 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %147 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @al_reg_write32(i32* %150, i32 %151)
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @al_dbg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %153, i32 %154)
  ret i32 0
}

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_dbg(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
