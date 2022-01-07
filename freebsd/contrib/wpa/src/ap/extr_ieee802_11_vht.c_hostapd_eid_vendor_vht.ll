; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_hostapd_eid_vendor_vht.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_hostapd_eid_vendor_vht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@OUI_BROADCOM = common dso_local global i32 0, align 4
@VENDOR_VHT_TYPE = common dso_local global i32 0, align 4
@VENDOR_VHT_SUBTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_eid_vendor_vht(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  store i32* %7, i32** %6, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** %3, align 8
  br label %40

16:                                               ; preds = %2
  %17 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %6, align 8
  store i32 17, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @OUI_BROADCOM, align 4
  %24 = shl i32 %23, 8
  %25 = load i32, i32* @VENDOR_VHT_TYPE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @WPA_PUT_BE32(i32* %22, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32* %29, i32** %6, align 8
  %30 = load i32, i32* @VENDOR_VHT_SUBTYPE, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %33 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32* @hostapd_eid_vht_capabilities(%struct.hostapd_data* %33, i32* %34, i32 0)
  store i32* %35, i32** %6, align 8
  %36 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32* @hostapd_eid_vht_operation(%struct.hostapd_data* %36, i32* %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  store i32* %39, i32** %3, align 8
  br label %40

40:                                               ; preds = %16, %14
  %41 = load i32*, i32** %3, align 8
  ret i32* %41
}

declare dso_local i32 @WPA_PUT_BE32(i32*, i32) #1

declare dso_local i32* @hostapd_eid_vht_capabilities(%struct.hostapd_data*, i32*, i32) #1

declare dso_local i32* @hostapd_eid_vht_operation(%struct.hostapd_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
