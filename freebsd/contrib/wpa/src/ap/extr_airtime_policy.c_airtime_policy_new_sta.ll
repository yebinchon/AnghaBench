; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_airtime_policy_new_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_airtime_policy_new_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sta_info = type { i32 }

@AIRTIME_MODE_STATIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @airtime_policy_new_sta(%struct.hostapd_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  %7 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %8 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AIRTIME_MODE_STATIC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %16 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @get_weight_for_sta(%struct.hostapd_data* %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %24 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @sta_set_airtime_weight(%struct.hostapd_data* %23, %struct.sta_info* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @get_weight_for_sta(%struct.hostapd_data*, i32) #1

declare dso_local i32 @sta_set_airtime_weight(%struct.hostapd_data*, %struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
