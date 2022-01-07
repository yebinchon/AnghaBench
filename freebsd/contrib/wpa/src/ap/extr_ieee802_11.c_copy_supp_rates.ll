; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_copy_supp_rates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_copy_supp_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sta_info = type { i32, i32, i32 }
%struct.ieee802_11_elems = type { i32, i32, i32, i32 }

@HOSTAPD_MODE_IEEE80211AD = common dso_local global i64 0, align 8
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_IEEE80211 = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"No supported rates element in AssocReq\00", align 1
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid supported rates element length %d+%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.sta_info*, %struct.ieee802_11_elems*)* @copy_supp_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_supp_rates(%struct.hostapd_data* %0, %struct.sta_info* %1, %struct.ieee802_11_elems* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.ieee802_11_elems*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store %struct.ieee802_11_elems* %2, %struct.ieee802_11_elems** %7, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HOSTAPD_MODE_IEEE80211AD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %25, i32* %4, align 4
  br label %85

26:                                               ; preds = %14, %3
  %27 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %28 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %33 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %37 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %38 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %32, i32 %35, i32 %36, i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %39, i32* %4, align 4
  br label %85

40:                                               ; preds = %26
  %41 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %42 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %45 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = sext i32 %47 to i64
  %49 = icmp ugt i64 %48, 4
  br i1 %49, label %50, label %65

50:                                               ; preds = %40
  %51 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %52 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %56 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %57 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %58 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %61 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %51, i32 %54, i32 %55, i32 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %64, i32* %4, align 4
  br label %85

65:                                               ; preds = %40
  %66 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %70 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %73 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %76 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %79 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @merge_byte_arrays(i32 %68, i32 4, i32 %71, i32 %74, i32 %77, i32 %80)
  %82 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %83 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %65, %50, %31, %24
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @merge_byte_arrays(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
