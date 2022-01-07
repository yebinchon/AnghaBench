; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_nl80211_reg_beacon_hint_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_nl80211_reg_beacon_hint_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32 }
%struct.nlattr = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"nl80211: Regulatory beacon hint\00", align 1
@REGDOM_BEACON_HINT = common dso_local global i32 0, align 4
@NL80211_ATTR_FREQ_BEFORE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@NL80211_ATTR_FREQ_AFTER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@EVENT_CHANNEL_LIST_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, %struct.nlattr**)* @nl80211_reg_beacon_hint_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_reg_beacon_hint_event(%struct.wpa_driver_nl80211_data* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %union.wpa_event_data, align 4
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %3, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %4, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 @wpa_printf(i32 %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @os_memset(%union.wpa_event_data* %5, i32 0, i32 4)
  %9 = load i32, i32* @REGDOM_BEACON_HINT, align 4
  %10 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %13 = load i64, i64* @NL80211_ATTR_FREQ_BEFORE, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %19 = load i64, i64* @NL80211_ATTR_FREQ_BEFORE, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = call i32 @nl80211_dump_freq(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.nlattr* %21)
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %25 = load i64, i64* @NL80211_ATTR_FREQ_AFTER, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %31 = load i64, i64* @NL80211_ATTR_FREQ_AFTER, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = call i32 @nl80211_dump_freq(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.nlattr* %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %37 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EVENT_CHANNEL_LIST_CHANGED, align 4
  %40 = call i32 @wpa_supplicant_event(i32 %38, i32 %39, %union.wpa_event_data* %5)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @nl80211_dump_freq(i8*, %struct.nlattr*) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
