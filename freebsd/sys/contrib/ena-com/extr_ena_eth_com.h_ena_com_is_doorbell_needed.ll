; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.h_ena_com_is_doorbell_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.h_ena_com_is_doorbell_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_sq = type { i32, i32, %struct.ena_com_llq_info }
%struct.ena_com_llq_info = type { i64, i32 }
%struct.ena_com_tx_ctx = type { i64 }

@.str = private unnamed_addr constant [48 x i8] c"queue: %d num_descs: %d num_entries_needed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_io_sq*, %struct.ena_com_tx_ctx*)* @ena_com_is_doorbell_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_is_doorbell_needed(%struct.ena_com_io_sq* %0, %struct.ena_com_tx_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_io_sq*, align 8
  %5 = alloca %struct.ena_com_tx_ctx*, align 8
  %6 = alloca %struct.ena_com_llq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ena_com_io_sq* %0, %struct.ena_com_io_sq** %4, align 8
  store %struct.ena_com_tx_ctx* %1, %struct.ena_com_tx_ctx** %5, align 8
  store i32 1, i32* %8, align 4
  %10 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %11 = call i32 @is_llq_max_tx_burst_exists(%struct.ena_com_io_sq* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %16 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %15, i32 0, i32 2
  store %struct.ena_com_llq_info* %16, %struct.ena_com_llq_info** %6, align 8
  %17 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %21 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %5, align 8
  %22 = call i32 @ena_com_meta_desc_changed(%struct.ena_com_io_sq* %20, %struct.ena_com_tx_ctx* %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load i64, i64* %9, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %25, %14
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %6, align 8
  %31 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %6, align 8
  %37 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %6, align 8
  %43 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @DIV_ROUND_UP(i32 %41, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %34, %28
  %51 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %52 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ena_trc_dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %53, i64 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %59 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %57, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %50, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @is_llq_max_tx_burst_exists(%struct.ena_com_io_sq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_meta_desc_changed(%struct.ena_com_io_sq*, %struct.ena_com_tx_ctx*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ena_trc_dbg(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
