; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_copy_sta_vendor_vht.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_copy_sta_vendor_vht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sta_info = type { i32, i32* }

@WLAN_EID_VHT_CAP = common dso_local global i32 0, align 4
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@WLAN_STA_VHT = common dso_local global i32 0, align 4
@WLAN_STA_VENDOR_VHT = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_sta_vendor_vht(%struct.hostapd_data* %0, %struct.sta_info* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load i64, i64* %9, align 8
  %16 = icmp ult i64 %15, 11
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %19 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %14, %4
  br label %87

25:                                               ; preds = %17
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 5
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WLAN_EID_VHT_CAP, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %87

34:                                               ; preds = %25
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %39, 4
  br i1 %40, label %54, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32*, i32** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32*, i32** %10, align 8
  %48 = ptrtoint i32* %46 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = sub nsw i64 %51, 2
  %53 = icmp sgt i64 %43, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %41, %34
  br label %87

55:                                               ; preds = %41
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32* %57, i32** %10, align 8
  %58 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %59 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = call i32* @os_zalloc(i32 4)
  %64 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %65 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  %66 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %71, i32* %5, align 4
  br label %95

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %55
  %74 = load i32, i32* @WLAN_STA_VHT, align 4
  %75 = load i32, i32* @WLAN_STA_VENDOR_VHT, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %78 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %82 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @os_memcpy(i32* %83, i32* %84, i32 4)
  %86 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %86, i32* %5, align 4
  br label %95

87:                                               ; preds = %54, %33, %24
  %88 = load i32, i32* @WLAN_STA_VENDOR_VHT, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %91 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %87, %73, %70
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
