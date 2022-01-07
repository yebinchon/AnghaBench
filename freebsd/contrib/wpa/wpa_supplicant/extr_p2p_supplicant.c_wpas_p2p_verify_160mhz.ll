; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_verify_160mhz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_verify_160mhz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.hostapd_hw_modes = type { i32 }

@ALLOWED = common dso_local global i32 0, align 4
@NOT_ALLOWED = common dso_local global i32 0, align 4
@NO_IR = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_10_150 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_30_130 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_50_110 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_70_90 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_90_70 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_110_50 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_130_30 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_150_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.hostapd_hw_modes*, i32, i32)* @wpas_p2p_verify_160mhz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_verify_160mhz(%struct.wpa_supplicant* %0, %struct.hostapd_hw_modes* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.hostapd_hw_modes*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store %struct.hostapd_hw_modes* %1, %struct.hostapd_hw_modes** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @ALLOWED, align 4
  store i32 %16, i32* %14, align 4
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %18 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @wpas_p2p_get_center_160mhz(%struct.wpa_supplicant* %17, %struct.hostapd_hw_modes* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %24, i32* %5, align 4
  br label %138

25:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %133, %25
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %136

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 %30, 14
  %32 = load i32, i32* %11, align 4
  %33 = mul nsw i32 %32, 4
  %34 = add nsw i32 %31, %33
  store i32 %34, i32* %15, align 4
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %7, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @has_channel(i32 %37, %struct.hostapd_hw_modes* %38, i32 %39, i32* %12)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @NOT_ALLOWED, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %45, i32* %5, align 4
  br label %138

46:                                               ; preds = %29
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @NO_IR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @NO_IR, align 4
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @HOSTAPD_CHAN_VHT_10_150, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %61, i32* %5, align 4
  br label %138

62:                                               ; preds = %55, %52
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @HOSTAPD_CHAN_VHT_30_130, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %71, i32* %5, align 4
  br label %138

72:                                               ; preds = %65, %62
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @HOSTAPD_CHAN_VHT_50_110, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %81, i32* %5, align 4
  br label %138

82:                                               ; preds = %75, %72
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @HOSTAPD_CHAN_VHT_70_90, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %91, i32* %5, align 4
  br label %138

92:                                               ; preds = %85, %82
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @HOSTAPD_CHAN_VHT_90_70, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %101, i32* %5, align 4
  br label %138

102:                                              ; preds = %95, %92
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, 5
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @HOSTAPD_CHAN_VHT_110_50, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %111, i32* %5, align 4
  br label %138

112:                                              ; preds = %105, %102
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 6
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @HOSTAPD_CHAN_VHT_130_30, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %121, i32* %5, align 4
  br label %138

122:                                              ; preds = %115, %112
  %123 = load i32, i32* %11, align 4
  %124 = icmp eq i32 %123, 7
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @HOSTAPD_CHAN_VHT_150_10, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %131, i32* %5, align 4
  br label %138

132:                                              ; preds = %125, %122
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %26

136:                                              ; preds = %26
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %130, %120, %110, %100, %90, %80, %70, %60, %44, %23
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @wpas_p2p_get_center_160mhz(%struct.wpa_supplicant*, %struct.hostapd_hw_modes*, i32) #1

declare dso_local i32 @has_channel(i32, %struct.hostapd_hw_modes*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
