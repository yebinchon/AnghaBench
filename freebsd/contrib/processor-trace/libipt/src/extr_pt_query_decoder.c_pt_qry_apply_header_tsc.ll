; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_apply_header_tsc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_apply_header_tsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_time = type { i32 }
%struct.pt_time_cal = type { i32 }
%struct.pt_packet_tsc = type { i32 }
%struct.pt_config = type { i32 }

@pte_bad_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_time*, %struct.pt_time_cal*, %struct.pt_packet_tsc*, %struct.pt_config*)* @pt_qry_apply_header_tsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_apply_header_tsc(%struct.pt_time* %0, %struct.pt_time_cal* %1, %struct.pt_packet_tsc* %2, %struct.pt_config* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_time*, align 8
  %7 = alloca %struct.pt_time_cal*, align 8
  %8 = alloca %struct.pt_packet_tsc*, align 8
  %9 = alloca %struct.pt_config*, align 8
  %10 = alloca i32, align 4
  store %struct.pt_time* %0, %struct.pt_time** %6, align 8
  store %struct.pt_time_cal* %1, %struct.pt_time_cal** %7, align 8
  store %struct.pt_packet_tsc* %2, %struct.pt_packet_tsc** %8, align 8
  store %struct.pt_config* %3, %struct.pt_config** %9, align 8
  %11 = load %struct.pt_time_cal*, %struct.pt_time_cal** %7, align 8
  %12 = load %struct.pt_packet_tsc*, %struct.pt_packet_tsc** %8, align 8
  %13 = load %struct.pt_config*, %struct.pt_config** %9, align 8
  %14 = call i32 @pt_tcal_header_tsc(%struct.pt_time_cal* %11, %struct.pt_packet_tsc* %12, %struct.pt_config* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @pte_bad_config, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %39

24:                                               ; preds = %17, %4
  %25 = load %struct.pt_time*, %struct.pt_time** %6, align 8
  %26 = load %struct.pt_packet_tsc*, %struct.pt_packet_tsc** %8, align 8
  %27 = load %struct.pt_config*, %struct.pt_config** %9, align 8
  %28 = call i32 @pt_time_update_tsc(%struct.pt_time* %25, %struct.pt_packet_tsc* %26, %struct.pt_config* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @pte_bad_config, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %39

38:                                               ; preds = %31, %24
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %36, %22
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @pt_tcal_header_tsc(%struct.pt_time_cal*, %struct.pt_packet_tsc*, %struct.pt_config*) #1

declare dso_local i32 @pt_time_update_tsc(%struct.pt_time*, %struct.pt_packet_tsc*, %struct.pt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
