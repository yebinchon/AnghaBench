; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_set_sta_weights.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_set_sta_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.sta_info* }
%struct.sta_info = type { %struct.sta_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, i32)* @set_sta_weights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sta_weights(%struct.hostapd_data* %0, i32 %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sta_info*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %7 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %6, i32 0, i32 0
  %8 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  store %struct.sta_info* %8, %struct.sta_info** %5, align 8
  br label %9

9:                                                ; preds = %17, %2
  %10 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %11 = icmp ne %struct.sta_info* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %14 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @sta_set_airtime_weight(%struct.hostapd_data* %13, %struct.sta_info* %14, i32 %15)
  br label %17

17:                                               ; preds = %12
  %18 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 0
  %20 = load %struct.sta_info*, %struct.sta_info** %19, align 8
  store %struct.sta_info* %20, %struct.sta_info** %5, align 8
  br label %9

21:                                               ; preds = %9
  ret void
}

declare dso_local i32 @sta_set_airtime_weight(%struct.hostapd_data*, %struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
