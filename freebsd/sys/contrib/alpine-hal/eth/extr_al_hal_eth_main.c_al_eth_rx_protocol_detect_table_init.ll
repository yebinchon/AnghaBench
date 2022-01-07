; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_rx_protocol_detect_table_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_rx_protocol_detect_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@AL_ETH_REV_ID_2 = common dso_local global i64 0, align 8
@AL_ETH_RX_GPD_PARSE_RESULT_OUTER_L3_PROTO_IDX_OFFSET = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_PARSE_RESULT_OUTER_L4_PROTO_IDX_OFFSET = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_PARSE_RESULT_INNER_L3_PROTO_IDX_OFFSET = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_PARSE_RESULT_INNER_L4_PROTO_IDX_OFFSET = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_PARSE_RESULT_OUTER_PARSE_CTRL = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_PARSE_RESULT_INNER_PARSE_CTRL = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_PARSE_RESULT_L3_PRIORITY = common dso_local global i32 0, align 4
@AL_ETH_RX_GPD_PARSE_RESULT_OUTER_L4_DST_PORT_LSB = common dso_local global i32 0, align 4
@AL_ETH_RX_PROTOCOL_DETECT_ENTRIES_NUM = common dso_local global i32 0, align 4
@al_eth_generic_rx_crc_gpd = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_rx_protocol_detect_table_init(%struct.al_hal_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_hal_eth_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %2, align 8
  %4 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AL_ETH_REV_ID_2, align 8
  %8 = icmp sgt i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @al_assert(i32 %9)
  %11 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 7
  %16 = load i32, i32* @AL_ETH_RX_GPD_PARSE_RESULT_OUTER_L3_PROTO_IDX_OFFSET, align 4
  %17 = call i32 @al_reg_write32(i32* %15, i32 %16)
  %18 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 6
  %23 = load i32, i32* @AL_ETH_RX_GPD_PARSE_RESULT_OUTER_L4_PROTO_IDX_OFFSET, align 4
  %24 = call i32 @al_reg_write32(i32* %22, i32 %23)
  %25 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i32, i32* @AL_ETH_RX_GPD_PARSE_RESULT_INNER_L3_PROTO_IDX_OFFSET, align 4
  %31 = call i32 @al_reg_write32(i32* %29, i32 %30)
  %32 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32, i32* @AL_ETH_RX_GPD_PARSE_RESULT_INNER_L4_PROTO_IDX_OFFSET, align 4
  %38 = call i32 @al_reg_write32(i32* %36, i32 %37)
  %39 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* @AL_ETH_RX_GPD_PARSE_RESULT_OUTER_PARSE_CTRL, align 4
  %45 = call i32 @al_reg_write32(i32* %43, i32 %44)
  %46 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* @AL_ETH_RX_GPD_PARSE_RESULT_INNER_PARSE_CTRL, align 4
  %52 = call i32 @al_reg_write32(i32* %50, i32 %51)
  %53 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* @AL_ETH_RX_GPD_PARSE_RESULT_L3_PRIORITY, align 4
  %59 = call i32 @al_reg_write32(i32* %57, i32 %58)
  %60 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* @AL_ETH_RX_GPD_PARSE_RESULT_OUTER_L4_DST_PORT_LSB, align 4
  %66 = call i32 @al_reg_write32(i32* %64, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %79, %1
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @AL_ETH_RX_PROTOCOL_DETECT_ENTRIES_NUM, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load i32*, i32** @al_eth_generic_rx_crc_gpd, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @al_eth_rx_protocol_detect_table_entry_set(%struct.al_hal_eth_adapter* %72, i32 %73, i32* %77)
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %67

82:                                               ; preds = %67
  ret i32 0
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_eth_rx_protocol_detect_table_entry_set(%struct.al_hal_eth_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
