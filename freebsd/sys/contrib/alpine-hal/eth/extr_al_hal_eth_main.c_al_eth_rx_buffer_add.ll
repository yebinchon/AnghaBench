; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_rx_buffer_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_rx_buffer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma_q = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.al_buf = type { i32, i32 }
%union.al_udma_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@AL_ETH_RX_FLAGS_TGTID_MASK = common dso_local global i32 0, align 4
@AL_UDMA_DESC_TGTID_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"[%s %d]: add rx buffer.\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"[%s]: rx q (%d) has no enough free descriptor\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@AL_S2M_DESC_RING_ID_SHIFT = common dso_local global i32 0, align 4
@AL_S2M_DESC_LEN_MASK = common dso_local global i32 0, align 4
@AL_S2M_DESC_DUAL_BUF = common dso_local global i32 0, align 4
@AL_UDMA_REV_ID_2 = common dso_local global i64 0, align 8
@AL_S2M_DESC_LEN2_GRANULARITY_SHIFT = common dso_local global i32 0, align 4
@AL_S2M_DESC_LEN2_SHIFT = common dso_local global i32 0, align 4
@AL_S2M_DESC_LEN2_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_rx_buffer_add(%struct.al_udma_q* %0, %struct.al_buf* %1, i32 %2, %struct.al_buf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_udma_q*, align 8
  %7 = alloca %struct.al_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.al_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.al_udma_desc*, align 8
  store %struct.al_udma_q* %0, %struct.al_udma_q** %6, align 8
  store %struct.al_buf* %1, %struct.al_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.al_buf* %3, %struct.al_buf** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @AL_ETH_RX_FLAGS_TGTID_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @AL_UDMA_DESC_TGTID_SHIFT, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @AL_ETH_RX_FLAGS_TGTID_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.al_udma_q*, %struct.al_udma_q** %6, align 8
  %23 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.al_udma_q*, %struct.al_udma_q** %6, align 8
  %28 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @al_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.al_udma_q*, %struct.al_udma_q** %6, align 8
  %32 = call i32 @al_udma_available_get(%struct.al_udma_q* %31)
  %33 = icmp slt i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %4
  %38 = load %struct.al_udma_q*, %struct.al_udma_q** %6, align 8
  %39 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.al_udma_q*, %struct.al_udma_q** %6, align 8
  %44 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @al_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %129

49:                                               ; preds = %4
  %50 = load %struct.al_udma_q*, %struct.al_udma_q** %6, align 8
  %51 = call %union.al_udma_desc* @al_udma_desc_get(%struct.al_udma_q* %50)
  store %union.al_udma_desc* %51, %union.al_udma_desc** %12, align 8
  %52 = load %struct.al_udma_q*, %struct.al_udma_q** %6, align 8
  %53 = call i32 @al_udma_ring_id_get(%struct.al_udma_q* %52)
  %54 = load i32, i32* @AL_S2M_DESC_RING_ID_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load %struct.al_buf*, %struct.al_buf** %7, align 8
  %59 = getelementptr inbounds %struct.al_buf, %struct.al_buf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AL_S2M_DESC_LEN_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @AL_S2M_DESC_DUAL_BUF, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %114

69:                                               ; preds = %49
  %70 = load %struct.al_buf*, %struct.al_buf** %9, align 8
  %71 = icmp ne %struct.al_buf* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 @al_assert(i32 %72)
  %74 = load %struct.al_udma_q*, %struct.al_udma_q** %6, align 8
  %75 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AL_UDMA_REV_ID_2, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %91, label %81

81:                                               ; preds = %69
  %82 = load %struct.al_buf*, %struct.al_buf** %7, align 8
  %83 = getelementptr inbounds %struct.al_buf, %struct.al_buf* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @AL_ADDR_HIGH(i32 %84)
  %86 = load %struct.al_buf*, %struct.al_buf** %9, align 8
  %87 = getelementptr inbounds %struct.al_buf, %struct.al_buf* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @AL_ADDR_HIGH(i32 %88)
  %90 = icmp eq i64 %85, %89
  br label %91

91:                                               ; preds = %81, %69
  %92 = phi i1 [ true, %69 ], [ %90, %81 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @al_assert(i32 %93)
  %95 = load %struct.al_buf*, %struct.al_buf** %9, align 8
  %96 = getelementptr inbounds %struct.al_buf, %struct.al_buf* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @AL_S2M_DESC_LEN2_GRANULARITY_SHIFT, align 4
  %99 = ashr i32 %97, %98
  %100 = load i32, i32* @AL_S2M_DESC_LEN2_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = load i32, i32* @AL_S2M_DESC_LEN2_MASK, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load %struct.al_buf*, %struct.al_buf** %9, align 8
  %107 = getelementptr inbounds %struct.al_buf, %struct.al_buf* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @AL_ADDR_LOW(i32 %108)
  %110 = call i8* @swap32_to_le(i32 %109)
  %111 = load %union.al_udma_desc*, %union.al_udma_desc** %12, align 8
  %112 = bitcast %union.al_udma_desc* %111 to %struct.TYPE_4__*
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  store i8* %110, i8** %113, align 8
  br label %114

114:                                              ; preds = %91, %49
  %115 = load i32, i32* %11, align 4
  %116 = call i8* @swap32_to_le(i32 %115)
  %117 = load %union.al_udma_desc*, %union.al_udma_desc** %12, align 8
  %118 = bitcast %union.al_udma_desc* %117 to %struct.TYPE_4__*
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i8* %116, i8** %119, align 8
  %120 = load %struct.al_buf*, %struct.al_buf** %7, align 8
  %121 = getelementptr inbounds %struct.al_buf, %struct.al_buf* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @swap64_to_le(i32 %124)
  %126 = load %union.al_udma_desc*, %union.al_udma_desc** %12, align 8
  %127 = bitcast %union.al_udma_desc* %126 to %struct.TYPE_4__*
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %114, %37
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @al_dbg(i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @al_udma_available_get(%struct.al_udma_q*) #1

declare dso_local %union.al_udma_desc* @al_udma_desc_get(%struct.al_udma_q*) #1

declare dso_local i32 @al_udma_ring_id_get(%struct.al_udma_q*) #1

declare dso_local i32 @al_assert(i32) #1

declare dso_local i64 @AL_ADDR_HIGH(i32) #1

declare dso_local i8* @swap32_to_le(i32) #1

declare dso_local i32 @AL_ADDR_LOW(i32) #1

declare dso_local i32 @swap64_to_le(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
