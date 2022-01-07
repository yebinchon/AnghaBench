; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_get_op_chan_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_get_op_chan_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ht_operation = type { i32 }
%struct.ieee80211_vht_operation = type { i32, i32, i32 }

@WLAN_EID_HT_OPERATION = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_OFF_MASK = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW = common dso_local global i32 0, align 4
@WLAN_EID_VHT_OPERATION = common dso_local global i32 0, align 4
@CHANWIDTH_160MHZ = common dso_local global i32 0, align 4
@CHANWIDTH_80P80MHZ = common dso_local global i32 0, align 4
@CHANWIDTH_80MHZ = common dso_local global i32 0, align 4
@CHANWIDTH_USE_HT = common dso_local global i32 0, align 4
@NUM_HOSTAPD_MODES = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Cannot determine operating class and channel\00", align 1
@PHY_TYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot determine phy type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, i32*, i32*, i32*)* @wpas_get_op_chan_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_get_op_chan_phy(i32 %0, i32* %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_ht_operation*, align 8
  %18 = alloca %struct.ieee80211_vht_operation*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store %struct.ieee80211_ht_operation* null, %struct.ieee80211_ht_operation** %17, align 8
  store %struct.ieee80211_vht_operation* null, %struct.ieee80211_vht_operation** %18, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %25 = call i32* @get_ie(i32* %22, i64 %23, i32 %24)
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %6
  %29 = load i32*, i32** %14, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 %32, 4
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load i32*, i32** %14, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = bitcast i32* %36 to %struct.ieee80211_ht_operation*
  store %struct.ieee80211_ht_operation* %37, %struct.ieee80211_ht_operation** %17, align 8
  %38 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %17, align 8
  %39 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_OFF_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 1, i32* %15, align 4
  br label %53

47:                                               ; preds = %34
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* @HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 -1, i32* %15, align 4
  br label %52

52:                                               ; preds = %51, %47
  br label %53

53:                                               ; preds = %52, %46
  br label %54

54:                                               ; preds = %53, %28, %6
  %55 = load i32*, i32** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* @WLAN_EID_VHT_OPERATION, align 4
  %58 = call i32* @get_ie(i32* %55, i64 %56, i32 %57)
  store i32* %58, i32** %14, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %107

61:                                               ; preds = %54
  %62 = load i32*, i32** %14, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp uge i64 %65, 12
  br i1 %66, label %67, label %107

67:                                               ; preds = %61
  %68 = load i32*, i32** %14, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = bitcast i32* %69 to %struct.ieee80211_vht_operation*
  store %struct.ieee80211_vht_operation* %70, %struct.ieee80211_vht_operation** %18, align 8
  %71 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %18, align 8
  %72 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %104 [
    i32 1, label %74
    i32 2, label %100
    i32 3, label %102
  ]

74:                                               ; preds = %67
  %75 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %18, align 8
  %76 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %19, align 4
  %78 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %18, align 8
  %79 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* %20, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %19, align 4
  %86 = sub nsw i32 %84, %85
  %87 = call i32 @abs(i32 %86) #3
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @CHANWIDTH_160MHZ, align 4
  store i32 %90, i32* %16, align 4
  br label %99

91:                                               ; preds = %83, %74
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @CHANWIDTH_80P80MHZ, align 4
  store i32 %95, i32* %16, align 4
  br label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @CHANWIDTH_80MHZ, align 4
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %96, %94
  br label %99

99:                                               ; preds = %98, %89
  br label %106

100:                                              ; preds = %67
  %101 = load i32, i32* @CHANWIDTH_160MHZ, align 4
  store i32 %101, i32* %16, align 4
  br label %106

102:                                              ; preds = %67
  %103 = load i32, i32* @CHANWIDTH_80P80MHZ, align 4
  store i32 %103, i32* %16, align 4
  br label %106

104:                                              ; preds = %67
  %105 = load i32, i32* @CHANWIDTH_USE_HT, align 4
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %104, %102, %100, %99
  br label %107

107:                                              ; preds = %106, %61, %54
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i64 @ieee80211_freq_to_channel_ext(i32 %108, i32 %109, i32 %110, i32* %111, i32* %112)
  %114 = load i64, i64* @NUM_HOSTAPD_MODES, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = call i32 @wpa_printf(i32 %117, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %137

119:                                              ; preds = %107
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %17, align 8
  %122 = icmp ne %struct.ieee80211_ht_operation* %121, null
  %123 = zext i1 %122 to i32
  %124 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %18, align 8
  %125 = icmp ne %struct.ieee80211_vht_operation* %124, null
  %126 = zext i1 %125 to i32
  %127 = call i32 @ieee80211_get_phy_type(i32 %120, i32 %123, i32 %126)
  %128 = load i32*, i32** %13, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @PHY_TYPE_UNSPECIFIED, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %119
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = call i32 @wpa_printf(i32 %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %137

136:                                              ; preds = %119
  store i32 0, i32* %7, align 4
  br label %137

137:                                              ; preds = %136, %133, %116
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i32* @get_ie(i32*, i64, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @ieee80211_freq_to_channel_ext(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @ieee80211_get_phy_type(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
