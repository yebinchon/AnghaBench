; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_assoc_update_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_assoc_update_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WPA_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*)* @wpa_supplicant_assoc_update_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_assoc_update_ie(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i64* null, i64** %4, align 8
  store i64* null, i64** %5, align 8
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %7 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store i32 -1, i32* %2, align 4
  br label %71

16:                                               ; preds = %10
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wpa_key_mgmt_wpa_any(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %71

25:                                               ; preds = %16
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WPA_IE_VENDOR_TYPE, align 4
  %30 = call i64* @wpa_bss_get_vendor_ie(i32 %28, i32 %29)
  store i64* %30, i64** %4, align 8
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @WLAN_EID_RSN, align 4
  %35 = call i64* @wpa_bss_get_ie(i32 %33, i32 %34)
  store i64* %35, i64** %5, align 8
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i64*, i64** %4, align 8
  %40 = load i64*, i64** %4, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %25
  %43 = load i64*, i64** %4, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 2, %45
  br label %48

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i64 [ %46, %42 ], [ 0, %47 ]
  %50 = call i64 @wpa_sm_set_ap_wpa_ie(i32 %38, i64* %39, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %48
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %54 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64*, i64** %5, align 8
  %57 = load i64*, i64** %5, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i64*, i64** %5, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 2, %62
  br label %65

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %59
  %66 = phi i64 [ %63, %59 ], [ 0, %64 ]
  %67 = call i64 @wpa_sm_set_ap_rsn_ie(i32 %55, i64* %56, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %48
  store i32 -1, i32* %2, align 4
  br label %71

70:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %69, %24, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @wpa_key_mgmt_wpa_any(i32) #1

declare dso_local i64* @wpa_bss_get_vendor_ie(i32, i32) #1

declare dso_local i64* @wpa_bss_get_ie(i32, i32) #1

declare dso_local i64 @wpa_sm_set_ap_wpa_ie(i32, i64*, i64) #1

declare dso_local i64 @wpa_sm_set_ap_rsn_ie(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
