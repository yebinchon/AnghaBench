; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_get_hw_feature_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_get_hw_feature_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32 }
%struct.i802_bss = type { %struct.wpa_driver_nl80211_data* }
%struct.wpa_driver_nl80211_data = type { i32 }
%struct.nl_msg = type { i32 }
%struct.phy_info_arg = type { i32*, i32, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, %struct.TYPE_3__* }

@NL80211_PROTOCOL_FEATURE_SPLIT_WIPHY_DUMP = common dso_local global i32 0, align 4
@NLM_F_DUMP = common dso_local global i32 0, align 4
@NL80211_CMD_GET_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_SPLIT_WIPHY_DUMP = common dso_local global i32 0, align 4
@phy_info_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostapd_hw_modes* @nl80211_get_hw_feature_data(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.hostapd_hw_modes*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i802_bss*, align 8
  %12 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nl_msg*, align 8
  %15 = alloca %struct.phy_info_arg, align 8
  %16 = alloca %struct.hostapd_hw_modes*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.i802_bss*
  store %struct.i802_bss* %19, %struct.i802_bss** %11, align 8
  %20 = load %struct.i802_bss*, %struct.i802_bss** %11, align 8
  %21 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %20, i32 0, i32 0
  %22 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %21, align 8
  store %struct.wpa_driver_nl80211_data* %22, %struct.wpa_driver_nl80211_data** %12, align 8
  store i32 0, i32* %13, align 4
  %23 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %15, i32 0, i32 0
  %24 = load i32*, i32** %7, align 8
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %15, i32 0, i32 1
  store i32 -1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %15, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %26, align 8
  %27 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %15, i32 0, i32 3
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %15, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load i32*, i32** %7, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32*, i32** %8, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 0, i32* %31, align 4
  %32 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %12, align 8
  %33 = call i32 @get_nl80211_protocol_features(%struct.wpa_driver_nl80211_data* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @NL80211_PROTOCOL_FEATURE_SPLIT_WIPHY_DUMP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* @NLM_F_DUMP, align 4
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %38, %4
  %41 = load %struct.i802_bss*, %struct.i802_bss** %11, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @NL80211_CMD_GET_WIPHY, align 4
  %44 = call %struct.nl_msg* @nl80211_cmd_msg(%struct.i802_bss* %41, i32 %42, i32 %43)
  store %struct.nl_msg* %44, %struct.nl_msg** %14, align 8
  %45 = icmp ne %struct.nl_msg* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.nl_msg*, %struct.nl_msg** %14, align 8
  %48 = load i32, i32* @NL80211_ATTR_SPLIT_WIPHY_DUMP, align 4
  %49 = call i64 @nla_put_flag(%struct.nl_msg* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %40
  %52 = load %struct.nl_msg*, %struct.nl_msg** %14, align 8
  %53 = call i32 @nlmsg_free(%struct.nl_msg* %52)
  store %struct.hostapd_hw_modes* null, %struct.hostapd_hw_modes** %5, align 8
  br label %117

54:                                               ; preds = %46
  %55 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %12, align 8
  %56 = load %struct.nl_msg*, %struct.nl_msg** %14, align 8
  %57 = load i32, i32* @phy_info_handler, align 4
  %58 = call i64 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data* %55, %struct.nl_msg* %56, i32 %57, %struct.phy_info_arg* %15)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %116

60:                                               ; preds = %54
  %61 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %12, align 8
  %62 = call i32 @nl80211_set_regulatory_flags(%struct.wpa_driver_nl80211_data* %61, %struct.phy_info_arg* %15)
  %63 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %15, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %103

66:                                               ; preds = %60
  store i32 0, i32* %17, align 4
  br label %67

67:                                               ; preds = %95, %66
  %68 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %15, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = icmp ne %struct.TYPE_3__* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %17, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %72, %74
  br label %76

76:                                               ; preds = %71, %67
  %77 = phi i1 [ false, %67 ], [ %75, %71 ]
  br i1 %77, label %78, label %98

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %15, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = call i32 @os_free(%struct.TYPE_3__* %85)
  %87 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %15, i32 0, i32 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = call i32 @os_free(%struct.TYPE_3__* %93)
  br label %95

95:                                               ; preds = %78
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %17, align 4
  br label %67

98:                                               ; preds = %76
  %99 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %15, i32 0, i32 2
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = call i32 @os_free(%struct.TYPE_3__* %100)
  %102 = load i32*, i32** %7, align 8
  store i32 0, i32* %102, align 4
  store %struct.hostapd_hw_modes* null, %struct.hostapd_hw_modes** %5, align 8
  br label %117

103:                                              ; preds = %60
  %104 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %15, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %15, i32 0, i32 2
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = call %struct.hostapd_hw_modes* @wpa_driver_nl80211_postprocess_modes(%struct.TYPE_3__* %108, i32* %109)
  store %struct.hostapd_hw_modes* %110, %struct.hostapd_hw_modes** %16, align 8
  %111 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %16, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @nl80211_dump_chan_list(%struct.hostapd_hw_modes* %111, i32 %113)
  %115 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %16, align 8
  store %struct.hostapd_hw_modes* %115, %struct.hostapd_hw_modes** %5, align 8
  br label %117

116:                                              ; preds = %54
  store %struct.hostapd_hw_modes* null, %struct.hostapd_hw_modes** %5, align 8
  br label %117

117:                                              ; preds = %116, %103, %98, %51
  %118 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  ret %struct.hostapd_hw_modes* %118
}

declare dso_local i32 @get_nl80211_protocol_features(%struct.wpa_driver_nl80211_data*) #1

declare dso_local %struct.nl_msg* @nl80211_cmd_msg(%struct.i802_bss*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.nl_msg*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.nl_msg*) #1

declare dso_local i64 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data*, %struct.nl_msg*, i32, %struct.phy_info_arg*) #1

declare dso_local i32 @nl80211_set_regulatory_flags(%struct.wpa_driver_nl80211_data*, %struct.phy_info_arg*) #1

declare dso_local i32 @os_free(%struct.TYPE_3__*) #1

declare dso_local %struct.hostapd_hw_modes* @wpa_driver_nl80211_postprocess_modes(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @nl80211_dump_chan_list(%struct.hostapd_hw_modes*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
