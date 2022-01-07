; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_list.c_ap_list_beacon_olbc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_list.c_ap_list_beacon_olbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.ap_info = type { i64, i32, i32* }

@HOSTAPD_MODE_IEEE80211G = common dso_local global i64 0, align 8
@ERP_INFO_NON_ERP_PRESENT = common dso_local global i32 0, align 4
@WLAN_SUPP_RATES_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*, %struct.ap_info*)* @ap_list_beacon_olbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_list_beacon_olbc(%struct.hostapd_iface* %0, %struct.ap_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_iface*, align 8
  %5 = alloca %struct.ap_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %4, align 8
  store %struct.ap_info* %1, %struct.ap_info** %5, align 8
  %8 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %9 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %14 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HOSTAPD_MODE_IEEE80211G, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %12
  %21 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %22 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %27 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20, %12, %2
  store i32 0, i32* %3, align 4
  br label %73

31:                                               ; preds = %20
  %32 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %33 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %38 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ERP_INFO_NON_ERP_PRESENT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %73

44:                                               ; preds = %36, %31
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %69, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @WLAN_SUPP_RATES_MAX, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %51 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 127
  %58 = mul nsw i32 %57, 5
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 60
  br i1 %60, label %67, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 90
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 110
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %61, %49
  store i32 0, i32* %3, align 4
  br label %73

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %45

72:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %67, %43, %30
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
