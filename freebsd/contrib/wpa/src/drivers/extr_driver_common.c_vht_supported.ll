; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_common.c_vht_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_common.c_vht_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32, i32* }

@HOSTAPD_MODE_FLAG_VHT_INFO_KNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vht_supported(%struct.hostapd_hw_modes* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_hw_modes*, align 8
  store %struct.hostapd_hw_modes* %0, %struct.hostapd_hw_modes** %3, align 8
  %4 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %3, align 8
  %5 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @HOSTAPD_MODE_FLAG_VHT_INFO_KNOWN, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %3, align 8
  %13 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 3
  %18 = icmp ne i32 %17, 3
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %11, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
