; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_phy_info_vht_capa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_phy_info_vht_capa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32, i32 }
%struct.nlattr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_hw_modes*, %struct.nlattr*, %struct.nlattr*)* @phy_info_vht_capa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_info_vht_capa(%struct.hostapd_hw_modes* %0, %struct.nlattr* %1, %struct.nlattr* %2) #0 {
  %4 = alloca %struct.hostapd_hw_modes*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i32*, align 8
  store %struct.hostapd_hw_modes* %0, %struct.hostapd_hw_modes** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  store %struct.nlattr* %2, %struct.nlattr** %6, align 8
  %8 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %9 = icmp ne %struct.nlattr* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %12 = call i32 @nla_get_u32(%struct.nlattr* %11)
  %13 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %14 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %10, %3
  %16 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %20 = call i32 @nla_len(%struct.nlattr* %19)
  %21 = icmp sge i32 %20, 8
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %24 = call i32* @nla_data(%struct.nlattr* %23)
  store i32* %24, i32** %7, align 8
  %25 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %26 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @os_memcpy(i32 %27, i32* %28, i32 8)
  br label %30

30:                                               ; preds = %22, %18, %15
  ret void
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
