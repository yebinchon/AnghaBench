; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_tx_pkt_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_tx_pkt_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma_q = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.al_eth_pkt = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_10__*, %struct.TYPE_13__*, %struct.TYPE_12__*, i64 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i64 }
%union.al_udma_desc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i8*, i8* }

@AL_M2S_DESC_FIRST = common dso_local global i64 0, align 8
@AL_M2S_DESC_CONCAT = common dso_local global i64 0, align 8
@AL_ETH_TX_FLAGS_INT = common dso_local global i64 0, align 8
@AL_UDMA_DESC_TGTID_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"[%s %d]: new tx pkt\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"[%s %d]: failed to allocate (%d) descriptors\00", align 1
@AL_M2S_DESC_META_DATA = common dso_local global i64 0, align 8
@AL_M2S_DESC_RING_ID_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_TX_META_STORE = common dso_local global i64 0, align 8
@AL_ETH_TX_META_L3_LEN_MASK = common dso_local global i64 0, align 8
@AL_ETH_TX_META_L3_OFF_MASK = common dso_local global i64 0, align 8
@AL_ETH_TX_META_L3_OFF_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_TX_FLAGS_TS = common dso_local global i32 0, align 4
@AL_ETH_TX_META_MSS_MSB_TS_VAL_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_TX_META_MSS_LSB_VAL_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_META_OUTER_L3_OFF_HIGH_MASK = common dso_local global i64 0, align 8
@AL_ETH_TX_META_OUTER_L3_OFF_HIGH_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_TX_META_OUTER_L3_OFF_LOW_MASK = common dso_local global i64 0, align 8
@AL_ETH_TX_META_OUTER_L3_OFF_LOW_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_TX_META_OUTER_L3_LEN_MASK = common dso_local global i32 0, align 4
@AL_ETH_TX_META_OUTER_L3_LEN_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_PKT_META_FLAGS = common dso_local global i64 0, align 8
@AL_ETH_TX_FLAGS_L4_CSUM = common dso_local global i32 0, align 4
@AL_ETH_TX_FLAGS_L4_PARTIAL_CSUM = common dso_local global i32 0, align 4
@AL_ETH_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@AL_ETH_TX_L4_PROTO_IDX_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_TX_SRC_VLAN_CNT_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_TX_VLAN_MOD_ADD_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_TX_VLAN_MOD_DEL_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_TX_VLAN_MOD_E_SEL_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_TX_VLAN_MOD_VID_SEL_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_TX_VLAN_MOD_PBIT_SEL_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_TX_TUNNEL_MODE_SHIFT = common dso_local global i64 0, align 8
@AL_ETH_PROTO_ID_IPv4 = common dso_local global i64 0, align 8
@AL_ETH_TX_OUTER_L3_PROTO_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_TX_PKT_UDMA_FLAGS = common dso_local global i64 0, align 8
@AL_M2S_DESC_LAST = common dso_local global i64 0, align 8
@AL_ETH_TX_FLAGS_NO_SNOOP = common dso_local global i64 0, align 8
@AL_M2S_DESC_LEN_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [68 x i8] c"[%s %d]: pkt descriptors written into the tx queue. descs num (%d)\0A\00", align 1
@AL_ETH_REV_ID_2 = common dso_local global i64 0, align 8
@AL_ETH_TX_FLAGS_ENCRYPT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_tx_pkt_prepare(%struct.al_udma_q* %0, %struct.al_eth_pkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_udma_q*, align 8
  %5 = alloca %struct.al_eth_pkt*, align 8
  %6 = alloca %union.al_udma_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.al_udma_q* %0, %struct.al_udma_q** %4, align 8
  store %struct.al_eth_pkt* %1, %struct.al_eth_pkt** %5, align 8
  %19 = load i64, i64* @AL_M2S_DESC_FIRST, align 8
  %20 = load i64, i64* @AL_M2S_DESC_CONCAT, align 8
  %21 = or i64 %19, %20
  %22 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %23 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AL_ETH_TX_FLAGS_INT, align 8
  %26 = and i64 %24, %25
  %27 = or i64 %21, %26
  store i64 %27, i64* %8, align 8
  %28 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %29 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %28, i32 0, i32 15
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @AL_UDMA_DESC_TGTID_SHIFT, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %35 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %34, i32 0, i32 2
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %40 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %44 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %45 = call i32 @al_dump_tx_pkt(%struct.al_udma_q* %43, %struct.al_eth_pkt* %44)
  %46 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %47 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  %49 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %50 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %49, i32 0, i32 14
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = icmp ne %struct.TYPE_12__* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %2
  %54 = load i64, i64* %7, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %53, %2
  %57 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %58 = call i64 @al_udma_available_get(%struct.al_udma_q* %57)
  %59 = load i64, i64* %7, align 8
  %60 = icmp slt i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %66 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %65, i32 0, i32 2
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %71 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %72, i64 %73)
  store i32 0, i32* %3, align 4
  br label %583

