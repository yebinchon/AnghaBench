; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_create_and_store_tx_meta_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_create_and_store_tx_meta_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_sq = type { i32, i32 }
%struct.ena_com_tx_ctx = type { %struct.ena_com_tx_meta }
%struct.ena_com_tx_meta = type { i32, i32, i32, i32 }
%struct.ena_eth_io_tx_meta_desc = type { i32, i32 }

@ENA_ETH_IO_TX_META_DESC_META_DESC_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_EXT_VALID_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_MSS_LO_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_MSS_LO_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_MSS_HI_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_MSS_HI_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_ETH_META_TYPE_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_META_STORE_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_PHASE_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_PHASE_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_FIRST_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_L3_HDR_LEN_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_L3_HDR_OFF_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_L3_HDR_OFF_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_L4_HDR_LEN_IN_WORDS_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_META_DESC_L4_HDR_LEN_IN_WORDS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_io_sq*, %struct.ena_com_tx_ctx*)* @ena_com_create_and_store_tx_meta_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_create_and_store_tx_meta_desc(%struct.ena_com_io_sq* %0, %struct.ena_com_tx_ctx* %1) #0 {
  %3 = alloca %struct.ena_com_io_sq*, align 8
  %4 = alloca %struct.ena_com_tx_ctx*, align 8
  %5 = alloca %struct.ena_eth_io_tx_meta_desc*, align 8
  %6 = alloca %struct.ena_com_tx_meta*, align 8
  store %struct.ena_com_io_sq* %0, %struct.ena_com_io_sq** %3, align 8
  store %struct.ena_com_tx_ctx* %1, %struct.ena_com_tx_ctx** %4, align 8
  store %struct.ena_eth_io_tx_meta_desc* null, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %7 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %7, i32 0, i32 0
  store %struct.ena_com_tx_meta* %8, %struct.ena_com_tx_meta** %6, align 8
  %9 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %10 = call %struct.ena_eth_io_tx_meta_desc* @get_sq_desc(%struct.ena_com_io_sq* %9)
  store %struct.ena_eth_io_tx_meta_desc* %10, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %11 = load %struct.ena_eth_io_tx_meta_desc*, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %12 = call i32 @memset(%struct.ena_eth_io_tx_meta_desc* %11, i32 0, i32 8)
  %13 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_META_DESC_MASK, align 4
  %14 = load %struct.ena_eth_io_tx_meta_desc*, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %15 = getelementptr inbounds %struct.ena_eth_io_tx_meta_desc, %struct.ena_eth_io_tx_meta_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_EXT_VALID_MASK, align 4
  %19 = load %struct.ena_eth_io_tx_meta_desc*, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %20 = getelementptr inbounds %struct.ena_eth_io_tx_meta_desc, %struct.ena_eth_io_tx_meta_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ena_com_tx_meta*, %struct.ena_com_tx_meta** %6, align 8
  %24 = getelementptr inbounds %struct.ena_com_tx_meta, %struct.ena_com_tx_meta* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_MSS_LO_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_MSS_LO_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.ena_eth_io_tx_meta_desc*, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %31 = getelementptr inbounds %struct.ena_eth_io_tx_meta_desc, %struct.ena_eth_io_tx_meta_desc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ena_com_tx_meta*, %struct.ena_com_tx_meta** %6, align 8
  %35 = getelementptr inbounds %struct.ena_com_tx_meta, %struct.ena_com_tx_meta* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 10
  %38 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_MSS_HI_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_MSS_HI_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.ena_eth_io_tx_meta_desc*, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %43 = getelementptr inbounds %struct.ena_eth_io_tx_meta_desc, %struct.ena_eth_io_tx_meta_desc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_ETH_META_TYPE_MASK, align 4
  %47 = load %struct.ena_eth_io_tx_meta_desc*, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %48 = getelementptr inbounds %struct.ena_eth_io_tx_meta_desc, %struct.ena_eth_io_tx_meta_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_META_STORE_MASK, align 4
  %52 = load %struct.ena_eth_io_tx_meta_desc*, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %53 = getelementptr inbounds %struct.ena_eth_io_tx_meta_desc, %struct.ena_eth_io_tx_meta_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %57 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_PHASE_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_PHASE_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load %struct.ena_eth_io_tx_meta_desc*, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %64 = getelementptr inbounds %struct.ena_eth_io_tx_meta_desc, %struct.ena_eth_io_tx_meta_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_FIRST_MASK, align 4
  %68 = load %struct.ena_eth_io_tx_meta_desc*, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %69 = getelementptr inbounds %struct.ena_eth_io_tx_meta_desc, %struct.ena_eth_io_tx_meta_desc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.ena_com_tx_meta*, %struct.ena_com_tx_meta** %6, align 8
  %73 = getelementptr inbounds %struct.ena_com_tx_meta, %struct.ena_com_tx_meta* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_L3_HDR_LEN_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load %struct.ena_eth_io_tx_meta_desc*, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %78 = getelementptr inbounds %struct.ena_eth_io_tx_meta_desc, %struct.ena_eth_io_tx_meta_desc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.ena_com_tx_meta*, %struct.ena_com_tx_meta** %6, align 8
  %82 = getelementptr inbounds %struct.ena_com_tx_meta, %struct.ena_com_tx_meta* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_L3_HDR_OFF_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_L3_HDR_OFF_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load %struct.ena_eth_io_tx_meta_desc*, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %89 = getelementptr inbounds %struct.ena_eth_io_tx_meta_desc, %struct.ena_eth_io_tx_meta_desc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.ena_com_tx_meta*, %struct.ena_com_tx_meta** %6, align 8
  %93 = getelementptr inbounds %struct.ena_com_tx_meta, %struct.ena_com_tx_meta* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_L4_HDR_LEN_IN_WORDS_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_L4_HDR_LEN_IN_WORDS_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load %struct.ena_eth_io_tx_meta_desc*, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %100 = getelementptr inbounds %struct.ena_eth_io_tx_meta_desc, %struct.ena_eth_io_tx_meta_desc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @ENA_ETH_IO_TX_META_DESC_META_STORE_MASK, align 4
  %104 = load %struct.ena_eth_io_tx_meta_desc*, %struct.ena_eth_io_tx_meta_desc** %5, align 8
  %105 = getelementptr inbounds %struct.ena_eth_io_tx_meta_desc, %struct.ena_eth_io_tx_meta_desc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %109 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %108, i32 0, i32 1
  %110 = load %struct.ena_com_tx_meta*, %struct.ena_com_tx_meta** %6, align 8
  %111 = call i32 @memcpy(i32* %109, %struct.ena_com_tx_meta* %110, i32 16)
  %112 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %113 = call i32 @ena_com_sq_update_tail(%struct.ena_com_io_sq* %112)
  ret i32 %113
}

declare dso_local %struct.ena_eth_io_tx_meta_desc* @get_sq_desc(%struct.ena_com_io_sq*) #1

declare dso_local i32 @memset(%struct.ena_eth_io_tx_meta_desc*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ena_com_tx_meta*, i32) #1

declare dso_local i32 @ena_com_sq_update_tail(%struct.ena_com_io_sq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
