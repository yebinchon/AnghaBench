; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_remain_on_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_remain_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i64, i32, i64 }
%struct.nlattr = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY_CHANNEL_TYPE = common dso_local global i64 0, align 8
@NL80211_ATTR_DURATION = common dso_local global i64 0, align 8
@NL80211_ATTR_COOKIE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"nl80211: Remain-on-channel event (cancel=%d freq=%u channel_type=%u duration=%u cookie=0x%llx (%s))\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@EVENT_CANCEL_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@EVENT_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, i32, %struct.nlattr**)* @mlme_event_remain_on_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlme_event_remain_on_channel(%struct.wpa_driver_nl80211_data* %0, i32 %1, %struct.nlattr** %2) #0 {
  %4 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.wpa_event_data, align 4
  %11 = alloca i64, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nlattr** %2, %struct.nlattr*** %6, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %13 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %19 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = call i32 @nla_get_u32(%struct.nlattr* %21)
  store i32 %22, i32* %7, align 4
  br label %24

23:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %26 = load i64, i64* @NL80211_ATTR_WIPHY_CHANNEL_TYPE, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %32 = load i64, i64* @NL80211_ATTR_WIPHY_CHANNEL_TYPE, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nla_get_u32(%struct.nlattr* %34)
  store i32 %35, i32* %8, align 4
  br label %37

36:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %39 = load i64, i64* @NL80211_ATTR_DURATION, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %45 = load i64, i64* @NL80211_ATTR_DURATION, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = call i32 @nla_get_u32(%struct.nlattr* %47)
  store i32 %48, i32* %9, align 4
  br label %50

49:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %43
  %51 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %52 = load i64, i64* @NL80211_ATTR_COOKIE, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %58 = load i64, i64* @NL80211_ATTR_COOKIE, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call i64 @nla_get_u64(%struct.nlattr* %60)
  store i64 %61, i64* %11, align 8
  br label %63

62:                                               ; preds = %50
  store i64 0, i64* %11, align 8
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %72 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %77 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %67, i32 %68, i64 %69, i8* %76)
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %80 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %63
  br label %110

84:                                               ; preds = %63
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %89 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %84
  %91 = call i32 @os_memset(%union.wpa_event_data* %10, i32 0, i32 8)
  %92 = load i32, i32* %7, align 4
  %93 = bitcast %union.wpa_event_data* %10 to %struct.TYPE_2__*
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %9, align 4
  %96 = bitcast %union.wpa_event_data* %10 to %struct.TYPE_2__*
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %99 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = load i32, i32* @EVENT_CANCEL_REMAIN_ON_CHANNEL, align 4
  br label %107

105:                                              ; preds = %90
  %106 = load i32, i32* @EVENT_REMAIN_ON_CHANNEL, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = call i32 @wpa_supplicant_event(i32 %100, i32 %108, %union.wpa_event_data* %10)
  br label %110

110:                                              ; preds = %107, %83
  ret void
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u64(%struct.nlattr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32, i32, i64, i8*) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
