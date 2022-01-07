; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_hostapd_own_capab_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_hostapd_own_capab_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64*, i64, i64, i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to check if DFS is required; ret=%d\00", align 1
@SHORT_PREAMBLE = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@HOSTAPD_MODE_IEEE80211G = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@HOSTAPD_MODE_IEEE80211A = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@RRM_CAPABILITIES_IE_LEN = common dso_local global i32 0, align 4
@IEEE80211_CAP_RRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_own_capab_info(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  %7 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 2
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = call i32 @hostapd_is_dfs_required(%struct.TYPE_12__* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @MSG_WARNING, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %27 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SHORT_PREAMBLE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %25, %18
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %39 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %4, align 4
  %45 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %46 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %37
  %52 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %53 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %60 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58, %51
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %58, %37
  %67 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %68 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %66
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %79 = load i32, i32* %3, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %83 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %82, i32 0, i32 2
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = icmp ne %struct.TYPE_9__* %86, null
  br i1 %87, label %88, label %109

88:                                               ; preds = %81
  %89 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %90 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %89, i32 0, i32 2
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @HOSTAPD_MODE_IEEE80211G, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %88
  %99 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %100 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %99, i32 0, i32 2
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* @WLAN_CAPABILITY_SHORT_SLOT_TIME, align 4
  %107 = load i32, i32* %3, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %98, %88, %81
  %110 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %111 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %110, i32 0, i32 2
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = icmp ne %struct.TYPE_9__* %114, null
  br i1 %115, label %116, label %140

116:                                              ; preds = %109
  %117 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %118 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %117, i32 0, i32 2
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @HOSTAPD_MODE_IEEE80211A, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %116
  %127 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %128 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133, %126
  %137 = load i32, i32* @WLAN_CAPABILITY_SPECTRUM_MGMT, align 4
  %138 = load i32, i32* %3, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %133, %116, %109
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %161, %140
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @RRM_CAPABILITIES_IE_LEN, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %164

145:                                              ; preds = %141
  %146 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %147 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %146, i32 0, i32 0
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %145
  %157 = load i32, i32* @IEEE80211_CAP_RRM, align 4
  %158 = load i32, i32* %3, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %3, align 4
  br label %164

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %141

164:                                              ; preds = %156, %141
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @hostapd_is_dfs_required(%struct.TYPE_12__*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
