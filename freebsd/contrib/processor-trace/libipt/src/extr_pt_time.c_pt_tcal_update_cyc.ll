; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_tcal_update_cyc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_tcal_update_cyc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_time_cal = type { i32, i32 }
%struct.pt_packet_cyc = type { i64 }
%struct.pt_config = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_tcal_update_cyc(%struct.pt_time_cal* %0, %struct.pt_packet_cyc* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_time_cal*, align 8
  %6 = alloca %struct.pt_packet_cyc*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i64, align 8
  store %struct.pt_time_cal* %0, %struct.pt_time_cal** %5, align 8
  store %struct.pt_packet_cyc* %1, %struct.pt_packet_cyc** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %9 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %10 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %11 = icmp ne %struct.pt_time_cal* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.pt_packet_cyc*, %struct.pt_packet_cyc** %6, align 8
  %14 = icmp ne %struct.pt_packet_cyc* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %36

18:                                               ; preds = %12
  %19 = load %struct.pt_packet_cyc*, %struct.pt_packet_cyc** %6, align 8
  %20 = getelementptr inbounds %struct.pt_packet_cyc, %struct.pt_packet_cyc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %24 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %31 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %18, %15
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
