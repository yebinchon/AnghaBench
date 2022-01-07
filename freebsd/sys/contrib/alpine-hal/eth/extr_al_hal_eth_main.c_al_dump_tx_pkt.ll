; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_dump_tx_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_dump_tx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma_q = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.al_eth_pkt = type { i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AL_ETH_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"TSO\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AL_ETH_TX_FLAGS_IPV4_L3_CSUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"L3 CSUM\00", align 1
@AL_ETH_TX_FLAGS_L4_CSUM = common dso_local global i32 0, align 4
@AL_ETH_TX_FLAGS_L4_PARTIAL_CSUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"L4 PARTIAL CSUM\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"L4 FULL CSUM\00", align 1
@AL_ETH_TX_FLAGS_L2_DIS_FCS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"Disable FCS\00", align 1
@AL_ETH_TX_FLAGS_TS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"TX_PTP\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@AL_ETH_TUNNEL_WITH_UDP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"TUNNEL_WITH_UDP\00", align 1
@AL_ETH_TUNNEL_NO_UDP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"TUNNEL_NO_UDP\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"[%s %d]: flags: %s %s %s %s %s %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"IPv6\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.16 = private unnamed_addr constant [118 x i8] c"[%s %d]: L3 proto: %d (%s). L4 proto: %d (%s). Outer_L3 proto: %d (%s). vlan source count %d. mod add %d. mod del %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"[%s %d]: tx pkt with meta data. words valid %x\0A\00", align 1
@.str.20 = private unnamed_addr constant [116 x i8] c"[%s %d]: meta: store to cache %s. l3 hdr len %d. l3 hdr offset %d. l4 hdr len %d. mss val %d ts_index %d ts_val:%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"outer_l3_hdr_offset %d. outer_l3_len %d.\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"[%s %d]: num of bufs: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"eth [%s %d]: buf[%d]: len 0x%08x. address 0x%016llx\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"[%s %d]: total len: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_udma_q*, %struct.al_eth_pkt*)* @al_dump_tx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_dump_tx_pkt(%struct.al_udma_q* %0, %struct.al_eth_pkt* %1) #0 {
  %3 = alloca %struct.al_udma_q*, align 8
  %4 = alloca %struct.al_eth_pkt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.al_udma_q* %0, %struct.al_udma_q** %3, align 8
  store %struct.al_eth_pkt* %1, %struct.al_eth_pkt** %4, align 8
  %18 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %19 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AL_ETH_TX_FLAGS_TSO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %25, i8** %5, align 8
  %26 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %27 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AL_ETH_TX_FLAGS_IPV4_L3_CSUM, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %33, i8** %6, align 8
  %34 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %35 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AL_ETH_TX_FLAGS_L4_CSUM, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %2
  %41 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %42 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AL_ETH_TX_FLAGS_L4_PARTIAL_CSUM, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)
  br label %50

49:                                               ; preds = %2
  br label %50

50:                                               ; preds = %49, %40
  %51 = phi i8* [ %48, %40 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %49 ]
  store i8* %51, i8** %7, align 8
  %52 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %53 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @AL_ETH_TX_FLAGS_L2_DIS_FCS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %59, i8** %8, align 8
  %60 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %61 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @AL_ETH_TX_FLAGS_TS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %67, i8** %9, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %12, align 8
  %68 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %69 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AL_ETH_TUNNEL_WITH_UDP, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @AL_ETH_TUNNEL_WITH_UDP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %50
  br label %86

76:                                               ; preds = %50
  %77 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %78 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AL_ETH_TUNNEL_NO_UDP, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @AL_ETH_TUNNEL_NO_UDP, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  br label %86

86:                                               ; preds = %76, %75
  %87 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), %75 ], [ %85, %76 ]
  store i8* %87, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %88 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %89 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %94 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %92, i32 %95, i8* %96, i8* %97, i8* %98, i8* %99, i8* %100, i8* %101)
  %103 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %104 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %108 [
    i32 131, label %106
    i32 130, label %107
  ]

