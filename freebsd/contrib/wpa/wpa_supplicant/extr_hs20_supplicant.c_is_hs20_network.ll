; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_hs20_supplicant.c_is_hs20_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_hs20_supplicant.c_is_hs20_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_ssid = type { i32, i32, i64, i64 }
%struct.wpa_bss = type { i32 }

@HS20_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_hs20_network(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, %struct.wpa_bss* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca %struct.wpa_bss*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %6, align 8
  store %struct.wpa_bss* %2, %struct.wpa_bss** %7, align 8
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %16 = icmp ne %struct.wpa_ssid* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %57

18:                                               ; preds = %14
  %19 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %20 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %57

24:                                               ; preds = %18
  %25 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %26 = icmp ne %struct.wpa_bss* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %29 = load i32, i32* @HS20_IE_VENDOR_TYPE, align 4
  %30 = call i32 @wpa_bss_get_vendor_ie(%struct.wpa_bss* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %57

33:                                               ; preds = %27, %24
  %34 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %35 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %57

41:                                               ; preds = %33
  %42 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %43 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %57

49:                                               ; preds = %41
  %50 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %51 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @WPA_PROTO_RSN, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %57

56:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %55, %48, %40, %32, %23, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @wpa_bss_get_vendor_ie(%struct.wpa_bss*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
