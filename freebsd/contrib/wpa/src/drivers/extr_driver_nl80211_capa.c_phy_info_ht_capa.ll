; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_phy_info_ht_capa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_phy_info_ht_capa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_hw_modes*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*)* @phy_info_ht_capa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_info_ht_capa(%struct.hostapd_hw_modes* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.nlattr* %3, %struct.nlattr* %4) #0 {
  %6 = alloca %struct.hostapd_hw_modes*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32*, align 8
  store %struct.hostapd_hw_modes* %0, %struct.hostapd_hw_modes** %6, align 8
  store %struct.nlattr* %1, %struct.nlattr** %7, align 8
  store %struct.nlattr* %2, %struct.nlattr** %8, align 8
  store %struct.nlattr* %3, %struct.nlattr** %9, align 8
  store %struct.nlattr* %4, %struct.nlattr** %10, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %16 = call i32 @nla_get_u16(%struct.nlattr* %15)
  %17 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %18 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %14, %5
  %20 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %24 = call i32 @nla_get_u8(%struct.nlattr* %23)
  %25 = and i32 %24, 3
  %26 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %27 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %22, %19
  %31 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %35 = call i32 @nla_get_u8(%struct.nlattr* %34)
  %36 = shl i32 %35, 2
  %37 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %38 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %33, %30
  %42 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %46 = call i32 @nla_len(%struct.nlattr* %45)
  %47 = icmp sge i32 %46, 16
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %50 = call i32* @nla_data(%struct.nlattr* %49)
  store i32* %50, i32** %11, align 8
  %51 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %52 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @os_memcpy(i32 %53, i32* %54, i32 16)
  br label %56

56:                                               ; preds = %48, %44, %41
  ret void
}

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
