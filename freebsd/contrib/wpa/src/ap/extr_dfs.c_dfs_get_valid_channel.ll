; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_get_valid_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_get_valid_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_channel_data = type { i32 }
%struct.hostapd_iface = type { %struct.TYPE_2__*, %struct.hostapd_hw_modes* }
%struct.TYPE_2__ = type { i64 }
%struct.hostapd_hw_modes = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DFS: Selecting random channel\00", align 1
@HOSTAPD_MODE_IEEE80211A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hostapd_channel_data* (%struct.hostapd_iface*, i32*, i64*, i64*, i32)* @dfs_get_valid_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hostapd_channel_data* @dfs_get_valid_channel(%struct.hostapd_iface* %0, i32* %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.hostapd_channel_data*, align 8
  %7 = alloca %struct.hostapd_iface*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hostapd_hw_modes*, align 8
  %13 = alloca %struct.hostapd_channel_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.hostapd_channel_data* null, %struct.hostapd_channel_data** %13, align 8
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %8, align 8
  store i32 0, i32* %19, align 4
  %20 = load i64*, i64** %9, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** %10, align 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %23 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %22, i32 0, i32 1
  %24 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %23, align 8
  %25 = icmp eq %struct.hostapd_hw_modes* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store %struct.hostapd_channel_data* null, %struct.hostapd_channel_data** %6, align 8
  br label %76

27:                                               ; preds = %5
  %28 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %29 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %28, i32 0, i32 1
  %30 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %29, align 8
  store %struct.hostapd_hw_modes* %30, %struct.hostapd_hw_modes** %12, align 8
  %31 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %12, align 8
  %32 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HOSTAPD_MODE_IEEE80211A, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store %struct.hostapd_channel_data* null, %struct.hostapd_channel_data** %6, align 8
  br label %76

37:                                               ; preds = %27
  %38 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @dfs_find_channel(%struct.hostapd_iface* %38, %struct.hostapd_channel_data** null, i32 0, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store %struct.hostapd_channel_data* null, %struct.hostapd_channel_data** %6, align 8
  br label %76

44:                                               ; preds = %37
  %45 = bitcast i32* %16 to i64*
  %46 = call i64 @os_get_random(i64* %45, i32 4)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store %struct.hostapd_channel_data* null, %struct.hostapd_channel_data** %6, align 8
  br label %76

49:                                               ; preds = %44
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %14, align 4
  %52 = srem i32 %50, %51
  store i32 %52, i32* %15, align 4
  %53 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @dfs_find_channel(%struct.hostapd_iface* %53, %struct.hostapd_channel_data** %13, i32 %54, i32 %55)
  %57 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %58 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i32*, i32** %8, align 8
  store i32 1, i32* %64, align 4
  br label %67

65:                                               ; preds = %49
  %66 = load i32*, i32** %8, align 8
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = load %struct.hostapd_iface*, %struct.hostapd_iface** %7, align 8
  %69 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %13, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i64*, i64** %9, align 8
  %73 = load i64*, i64** %10, align 8
  %74 = call i32 @dfs_adjust_center_freq(%struct.hostapd_iface* %68, %struct.hostapd_channel_data* %69, i32 %71, i64* %72, i64* %73)
  %75 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %13, align 8
  store %struct.hostapd_channel_data* %75, %struct.hostapd_channel_data** %6, align 8
  br label %76

76:                                               ; preds = %67, %48, %43, %36, %26
  %77 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %6, align 8
  ret %struct.hostapd_channel_data* %77
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @dfs_find_channel(%struct.hostapd_iface*, %struct.hostapd_channel_data**, i32, i32) #1

declare dso_local i64 @os_get_random(i64*, i32) #1

declare dso_local i32 @dfs_adjust_center_freq(%struct.hostapd_iface*, %struct.hostapd_channel_data*, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