75:                                               ; preds = %56
  %76 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %77 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %76, i32 0, i32 14
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = icmp ne %struct.TYPE_12__* %78, null
  br i1 %79, label %80, label %375

80:                                               ; preds = %75
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @AL_M2S_DESC_META_DATA, align 8
  %83 = or i64 %81, %82
  %84 = load i64, i64* %13, align 8
  %85 = or i64 %84, %83
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* @AL_M2S_DESC_CONCAT, align 8
  %87 = xor i64 %86, -1
  %88 = load i64, i64* %13, align 8
  %89 = and i64 %88, %87
  store i64 %89, i64* %13, align 8
  %90 = load i64, i64* @AL_M2S_DESC_FIRST, align 8
  %91 = load i64, i64* @AL_ETH_TX_FLAGS_INT, align 8
  %92 = or i64 %90, %91
  %93 = xor i64 %92, -1
  %94 = load i64, i64* %8, align 8
  %95 = and i64 %94, %93
  store i64 %95, i64* %8, align 8
  %96 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %97 = call %union.al_udma_desc* @al_udma_desc_get(%struct.al_udma_q* %96)
  store %union.al_udma_desc* %97, %union.al_udma_desc** %6, align 8
  %98 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %99 = call i64 @al_udma_ring_id_get(%struct.al_udma_q* %98)
  %100 = load i64, i64* @AL_M2S_DESC_RING_ID_SHIFT, align 8
  %101 = shl i64 %99, %100
  store i64 %101, i64* %11, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %13, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %13, align 8
  %105 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %106 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %105, i32 0, i32 14
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 %109, 12
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %13, align 8
  %113 = or i64 %112, %111
  store i64 %113, i64* %13, align 8
  %114 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %115 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %114, i32 0, i32 14
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 19
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %80
  %121 = load i64, i64* @AL_ETH_TX_META_STORE, align 8
  %122 = load i64, i64* %13, align 8
  %123 = or i64 %122, %121
  store i64 %123, i64* %13, align 8
  br label %124

124:                                              ; preds = %120, %80
  %125 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %126 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %125, i32 0, i32 14
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, 1
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %176

132:                                              ; preds = %124
  %133 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %134 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %133, i32 0, i32 14
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %13, align 8
  %139 = or i64 %138, %137
  store i64 %139, i64* %13, align 8
  %140 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %141 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %140, i32 0, i32 14
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = shl i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %13, align 8
  %148 = or i64 %147, %146
  store i64 %148, i64* %13, align 8
  %149 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %150 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %149, i32 0, i32 14
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* %13, align 8
  %157 = or i64 %156, %155
  store i64 %157, i64* %13, align 8
  %158 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %159 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %158, i32 0, i32 14
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = shl i32 %162, 6
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* %13, align 8
  %166 = or i64 %165, %164
  store i64 %166, i64* %13, align 8
  %167 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %168 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %167, i32 0, i32 14
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 8
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %13, align 8
  %175 = or i64 %174, %173
  store i64 %175, i64* %13, align 8
  br label %176

