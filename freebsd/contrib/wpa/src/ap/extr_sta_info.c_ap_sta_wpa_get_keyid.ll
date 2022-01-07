; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_sta_info.c_ap_sta_wpa_get_keyid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_sta_info.c_ap_sta_wpa_get_keyid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hostapd_ssid }
%struct.hostapd_ssid = type { %struct.hostapd_wpa_psk* }
%struct.hostapd_wpa_psk = type { i8*, i32, %struct.hostapd_wpa_psk* }
%struct.sta_info = type { i32 }

@PMK_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ap_sta_wpa_get_keyid(%struct.hostapd_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.hostapd_wpa_psk*, align 8
  %7 = alloca %struct.hostapd_ssid*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %11 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.hostapd_ssid* %13, %struct.hostapd_ssid** %7, align 8
  %14 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @wpa_auth_get_pmk(i32 %16, i32* %9)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @PMK_LEN, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %2
  store i8* null, i8** %3, align 8
  br label %65

25:                                               ; preds = %20
  %26 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %7, align 8
  %27 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %26, i32 0, i32 0
  %28 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %27, align 8
  store %struct.hostapd_wpa_psk* %28, %struct.hostapd_wpa_psk** %6, align 8
  br label %29

29:                                               ; preds = %42, %25
  %30 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %6, align 8
  %31 = icmp ne %struct.hostapd_wpa_psk* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %6, align 8
  %35 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PMK_LEN, align 4
  %38 = call i64 @os_memcmp(i32* %33, i32 %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %46

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %6, align 8
  %44 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %43, i32 0, i32 2
  %45 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %44, align 8
  store %struct.hostapd_wpa_psk* %45, %struct.hostapd_wpa_psk** %6, align 8
  br label %29

46:                                               ; preds = %40, %29
  %47 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %6, align 8
  %48 = icmp ne %struct.hostapd_wpa_psk* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i8* null, i8** %3, align 8
  br label %65

50:                                               ; preds = %46
  %51 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %6, align 8
  %52 = icmp ne %struct.hostapd_wpa_psk* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %6, align 8
  %55 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53, %50
  store i8* null, i8** %3, align 8
  br label %65

61:                                               ; preds = %53
  %62 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %6, align 8
  %63 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %3, align 8
  br label %65

65:                                               ; preds = %61, %60, %49, %24
  %66 = load i8*, i8** %3, align 8
  ret i8* %66
}

declare dso_local i32* @wpa_auth_get_pmk(i32, i32*) #1

declare dso_local i64 @os_memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
