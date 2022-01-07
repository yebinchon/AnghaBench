; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_tcal_header_cbr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_tcal_header_cbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_time_cal = type { i32 }
%struct.pt_packet_cbr = type { i32 }
%struct.pt_config = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_packet = common dso_local global i32 0, align 4
@pt_tcal_fcr_shr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_tcal_header_cbr(%struct.pt_time_cal* %0, %struct.pt_packet_cbr* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_time_cal*, align 8
  %6 = alloca %struct.pt_packet_cbr*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pt_time_cal* %0, %struct.pt_time_cal** %5, align 8
  store %struct.pt_packet_cbr* %1, %struct.pt_packet_cbr** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %11 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %12 = icmp ne %struct.pt_time_cal* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.pt_packet_cbr*, %struct.pt_packet_cbr** %6, align 8
  %15 = icmp ne %struct.pt_packet_cbr* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %18 = icmp ne %struct.pt_config* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %13, %3
  %20 = load i32, i32* @pte_internal, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %47

22:                                               ; preds = %16
  %23 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %24 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %47

29:                                               ; preds = %22
  %30 = load %struct.pt_packet_cbr*, %struct.pt_packet_cbr** %6, align 8
  %31 = getelementptr inbounds %struct.pt_packet_cbr, %struct.pt_packet_cbr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @pte_bad_packet, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %47

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @pt_tcal_fcr_shr, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @pt_tcal_set_fcr(%struct.pt_time_cal* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %38, %35, %28, %19
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @pt_tcal_set_fcr(%struct.pt_time_cal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
