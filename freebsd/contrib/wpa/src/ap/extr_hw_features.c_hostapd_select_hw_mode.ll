; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_select_hw_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_select_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i32, i32, %struct.TYPE_2__*, i32*, %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes* }
%struct.TYPE_2__ = type { i64, i32, i64, i64, i64 }
%struct.hostapd_hw_modes = type { i64 }

@HOSTAPD_MODE_IEEE80211G = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Disable OFDM/HT/VHT/HE on channel 14\00", align 1
@HOSTAPD_MODE_IEEE80211B = common dso_local global i64 0, align 8
@WPA_DRIVER_FLAGS_ACS_OFFLOAD = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SUPPORT_HW_MODE_ANY = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Hardware does not support configured mode\00", align 1
@HOSTAPD_MODULE_IEEE80211 = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"Hardware does not support configured mode (%d) (hw_mode in hostapd.conf)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_select_hw_mode(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_hw_modes*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %6 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %7 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %146

11:                                               ; preds = %1
  %12 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %13 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HOSTAPD_MODE_IEEE80211G, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %40, label %19

19:                                               ; preds = %11
  %20 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %21 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %19
  %27 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %28 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %35 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %33, %26, %19, %11
  %41 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %42 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 14
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load i32, i32* @MSG_INFO, align 4
  %49 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %50 = load i64, i64* @HOSTAPD_MODE_IEEE80211B, align 8
  %51 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %52 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 %50, i64* %54, align 8
  %55 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %56 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %60 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %64 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %47, %40, %33
  %68 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %69 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %68, i32 0, i32 4
  store %struct.hostapd_hw_modes* null, %struct.hostapd_hw_modes** %69, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %97, %67
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %73 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %70
  %77 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %78 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %77, i32 0, i32 5
  %79 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %79, i64 %81
  store %struct.hostapd_hw_modes* %82, %struct.hostapd_hw_modes** %5, align 8
  %83 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %84 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %87 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %85, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %76
  %93 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %94 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %95 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %94, i32 0, i32 4
  store %struct.hostapd_hw_modes* %93, %struct.hostapd_hw_modes** %95, align 8
  br label %100

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %70

100:                                              ; preds = %92, %70
  %101 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %102 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %101, i32 0, i32 4
  %103 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %102, align 8
  %104 = icmp eq %struct.hostapd_hw_modes* %103, null
  br i1 %104, label %105, label %137

105:                                              ; preds = %100
  %106 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %107 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @WPA_DRIVER_FLAGS_ACS_OFFLOAD, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %114 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @WPA_DRIVER_FLAGS_SUPPORT_HW_MODE_ANY, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %136, label %119

119:                                              ; preds = %112, %105
  %120 = load i32, i32* @MSG_ERROR, align 4
  %121 = call i32 @wpa_printf(i32 %120, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %122 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %123 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %128 = load i32, i32* @HOSTAPD_LEVEL_WARNING, align 4
  %129 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %130 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %129, i32 0, i32 2
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 @hostapd_logger(i32 %126, i32* null, i32 %127, i32 %128, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  store i32 -2, i32* %2, align 4
  br label %146

136:                                              ; preds = %112
  br label %137

137:                                              ; preds = %136, %100
  %138 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %139 = call i32 @hostapd_check_chans(%struct.hostapd_iface* %138)
  switch i32 %139, label %143 [
    i32 128, label %140
    i32 130, label %141
    i32 129, label %142
  ]

140:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %146

141:                                              ; preds = %137
  store i32 1, i32* %2, align 4
  br label %146

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %137, %142
  %144 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %145 = call i32 @hostapd_notify_bad_chans(%struct.hostapd_iface* %144)
  store i32 -3, i32* %2, align 4
  br label %146

146:                                              ; preds = %143, %141, %140, %119, %10
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @hostapd_logger(i32, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @hostapd_check_chans(%struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_notify_bad_chans(%struct.hostapd_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