176:                                              ; preds = %132, %124
  %177 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %178 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %177, i32 0, i32 14
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, 2
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %235

184:                                              ; preds = %176
  %185 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %186 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %185, i32 0, i32 14
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %14, align 8
  %190 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %191 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %190, i32 0, i32 14
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 8
  %195 = shl i32 %194, 12
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %14, align 8
  %198 = or i64 %197, %196
  store i64 %198, i64* %14, align 8
  %199 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %200 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %199, i32 0, i32 14
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 13
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %14, align 8
  %207 = or i64 %206, %205
  store i64 %207, i64* %14, align 8
  %208 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %209 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %208, i32 0, i32 14
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 9
  %212 = load i32, i32* %211, align 8
  %213 = shl i32 %212, 16
  %214 = sext i32 %213 to i64
  %215 = load i64, i64* %14, align 8
  %216 = or i64 %215, %214
  store i64 %216, i64* %14, align 8
  %217 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %218 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %217, i32 0, i32 14
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 10
  %221 = load i32, i32* %220, align 4
  %222 = shl i32 %221, 28
  %223 = sext i32 %222 to i64
  %224 = load i64, i64* %14, align 8
  %225 = or i64 %224, %223
  store i64 %225, i64* %14, align 8
  %226 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %227 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %226, i32 0, i32 14
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 11
  %230 = load i32, i32* %229, align 8
  %231 = shl i32 %230, 29
  %232 = sext i32 %231 to i64
  %233 = load i64, i64* %14, align 8
  %234 = or i64 %233, %232
  store i64 %234, i64* %14, align 8
  br label %235

235:                                              ; preds = %184, %176
  %236 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %237 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %236, i32 0, i32 14
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = and i32 %240, 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %352

