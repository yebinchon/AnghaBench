; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_nl80211_external_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_nl80211_external_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32 }
%struct.nlattr = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8*, i32, i8*, i8* }

@NL80211_ATTR_AKM_SUITES = common dso_local global i64 0, align 8
@NL80211_ATTR_EXTERNAL_AUTH_ACTION = common dso_local global i64 0, align 8
@NL80211_ATTR_BSSID = common dso_local global i64 0, align 8
@NL80211_ATTR_SSID = common dso_local global i64 0, align 8
@EXT_AUTH_START = common dso_local global i32 0, align 4
@EXT_AUTH_ABORT = common dso_local global i32 0, align 4
@SSID_MAX_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"nl80211: External auth action: %u, AKM: 0x%x\00", align 1
@EVENT_EXTERNAL_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, %struct.nlattr**)* @nl80211_external_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_external_auth(%struct.wpa_driver_nl80211_data* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %union.wpa_event_data, align 8
  %6 = alloca i32, align 4
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %3, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %4, align 8
  %7 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %8 = load i64, i64* @NL80211_ATTR_AKM_SUITES, align 8
  %9 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %7, i64 %8
  %10 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %14 = load i64, i64* @NL80211_ATTR_EXTERNAL_AUTH_ACTION, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %20 = load i64, i64* @NL80211_ATTR_BSSID, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %26 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24, %18, %12, %2
  br label %98

31:                                               ; preds = %24
  %32 = call i32 @os_memset(%union.wpa_event_data* %5, i32 0, i32 40)
  %33 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %34 = load i64, i64* @NL80211_ATTR_EXTERNAL_AUTH_ACTION, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = call i8* @nla_get_u32(%struct.nlattr* %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %48 [
    i32 128, label %40
    i32 129, label %44
  ]

40:                                               ; preds = %31
  %41 = load i32, i32* @EXT_AUTH_START, align 4
  %42 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  br label %49

44:                                               ; preds = %31
  %45 = load i32, i32* @EXT_AUTH_ABORT, align 4
  %46 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %49

48:                                               ; preds = %31
  br label %98

49:                                               ; preds = %44, %40
  %50 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %51 = load i64, i64* @NL80211_ATTR_AKM_SUITES, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = call i8* @nla_get_u32(%struct.nlattr* %53)
  %55 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %58 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call i64 @nla_len(%struct.nlattr* %60)
  %62 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SSID_MAX_LEN, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %49
  br label %98

70:                                               ; preds = %49
  %71 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %72 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = call i8* @nla_data(%struct.nlattr* %74)
  %76 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %79 = load i64, i64* @NL80211_ATTR_BSSID, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %78, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = call i8* @nla_data(%struct.nlattr* %81)
  %83 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @wpa_printf(i32 %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %88, i8* %91)
  %93 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %94 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @EVENT_EXTERNAL_AUTH, align 4
  %97 = call i32 @wpa_supplicant_event(i32 %95, i32 %96, %union.wpa_event_data* %5)
  br label %98

98:                                               ; preds = %70, %69, %48, %30
  ret void
}

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i8*) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
