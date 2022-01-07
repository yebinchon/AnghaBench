; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_set_ht40_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_set_ht40_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32, i32 }

@HOSTAPD_CHAN_HT40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_hw_modes*, i32, i32)* @nl80211_set_ht40_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_set_ht40_mode(%struct.hostapd_hw_modes* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hostapd_hw_modes*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostapd_channel_data*, align 8
  store %struct.hostapd_hw_modes* %0, %struct.hostapd_hw_modes** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %42, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %12 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %9
  %16 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %17 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %16, i32 0, i32 1
  %18 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %18, i64 %20
  store %struct.hostapd_channel_data* %21, %struct.hostapd_channel_data** %8, align 8
  %22 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %23 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 10
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %15
  %29 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %30 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 10
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32, i32* @HOSTAPD_CHAN_HT40, align 4
  %37 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %38 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %28, %15
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %9

45:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
