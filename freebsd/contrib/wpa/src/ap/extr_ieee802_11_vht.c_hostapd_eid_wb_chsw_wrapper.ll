; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_hostapd_eid_wb_chsw_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_hostapd_eid_wb_chsw_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@HOSTAPD_MODE_IEEE80211A = common dso_local global i64 0, align 8
@WLAN_EID_VHT_CHANNEL_SWITCH_WRAPPER = common dso_local global i32 0, align 4
@WLAN_EID_VHT_WIDE_BW_CHSWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @hostapd_eid_wb_chsw_wrapper(%struct.hostapd_data* %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %11 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15, %2
  %22 = load i8**, i8*** %5, align 8
  store i8** %22, i8*** %3, align 8
  br label %106

23:                                               ; preds = %15
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %25 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %39 [
    i32 40, label %28
    i32 80, label %29
    i32 160, label %38
  ]

28:                                               ; preds = %23
  store i8* null, i8** %6, align 8
  br label %41

29:                                               ; preds = %23
  %30 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %31 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i8* inttoptr (i64 1 to i8*), i8** %6, align 8
  br label %37

36:                                               ; preds = %29
  store i8* inttoptr (i64 3 to i8*), i8** %6, align 8
  br label %37

37:                                               ; preds = %36, %35
  br label %41

38:                                               ; preds = %23
  store i8* inttoptr (i64 2 to i8*), i8** %6, align 8
  br label %41

39:                                               ; preds = %23
  %40 = load i8**, i8*** %5, align 8
  store i8** %40, i8*** %3, align 8
  br label %106

41:                                               ; preds = %38, %37, %28
  %42 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %43 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %49 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  br label %57

52:                                               ; preds = %41
  %53 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %54 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i32 [ %51, %47 ], [ %56, %52 ]
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @ieee80211_freq_to_chan(i32 %59, i8** %7)
  %61 = load i64, i64* @HOSTAPD_MODE_IEEE80211A, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i8**, i8*** %5, align 8
  store i8** %64, i8*** %3, align 8
  br label %106

65:                                               ; preds = %57
  %66 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %67 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %73 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ieee80211_freq_to_chan(i32 %75, i8** %8)
  %77 = load i64, i64* @HOSTAPD_MODE_IEEE80211A, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i8**, i8*** %5, align 8
  store i8** %80, i8*** %3, align 8
  br label %106

81:                                               ; preds = %71, %65
  %82 = load i32, i32* @WLAN_EID_VHT_CHANNEL_SWITCH_WRAPPER, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %86, i8*** %5, align 8
  store i8* %84, i8** %85, align 8
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %5, align 8
  store i8* inttoptr (i64 5 to i8*), i8** %87, align 8
  %89 = load i32, i32* @WLAN_EID_VHT_WIDE_BW_CHSWITCH, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %5, align 8
  store i8* %91, i8** %92, align 8
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %95, i8*** %5, align 8
  store i8* inttoptr (i64 3 to i8*), i8** %94, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %5, align 8
  store i8* %96, i8** %97, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i32 1
  store i8** %101, i8*** %5, align 8
  store i8* %99, i8** %100, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i8**, i8*** %5, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %104, i8*** %5, align 8
  store i8* %102, i8** %103, align 8
  %105 = load i8**, i8*** %5, align 8
  store i8** %105, i8*** %3, align 8
  br label %106

106:                                              ; preds = %81, %79, %63, %39, %21
  %107 = load i8**, i8*** %3, align 8
  ret i8** %107
}

declare dso_local i64 @ieee80211_freq_to_chan(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
