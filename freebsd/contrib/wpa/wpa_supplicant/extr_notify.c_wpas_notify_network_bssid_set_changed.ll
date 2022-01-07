; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_notify.c_wpas_notify_network_bssid_set_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_notify.c_wpas_notify_network_bssid_set_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.wpa_ssid* }
%struct.wpa_ssid = type { i32*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Network bssid config changed for the current network - within-ESS roaming %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_notify_network_bssid_set_changed(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 0
  %7 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %8 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %9 = icmp ne %struct.wpa_ssid* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %40

11:                                               ; preds = %2
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %20 = call i32 @wpa_dbg(%struct.wpa_supplicant* %12, i32 %13, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %22 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %29 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %11
  %33 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %34 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  br label %37

36:                                               ; preds = %11
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32* [ %35, %32 ], [ null, %36 ]
  %39 = call i32 @wpa_drv_roaming(%struct.wpa_supplicant* %21, i32 %27, i32* %38)
  br label %40

40:                                               ; preds = %37, %10
  ret void
}

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, i8*) #1

declare dso_local i32 @wpa_drv_roaming(%struct.wpa_supplicant*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