243:                                              ; preds = %235
  %244 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %245 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %244, i32 0, i32 14
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 12
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @AL_ETH_TX_META_L3_LEN_MASK, align 8
  %250 = and i64 %248, %249
  store i64 %250, i64* %15, align 8
  %251 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %252 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %251, i32 0, i32 14
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 13
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @AL_ETH_TX_META_L3_OFF_MASK, align 8
  %257 = and i64 %255, %256
  %258 = load i64, i64* @AL_ETH_TX_META_L3_OFF_SHIFT, align 8
  %259 = shl i64 %257, %258
  %260 = load i64, i64* %15, align 8
  %261 = or i64 %260, %259
  store i64 %261, i64* %15, align 8
  %262 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %263 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %262, i32 0, i32 14
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 14
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, 63
  %268 = shl i32 %267, 16
  %269 = sext i32 %268 to i64
  %270 = load i64, i64* %15, align 8
  %271 = or i64 %270, %269
  store i64 %271, i64* %15, align 8
  %272 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %273 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i32, i32* @AL_ETH_TX_FLAGS_TS, align 4
  %276 = sext i32 %275 to i64
  %277 = and i64 %274, %276
  %278 = trunc i64 %277 to i32
  %279 = call i64 @unlikely(i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %243
  %282 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %283 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %282, i32 0, i32 14
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 15
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @AL_ETH_TX_META_MSS_MSB_TS_VAL_SHIFT, align 8
  %288 = shl i64 %286, %287
  %289 = load i64, i64* %13, align 8
  %290 = or i64 %289, %288
  store i64 %290, i64* %13, align 8
  br label %305

291:                                              ; preds = %243
  %292 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %293 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %292, i32 0, i32 14
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 16
  %296 = load i32, i32* %295, align 8
  %297 = and i32 %296, 15360
  %298 = ashr i32 %297, 10
  %299 = load i64, i64* @AL_ETH_TX_META_MSS_MSB_TS_VAL_SHIFT, align 8
  %300 = trunc i64 %299 to i32
  %301 = shl i32 %298, %300
  %302 = sext i32 %301 to i64
  %303 = load i64, i64* %13, align 8
  %304 = or i64 %303, %302
  store i64 %304, i64* %13, align 8
  br label %305

305:                                              ; preds = %291, %281
  %306 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %307 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %306, i32 0, i32 14
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 16
  %310 = load i32, i32* %309, align 8
  %311 = and i32 %310, 1023
  %312 = load i32, i32* @AL_ETH_TX_META_MSS_LSB_VAL_SHIFT, align 4
  %313 = shl i32 %311, %312
  %314 = sext i32 %313 to i64
  %315 = load i64, i64* %15, align 8
  %316 = or i64 %315, %314
  store i64 %316, i64* %15, align 8
  %317 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %318 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %317, i32 0, i32 14
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 17
  %321 = load i32, i32* %320, align 4
  %322 = ashr i32 %321, 1
  %323 = sext i32 %322 to i64
  store i64 %323, i64* %17, align 8
  %324 = load i64, i64* %17, align 8
  %325 = load i64, i64* @AL_ETH_TX_META_OUTER_L3_OFF_HIGH_MASK, align 8
  %326 = and i64 %324, %325
  %327 = ashr i64 %326, 3
  %328 = load i64, i64* @AL_ETH_TX_META_OUTER_L3_OFF_HIGH_SHIFT, align 8
  %329 = shl i64 %327, %328
  %330 = load i64, i64* %13, align 8
  %331 = or i64 %330, %329
  store i64 %331, i64* %13, align 8
  %332 = load i64, i64* %17, align 8
  %333 = load i64, i64* @AL_ETH_TX_META_OUTER_L3_OFF_LOW_MASK, align 8
  %334 = and i64 %332, %333
  %335 = load i64, i64* @AL_ETH_TX_META_OUTER_L3_OFF_LOW_SHIFT, align 8
  %336 = shl i64 %334, %335
  %337 = load i64, i64* %16, align 8
  %338 = or i64 %337, %336
  store i64 %338, i64* %16, align 8
  %339 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %340 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %339, i32 0, i32 14
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 18
  %343 = load i32, i32* %342, align 8
  %344 = ashr i32 %343, 2
  %345 = load i32, i32* @AL_ETH_TX_META_OUTER_L3_LEN_MASK, align 4
  %346 = and i32 %344, %345
  %347 = load i32, i32* @AL_ETH_TX_META_OUTER_L3_LEN_SHIFT, align 4
  %348 = shl i32 %346, %347
  %349 = sext i32 %348 to i64
  %350 = load i64, i64* %16, align 8
  %351 = or i64 %350, %349
  store i64 %351, i64* %16, align 8
  br label %352

352:                                              ; preds = %305, %235
  %353 = load i64, i64* %13, align 8
  %354 = call i8* @swap32_to_le(i64 %353)
  %355 = load %union.al_udma_desc*, %union.al_udma_desc** %6, align 8
  %356 = bitcast %union.al_udma_desc* %355 to %struct.TYPE_8__*
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 3
  store i8* %354, i8** %357, align 8
  %358 = load i64, i64* %14, align 8
  %359 = call i8* @swap32_to_le(i64 %358)
  %360 = load %union.al_udma_desc*, %union.al_udma_desc** %6, align 8
  %361 = bitcast %union.al_udma_desc* %360 to %struct.TYPE_8__*
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 2
  store i8* %359, i8** %362, align 8
  %363 = load i64, i64* %15, align 8
  %364 = call i8* @swap32_to_le(i64 %363)
  %365 = load %union.al_udma_desc*, %union.al_udma_desc** %6, align 8
  %366 = bitcast %union.al_udma_desc* %365 to %struct.TYPE_8__*
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 1
  store i8* %364, i8** %367, align 8
  %368 = load i64, i64* %16, align 8
  %369 = call i8* @swap32_to_le(i64 %368)
  %370 = load %union.al_udma_desc*, %union.al_udma_desc** %6, align 8
  %371 = bitcast %union.al_udma_desc* %370 to %struct.TYPE_8__*
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 0
  store i8* %369, i8** %372, align 8
  %373 = load %union.al_udma_desc*, %union.al_udma_desc** %6, align 8
  %374 = call i32 @al_dump_tx_desc(%union.al_udma_desc* %373)
  br label %375

375:                                              ; preds = %352, %75
  %376 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %377 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @AL_ETH_TX_PKT_META_FLAGS, align 8
  %380 = and i64 %378, %379
  store i64 %380, i64* %10, align 8
  %381 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %382 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load i32, i32* @AL_ETH_TX_FLAGS_L4_CSUM, align 4
  %385 = load i32, i32* @AL_ETH_TX_FLAGS_L4_PARTIAL_CSUM, align 4
  %386 = or i32 %384, %385
  %387 = sext i32 %386 to i64
  %388 = and i64 %383, %387
  %389 = load i32, i32* @AL_ETH_TX_FLAGS_L4_PARTIAL_CSUM, align 4
  %390 = sext i32 %389 to i64
  %391 = icmp ne i64 %388, %390
  %392 = zext i1 %391 to i32
  %393 = call i32 @al_assert(i32 %392)
  %394 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %395 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = load i32, i32* @AL_ETH_TX_FLAGS_TSO, align 4
  %398 = load i32, i32* @AL_ETH_TX_FLAGS_TS, align 4
  %399 = or i32 %397, %398
  %400 = sext i32 %399 to i64
  %401 = and i64 %396, %400
  %402 = load i32, i32* @AL_ETH_TX_FLAGS_TSO, align 4
  %403 = load i32, i32* @AL_ETH_TX_FLAGS_TS, align 4
  %404 = or i32 %402, %403
  %405 = sext i32 %404 to i64
  %406 = icmp ne i64 %401, %405
  %407 = zext i1 %406 to i32
  %408 = call i32 @al_assert(i32 %407)
  %409 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %410 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %409, i32 0, i32 2
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* %10, align 8
  %413 = or i64 %412, %411
  store i64 %413, i64* %10, align 8
  %414 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %415 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %414, i32 0, i32 3
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @AL_ETH_TX_L4_PROTO_IDX_SHIFT, align 8
  %418 = shl i64 %416, %417
  %419 = load i64, i64* %10, align 8
  %420 = or i64 %419, %418
  store i64 %420, i64* %10, align 8
  %421 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %422 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %421, i32 0, i32 4
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @AL_ETH_TX_SRC_VLAN_CNT_SHIFT, align 8
  %425 = shl i64 %423, %424
  %426 = load i64, i64* %10, align 8
  %427 = or i64 %426, %425
  store i64 %427, i64* %10, align 8
  %428 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %429 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %428, i32 0, i32 5
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @AL_ETH_TX_VLAN_MOD_ADD_SHIFT, align 8
  %432 = shl i64 %430, %431
  %433 = load i64, i64* %10, align 8
  %434 = or i64 %433, %432
  store i64 %434, i64* %10, align 8
  %435 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %436 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %435, i32 0, i32 6
  %437 = load i64, i64* %436, align 8
  %438 = load i64, i64* @AL_ETH_TX_VLAN_MOD_DEL_SHIFT, align 8
  %439 = shl i64 %437, %438
  %440 = load i64, i64* %10, align 8
  %441 = or i64 %440, %439
  store i64 %441, i64* %10, align 8
  %442 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %443 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %442, i32 0, i32 7
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* @AL_ETH_TX_VLAN_MOD_E_SEL_SHIFT, align 8
  %446 = shl i64 %444, %445
  %447 = load i64, i64* %10, align 8
  %448 = or i64 %447, %446
  store i64 %448, i64* %10, align 8
  %449 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %450 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %449, i32 0, i32 8
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @AL_ETH_TX_VLAN_MOD_VID_SEL_SHIFT, align 8
  %453 = shl i64 %451, %452
  %454 = load i64, i64* %10, align 8
  %455 = or i64 %454, %453
  store i64 %455, i64* %10, align 8
  %456 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %457 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %456, i32 0, i32 9
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* @AL_ETH_TX_VLAN_MOD_PBIT_SEL_SHIFT, align 8
  %460 = shl i64 %458, %459
  %461 = load i64, i64* %10, align 8
  %462 = or i64 %461, %460
  store i64 %462, i64* %10, align 8
  %463 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %464 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %463, i32 0, i32 10
  %465 = load i64, i64* %464, align 8
  %466 = load i64, i64* @AL_ETH_TX_TUNNEL_MODE_SHIFT, align 8
  %467 = shl i64 %465, %466
  %468 = load i64, i64* %10, align 8
  %469 = or i64 %468, %467
  store i64 %469, i64* %10, align 8
  %470 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %471 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %470, i32 0, i32 11
  %472 = load i64, i64* %471, align 8
  %473 = load i64, i64* @AL_ETH_PROTO_ID_IPv4, align 8
  %474 = icmp eq i64 %472, %473
  br i1 %474, label %475, label %481

475:                                              ; preds = %375
  %476 = load i32, i32* @AL_ETH_TX_OUTER_L3_PROTO_SHIFT, align 4
  %477 = shl i32 1, %476
  %478 = sext i32 %477 to i64
  %479 = load i64, i64* %10, align 8
  %480 = or i64 %479, %478
  store i64 %480, i64* %10, align 8
  br label %481

481:                                              ; preds = %475, %375
  %482 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %483 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %482, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* @AL_ETH_TX_PKT_UDMA_FLAGS, align 8
  %486 = and i64 %484, %485
  %487 = load i64, i64* %8, align 8
  %488 = or i64 %487, %486
  store i64 %488, i64* %8, align 8
  store i32 0, i32* %12, align 4
  br label %489

489:                                              ; preds = %567, %481
  %490 = load i32, i32* %12, align 4
  %491 = sext i32 %490 to i64
  %492 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %493 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %492, i32 0, i32 1
  %494 = load i64, i64* %493, align 8
  %495 = icmp slt i64 %491, %494
  br i1 %495, label %496, label %570

496:                                              ; preds = %489
  %497 = load i64, i64* %8, align 8
  store i64 %497, i64* %18, align 8
  %498 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %499 = call %union.al_udma_desc* @al_udma_desc_get(%struct.al_udma_q* %498)
  store %union.al_udma_desc* %499, %union.al_udma_desc** %6, align 8
  %500 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %501 = call i64 @al_udma_ring_id_get(%struct.al_udma_q* %500)
  %502 = load i64, i64* @AL_M2S_DESC_RING_ID_SHIFT, align 8
  %503 = shl i64 %501, %502
  store i64 %503, i64* %11, align 8
  %504 = load i64, i64* %11, align 8
  %505 = load i64, i64* %18, align 8
  %506 = or i64 %505, %504
  store i64 %506, i64* %18, align 8
  %507 = load i32, i32* %12, align 4
  %508 = sext i32 %507 to i64
  %509 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %510 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %509, i32 0, i32 1
  %511 = load i64, i64* %510, align 8
  %512 = sub nsw i64 %511, 1
  %513 = icmp eq i64 %508, %512
  br i1 %513, label %514, label %518

514:                                              ; preds = %496
  %515 = load i64, i64* @AL_M2S_DESC_LAST, align 8
  %516 = load i64, i64* %18, align 8
  %517 = or i64 %516, %515
  store i64 %517, i64* %18, align 8
  br label %518

518:                                              ; preds = %514, %496
  %519 = load i64, i64* @AL_ETH_TX_FLAGS_NO_SNOOP, align 8
  %520 = load i64, i64* %8, align 8
  %521 = and i64 %520, %519
  store i64 %521, i64* %8, align 8
  %522 = load i64, i64* @AL_M2S_DESC_CONCAT, align 8
  %523 = load i64, i64* %8, align 8
  %524 = or i64 %523, %522
  store i64 %524, i64* %8, align 8
  %525 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %526 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %525, i32 0, i32 12
  %527 = load %struct.TYPE_10__*, %struct.TYPE_10__** %526, align 8
  %528 = load i32, i32* %12, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %527, i64 %529
  %531 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %530, i32 0, i32 0
  %532 = load i64, i64* %531, align 8
  %533 = load i64, i64* @AL_M2S_DESC_LEN_MASK, align 8
  %534 = and i64 %532, %533
  %535 = load i64, i64* %18, align 8
  %536 = or i64 %535, %534
  store i64 %536, i64* %18, align 8
  %537 = load i64, i64* %18, align 8
  %538 = call i8* @swap32_to_le(i64 %537)
  %539 = load %union.al_udma_desc*, %union.al_udma_desc** %6, align 8
  %540 = bitcast %union.al_udma_desc* %539 to %struct.TYPE_9__*
  %541 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %540, i32 0, i32 2
  store i8* %538, i8** %541, align 8
  %542 = load i32, i32* %12, align 4
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %550

544:                                              ; preds = %518
  %545 = load i64, i64* %10, align 8
  %546 = call i8* @swap32_to_le(i64 %545)
  %547 = load %union.al_udma_desc*, %union.al_udma_desc** %6, align 8
  %548 = bitcast %union.al_udma_desc* %547 to %struct.TYPE_9__*
  %549 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %548, i32 0, i32 1
  store i8* %546, i8** %549, align 8
  br label %550

550:                                              ; preds = %544, %518
  %551 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %552 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %551, i32 0, i32 12
  %553 = load %struct.TYPE_10__*, %struct.TYPE_10__** %552, align 8
  %554 = load i32, i32* %12, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %553, i64 %555
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 8
  %559 = load i32, i32* %9, align 4
  %560 = or i32 %558, %559
  %561 = call i32 @swap64_to_le(i32 %560)
  %562 = load %union.al_udma_desc*, %union.al_udma_desc** %6, align 8
  %563 = bitcast %union.al_udma_desc* %562 to %struct.TYPE_9__*
  %564 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %563, i32 0, i32 0
  store i32 %561, i32* %564, align 8
  %565 = load %union.al_udma_desc*, %union.al_udma_desc** %6, align 8
  %566 = call i32 @al_dump_tx_desc(%union.al_udma_desc* %565)
  br label %567

567:                                              ; preds = %550
  %568 = load i32, i32* %12, align 4
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %12, align 4
  br label %489

570:                                              ; preds = %489
  %571 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %572 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %571, i32 0, i32 2
  %573 = load %struct.TYPE_11__*, %struct.TYPE_11__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 4
  %576 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %577 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 8
  %579 = load i64, i64* %7, align 8
  %580 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %575, i32 %578, i64 %579)
  %581 = load i64, i64* %7, align 8
  %582 = trunc i64 %581 to i32
  store i32 %582, i32* %3, align 4
  br label %583

583:                                              ; preds = %570, %64
  %584 = load i32, i32* %3, align 4
  ret i32 %584
}

declare dso_local i32 @al_dbg(i8*, i32, i32, ...) #1

declare dso_local i32 @al_dump_tx_pkt(%struct.al_udma_q*, %struct.al_eth_pkt*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @al_udma_available_get(%struct.al_udma_q*) #1

declare dso_local %union.al_udma_desc* @al_udma_desc_get(%struct.al_udma_q*) #1

declare dso_local i64 @al_udma_ring_id_get(%struct.al_udma_q*) #1

declare dso_local i8* @swap32_to_le(i64) #1

declare dso_local i32 @al_dump_tx_desc(%union.al_udma_desc*) #1

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @swap64_to_le(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
