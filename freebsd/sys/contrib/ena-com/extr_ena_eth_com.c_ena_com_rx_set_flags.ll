; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_rx_set_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_rx_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_rx_ctx = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ena_eth_io_rx_cdesc_base = type { i32, i32 }

@ENA_ETH_IO_RX_CDESC_BASE_L3_PROTO_IDX_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_CDESC_BASE_L4_PROTO_IDX_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_CDESC_BASE_L4_PROTO_IDX_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_CDESC_BASE_L3_CSUM_ERR_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_CDESC_BASE_L3_CSUM_ERR_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_ERR_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_ERR_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_CHECKED_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_CHECKED_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_CDESC_BASE_IPV4_FRAG_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_CDESC_BASE_IPV4_FRAG_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [142 x i8] c"ena_rx_ctx->l3_proto %d ena_rx_ctx->l4_proto %d\0Aena_rx_ctx->l3_csum_err %d ena_rx_ctx->l4_csum_err %d\0Ahash frag %d frag: %d cdesc_status: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_com_rx_ctx*, %struct.ena_eth_io_rx_cdesc_base*)* @ena_com_rx_set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_com_rx_set_flags(%struct.ena_com_rx_ctx* %0, %struct.ena_eth_io_rx_cdesc_base* %1) #0 {
  %3 = alloca %struct.ena_com_rx_ctx*, align 8
  %4 = alloca %struct.ena_eth_io_rx_cdesc_base*, align 8
  store %struct.ena_com_rx_ctx* %0, %struct.ena_com_rx_ctx** %3, align 8
  store %struct.ena_eth_io_rx_cdesc_base* %1, %struct.ena_eth_io_rx_cdesc_base** %4, align 8
  %5 = load %struct.ena_eth_io_rx_cdesc_base*, %struct.ena_eth_io_rx_cdesc_base** %4, align 8
  %6 = getelementptr inbounds %struct.ena_eth_io_rx_cdesc_base, %struct.ena_eth_io_rx_cdesc_base* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_L3_PROTO_IDX_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ena_eth_io_rx_cdesc_base*, %struct.ena_eth_io_rx_cdesc_base** %4, align 8
  %13 = getelementptr inbounds %struct.ena_eth_io_rx_cdesc_base, %struct.ena_eth_io_rx_cdesc_base* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_L4_PROTO_IDX_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_L4_PROTO_IDX_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ena_eth_io_rx_cdesc_base*, %struct.ena_eth_io_rx_cdesc_base** %4, align 8
  %22 = getelementptr inbounds %struct.ena_eth_io_rx_cdesc_base, %struct.ena_eth_io_rx_cdesc_base* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_L3_CSUM_ERR_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_L3_CSUM_ERR_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ena_eth_io_rx_cdesc_base*, %struct.ena_eth_io_rx_cdesc_base** %4, align 8
  %35 = getelementptr inbounds %struct.ena_eth_io_rx_cdesc_base, %struct.ena_eth_io_rx_cdesc_base* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_ERR_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_ERR_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ena_eth_io_rx_cdesc_base*, %struct.ena_eth_io_rx_cdesc_base** %4, align 8
  %48 = getelementptr inbounds %struct.ena_eth_io_rx_cdesc_base, %struct.ena_eth_io_rx_cdesc_base* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_CHECKED_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_L4_CSUM_CHECKED_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ena_eth_io_rx_cdesc_base*, %struct.ena_eth_io_rx_cdesc_base** %4, align 8
  %61 = getelementptr inbounds %struct.ena_eth_io_rx_cdesc_base, %struct.ena_eth_io_rx_cdesc_base* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ena_eth_io_rx_cdesc_base*, %struct.ena_eth_io_rx_cdesc_base** %4, align 8
  %66 = getelementptr inbounds %struct.ena_eth_io_rx_cdesc_base, %struct.ena_eth_io_rx_cdesc_base* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_IPV4_FRAG_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_IPV4_FRAG_SHIFT, align 4
  %71 = ashr i32 %69, %70
  %72 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %3, align 8
  %87 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ena_eth_io_rx_cdesc_base*, %struct.ena_eth_io_rx_cdesc_base** %4, align 8
  %93 = getelementptr inbounds %struct.ena_eth_io_rx_cdesc_base, %struct.ena_eth_io_rx_cdesc_base* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ena_trc_dbg(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %79, i32 %82, i32 %85, i32 %88, i32 %91, i32 %94)
  ret void
}

declare dso_local i32 @ena_trc_dbg(i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
