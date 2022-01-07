; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_ht.c_copy_sta_ht_capab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_ht.c_copy_sta_ht_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sta_info = type { i32, i32* }

@WLAN_STA_WMM = common dso_local global i32 0, align 4
@WLAN_STA_HT = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_sta_ht_capab(%struct.hostapd_data* %0, %struct.sta_info* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %3
  %11 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @WLAN_STA_WMM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %10
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %19 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %26 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %24, %17, %10, %3
  %32 = load i32, i32* @WLAN_STA_HT, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %35 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @os_free(i32* %40)
  %42 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %43 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %44, i32* %4, align 4
  br label %73

45:                                               ; preds = %24
  %46 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %47 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = call i32* @os_zalloc(i32 4)
  %52 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %59, i32* %4, align 4
  br label %73

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i32, i32* @WLAN_STA_HT, align 4
  %63 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %64 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @os_memcpy(i32* %69, i32* %70, i32 4)
  %72 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %61, %58, %31
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
