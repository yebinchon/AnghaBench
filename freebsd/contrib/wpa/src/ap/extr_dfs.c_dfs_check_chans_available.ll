; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_check_chans_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_check_chans_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32 }

@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_RADAR = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_DFS_MASK = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_DFS_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*, i32, i32)* @dfs_check_chans_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfs_check_chans_available(%struct.hostapd_iface* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hostapd_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_channel_data*, align 8
  %8 = alloca %struct.hostapd_hw_modes*, align 8
  %9 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %11 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %10, i32 0, i32 0
  %12 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  store %struct.hostapd_hw_modes* %12, %struct.hostapd_hw_modes** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %51, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  %18 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %19 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %18, i32 0, i32 0
  %20 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %20, i64 %24
  store %struct.hostapd_channel_data* %25, %struct.hostapd_channel_data** %7, align 8
  %26 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %7, align 8
  %27 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %54

33:                                               ; preds = %17
  %34 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %7, align 8
  %35 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %51

41:                                               ; preds = %33
  %42 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %7, align 8
  %43 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @HOSTAPD_CHAN_DFS_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @HOSTAPD_CHAN_DFS_AVAILABLE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %54

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %13

54:                                               ; preds = %49, %32, %13
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
