; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_rx_protocol_detect_table_entry_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_rx_protocol_detect_table_entry_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.al_eth_rx_gpd_cam_entry = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@AL_ETH_RX_GPD_OUTER_L3_PROTO_MASK = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_OUTER_L3_PROTO_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_OUTER_L4_PROTO_MASK = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_OUTER_L4_PROTO_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_INNER_L3_PROTO_MASK = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_INNER_L3_PROTO_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_INNER_L4_PROTO_MASK = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_INNER_L4_PROTO_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_OUTER_PARSE_CTRL_MASK = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_OUTER_PARSE_CTRL_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_INNER_PARSE_CTRL_MASK = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_INNER_PARSE_CTRL_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_L3_PRIORITY_MASK = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_L3_PRIORITY_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_L4_DST_PORT_LSB_MASK = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_L4_DST_PORT_LSB_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_CAM_CTRL_VALID_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_CAM_MASK_2_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_CAM_DATA_2_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_rx_protocol_detect_table_entry_set(%struct.al_hal_eth_adapter* %0, i32 %1, %struct.al_eth_rx_gpd_cam_entry* %2) #0 {
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_eth_rx_gpd_cam_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.al_eth_rx_gpd_cam_entry* %2, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %9 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %10 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %9, i32 0, i32 16
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @AL_ETH_RX_GPD_OUTER_L3_PROTO_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @AL_ETH_RX_GPD_OUTER_L3_PROTO_SHIFT, align 4
  %16 = shl i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %18 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %17, i32 0, i32 15
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @AL_ETH_RX_GPD_OUTER_L4_PROTO_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @AL_ETH_RX_GPD_OUTER_L4_PROTO_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %28 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %27, i32 0, i32 14
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @AL_ETH_RX_GPD_INNER_L3_PROTO_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @AL_ETH_RX_GPD_INNER_L3_PROTO_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %38 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %37, i32 0, i32 13
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @AL_ETH_RX_GPD_INNER_L4_PROTO_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @AL_ETH_RX_GPD_INNER_L4_PROTO_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %48 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %47, i32 0, i32 12
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @AL_ETH_RX_GPD_OUTER_PARSE_CTRL_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @AL_ETH_RX_GPD_OUTER_PARSE_CTRL_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %58 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %57, i32 0, i32 11
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @AL_ETH_RX_GPD_INNER_PARSE_CTRL_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @AL_ETH_RX_GPD_INNER_PARSE_CTRL_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %68 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %67, i32 0, i32 10
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @AL_ETH_RX_GPD_L3_PRIORITY_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @AL_ETH_RX_GPD_L3_PRIORITY_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %78 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %77, i32 0, i32 9
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @AL_ETH_RX_GPD_L4_DST_PORT_LSB_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @AL_ETH_RX_GPD_L4_DST_PORT_LSB_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %88 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %87, i32 0, i32 8
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @AL_ETH_RX_GPD_OUTER_L3_PROTO_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @AL_ETH_RX_GPD_OUTER_L3_PROTO_SHIFT, align 4
  %94 = shl i32 %92, %93
  store i32 %94, i32* %8, align 4
  %95 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %96 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* @AL_ETH_RX_GPD_OUTER_L4_PROTO_MASK, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @AL_ETH_RX_GPD_OUTER_L4_PROTO_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %106 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* @AL_ETH_RX_GPD_INNER_L3_PROTO_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @AL_ETH_RX_GPD_INNER_L3_PROTO_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %116 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* @AL_ETH_RX_GPD_INNER_L4_PROTO_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @AL_ETH_RX_GPD_INNER_L4_PROTO_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %126 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = load i32, i32* @AL_ETH_RX_GPD_OUTER_PARSE_CTRL_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @AL_ETH_RX_GPD_OUTER_PARSE_CTRL_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %136 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* @AL_ETH_RX_GPD_INNER_PARSE_CTRL_MASK, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* @AL_ETH_RX_GPD_INNER_PARSE_CTRL_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = load i32, i32* %8, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %8, align 4
  %145 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %146 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = load i32, i32* @AL_ETH_RX_GPD_L3_PRIORITY_MASK, align 4
  %150 = and i32 %148, %149
  %151 = load i32, i32* @AL_ETH_RX_GPD_L3_PRIORITY_SHIFT, align 4
  %152 = shl i32 %150, %151
  %153 = load i32, i32* %8, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %8, align 4
  %155 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %156 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = load i32, i32* @AL_ETH_RX_GPD_L4_DST_PORT_LSB_MASK, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* @AL_ETH_RX_GPD_L4_DST_PORT_LSB_SHIFT, align 4
  %162 = shl i32 %160, %161
  %163 = load i32, i32* %8, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %8, align 4
  %165 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %166 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %165, i32 0, i32 0
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 5
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @al_reg_write32(i32* %169, i32 %170)
  %172 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %173 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %172, i32 0, i32 0
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 4
  %177 = load %struct.al_eth_rx_gpd_cam_entry*, %struct.al_eth_rx_gpd_cam_entry** %6, align 8
  %178 = getelementptr inbounds %struct.al_eth_rx_gpd_cam_entry, %struct.al_eth_rx_gpd_cam_entry* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @AL_ETH_RX_GPD_CAM_CTRL_VALID_SHIFT, align 4
  %181 = shl i32 %179, %180
  %182 = call i32 @al_reg_write32(i32* %176, i32 %181)
  %183 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %184 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 3
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @AL_ETH_RX_GPD_CAM_MASK_2_SHIFT, align 4
  %190 = ashr i32 %188, %189
  %191 = call i32 @al_reg_write32(i32* %187, i32 %190)
  %192 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %193 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %192, i32 0, i32 0
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 2
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @al_reg_write32(i32* %196, i32 %197)
  %199 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %200 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %199, i32 0, i32 0
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @AL_ETH_RX_GPD_CAM_DATA_2_SHIFT, align 4
  %206 = ashr i32 %204, %205
  %207 = call i32 @al_reg_write32(i32* %203, i32 %206)
  %208 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %209 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %208, i32 0, i32 0
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @al_reg_write32(i32* %212, i32 %213)
  ret i32 0
}

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
