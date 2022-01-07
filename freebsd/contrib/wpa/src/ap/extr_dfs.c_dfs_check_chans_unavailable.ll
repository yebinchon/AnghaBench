; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_check_chans_unavailable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_check_chans_unavailable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32 }

@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_DFS_MASK = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_DFS_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*, i32, i32)* @dfs_check_chans_unavailable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfs_check_chans_unavailable(%struct.hostapd_iface* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hostapd_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_channel_data*, align 8
  %8 = alloca %struct.hostapd_hw_modes*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %12 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %11, i32 0, i32 0
  %13 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %12, align 8
  store %struct.hostapd_hw_modes* %13, %struct.hostapd_hw_modes** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %48, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %14
  %19 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %20 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %19, i32 0, i32 0
  %21 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %21, i64 %25
  store %struct.hostapd_channel_data* %26, %struct.hostapd_channel_data** %7, align 8
  %27 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %7, align 8
  %28 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %33, %18
  %37 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %7, align 8
  %38 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HOSTAPD_CHAN_DFS_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @HOSTAPD_CHAN_DFS_UNAVAILABLE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %44, %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %14

51:                                               ; preds = %14
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
