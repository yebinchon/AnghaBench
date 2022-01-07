; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_tx_generic_crc_table_entry_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_tx_generic_crc_table_entry_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.al_eth_tx_gcp_table_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }

@AL_ETH_TX_GCP_POLY_SEL_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_POLY_SEL_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_CRC32_BIT_COMP_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_CRC32_BIT_COMP_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_CRC32_BIT_SWAP_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_CRC32_BIT_SWAP_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_CRC32_BYTE_SWAP_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_CRC32_BYTE_SWAP_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_DATA_BIT_SWAP_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_DATA_BIT_SWAP_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_DATA_BYTE_SWAP_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_DATA_BYTE_SWAP_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_TRAIL_SIZE_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_TRAIL_SIZE_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_HEAD_SIZE_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_HEAD_SIZE_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_HEAD_CALC_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_HEAD_CALC_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_MASK_POLARITY_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_MASK_POLARITY_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"al_eth_tx_generic_crc_entry_set, line [%d], gcp_table_gen: %#x\00", align 1
@AL_ETH_TX_GCP_OPCODE_1_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_OPCODE_1_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_OPCODE_2_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_OPCODE_2_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_OPCODE_3_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_OPCODE_3_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_OPSEL_1_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_OPSEL_1_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_OPSEL_2_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_OPSEL_2_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_OPSEL_3_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_OPSEL_3_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_OPSEL_4_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_GCP_OPSEL_4_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_tx_generic_crc_table_entry_set(%struct.al_hal_eth_adapter* %0, i32 %1, %struct.al_eth_tx_gcp_table_entry* %2) #0 {
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_eth_tx_gcp_table_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.al_eth_tx_gcp_table_entry* %2, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %10 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %11 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @AL_ETH_TX_GCP_POLY_SEL_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @AL_ETH_TX_GCP_POLY_SEL_SHIFT, align 4
  %16 = shl i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %18 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AL_ETH_TX_GCP_CRC32_BIT_COMP_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @AL_ETH_TX_GCP_CRC32_BIT_COMP_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %27 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AL_ETH_TX_GCP_CRC32_BIT_SWAP_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @AL_ETH_TX_GCP_CRC32_BIT_SWAP_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %36 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AL_ETH_TX_GCP_CRC32_BYTE_SWAP_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @AL_ETH_TX_GCP_CRC32_BYTE_SWAP_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %45 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AL_ETH_TX_GCP_DATA_BIT_SWAP_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @AL_ETH_TX_GCP_DATA_BIT_SWAP_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %54 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AL_ETH_TX_GCP_DATA_BYTE_SWAP_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @AL_ETH_TX_GCP_DATA_BYTE_SWAP_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %63 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @AL_ETH_TX_GCP_TRAIL_SIZE_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @AL_ETH_TX_GCP_TRAIL_SIZE_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %72 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AL_ETH_TX_GCP_HEAD_SIZE_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @AL_ETH_TX_GCP_HEAD_SIZE_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %81 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @AL_ETH_TX_GCP_HEAD_CALC_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @AL_ETH_TX_GCP_HEAD_CALC_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %90 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AL_ETH_TX_GCP_MASK_POLARITY_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @AL_ETH_TX_GCP_MASK_POLARITY_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @al_dbg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %102 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @AL_ETH_TX_GCP_OPCODE_1_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @AL_ETH_TX_GCP_OPCODE_1_SHIFT, align 4
  %107 = shl i32 %105, %106
  store i32 %107, i32* %8, align 4
  %108 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %109 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @AL_ETH_TX_GCP_OPCODE_2_MASK, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @AL_ETH_TX_GCP_OPCODE_2_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  %117 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %118 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %117, i32 0, i32 12
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @AL_ETH_TX_GCP_OPCODE_3_MASK, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* @AL_ETH_TX_GCP_OPCODE_3_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %127 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %126, i32 0, i32 13
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @AL_ETH_TX_GCP_OPSEL_1_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @AL_ETH_TX_GCP_OPSEL_1_SHIFT, align 4
  %132 = shl i32 %130, %131
  store i32 %132, i32* %9, align 4
  %133 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %134 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %133, i32 0, i32 14
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @AL_ETH_TX_GCP_OPSEL_2_MASK, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* @AL_ETH_TX_GCP_OPSEL_2_SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = load i32, i32* %9, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %9, align 4
  %142 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %143 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %142, i32 0, i32 15
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @AL_ETH_TX_GCP_OPSEL_3_MASK, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* @AL_ETH_TX_GCP_OPSEL_3_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* %9, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %9, align 4
  %151 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %152 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %151, i32 0, i32 16
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @AL_ETH_TX_GCP_OPSEL_4_MASK, align 4
  %155 = and i32 %153, %154
  %156 = load i32, i32* @AL_ETH_TX_GCP_OPSEL_4_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = load i32, i32* %9, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %9, align 4
  %160 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %161 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 12
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @al_reg_write32(i32* %164, i32 %165)
  %167 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %168 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 11
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @al_reg_write32(i32* %171, i32 %172)
  %174 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %175 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 10
  %179 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %180 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %179, i32 0, i32 17
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @al_reg_write32(i32* %178, i32 %183)
  %185 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %186 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 9
  %190 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %191 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %190, i32 0, i32 17
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @al_reg_write32(i32* %189, i32 %194)
  %196 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %197 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %196, i32 0, i32 0
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 8
  %201 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %202 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %201, i32 0, i32 17
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @al_reg_write32(i32* %200, i32 %205)
  %207 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %208 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %207, i32 0, i32 0
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 7
  %212 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %213 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %212, i32 0, i32 17
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 3
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @al_reg_write32(i32* %211, i32 %216)
  %218 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %219 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %218, i32 0, i32 0
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 6
  %223 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %224 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %223, i32 0, i32 17
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 4
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @al_reg_write32(i32* %222, i32 %227)
  %229 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %230 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %229, i32 0, i32 0
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 5
  %234 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %235 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %234, i32 0, i32 17
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 5
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @al_reg_write32(i32* %233, i32 %238)
  %240 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %241 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %240, i32 0, i32 0
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 4
  %245 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %246 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %245, i32 0, i32 18
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @al_reg_write32(i32* %244, i32 %247)
  %249 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %250 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %249, i32 0, i32 0
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 3
  %254 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %255 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %254, i32 0, i32 19
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @al_reg_write32(i32* %253, i32 %256)
  %258 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %259 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %258, i32 0, i32 0
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 2
  %263 = load i32, i32* %8, align 4
  %264 = call i32 @al_reg_write32(i32* %262, i32 %263)
  %265 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %266 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %265, i32 0, i32 0
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 1
  %270 = load i32, i32* %9, align 4
  %271 = call i32 @al_reg_write32(i32* %269, i32 %270)
  %272 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %273 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %272, i32 0, i32 0
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 0
  %277 = load %struct.al_eth_tx_gcp_table_entry*, %struct.al_eth_tx_gcp_table_entry** %6, align 8
  %278 = getelementptr inbounds %struct.al_eth_tx_gcp_table_entry, %struct.al_eth_tx_gcp_table_entry* %277, i32 0, i32 20
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @al_reg_write32(i32* %276, i32 %279)
  ret i32 0
}

declare dso_local i32 @al_dbg(i8*, i32, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
