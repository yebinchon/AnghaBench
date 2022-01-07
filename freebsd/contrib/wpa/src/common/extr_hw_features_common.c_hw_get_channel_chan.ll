; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_hw_features_common.c_hw_get_channel_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_hw_features_common.c_hw_get_channel_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_channel_data = type { i32, i32 }
%struct.hostapd_hw_modes = type { i32, %struct.hostapd_channel_data* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostapd_channel_data* @hw_get_channel_chan(%struct.hostapd_hw_modes* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hostapd_channel_data*, align 8
  %5 = alloca %struct.hostapd_hw_modes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hostapd_channel_data*, align 8
  store %struct.hostapd_hw_modes* %0, %struct.hostapd_hw_modes** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %12, %3
  %15 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %16 = icmp ne %struct.hostapd_hw_modes* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store %struct.hostapd_channel_data* null, %struct.hostapd_channel_data** %4, align 8
  br label %52

18:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %48, %18
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %22 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %19
  %26 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %27 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %26, i32 0, i32 1
  %28 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %28, i64 %30
  store %struct.hostapd_channel_data* %31, %struct.hostapd_channel_data** %9, align 8
  %32 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %9, align 8
  %33 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %25
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %9, align 8
  %42 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %9, align 8
  store %struct.hostapd_channel_data* %46, %struct.hostapd_channel_data** %4, align 8
  br label %52

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %19

51:                                               ; preds = %19
  store %struct.hostapd_channel_data* null, %struct.hostapd_channel_data** %4, align 8
  br label %52

52:                                               ; preds = %51, %45, %17
  %53 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  ret %struct.hostapd_channel_data* %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
