; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_nl80211_sta_opmode_change_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_nl80211_sta_opmode_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32 }
%struct.nlattr = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, i32 }

@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_CHANNEL_WIDTH = common dso_local global i64 0, align 8
@NL80211_ATTR_SMPS_MODE = common dso_local global i64 0, align 8
@NL80211_ATTR_NSS = common dso_local global i64 0, align 8
@SMPS_INVALID = common dso_local global i8* null, align 8
@CHAN_WIDTH_UNKNOWN = common dso_local global i8* null, align 8
@SMPS_OFF = common dso_local global i8* null, align 8
@SMPS_STATIC = common dso_local global i8* null, align 8
@SMPS_DYNAMIC = common dso_local global i8* null, align 8
@CHAN_WIDTH_20_NOHT = common dso_local global i8* null, align 8
@CHAN_WIDTH_20 = common dso_local global i8* null, align 8
@CHAN_WIDTH_40 = common dso_local global i8* null, align 8
@CHAN_WIDTH_80 = common dso_local global i8* null, align 8
@CHAN_WIDTH_80P80 = common dso_local global i8* null, align 8
@CHAN_WIDTH_160 = common dso_local global i8* null, align 8
@EVENT_STATION_OPMODE_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, %struct.nlattr**)* @nl80211_sta_opmode_change_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_sta_opmode_change_event(%struct.wpa_driver_nl80211_data* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %union.wpa_event_data, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %3, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %4, align 8
  %8 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %9 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %10 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %8, i64 %9
  %11 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %12 = icmp ne %struct.nlattr* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %15 = load i64, i64* @NL80211_ATTR_CHANNEL_WIDTH, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %13
  %20 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %21 = load i64, i64* @NL80211_ATTR_SMPS_MODE, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %27 = load i64, i64* @NL80211_ATTR_NSS, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25, %2
  br label %141

32:                                               ; preds = %25, %19, %13
  %33 = load i8*, i8** @SMPS_INVALID, align 8
  %34 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @CHAN_WIDTH_UNKNOWN, align 8
  %37 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 255, i32* %40, align 8
  %41 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %42 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i32 @nla_data(%struct.nlattr* %44)
  %46 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %49 = load i64, i64* @NL80211_ATTR_SMPS_MODE, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %53, label %78

53:                                               ; preds = %32
  %54 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %55 = load i64, i64* @NL80211_ATTR_SMPS_MODE, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i8* @nla_get_u8(%struct.nlattr* %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  switch i32 %60, label %73 [
    i32 129, label %61
    i32 128, label %65
    i32 130, label %69
  ]

61:                                               ; preds = %53
  %62 = load i8*, i8** @SMPS_OFF, align 8
  %63 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  br label %77

65:                                               ; preds = %53
  %66 = load i8*, i8** @SMPS_STATIC, align 8
  %67 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %77

69:                                               ; preds = %53
  %70 = load i8*, i8** @SMPS_DYNAMIC, align 8
  %71 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  br label %77

73:                                               ; preds = %53
  %74 = load i8*, i8** @SMPS_INVALID, align 8
  %75 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %73, %69, %65, %61
  br label %78

78:                                               ; preds = %77, %32
  %79 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %80 = load i64, i64* @NL80211_ATTR_CHANNEL_WIDTH, align 8
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %79, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  %83 = icmp ne %struct.nlattr* %82, null
  br i1 %83, label %84, label %120

84:                                               ; preds = %78
  %85 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %86 = load i64, i64* @NL80211_ATTR_CHANNEL_WIDTH, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %85, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = call i32 @nla_get_u32(%struct.nlattr* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  switch i32 %90, label %115 [
    i32 134, label %91
    i32 135, label %95
    i32 133, label %99
    i32 132, label %103
    i32 131, label %107
    i32 136, label %111
  ]

91:                                               ; preds = %84
  %92 = load i8*, i8** @CHAN_WIDTH_20_NOHT, align 8
  %93 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  br label %119

95:                                               ; preds = %84
  %96 = load i8*, i8** @CHAN_WIDTH_20, align 8
  %97 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  br label %119

99:                                               ; preds = %84
  %100 = load i8*, i8** @CHAN_WIDTH_40, align 8
  %101 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  br label %119

103:                                              ; preds = %84
  %104 = load i8*, i8** @CHAN_WIDTH_80, align 8
  %105 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %119

107:                                              ; preds = %84
  %108 = load i8*, i8** @CHAN_WIDTH_80P80, align 8
  %109 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  br label %119

111:                                              ; preds = %84
  %112 = load i8*, i8** @CHAN_WIDTH_160, align 8
  %113 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  br label %119

115:                                              ; preds = %84
  %116 = load i8*, i8** @CHAN_WIDTH_UNKNOWN, align 8
  %117 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %111, %107, %103, %99, %95, %91
  br label %120

120:                                              ; preds = %119, %78
  %121 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %122 = load i64, i64* @NL80211_ATTR_NSS, align 8
  %123 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %121, i64 %122
  %124 = load %struct.nlattr*, %struct.nlattr** %123, align 8
  %125 = icmp ne %struct.nlattr* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %120
  %127 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %128 = load i64, i64* @NL80211_ATTR_NSS, align 8
  %129 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %127, i64 %128
  %130 = load %struct.nlattr*, %struct.nlattr** %129, align 8
  %131 = call i8* @nla_get_u8(%struct.nlattr* %130)
  %132 = ptrtoint i8* %131 to i32
  %133 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %126, %120
  %136 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %137 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @EVENT_STATION_OPMODE_CHANGED, align 4
  %140 = call i32 @wpa_supplicant_event(i32 %138, i32 %139, %union.wpa_event_data* %5)
  br label %141

141:                                              ; preds = %135, %31
  ret void
}

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