106:                                              ; preds = %86
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %109

107:                                              ; preds = %86
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %10, align 8
  br label %109

108:                                              ; preds = %86
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %109

109:                                              ; preds = %108, %107, %106
  %110 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %111 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %115 [
    i32 129, label %113
    i32 128, label %114
  ]

113:                                              ; preds = %109
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %11, align 8
  br label %116

114:                                              ; preds = %109
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %11, align 8
  br label %116

115:                                              ; preds = %109
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %116

116:                                              ; preds = %115, %114, %113
  %117 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %118 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %122 [
    i32 131, label %120
    i32 130, label %121
  ]

120:                                              ; preds = %116
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %12, align 8
  br label %123

121:                                              ; preds = %116
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %12, align 8
  br label %123

122:                                              ; preds = %116
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %12, align 8
  br label %123

123:                                              ; preds = %122, %121, %120
  %124 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %125 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %130 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %133 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %137 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %141 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = load i8*, i8** %12, align 8
  %144 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %145 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %148 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %151 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.16, i64 0, i64 0), i32 %128, i32 %131, i32 %134, i8* %135, i32 %138, i8* %139, i32 %142, i8* %143, i32 %146, i32 %149, i32 %152)
  %154 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %155 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %154, i32 0, i32 5
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = icmp ne %struct.TYPE_4__* %156, null
  br i1 %157, label %158, label %236

158:                                              ; preds = %123
  %159 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %160 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %159, i32 0, i32 5
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)
  store i8* %166, i8** %16, align 8
  %167 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %168 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @AL_ETH_TX_FLAGS_TS, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)
  store i8* %174, i8** %17, align 8
  %175 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %176 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %175, i32 0, i32 1
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %181 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %184 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %183, i32 0, i32 5
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i32 %179, i32 %182, i32 %187)
  %189 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %190 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %189, i32 0, i32 1
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %195 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i8*, i8** %16, align 8
  %198 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %199 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %198, i32 0, i32 5
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %204 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %203, i32 0, i32 5
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %209 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %208, i32 0, i32 5
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %214 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %213, i32 0, i32 5
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %219 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %218, i32 0, i32 5
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load i8*, i8** %17, align 8
  %224 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.20, i64 0, i64 0), i32 %193, i32 %196, i8* %197, i32 %202, i32 %207, i32 %212, i32 %217, i32 %222, i8* %223)
  %225 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %226 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %225, i32 0, i32 5
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %231 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %230, i32 0, i32 5
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i32 %229, i32 %234)
  br label %236

236:                                              ; preds = %158, %123
  %237 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %238 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %237, i32 0, i32 1
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %243 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %246 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i32 %241, i32 %244, i32 %247)
  store i32 0, i32* %15, align 4
  br label %249

249:                                              ; preds = %292, %236
  %250 = load i32, i32* %15, align 4
  %251 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %252 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %250, %253
  br i1 %254, label %255, label %295

255:                                              ; preds = %249
  %256 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %257 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %256, i32 0, i32 1
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %262 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %15, align 4
  %265 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %266 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %265, i32 0, i32 4
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  %268 = load i32, i32* %15, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %274 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %273, i32 0, i32 4
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %274, align 8
  %276 = load i32, i32* %15, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i64 0, i64 0), i32 %260, i32 %263, i32 %264, i32 %272, i64 %280)
  %282 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %4, align 8
  %283 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %282, i32 0, i32 4
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %283, align 8
  %285 = load i32, i32* %15, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %14, align 4
  %291 = add nsw i32 %290, %289
  store i32 %291, i32* %14, align 4
  br label %292

292:                                              ; preds = %255
  %293 = load i32, i32* %15, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %15, align 4
  br label %249

295:                                              ; preds = %249
  %296 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %297 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %296, i32 0, i32 1
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %302 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %14, align 4
  %305 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i32 %300, i32 %303, i32 %304)
  ret void
}

declare dso_local i32 @al_dbg(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
