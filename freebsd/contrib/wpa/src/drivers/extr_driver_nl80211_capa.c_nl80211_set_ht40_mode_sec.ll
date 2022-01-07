; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_set_ht40_mode_sec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_set_ht40_mode_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32, i32 }

@HOSTAPD_CHAN_HT40 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_HT40MINUS = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_HT40PLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_hw_modes*, i32, i32)* @nl80211_set_ht40_mode_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_set_ht40_mode_sec(%struct.hostapd_hw_modes* %0, i32 %1, i32 %2) #0 {
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

9:                                                ; preds = %70, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %12 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %73

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
  %25 = load i32, i32* @HOSTAPD_CHAN_HT40, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %15
  br label %70

29:                                               ; preds = %15
  %30 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %31 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 30
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %38 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 10
  %41 = load i32, i32* %6, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* @HOSTAPD_CHAN_HT40MINUS, align 4
  %45 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %46 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %36, %29
  %50 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %51 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 10
  %54 = load i32, i32* %5, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %58 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 30
  %61 = load i32, i32* %6, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @HOSTAPD_CHAN_HT40PLUS, align 4
  %65 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %66 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %56, %49
  br label %70

70:                                               ; preds = %69, %28
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %9

73:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
