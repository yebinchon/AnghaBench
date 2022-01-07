; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_set_non_wpa_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_set_non_wpa_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32, i32, i32 }
%struct.wpa_ssid = type { i32, i32* }

@WPA_KEY_MGMT_WPS = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_NO_WPA = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_NONE = common dso_local global i32 0, align 4
@WPA_CIPHER_NONE = common dso_local global i8* null, align 8
@NUM_WEP_KEYS = common dso_local global i32 0, align 4
@WPA_CIPHER_WEP104 = common dso_local global i8* null, align 8
@WPA_CIPHER_WEP40 = common dso_local global i8* null, align 8
@WPA_PARAM_RSN_ENABLED = common dso_local global i32 0, align 4
@WPA_PARAM_KEY_MGMT = common dso_local global i32 0, align 4
@WPA_PARAM_PAIRWISE = common dso_local global i32 0, align 4
@WPA_PARAM_GROUP = common dso_local global i32 0, align 4
@WPA_PARAM_MGMT_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_set_non_wpa_policy(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  %6 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %7 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @WPA_KEY_MGMT_WPS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @WPA_KEY_MGMT_WPS, align 4
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_NO_WPA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_NO_WPA, align 4
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %31

27:                                               ; preds = %16
  %28 = load i32, i32* @WPA_KEY_MGMT_NONE, align 4
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31, %12
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wpa_sm_set_ap_wpa_ie(i32 %35, i32* null, i32 0)
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wpa_sm_set_ap_rsn_ie(i32 %39, i32* null, i32 0)
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %42 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wpa_sm_set_assoc_wpa_ie(i32 %43, i32* null, i32 0)
  %45 = load i8*, i8** @WPA_CIPHER_NONE, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i8*, i8** @WPA_CIPHER_NONE, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %54 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %53, i32 0, i32 3
  store i32 0, i32* %54, align 4
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %97, %32
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @NUM_WEP_KEYS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %100

59:                                               ; preds = %55
  %60 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %61 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 5
  br i1 %67, label %68, label %77

68:                                               ; preds = %59
  %69 = load i8*, i8** @WPA_CIPHER_WEP104, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %72 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i8*, i8** @WPA_CIPHER_WEP104, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %76 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %100

77:                                               ; preds = %59
  %78 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %79 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %77
  %87 = load i8*, i8** @WPA_CIPHER_WEP40, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %90 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i8*, i8** @WPA_CIPHER_WEP40, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %94 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %100

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %55

100:                                              ; preds = %86, %68, %55
  %101 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %102 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @WPA_PARAM_RSN_ENABLED, align 4
  %105 = call i32 @wpa_sm_set_param(i32 %103, i32 %104, i32 0)
  %106 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %107 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @WPA_PARAM_KEY_MGMT, align 4
  %110 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %111 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @wpa_sm_set_param(i32 %108, i32 %109, i32 %112)
  %114 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %115 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @WPA_PARAM_PAIRWISE, align 4
  %118 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %119 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @wpa_sm_set_param(i32 %116, i32 %117, i32 %120)
  %122 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %123 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @WPA_PARAM_GROUP, align 4
  %126 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %127 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @wpa_sm_set_param(i32 %124, i32 %125, i32 %128)
  %130 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %131 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @pmksa_cache_clear_current(i32 %132)
  ret void
}

declare dso_local i32 @wpa_sm_set_ap_wpa_ie(i32, i32*, i32) #1

declare dso_local i32 @wpa_sm_set_ap_rsn_ie(i32, i32*, i32) #1

declare dso_local i32 @wpa_sm_set_assoc_wpa_ie(i32, i32*, i32) #1

declare dso_local i32 @wpa_sm_set_param(i32, i32, i32) #1

declare dso_local i32 @pmksa_cache_clear_current(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
