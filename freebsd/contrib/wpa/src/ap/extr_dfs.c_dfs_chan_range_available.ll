; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_chan_range_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_chan_range_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_hw_modes*, i32, i32, i32)* @dfs_chan_range_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfs_chan_range_available(%struct.hostapd_hw_modes* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_hw_modes*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostapd_channel_data*, align 8
  %11 = alloca %struct.hostapd_channel_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hostapd_hw_modes* %0, %struct.hostapd_hw_modes** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @num_chan_to_bw(i32 %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  %19 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %20 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

24:                                               ; preds = %4
  %25 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %26 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %25, i32 0, i32 1
  %27 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %27, i64 %29
  store %struct.hostapd_channel_data* %30, %struct.hostapd_channel_data** %10, align 8
  %31 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %32 = call i32 @chan_pri_allowed(%struct.hostapd_channel_data* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %75

35:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %71, %35
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %36
  %41 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %42 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %43 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = mul nsw i32 %45, 20
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.hostapd_channel_data* @dfs_get_chan_data(%struct.hostapd_hw_modes* %41, i64 %48, i32 %49)
  store %struct.hostapd_channel_data* %50, %struct.hostapd_channel_data** %11, align 8
  %51 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %11, align 8
  %52 = icmp ne %struct.hostapd_channel_data* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %75

54:                                               ; preds = %40
  %55 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %11, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @chan_bw_allowed(%struct.hostapd_channel_data* %55, i32 %56, i32 1, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %75

64:                                               ; preds = %54
  %65 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %11, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @dfs_channel_available(%struct.hostapd_channel_data* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %75

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %36

74:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %69, %63, %53, %34, %23
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @num_chan_to_bw(i32) #1

declare dso_local i32 @chan_pri_allowed(%struct.hostapd_channel_data*) #1

declare dso_local %struct.hostapd_channel_data* @dfs_get_chan_data(%struct.hostapd_hw_modes*, i64, i32) #1

declare dso_local i32 @chan_bw_allowed(%struct.hostapd_channel_data*, i32, i32, i32) #1

declare dso_local i32 @dfs_channel_available(%struct.hostapd_channel_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
