; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_set_authorized.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_set_authorized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32, i32 }

@WPA_STA_AUTHORIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_set_authorized(%struct.hostapd_data* %0, %struct.sta_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %12 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %13 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @hostapd_sta_flags_to_drv(i32 %17)
  %19 = load i32, i32* @WPA_STA_AUTHORIZED, align 4
  %20 = call i32 @hostapd_sta_set_flags(%struct.hostapd_data* %11, i32 %14, i32 %18, i32 %19, i32 -1)
  store i32 %20, i32* %4, align 4
  br label %33

21:                                               ; preds = %3
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %23 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hostapd_sta_flags_to_drv(i32 %28)
  %30 = load i32, i32* @WPA_STA_AUTHORIZED, align 4
  %31 = xor i32 %30, -1
  %32 = call i32 @hostapd_sta_set_flags(%struct.hostapd_data* %22, i32 %25, i32 %29, i32 0, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %21, %10
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @hostapd_sta_set_flags(%struct.hostapd_data*, i32, i32, i32, i32) #1

declare dso_local i32 @hostapd_sta_flags_to_drv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
