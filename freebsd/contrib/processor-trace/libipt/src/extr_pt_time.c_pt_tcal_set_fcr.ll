; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_tcal_set_fcr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_tcal_set_fcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_time_cal = type { i64, i64, i64 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_tcal_set_fcr(%struct.pt_time_cal* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_time_cal*, align 8
  %5 = alloca i64, align 8
  store %struct.pt_time_cal* %0, %struct.pt_time_cal** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.pt_time_cal*, %struct.pt_time_cal** %4, align 8
  %7 = icmp ne %struct.pt_time_cal* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %35

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.pt_time_cal*, %struct.pt_time_cal** %4, align 8
  %14 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %13, i32 0, i32 2
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.pt_time_cal*, %struct.pt_time_cal** %4, align 8
  %17 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.pt_time_cal*, %struct.pt_time_cal** %4, align 8
  %23 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %11
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.pt_time_cal*, %struct.pt_time_cal** %4, align 8
  %27 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.pt_time_cal*, %struct.pt_time_cal** %4, align 8
  %33 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %24
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %8
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
