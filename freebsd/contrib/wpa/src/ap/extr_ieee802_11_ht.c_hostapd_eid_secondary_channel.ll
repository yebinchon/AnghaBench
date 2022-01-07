; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_ht.c_hostapd_eid_secondary_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_ht.c_hostapd_eid_secondary_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE = common dso_local global i32 0, align 4
@WLAN_EID_SECONDARY_CHANNEL_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_eid_secondary_channel(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %8 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %14 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12, %2
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %3, align 8
  br label %49

20:                                               ; preds = %12
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %22 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW, align 4
  store i32 %27, i32* %6, align 4
  br label %39

28:                                               ; preds = %20
  %29 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %30 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE, align 4
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %28
  %37 = load i32*, i32** %5, align 8
  store i32* %37, i32** %3, align 8
  br label %49

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i32, i32* @WLAN_EID_SECONDARY_CHANNEL_OFFSET, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %5, align 8
  store i32 1, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  store i32* %48, i32** %3, align 8
  br label %49

49:                                               ; preds = %39, %36, %18
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
