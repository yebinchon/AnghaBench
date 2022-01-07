; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_channel_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_channel_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_channel_data = type { i32 }

@HOSTAPD_CHAN_RADAR = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_DFS_MASK = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_DFS_AVAILABLE = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_DFS_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_channel_data*, i32)* @dfs_channel_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfs_channel_available(%struct.hostapd_channel_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_channel_data*, align 8
  %5 = alloca i32, align 4
  store %struct.hostapd_channel_data* %0, %struct.hostapd_channel_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %10 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %17 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HOSTAPD_CHAN_DFS_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @HOSTAPD_CHAN_DFS_AVAILABLE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %49

24:                                               ; preds = %15, %8, %2
  %25 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %26 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %49

32:                                               ; preds = %24
  %33 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %34 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %41 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HOSTAPD_CHAN_DFS_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @HOSTAPD_CHAN_DFS_UNAVAILABLE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %49

48:                                               ; preds = %39, %32
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %47, %31, %23
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
