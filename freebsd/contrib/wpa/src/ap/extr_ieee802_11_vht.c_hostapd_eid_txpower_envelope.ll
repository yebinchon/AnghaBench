; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_hostapd_eid_txpower_envelope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_hostapd_eid_txpower_envelope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__*, %struct.hostapd_iface* }
%struct.TYPE_2__ = type { i32 }
%struct.hostapd_iface = type { i64, %struct.hostapd_config*, %struct.hostapd_hw_modes* }
%struct.hostapd_config = type { i32, i32 }
%struct.hostapd_hw_modes = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i64, i32 }

@NUM_HOSTAPD_MODES = common dso_local global i64 0, align 8
@WLAN_EID_VHT_TRANSMIT_POWER_ENVELOPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_eid_txpower_envelope(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hostapd_iface*, align 8
  %7 = alloca %struct.hostapd_config*, align 8
  %8 = alloca %struct.hostapd_hw_modes*, align 8
  %9 = alloca %struct.hostapd_channel_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %18 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %17, i32 0, i32 1
  %19 = load %struct.hostapd_iface*, %struct.hostapd_iface** %18, align 8
  store %struct.hostapd_iface* %19, %struct.hostapd_iface** %6, align 8
  %20 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %21 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %20, i32 0, i32 1
  %22 = load %struct.hostapd_config*, %struct.hostapd_config** %21, align 8
  store %struct.hostapd_config* %22, %struct.hostapd_config** %7, align 8
  %23 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %24 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %23, i32 0, i32 2
  %25 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %24, align 8
  store %struct.hostapd_hw_modes* %25, %struct.hostapd_hw_modes** %8, align 8
  %26 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %27 = icmp ne %struct.hostapd_hw_modes* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32*, i32** %5, align 8
  store i32* %29, i32** %3, align 8
  br label %170

30:                                               ; preds = %2
  %31 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %32 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @ieee80211_freq_to_chan(i64 %33, i32* %12)
  %35 = load i64, i64* @NUM_HOSTAPD_MODES, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  store i32* %38, i32** %3, align 8
  br label %170

39:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %43 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %48 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %47, i32 0, i32 1
  %49 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %49, i64 %51
  %53 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %56 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %64

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %40

64:                                               ; preds = %59, %40
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %67 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32*, i32** %5, align 8
  store i32* %71, i32** %3, align 8
  br label %170

72:                                               ; preds = %64
  %73 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %74 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %73, i32 0, i32 1
  %75 = load %struct.hostapd_config*, %struct.hostapd_config** %74, align 8
  %76 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %88 [
    i32 128, label %78
    i32 130, label %86
    i32 129, label %87
    i32 131, label %87
  ]

78:                                               ; preds = %72
  %79 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %80 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %13, align 4
  br label %85

84:                                               ; preds = %78
  store i32 1, i32* %13, align 4
  br label %85

85:                                               ; preds = %84, %83
  br label %90

86:                                               ; preds = %72
  store i32 2, i32* %13, align 4
  br label %90

87:                                               ; preds = %72, %72
  store i32 3, i32* %13, align 4
  br label %90

88:                                               ; preds = %72
  %89 = load i32*, i32** %5, align 8
  store i32* %89, i32** %3, align 8
  br label %170

90:                                               ; preds = %87, %86, %85
  %91 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %92 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %91, i32 0, i32 1
  %93 = load %struct.hostapd_iface*, %struct.hostapd_iface** %92, align 8
  %94 = call i32 @hostapd_is_dfs_required(%struct.hostapd_iface* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %97, %90
  %99 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %100 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load i32, i32* %10, align 4
  %107 = icmp eq i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 0, i32 3
  store i32 %109, i32* %14, align 4
  br label %116

110:                                              ; preds = %98
  %111 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %112 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %110, %105
  %117 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %118 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %117, i32 0, i32 1
  %119 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %119, i64 %121
  store %struct.hostapd_channel_data* %122, %struct.hostapd_channel_data** %9, align 8
  %123 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %9, align 8
  %124 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = mul nsw i32 %128, 2
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp sgt i32 %130, 127
  br i1 %131, label %132, label %133

132:                                              ; preds = %116
  store i32 127, i32* %15, align 4
  br label %133

133:                                              ; preds = %132, %116
  %134 = load i32, i32* %15, align 4
  %135 = icmp slt i32 %134, -128
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 -128, i32* %15, align 4
  br label %137

137:                                              ; preds = %136, %133
  %138 = load i32, i32* %15, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 128, %141
  %143 = add nsw i32 %142, 128
  store i32 %143, i32* %16, align 4
  br label %146

144:                                              ; preds = %137
  %145 = load i32, i32* %15, align 4
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %144, %140
  %147 = load i32, i32* @WLAN_EID_VHT_TRANSMIT_POWER_ENVELOPE, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %5, align 8
  store i32 %147, i32* %148, align 4
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 2, %150
  %152 = load i32*, i32** %5, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %5, align 8
  store i32 %151, i32* %152, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32*, i32** %5, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %5, align 8
  store i32 %154, i32* %155, align 4
  store i32 0, i32* %11, align 4
  br label %157

157:                                              ; preds = %165, %146
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %157
  %162 = load i32, i32* %16, align 4
  %163 = load i32*, i32** %5, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %5, align 8
  store i32 %162, i32* %163, align 4
  br label %165

165:                                              ; preds = %161
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %157

168:                                              ; preds = %157
  %169 = load i32*, i32** %5, align 8
  store i32* %169, i32** %3, align 8
  br label %170

170:                                              ; preds = %168, %88, %70, %37, %28
  %171 = load i32*, i32** %3, align 8
  ret i32* %171
}

declare dso_local i64 @ieee80211_freq_to_chan(i64, i32*) #1

declare dso_local i32 @hostapd_is_dfs_required(%struct.hostapd_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
