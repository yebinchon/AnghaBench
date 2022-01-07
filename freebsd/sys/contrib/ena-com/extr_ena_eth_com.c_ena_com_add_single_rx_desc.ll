; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_add_single_rx_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_add_single_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_sq = type { i64, i32, i64 }
%struct.ena_com_buf = type { i32, i32 }
%struct.ena_eth_io_rx_desc = type { i32, i32, i64, i32, i32 }

@ENA_COM_IO_QUEUE_DIRECTION_RX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"wrong Q type\00", align 1
@ENA_COM_NO_SPACE = common dso_local global i32 0, align 4
@ENA_COM_FAULT = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_DESC_FIRST_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_DESC_LAST_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_DESC_PHASE_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_DESC_COMP_REQ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_add_single_rx_desc(%struct.ena_com_io_sq* %0, %struct.ena_com_buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_io_sq*, align 8
  %6 = alloca %struct.ena_com_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ena_eth_io_rx_desc*, align 8
  store %struct.ena_com_io_sq* %0, %struct.ena_com_io_sq** %5, align 8
  store %struct.ena_com_buf* %1, %struct.ena_com_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %10 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ENA_COM_IO_QUEUE_DIRECTION_RX, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ENA_WARN(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %17 = call i32 @ena_com_sq_have_enough_space(%struct.ena_com_io_sq* %16, i32 1)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @ENA_COM_NO_SPACE, align 4
  store i32 %24, i32* %4, align 4
  br label %80

25:                                               ; preds = %3
  %26 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %27 = call %struct.ena_eth_io_rx_desc* @get_sq_desc(%struct.ena_com_io_sq* %26)
  store %struct.ena_eth_io_rx_desc* %27, %struct.ena_eth_io_rx_desc** %8, align 8
  %28 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %29 = icmp ne %struct.ena_eth_io_rx_desc* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @ENA_COM_FAULT, align 4
  store i32 %35, i32* %4, align 4
  br label %80

36:                                               ; preds = %25
  %37 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %38 = call i32 @memset(%struct.ena_eth_io_rx_desc* %37, i32 0, i32 24)
  %39 = load %struct.ena_com_buf*, %struct.ena_com_buf** %6, align 8
  %40 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %43 = getelementptr inbounds %struct.ena_eth_io_rx_desc, %struct.ena_eth_io_rx_desc* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @ENA_ETH_IO_RX_DESC_FIRST_MASK, align 4
  %45 = load i32, i32* @ENA_ETH_IO_RX_DESC_LAST_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %48 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ENA_ETH_IO_RX_DESC_PHASE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = or i32 %46, %51
  %53 = load i32, i32* @ENA_ETH_IO_RX_DESC_COMP_REQ_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %56 = getelementptr inbounds %struct.ena_eth_io_rx_desc, %struct.ena_eth_io_rx_desc* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %59 = getelementptr inbounds %struct.ena_eth_io_rx_desc, %struct.ena_eth_io_rx_desc* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ena_com_buf*, %struct.ena_com_buf** %6, align 8
  %61 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %65 = getelementptr inbounds %struct.ena_eth_io_rx_desc, %struct.ena_eth_io_rx_desc* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.ena_com_buf*, %struct.ena_com_buf** %6, align 8
  %67 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %70 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, 1
  %73 = call i32 @GENMASK_ULL(i64 %72, i32 32)
  %74 = and i32 %68, %73
  %75 = ashr i32 %74, 32
  %76 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %77 = getelementptr inbounds %struct.ena_eth_io_rx_desc, %struct.ena_eth_io_rx_desc* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %79 = call i32 @ena_com_sq_update_tail(%struct.ena_com_io_sq* %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %36, %34, %23
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @ENA_WARN(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_sq_have_enough_space(%struct.ena_com_io_sq*, i32) #1

declare dso_local %struct.ena_eth_io_rx_desc* @get_sq_desc(%struct.ena_com_io_sq*) #1

declare dso_local i32 @memset(%struct.ena_eth_io_rx_desc*, i32, i32) #1

declare dso_local i32 @GENMASK_ULL(i64, i32) #1

declare dso_local i32 @ena_com_sq_update_tail(%struct.ena_com_io_sq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
