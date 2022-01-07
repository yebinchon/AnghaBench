; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_tcal_update_ovf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_tcal_update_ovf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_time_cal = type { i64, i64, i64, i64, i64 }
%struct.pt_config = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_tcal_update_ovf(%struct.pt_time_cal* %0, %struct.pt_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_time_cal*, align 8
  %5 = alloca %struct.pt_config*, align 8
  store %struct.pt_time_cal* %0, %struct.pt_time_cal** %4, align 8
  store %struct.pt_config* %1, %struct.pt_config** %5, align 8
  %6 = load %struct.pt_time_cal*, %struct.pt_time_cal** %4, align 8
  %7 = icmp ne %struct.pt_time_cal* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %10 = icmp ne %struct.pt_config* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @pte_internal, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %8
  %15 = load %struct.pt_time_cal*, %struct.pt_time_cal** %4, align 8
  %16 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.pt_time_cal*, %struct.pt_time_cal** %4, align 8
  %18 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.pt_time_cal*, %struct.pt_time_cal** %4, align 8
  %20 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.pt_time_cal*, %struct.pt_time_cal** %4, align 8
  %22 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.pt_time_cal*, %struct.pt_time_cal** %4, align 8
  %24 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
