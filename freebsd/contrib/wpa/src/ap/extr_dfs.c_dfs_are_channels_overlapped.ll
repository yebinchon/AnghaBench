; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_are_channels_overlapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_are_channels_overlapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32, i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DFS chan_width %d not supported\00", align 1
@HOSTAPD_CHAN_RADAR = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"checking our: %d, radar: %d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"overlapped: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*, i32, i32, i32, i32)* @dfs_are_channels_overlapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfs_are_channels_overlapped(%struct.hostapd_iface* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_iface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hostapd_hw_modes*, align 8
  %15 = alloca %struct.hostapd_channel_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %20, align 4
  store i32 1, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %25 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %26 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %25, i32 0, i32 0
  %27 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %26, align 8
  store %struct.hostapd_hw_modes* %27, %struct.hostapd_hw_modes** %14, align 8
  %28 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %29 = call i32 @dfs_get_start_chan_idx(%struct.hostapd_iface* %28, i32* %13)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %31 = call i32 @dfs_get_used_n_chans(%struct.hostapd_iface* %30, i32* %17)
  store i32 %31, i32* %16, align 4
  %32 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @dfs_check_chans_radar(%struct.hostapd_iface* %32, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %124

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  switch i32 %39, label %55 [
    i32 130, label %40
    i32 131, label %40
    i32 129, label %46
    i32 128, label %49
    i32 132, label %52
  ]

40:                                               ; preds = %38, %38
  store i32 1, i32* %21, align 4
  %41 = load i32, i32* %20, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %20, align 4
  br label %45

45:                                               ; preds = %43, %40
  br label %59

46:                                               ; preds = %38
  store i32 2, i32* %21, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %47, 10
  store i32 %48, i32* %20, align 4
  br label %59

49:                                               ; preds = %38
  store i32 4, i32* %21, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, 30
  store i32 %51, i32* %20, align 4
  br label %59

52:                                               ; preds = %38
  store i32 8, i32* %21, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, 70
  store i32 %54, i32* %20, align 4
  br label %59

55:                                               ; preds = %38
  %56 = load i32, i32* @MSG_INFO, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %52, %49, %46, %45
  %60 = load i32, i32* %20, align 4
  %61 = call i32 @ieee80211_freq_to_chan(i32 %60, i64* %22)
  store i32 0, i32* %18, align 4
  br label %62

62:                                               ; preds = %116, %59
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %119

66:                                               ; preds = %62
  %67 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %14, align 8
  %68 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %67, i32 0, i32 0
  %69 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %69, i64 %73
  store %struct.hostapd_channel_data* %74, %struct.hostapd_channel_data** %15, align 8
  %75 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %15, align 8
  %76 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %66
  br label %116

82:                                               ; preds = %66
  store i32 0, i32* %19, align 4
  br label %83

83:                                               ; preds = %112, %82
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %21, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %115

87:                                               ; preds = %83
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %15, align 8
  %90 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i64, i64* %22, align 8
  %94 = load i32, i32* %19, align 4
  %95 = mul nsw i32 %94, 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %93, %96
  %98 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %92, i64 %97)
  %99 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %15, align 8
  %100 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %22, align 8
  %103 = load i32, i32* %19, align 4
  %104 = mul nsw i32 %103, 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %102, %105
  %107 = icmp eq i64 %101, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %87
  %109 = load i32, i32* %23, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %23, align 4
  br label %111

111:                                              ; preds = %108, %87
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %19, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %19, align 4
  br label %83

115:                                              ; preds = %83
  br label %116

116:                                              ; preds = %115, %81
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %62

119:                                              ; preds = %62
  %120 = load i32, i32* @MSG_DEBUG, align 4
  %121 = load i32, i32* %23, align 4
  %122 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %23, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %119, %37
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @dfs_get_start_chan_idx(%struct.hostapd_iface*, i32*) #1

declare dso_local i32 @dfs_get_used_n_chans(%struct.hostapd_iface*, i32*) #1

declare dso_local i32 @dfs_check_chans_radar(%struct.hostapd_iface*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @ieee80211_freq_to_chan(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
