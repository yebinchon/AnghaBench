; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_gas_serv_rx_public_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_gas_serv_rx_public_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_mgmt = type { i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@IEEE80211_HDRLEN = common dso_local global i32 0, align 4
@WLAN_ACTION_PUBLIC = common dso_local global i64 0, align 8
@WLAN_ACTION_PROTECTED_DUAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64, i32)* @gas_serv_rx_public_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gas_serv_rx_public_action(i8* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hostapd_data*, align 8
  %10 = alloca %struct.ieee80211_mgmt*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.hostapd_data*
  store %struct.hostapd_data* %16, %struct.hostapd_data** %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %18, %struct.ieee80211_mgmt** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @IEEE80211_HDRLEN, align 4
  %21 = add nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %109

25:                                               ; preds = %4
  %26 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %27 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @WLAN_ACTION_PUBLIC, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %35 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @WLAN_ACTION_PROTECTED_DUAL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %109

42:                                               ; preds = %33, %25
  %43 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %44 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @WLAN_ACTION_PROTECTED_DUAL, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %52 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %11, align 8
  %54 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %55 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  store i32 1, i32* %14, align 4
  br label %75

61:                                               ; preds = %42
  %62 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %63 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %14, align 4
  br label %74

69:                                               ; preds = %61
  %70 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %71 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @is_broadcast_ether_addr(i32 %72)
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %69, %68
  br label %75

75:                                               ; preds = %74, %60
  %76 = load i32, i32* @IEEE80211_HDRLEN, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %7, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @IEEE80211_HDRLEN, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32* %85, i32** %12, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %109 [
    i32 128, label %89
    i32 129, label %99
  ]

89:                                               ; preds = %75
  %90 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i64, i64* %7, align 8
  %95 = sub i64 %94, 1
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @gas_serv_rx_gas_initial_req(%struct.hostapd_data* %90, i32* %91, i32* %93, i64 %95, i32 %96, i32 %97)
  br label %109

99:                                               ; preds = %75
  %100 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i64, i64* %7, align 8
  %105 = sub i64 %104, 1
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @gas_serv_rx_gas_comeback_req(%struct.hostapd_data* %100, i32* %101, i32* %103, i64 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %24, %41, %75, %99, %89
  ret void
}

declare dso_local i32 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @gas_serv_rx_gas_initial_req(%struct.hostapd_data*, i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @gas_serv_rx_gas_comeback_req(%struct.hostapd_data*, i32*, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
