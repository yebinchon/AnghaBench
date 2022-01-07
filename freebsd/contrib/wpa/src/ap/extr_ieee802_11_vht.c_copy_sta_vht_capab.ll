; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_copy_sta_vht_capab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_copy_sta_vht_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.sta_info = type { i32*, i32 }

@WLAN_STA_VHT = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_sta_vht_capab(%struct.hostapd_data* %0, %struct.sta_info* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %33

10:                                               ; preds = %3
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %12 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %10
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %19 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %17
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %26 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @check_valid_vht_mcs(i32 %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %24, %17, %10, %3
  %34 = load i32, i32* @WLAN_STA_VHT, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %37 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @os_free(i32* %42)
  %44 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %46, i32* %4, align 4
  br label %75

47:                                               ; preds = %24
  %48 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = call i32* @os_zalloc(i32 4)
  %54 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %57 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %61, i32* %4, align 4
  br label %75

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %47
  %64 = load i32, i32* @WLAN_STA_VHT, align 4
  %65 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %66 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %70 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @os_memcpy(i32* %71, i32* %72, i32 4)
  %74 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %63, %60, %33
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @check_valid_vht_mcs(i32, i32*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
