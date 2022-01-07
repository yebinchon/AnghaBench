; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_write_bounce_buffer_to_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_write_bounce_buffer_to_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_sq = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, %struct.ena_com_llq_info }
%struct.TYPE_2__ = type { i64 }
%struct.ena_com_llq_info = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Error: trying to send more packets than tx burst allows\0A\00", align 1
@ENA_COM_NO_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"decreasing entries_in_tx_burst_left of queue %d to %d\0A\00", align 1
@ENA_COM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_io_sq*, i32*)* @ena_com_write_bounce_buffer_to_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_write_bounce_buffer_to_dev(%struct.ena_com_io_sq* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_io_sq*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ena_com_llq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ena_com_io_sq* %0, %struct.ena_com_io_sq** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %10 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %9, i32 0, i32 6
  store %struct.ena_com_llq_info* %10, %struct.ena_com_llq_info** %6, align 8
  %11 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %12 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %15 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %13, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %6, align 8
  %21 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %25 = call i64 @is_llq_max_tx_burst_exists(%struct.ena_com_io_sq* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %2
  %28 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %29 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = call i32 @ena_trc_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENA_COM_NO_SPACE, align 4
  store i32 %38, i32* %3, align 4
  br label %88

39:                                               ; preds = %27
  %40 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %41 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %45 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %48 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ena_trc_dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %39, %2
  %52 = call i32 (...) @wmb()
  %53 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %54 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %6, align 8
  %62 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ENA_MEMCPY_TO_DEVICE_64(i64 %59, i32* %60, i32 %63)
  %65 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %66 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %70 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %73 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = and i32 %71, %75
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %51
  %82 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %83 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = xor i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %81, %51
  %87 = load i32, i32* @ENA_COM_OK, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %36
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @is_llq_max_tx_burst_exists(%struct.ena_com_io_sq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trc_err(i8*) #1

declare dso_local i32 @ena_trc_dbg(i8*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ENA_MEMCPY_TO_DEVICE_64(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
