; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_allow_ir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_allow_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32, i32 }

@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_NO_IR = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_RADAR = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"DPP: Frequency %u MHz not supported or does not allow PKEX initiation in the current channel list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32)* @wpas_dpp_allow_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_dpp_allow_ir(%struct.wpa_supplicant* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostapd_hw_modes*, align 8
  %9 = alloca %struct.hostapd_channel_data*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %12, align 8
  %14 = icmp ne %struct.hostapd_hw_modes* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %75

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %68, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %17
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %28, i64 %30
  store %struct.hostapd_hw_modes* %31, %struct.hostapd_hw_modes** %8, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %64, %24
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %35 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %32
  %39 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %40 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %39, i32 0, i32 1
  %41 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %41, i64 %43
  store %struct.hostapd_channel_data* %44, %struct.hostapd_channel_data** %9, align 8
  %45 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %9, align 8
  %46 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %64

51:                                               ; preds = %38
  %52 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %9, align 8
  %53 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %56 = load i32, i32* @HOSTAPD_CHAN_NO_IR, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %54, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %64

63:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %75

64:                                               ; preds = %62, %50
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %32

67:                                               ; preds = %32
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %17

71:                                               ; preds = %17
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @wpa_printf(i32 %72, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %63, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
