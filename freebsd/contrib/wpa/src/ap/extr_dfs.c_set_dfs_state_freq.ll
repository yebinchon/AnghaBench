; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_set_dfs_state_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_set_dfs_state_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"set_dfs_state 0x%X for %d MHz\00", align 1
@HOSTAPD_CHAN_RADAR = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_DFS_MASK = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't set DFS state for freq %d MHz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*, i32, i32)* @set_dfs_state_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dfs_state_freq(%struct.hostapd_iface* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_iface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostapd_hw_modes*, align 8
  %9 = alloca %struct.hostapd_channel_data*, align 8
  %10 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.hostapd_channel_data* null, %struct.hostapd_channel_data** %9, align 8
  %11 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %12 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %11, i32 0, i32 0
  %13 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %12, align 8
  store %struct.hostapd_hw_modes* %13, %struct.hostapd_hw_modes** %8, align 8
  %14 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %15 = icmp eq %struct.hostapd_hw_modes* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %72

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %65, %17
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %25 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %24, i32 0, i32 0
  %26 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %25, align 8
  %27 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %22
  %31 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %32 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %31, i32 0, i32 0
  %33 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %32, align 8
  %34 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %33, i32 0, i32 1
  %35 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %35, i64 %37
  store %struct.hostapd_channel_data* %38, %struct.hostapd_channel_data** %9, align 8
  %39 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %9, align 8
  %40 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %30
  %45 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %9, align 8
  %46 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load i32, i32* @HOSTAPD_CHAN_DFS_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %9, align 8
  %55 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %9, align 8
  %60 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  store i32 1, i32* %4, align 4
  br label %72

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63, %30
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %22

68:                                               ; preds = %22
  %69 = load i32, i32* @MSG_WARNING, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %51, %16
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
