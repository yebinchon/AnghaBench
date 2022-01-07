; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_ch_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_ch_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i8* }
%struct.nlattr = type { i32 }
%struct.i802_bss = type { i32, i8* }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i8*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"nl80211: Channel switch%s event\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" started\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"nl80211: Unknown ifindex (%d) for channel switch, ignoring\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"nl80211: Channel type: %d\00", align 1
@.str.5 = private unnamed_addr constant [100 x i8] c"nl80211: Unknown secondary channel information - following channel definition calculations may fail\00", align 1
@EVENT_CH_SWITCH = common dso_local global i32 0, align 4
@EVENT_CH_SWITCH_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, i32)* @mlme_event_ch_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlme_event_ch_switch(%struct.wpa_driver_nl80211_data* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.nlattr* %3, %struct.nlattr* %4, %struct.nlattr* %5, %struct.nlattr* %6, i32 %7) #0 {
  %9 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.i802_bss*, align 8
  %18 = alloca %union.wpa_event_data, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %9, align 8
  store %struct.nlattr* %1, %struct.nlattr** %10, align 8
  store %struct.nlattr* %2, %struct.nlattr** %11, align 8
  store %struct.nlattr* %3, %struct.nlattr** %12, align 8
  store %struct.nlattr* %4, %struct.nlattr** %13, align 8
  store %struct.nlattr* %5, %struct.nlattr** %14, align 8
  store %struct.nlattr* %6, %struct.nlattr** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %8
  br label %150

32:                                               ; preds = %8
  %33 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %34 = call i8* @nla_get_u32(%struct.nlattr* %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %21, align 4
  %36 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %9, align 8
  %37 = load i32, i32* %21, align 4
  %38 = call %struct.i802_bss* @get_bss_ifindex(%struct.wpa_driver_nl80211_data* %36, i32 %37)
  store %struct.i802_bss* %38, %struct.i802_bss** %17, align 8
  %39 = load %struct.i802_bss*, %struct.i802_bss** %17, align 8
  %40 = icmp eq %struct.i802_bss* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32, i32* @MSG_WARNING, align 4
  %43 = load i32, i32* %21, align 4
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %150

45:                                               ; preds = %32
  %46 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %50 = call i8* @nla_get_u32(%struct.nlattr* %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %22, align 4
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = load i32, i32* %22, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %22, align 4
  switch i32 %55, label %60 [
    i32 128, label %56
    i32 131, label %57
    i32 129, label %58
    i32 130, label %59
  ]

56:                                               ; preds = %48
  store i32 0, i32* %19, align 4
  br label %60

57:                                               ; preds = %48
  br label %60

58:                                               ; preds = %48
  store i32 1, i32* %20, align 4
  br label %60

59:                                               ; preds = %48
  store i32 -1, i32* %20, align 4
  br label %60

60:                                               ; preds = %48, %59, %58, %57, %56
  br label %87

61:                                               ; preds = %45
  %62 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %66 = icmp ne %struct.nlattr* %65, null
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %69 = call i8* @nla_get_u32(%struct.nlattr* %68)
  %70 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %71 = call i8* @nla_get_u32(%struct.nlattr* %70)
  %72 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %73 = call i8* @nla_get_u32(%struct.nlattr* %72)
  %74 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %75 = icmp ne %struct.nlattr* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %78 = call i8* @nla_get_u32(%struct.nlattr* %77)
  br label %80

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79, %76
  %81 = phi i8* [ %78, %76 ], [ null, %79 ]
  %82 = call i32 @calculate_chan_offset(i8* %69, i8* %71, i8* %73, i8* %81)
  store i32 %82, i32* %20, align 4
  br label %86

83:                                               ; preds = %64, %61
  %84 = load i32, i32* @MSG_WARNING, align 4
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %60
  %88 = call i32 @os_memset(%union.wpa_event_data* %18, i32 0, i32 40)
  %89 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %90 = call i8* @nla_get_u32(%struct.nlattr* %89)
  %91 = bitcast %union.wpa_event_data* %18 to %struct.TYPE_2__*
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %19, align 4
  %94 = bitcast %union.wpa_event_data* %18 to %struct.TYPE_2__*
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %20, align 4
  %97 = bitcast %union.wpa_event_data* %18 to %struct.TYPE_2__*
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %100 = icmp ne %struct.nlattr* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %87
  %102 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %103 = call i8* @nla_get_u32(%struct.nlattr* %102)
  %104 = call i32 @convert2width(i8* %103)
  %105 = bitcast %union.wpa_event_data* %18 to %struct.TYPE_2__*
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %101, %87
  %108 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %109 = icmp ne %struct.nlattr* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %112 = call i8* @nla_get_u32(%struct.nlattr* %111)
  %113 = bitcast %union.wpa_event_data* %18 to %struct.TYPE_2__*
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %110, %107
  %116 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %117 = icmp ne %struct.nlattr* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %120 = call i8* @nla_get_u32(%struct.nlattr* %119)
  %121 = bitcast %union.wpa_event_data* %18 to %struct.TYPE_2__*
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %118, %115
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = bitcast %union.wpa_event_data* %18 to %struct.TYPE_2__*
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.i802_bss*, %struct.i802_bss** %17, align 8
  %131 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %126, %123
  %133 = bitcast %union.wpa_event_data* %18 to %struct.TYPE_2__*
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %9, align 8
  %137 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  %138 = load %struct.i802_bss*, %struct.i802_bss** %17, align 8
  %139 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %16, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %132
  %144 = load i32, i32* @EVENT_CH_SWITCH, align 4
  br label %147

145:                                              ; preds = %132
  %146 = load i32, i32* @EVENT_CH_SWITCH_STARTED, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = call i32 @wpa_supplicant_event(i32 %140, i32 %148, %union.wpa_event_data* %18)
  br label %150

150:                                              ; preds = %147, %41, %31
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.i802_bss* @get_bss_ifindex(%struct.wpa_driver_nl80211_data*, i32) #1

declare dso_local i32 @calculate_chan_offset(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @convert2width(i8*) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
