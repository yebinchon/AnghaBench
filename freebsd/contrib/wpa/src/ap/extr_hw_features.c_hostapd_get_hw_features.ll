; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_get_hw_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_get_hw_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i32, i32, i32, %struct.hostapd_hw_modes*, i32, %struct.hostapd_data** }
%struct.hostapd_hw_modes = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.hostapd_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@HOSTAPD_MODULE_IEEE80211 = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Fetching hardware channel/rate support not supported.\00", align 1
@WPA_DRIVER_FLAGS_RADAR = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_RADAR = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_DFS_OFFLOAD = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_NO_IR = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Allowed channel: mode=%d chan=%d freq=%d MHz max_tx_power=%d dBm%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_get_hw_features(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hostapd_hw_modes*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hostapd_hw_modes*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %14 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %15 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %14, i32 0, i32 5
  %16 = load %struct.hostapd_data**, %struct.hostapd_data*** %15, align 8
  %17 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %16, i64 0
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %17, align 8
  store %struct.hostapd_data* %18, %struct.hostapd_data** %4, align 8
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %20 = call i64 @hostapd_drv_none(%struct.hostapd_data* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %207

23:                                               ; preds = %1
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %25 = call %struct.hostapd_hw_modes* @hostapd_get_hw_feature_data(%struct.hostapd_data* %24, i32* %7, i32* %8, i32* %10)
  store %struct.hostapd_hw_modes* %25, %struct.hostapd_hw_modes** %9, align 8
  %26 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %27 = icmp eq %struct.hostapd_hw_modes* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %30 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %31 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %32 = call i32 @hostapd_logger(%struct.hostapd_data* %29, i32* null, i32 %30, i32 %31, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %207

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %36 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %39 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %41 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %40, i32 0, i32 3
  %42 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %41, align 8
  %43 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %44 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @hostapd_free_hw_features(%struct.hostapd_hw_modes* %42, i32 %45)
  %47 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %48 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %49 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %48, i32 0, i32 3
  store %struct.hostapd_hw_modes* %47, %struct.hostapd_hw_modes** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %52 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %203, %33
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %206

57:                                               ; preds = %53
  %58 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %9, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %58, i64 %60
  store %struct.hostapd_hw_modes* %61, %struct.hostapd_hw_modes** %11, align 8
  %62 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %63 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %70 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @WPA_DRIVER_FLAGS_RADAR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %68, %57
  %76 = phi i1 [ false, %57 ], [ %74, %68 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %199, %75
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  %81 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %202

84:                                               ; preds = %78
  store i32 0, i32* %13, align 4
  %85 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  %86 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 1, i32* %13, align 4
  br label %143

100:                                              ; preds = %96, %84
  %101 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  %102 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %100
  %113 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %114 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @WPA_DRIVER_FLAGS_DFS_OFFLOAD, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %112, %100
  %120 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  %121 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @HOSTAPD_CHAN_NO_IR, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %119, %112
  %132 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %133 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  %134 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %132
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %131, %119
  br label %143

143:                                              ; preds = %142, %99
  %144 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  %145 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %144, i32 0, i32 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %143
  br label %199

156:                                              ; preds = %143
  %157 = load i32, i32* @MSG_MSGDUMP, align 4
  %158 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  %159 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  %162 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  %170 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %169, i32 0, i32 1
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  %178 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %177, i32 0, i32 1
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %156
  %188 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  %189 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %188, i32 0, i32 1
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 %192
  %194 = call i8* @dfs_info(%struct.TYPE_4__* %193)
  br label %196

195:                                              ; preds = %156
  br label %196

196:                                              ; preds = %195, %187
  %197 = phi i8* [ %194, %187 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %195 ]
  %198 = call i32 @wpa_printf(i32 %157, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %160, i32 %168, i32 %176, i32 %184, i8* %197)
  br label %199

199:                                              ; preds = %196, %155
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %78

202:                                              ; preds = %78
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %5, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %5, align 4
  br label %53

206:                                              ; preds = %53
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %206, %28, %22
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i64 @hostapd_drv_none(%struct.hostapd_data*) #1

declare dso_local %struct.hostapd_hw_modes* @hostapd_get_hw_feature_data(%struct.hostapd_data*, i32*, i32*, i32*) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32*, i32, i32, i8*) #1

declare dso_local i32 @hostapd_free_hw_features(%struct.hostapd_hw_modes*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i8* @dfs_info(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
