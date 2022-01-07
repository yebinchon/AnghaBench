; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_hs20_supplicant.c_wpas_hs20_add_roam_cons_sel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_hs20_supplicant.c_wpas_hs20_add_roam_cons_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wpa_ssid = type { i64, i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i64 0, align 8
@OUI_WFA = common dso_local global i32 0, align 4
@HS20_ROAMING_CONS_SEL_OUI_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_hs20_add_roam_cons_sel(%struct.wpabuf* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  %5 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %6 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %2
  br label %39

15:                                               ; preds = %9
  %16 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %17 = load i64, i64* @WLAN_EID_VENDOR_SPECIFIC, align 8
  %18 = call i32 @wpabuf_put_u8(%struct.wpabuf* %16, i64 %17)
  %19 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 4, %22
  %24 = call i32 @wpabuf_put_u8(%struct.wpabuf* %19, i64 %23)
  %25 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %26 = load i32, i32* @OUI_WFA, align 4
  %27 = call i32 @wpabuf_put_be24(%struct.wpabuf* %25, i32 %26)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %29 = load i64, i64* @HS20_ROAMING_CONS_SEL_OUI_TYPE, align 8
  %30 = call i32 @wpabuf_put_u8(%struct.wpabuf* %28, i64 %29)
  %31 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %32 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %33 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @wpabuf_put_data(%struct.wpabuf* %31, i32 %34, i64 %37)
  br label %39

39:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_be24(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
