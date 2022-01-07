; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_he.c_hostapd_eid_he_mu_edca_parameter_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_he.c_hostapd_eid_he_mu_edca_parameter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_he_mu_edca_parameter_set = type { i32 }

@WLAN_EID_EXTENSION = common dso_local global i32 0, align 4
@WLAN_EID_EXT_HE_MU_EDCA_PARAMS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"HE: MU EDCA Parameter Set element\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @hostapd_eid_he_mu_edca_parameter_set(%struct.hostapd_data* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ieee80211_he_mu_edca_parameter_set*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %10 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to i64*
  store i64* %15, i64** %7, align 8
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %27, %2
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %30

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %8, align 8
  br label %16

30:                                               ; preds = %25, %16
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64*, i64** %5, align 8
  store i64* %34, i64** %3, align 8
  br label %63

35:                                               ; preds = %30
  %36 = load i64*, i64** %5, align 8
  store i64* %36, i64** %7, align 8
  %37 = load i32, i32* @WLAN_EID_EXTENSION, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64*, i64** %7, align 8
  %40 = getelementptr inbounds i64, i64* %39, i32 1
  store i64* %40, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %7, align 8
  store i64 5, i64* %41, align 8
  %43 = load i32, i32* @WLAN_EID_EXT_HE_MU_EDCA_PARAMS, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %7, align 8
  store i64 %44, i64* %45, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = bitcast i64* %47 to %struct.ieee80211_he_mu_edca_parameter_set*
  store %struct.ieee80211_he_mu_edca_parameter_set* %48, %struct.ieee80211_he_mu_edca_parameter_set** %6, align 8
  %49 = load %struct.ieee80211_he_mu_edca_parameter_set*, %struct.ieee80211_he_mu_edca_parameter_set** %6, align 8
  %50 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %51 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @os_memcpy(%struct.ieee80211_he_mu_edca_parameter_set* %49, i32* %55, i32 4)
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load i64*, i64** %7, align 8
  %59 = call i32 @wpa_hexdump(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64* %58, i32 4)
  %60 = load i64*, i64** %7, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 4
  store i64* %61, i64** %7, align 8
  %62 = load i64*, i64** %7, align 8
  store i64* %62, i64** %3, align 8
  br label %63

63:                                               ; preds = %35, %33
  %64 = load i64*, i64** %3, align 8
  ret i64* %64
}

declare dso_local i32 @os_memcpy(%struct.ieee80211_he_mu_edca_parameter_set*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
