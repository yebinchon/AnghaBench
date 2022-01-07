; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_wpa_driver_hostap_poll_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_wpa_driver_hostap_poll_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hdr = type { i32, i32, i32, i32 }

@WLAN_FC_TYPE_DATA = common dso_local global i32 0, align 4
@WLAN_FC_STYPE_DATA = common dso_local global i32 0, align 4
@WLAN_FC_FROMDS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32)* @wpa_driver_hostap_poll_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_driver_hostap_poll_client(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hdr, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i32 @os_memset(%struct.ieee80211_hdr* %9, i32 0, i32 16)
  %11 = load i32, i32* @WLAN_FC_TYPE_DATA, align 4
  %12 = load i32, i32* @WLAN_FC_STYPE_DATA, align 4
  %13 = call i32 @IEEE80211_FC(i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %9, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @WLAN_FC_FROMDS, align 4
  %16 = call i32 @host_to_le16(i32 %15)
  %17 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %9, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %9, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i32 @os_memcpy(i32 %21, i32* %22, i32 %23)
  %25 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %9, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = call i32 @os_memcpy(i32 %26, i32* %27, i32 %28)
  %30 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @os_memcpy(i32 %31, i32* %32, i32 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = bitcast %struct.ieee80211_hdr* %9 to i32*
  %37 = call i32 @hostap_send_mlme(i8* %35, i32* %36, i32 16, i32 0, i32 0, i32* null, i32 0)
  ret void
}

declare dso_local i32 @os_memset(%struct.ieee80211_hdr*, i32, i32) #1

declare dso_local i32 @IEEE80211_FC(i32, i32) #1

declare dso_local i32 @host_to_le16(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @hostap_send_mlme(i8*, i32*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
