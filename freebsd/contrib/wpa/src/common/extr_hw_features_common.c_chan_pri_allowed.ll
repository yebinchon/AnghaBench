; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_hw_features_common.c_chan_pri_allowed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_hw_features_common.c_chan_pri_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_channel_data = type { i32, i32 }

@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_WIDTH_20 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chan_pri_allowed(%struct.hostapd_channel_data* %0) #0 {
  %2 = alloca %struct.hostapd_channel_data*, align 8
  store %struct.hostapd_channel_data* %0, %struct.hostapd_channel_data** %2, align 8
  %3 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %2, align 8
  %4 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %2, align 8
  %11 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HOSTAPD_CHAN_WIDTH_20, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %9, %1
  %17 = phi i1 [ false, %1 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
