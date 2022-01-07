; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_time_update_tsc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_time_update_tsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_time = type { i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.pt_packet_tsc = type { i32 }
%struct.pt_config = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_time_update_tsc(%struct.pt_time* %0, %struct.pt_packet_tsc* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_time*, align 8
  %6 = alloca %struct.pt_packet_tsc*, align 8
  %7 = alloca %struct.pt_config*, align 8
  store %struct.pt_time* %0, %struct.pt_time** %5, align 8
  store %struct.pt_packet_tsc* %1, %struct.pt_packet_tsc** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %8 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %9 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %10 = icmp ne %struct.pt_time* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.pt_packet_tsc*, %struct.pt_packet_tsc** %6, align 8
  %13 = icmp ne %struct.pt_packet_tsc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %39

17:                                               ; preds = %11
  %18 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %19 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %21 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %20, i32 0, i32 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %23 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.pt_packet_tsc*, %struct.pt_packet_tsc** %6, align 8
  %25 = getelementptr inbounds %struct.pt_packet_tsc, %struct.pt_packet_tsc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %28 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %30 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %29, i32 0, i32 6
  store i32 %26, i32* %30, align 4
  %31 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %32 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %34 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %36 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.pt_time*, %struct.pt_time** %5, align 8
  %38 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %17, %14
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
