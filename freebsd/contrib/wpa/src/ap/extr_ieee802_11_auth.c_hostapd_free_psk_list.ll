; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_auth.c_hostapd_free_psk_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_auth.c_hostapd_free_psk_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_sta_wpa_psk_short = type { %struct.hostapd_sta_wpa_psk_short*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_free_psk_list(%struct.hostapd_sta_wpa_psk_short* %0) #0 {
  %2 = alloca %struct.hostapd_sta_wpa_psk_short*, align 8
  %3 = alloca %struct.hostapd_sta_wpa_psk_short*, align 8
  store %struct.hostapd_sta_wpa_psk_short* %0, %struct.hostapd_sta_wpa_psk_short** %2, align 8
  %4 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %2, align 8
  %5 = icmp ne %struct.hostapd_sta_wpa_psk_short* %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %2, align 8
  %8 = getelementptr inbounds %struct.hostapd_sta_wpa_psk_short, %struct.hostapd_sta_wpa_psk_short* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %2, align 8
  %13 = getelementptr inbounds %struct.hostapd_sta_wpa_psk_short, %struct.hostapd_sta_wpa_psk_short* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  br label %27

16:                                               ; preds = %6, %1
  br label %17

17:                                               ; preds = %20, %16
  %18 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %2, align 8
  %19 = icmp ne %struct.hostapd_sta_wpa_psk_short* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %2, align 8
  store %struct.hostapd_sta_wpa_psk_short* %21, %struct.hostapd_sta_wpa_psk_short** %3, align 8
  %22 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %2, align 8
  %23 = getelementptr inbounds %struct.hostapd_sta_wpa_psk_short, %struct.hostapd_sta_wpa_psk_short* %22, i32 0, i32 0
  %24 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %23, align 8
  store %struct.hostapd_sta_wpa_psk_short* %24, %struct.hostapd_sta_wpa_psk_short** %2, align 8
  %25 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %3, align 8
  %26 = call i32 @os_free(%struct.hostapd_sta_wpa_psk_short* %25)
  br label %17

27:                                               ; preds = %11, %17
  ret void
}

declare dso_local i32 @os_free(%struct.hostapd_sta_wpa_psk_short*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
