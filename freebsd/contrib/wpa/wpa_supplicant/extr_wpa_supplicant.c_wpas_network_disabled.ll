; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_network_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_network_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, i64 }
%struct.wpa_ssid = type { i64*, i64, i32, i64, i32, i32, i32, i32, i64 }

@NUM_WEP_KEYS = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_WEP40 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_WEP104 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_WEP128 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_network_disabled(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %125

14:                                               ; preds = %2
  %15 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %16 = icmp eq %struct.wpa_ssid* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %125

18:                                               ; preds = %14
  %19 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %125

24:                                               ; preds = %18
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  br label %34

33:                                               ; preds = %24
  store i32 -1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %29
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %78, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @NUM_WEP_KEYS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %35
  %40 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %41 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %78

50:                                               ; preds = %39
  %51 = load i64, i64* %8, align 8
  %52 = icmp eq i64 %51, 5
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @WPA_DRIVER_CAPA_ENC_WEP40, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %78

59:                                               ; preds = %53, %50
  %60 = load i64, i64* %8, align 8
  %61 = icmp eq i64 %60, 13
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @WPA_DRIVER_CAPA_ENC_WEP104, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %78

68:                                               ; preds = %62, %59
  %69 = load i64, i64* %8, align 8
  %70 = icmp eq i64 %69, 16
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @WPA_DRIVER_CAPA_ENC_WEP128, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %78

77:                                               ; preds = %71, %68
  store i32 1, i32* %3, align 4
  br label %125

78:                                               ; preds = %76, %67, %58, %49
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %35

81:                                               ; preds = %35
  %82 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %83 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @wpa_key_mgmt_wpa_psk(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %124

87:                                               ; preds = %81
  %88 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %89 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %124, label %92

92:                                               ; preds = %87
  %93 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %94 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %99 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %97, %92
  %103 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %104 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %124, label %107

107:                                              ; preds = %102
  %108 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %109 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @wpa_key_mgmt_sae(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %115 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %113, %107
  %119 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %120 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  store i32 1, i32* %3, align 4
  br label %125

124:                                              ; preds = %118, %113, %102, %97, %87, %81
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %123, %77, %23, %17, %13
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @wpa_key_mgmt_wpa_psk(i32) #1

declare dso_local i64 @wpa_key_mgmt_sae(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
