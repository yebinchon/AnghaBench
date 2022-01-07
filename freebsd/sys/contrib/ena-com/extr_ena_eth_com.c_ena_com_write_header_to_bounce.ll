; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_write_header_to_bounce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_write_header_to_bounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_sq = type { i64, i64, %struct.ena_com_llq_info, %struct.ena_com_llq_pkt_ctrl }
%struct.ena_com_llq_info = type { i64, i64 }
%struct.ena_com_llq_pkt_ctrl = type { i32* }

@ENA_ADMIN_PLACEMENT_POLICY_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"trying to write header larger than llq entry can accommodate\0A\00", align 1
@ENA_COM_FAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"bounce buffer is NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_io_sq*, i32*, i64)* @ena_com_write_header_to_bounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_write_header_to_bounce(%struct.ena_com_io_sq* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_io_sq*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ena_com_llq_pkt_ctrl*, align 8
  %9 = alloca %struct.ena_com_llq_info*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.ena_com_io_sq* %0, %struct.ena_com_io_sq** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %13 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %12, i32 0, i32 3
  store %struct.ena_com_llq_pkt_ctrl* %13, %struct.ena_com_llq_pkt_ctrl** %8, align 8
  %14 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %15 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %14, i32 0, i32 2
  store %struct.ena_com_llq_info* %15, %struct.ena_com_llq_info** %9, align 8
  %16 = load %struct.ena_com_llq_pkt_ctrl*, %struct.ena_com_llq_pkt_ctrl** %8, align 8
  %17 = getelementptr inbounds %struct.ena_com_llq_pkt_ctrl, %struct.ena_com_llq_pkt_ctrl* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %20 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

28:                                               ; preds = %3
  %29 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %9, align 8
  %30 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %33 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = mul nsw i64 %31, %34
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %9, align 8
  %40 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %28
  %47 = call i32 @ena_trc_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENA_COM_FAULT, align 4
  store i32 %48, i32* %4, align 4
  br label %66

49:                                               ; preds = %28
  %50 = load i32*, i32** %10, align 8
  %51 = icmp ne i32* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = call i32 @ena_trc_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ENA_COM_FAULT, align 4
  store i32 %58, i32* %4, align 4
  br label %66

59:                                               ; preds = %49
  %60 = load i32*, i32** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @memcpy(i32* %62, i32* %63, i64 %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %56, %46, %27
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trc_err(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
