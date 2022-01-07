; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_time_update_tma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_time_update_tma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pt_packet_tma = type { i32, i64 }
%struct.pt_config = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_context = common dso_local global i32 0, align 4
@pt_pl_mtc_bit_size = common dso_local global i32 0, align 4
@pt_pl_tma_ctc_bit_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_time_update_tma(%struct.pt_time* %0, %struct.pt_packet_tma* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_time*, align 8
  %6 = alloca %struct.pt_packet_tma*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.pt_time* %0, %struct.pt_time** %5, align 8
  store %struct.pt_packet_tma* %1, %struct.pt_packet_tma** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %13 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %14 = icmp ne %struct.pt_time* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.pt_packet_tma*, %struct.pt_packet_tma** %6, align 8
  %17 = icmp ne %struct.pt_packet_tma* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %20 = icmp ne %struct.pt_config* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %15, %3
  %22 = load i32, i32* @pte_internal, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %94

24:                                               ; preds = %18
  %25 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %26 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @pte_bad_context, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %94

32:                                               ; preds = %24
  %33 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %34 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @pte_bad_context, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %94

40:                                               ; preds = %32
  %41 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %42 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @pte_internal, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %94

48:                                               ; preds = %40
  %49 = load %struct.pt_packet_tma*, %struct.pt_packet_tma** %6, align 8
  %50 = getelementptr inbounds %struct.pt_packet_tma, %struct.pt_packet_tma* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %8, align 4
  %52 = load %struct.pt_packet_tma*, %struct.pt_packet_tma** %6, align 8
  %53 = getelementptr inbounds %struct.pt_packet_tma, %struct.pt_packet_tma* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %12, align 8
  %55 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %56 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @pt_pl_mtc_bit_size, align 4
  %60 = add i32 %58, %59
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 1, %61
  %63 = sub i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %65 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %68 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %75 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @pt_pl_tma_ctc_bit_size, align 4
  %82 = icmp ule i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %48
  %84 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %85 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %48
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %91 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %93 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %92, i32 0, i32 2
  store i32 %89, i32* %93, align 4
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %86, %45, %37, %29, %21
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
