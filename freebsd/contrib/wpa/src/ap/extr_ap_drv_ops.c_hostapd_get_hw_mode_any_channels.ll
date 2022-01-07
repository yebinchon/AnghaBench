; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_get_hw_mode_any_channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_get_hw_mode_any_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.hostapd_hw_modes = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32, i32, i32 }

@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_RADAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.hostapd_hw_modes*, i32, i32**)* @hostapd_get_hw_mode_any_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_get_hw_mode_any_channels(%struct.hostapd_data* %0, %struct.hostapd_hw_modes* %1, i32 %2, i32** %3) #0 {
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.hostapd_hw_modes*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostapd_channel_data*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.hostapd_hw_modes* %1, %struct.hostapd_hw_modes** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %68, %4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %14 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %71

17:                                               ; preds = %11
  %18 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %19 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %18, i32 0, i32 1
  %20 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %20, i64 %22
  store %struct.hostapd_channel_data* %23, %struct.hostapd_channel_data** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %17
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %34 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @freq_range_list_includes(i32* %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %26, %17
  %39 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %40 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %38
  %46 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %47 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %56 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %54, %45
  %62 = load i32**, i32*** %8, align 8
  %63 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %64 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @int_array_add_unique(i32** %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %54, %38, %26
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %11

71:                                               ; preds = %11
  ret void
}

declare dso_local i64 @freq_range_list_includes(i32*, i32) #1

declare dso_local i32 @int_array_add_unique(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
