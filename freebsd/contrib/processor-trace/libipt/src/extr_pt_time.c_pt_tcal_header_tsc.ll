; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_tcal_header_tsc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_tcal_header_tsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_time_cal = type { i64, i64, i64 }
%struct.pt_packet_tsc = type { i64 }
%struct.pt_config = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pt_pl_tsc_bit_size = common dso_local global i64 0, align 8
@pte_bad_packet = common dso_local global i32 0, align 4
@pt_tcal_fcr_shr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_tcal_header_tsc(%struct.pt_time_cal* %0, %struct.pt_packet_tsc* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_time_cal*, align 8
  %6 = alloca %struct.pt_packet_tsc*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.pt_time_cal* %0, %struct.pt_time_cal** %5, align 8
  store %struct.pt_packet_tsc* %1, %struct.pt_packet_tsc** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %13 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %14 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %15 = icmp ne %struct.pt_time_cal* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.pt_packet_tsc*, %struct.pt_packet_tsc** %6, align 8
  %18 = icmp ne %struct.pt_packet_tsc* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %3
  %20 = load i32, i32* @pte_internal, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %87

22:                                               ; preds = %16
  %23 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %24 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %27 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %struct.pt_packet_tsc*, %struct.pt_packet_tsc** %6, align 8
  %30 = getelementptr inbounds %struct.pt_packet_tsc, %struct.pt_packet_tsc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %34 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %36 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %22
  store i32 0, i32* %4, align 4
  br label %87

43:                                               ; preds = %39
  %44 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %45 = getelementptr inbounds %struct.pt_time_cal, %struct.pt_time_cal* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %87

49:                                               ; preds = %43
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i64, i64* @pt_pl_tsc_bit_size, align 8
  %55 = shl i64 1, %54
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* @pte_bad_packet, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %87

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = sub nsw i64 %66, %67
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @pt_tcal_fcr_shr, align 8
  %71 = lshr i64 -1, %70
  %72 = xor i64 %71, -1
  %73 = and i64 %69, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, i32* @pte_internal, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %87

78:                                               ; preds = %65
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @pt_tcal_fcr_shr, align 8
  %81 = shl i64 %79, %80
  %82 = load i64, i64* %11, align 8
  %83 = sdiv i64 %81, %82
  store i64 %83, i64* %12, align 8
  %84 = load %struct.pt_time_cal*, %struct.pt_time_cal** %5, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @pt_tcal_set_fcr(%struct.pt_time_cal* %84, i64 %85)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %78, %75, %61, %48, %42, %19
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @pt_tcal_set_fcr(%struct.pt_time_cal*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
