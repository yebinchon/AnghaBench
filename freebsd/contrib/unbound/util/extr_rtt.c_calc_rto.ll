; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_rtt.c_calc_rto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_rtt.c_calc_rto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtt_info = type { i32, i32 }

@RTT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@RTT_MAX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtt_info*)* @calc_rto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_rto(%struct.rtt_info* %0) #0 {
  %2 = alloca %struct.rtt_info*, align 8
  %3 = alloca i32, align 4
  store %struct.rtt_info* %0, %struct.rtt_info** %2, align 8
  %4 = load %struct.rtt_info*, %struct.rtt_info** %2, align 8
  %5 = getelementptr inbounds %struct.rtt_info, %struct.rtt_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.rtt_info*, %struct.rtt_info** %2, align 8
  %8 = getelementptr inbounds %struct.rtt_info, %struct.rtt_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 4, %9
  %11 = add nsw i32 %6, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @RTT_MIN_TIMEOUT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @RTT_MIN_TIMEOUT, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @RTT_MAX_TIMEOUT, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @RTT_MAX_TIMEOUT, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
