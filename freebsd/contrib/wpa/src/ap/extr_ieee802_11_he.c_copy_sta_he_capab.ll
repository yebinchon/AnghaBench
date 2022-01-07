; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_he.c_copy_sta_he_capab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_he.c_copy_sta_he_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sta_info = type { i64, i32*, i32 }

@WLAN_STA_HE = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_sta_he_capab(%struct.hostapd_data* %0, %struct.sta_info* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_data*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %7, align 8
  store %struct.sta_info* %1, %struct.sta_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %5
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @check_valid_he_mcs(%struct.hostapd_data* %22, i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i64, i64* %11, align 8
  %29 = icmp ugt i64 %28, 4
  br i1 %29, label %30, label %44

30:                                               ; preds = %27, %21, %14, %5
  %31 = load i32, i32* @WLAN_STA_HE, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @os_free(i32* %39)
  %41 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %42 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %43, i32* %6, align 4
  br label %80

44:                                               ; preds = %27
  %45 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %44
  %50 = call i32* @os_zalloc(i32 4)
  %51 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %52 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %54 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %58, i32* %6, align 4
  br label %80

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i32, i32* @WLAN_STA_HE, align 4
  %62 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %63 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @os_memset(i32* %68, i32 0, i32 4)
  %70 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @os_memcpy(i32* %72, i32* %73, i64 %74)
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %78 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %60, %57, %30
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @check_valid_he_mcs(%struct.hostapd_data*, i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_zalloc(i32) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
