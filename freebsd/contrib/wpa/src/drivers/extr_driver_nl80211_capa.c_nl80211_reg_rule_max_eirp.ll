; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_reg_rule_max_eirp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_reg_rule_max_eirp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_info_arg = type { i64*, %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, %struct.phy_info_arg*)* @nl80211_reg_rule_max_eirp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_reg_rule_max_eirp(i64 %0, i64 %1, i64 %2, %struct.phy_info_arg* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.phy_info_arg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hostapd_hw_modes*, align 8
  %12 = alloca %struct.hostapd_channel_data*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.phy_info_arg* %3, %struct.phy_info_arg** %8, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %61, %4
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.phy_info_arg*, %struct.phy_info_arg** %8, align 8
  %16 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %13
  %21 = load %struct.phy_info_arg*, %struct.phy_info_arg** %8, align 8
  %22 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %21, i32 0, i32 1
  %23 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %23, i64 %24
  store %struct.hostapd_hw_modes* %25, %struct.hostapd_hw_modes** %11, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %57, %20
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  %29 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %26
  %33 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  %34 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %33, i32 0, i32 1
  %35 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %35, i64 %37
  store %struct.hostapd_channel_data* %38, %struct.hostapd_channel_data** %12, align 8
  %39 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %40 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, 10
  %43 = load i64, i64* %5, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %32
  %46 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %47 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 10
  %50 = load i64, i64* %6, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %55 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %45, %32
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %26

60:                                               ; preds = %26
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %9, align 8
  br label %13

64:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
