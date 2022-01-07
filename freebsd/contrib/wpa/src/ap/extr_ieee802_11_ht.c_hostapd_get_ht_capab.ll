; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_ht.c_hostapd_get_ht_capab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_ht.c_hostapd_get_ht_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_ht_capabilities = type { i32 }

@HT_CAP_INFO_RX_STBC_MASK = common dso_local global i32 0, align 4
@HT_CAP_INFO_TX_STBC = common dso_local global i32 0, align 4
@HT_CAP_INFO_SMPS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_get_ht_capab(%struct.hostapd_data* %0, %struct.ieee80211_ht_capabilities* %1, %struct.ieee80211_ht_capabilities* %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.ieee80211_ht_capabilities*, align 8
  %6 = alloca %struct.ieee80211_ht_capabilities*, align 8
  %7 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.ieee80211_ht_capabilities* %1, %struct.ieee80211_ht_capabilities** %5, align 8
  store %struct.ieee80211_ht_capabilities* %2, %struct.ieee80211_ht_capabilities** %6, align 8
  %8 = load %struct.ieee80211_ht_capabilities*, %struct.ieee80211_ht_capabilities** %5, align 8
  %9 = icmp eq %struct.ieee80211_ht_capabilities* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %64

11:                                               ; preds = %3
  %12 = load %struct.ieee80211_ht_capabilities*, %struct.ieee80211_ht_capabilities** %6, align 8
  %13 = load %struct.ieee80211_ht_capabilities*, %struct.ieee80211_ht_capabilities** %5, align 8
  %14 = call i32 @os_memcpy(%struct.ieee80211_ht_capabilities* %12, %struct.ieee80211_ht_capabilities* %13, i32 4)
  %15 = load %struct.ieee80211_ht_capabilities*, %struct.ieee80211_ht_capabilities** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_ht_capabilities, %struct.ieee80211_ht_capabilities* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le_to_host16(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HT_CAP_INFO_RX_STBC_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @HT_CAP_INFO_TX_STBC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @HT_CAP_INFO_SMPS_MASK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %33 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HT_CAP_INFO_RX_STBC_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %11
  %41 = load i32, i32* @HT_CAP_INFO_TX_STBC, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %40, %11
  %46 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %47 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HT_CAP_INFO_TX_STBC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @HT_CAP_INFO_RX_STBC_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %54, %45
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @host_to_le16(i32 %60)
  %62 = load %struct.ieee80211_ht_capabilities*, %struct.ieee80211_ht_capabilities** %6, align 8
  %63 = getelementptr inbounds %struct.ieee80211_ht_capabilities, %struct.ieee80211_ht_capabilities* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %10
  ret void
}

declare dso_local i32 @os_memcpy(%struct.ieee80211_ht_capabilities*, %struct.ieee80211_ht_capabilities*, i32) #1

declare dso_local i32 @le_to_host16(i32) #1

declare dso_local i32 @host_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
