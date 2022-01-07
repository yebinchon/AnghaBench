; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_broadcast_wep_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_broadcast_wep_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.hostapd_ssid }
%struct.hostapd_ssid = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32*, i64 }

@WPA_ALG_WEP = common dso_local global i32 0, align 4
@broadcast_ether_addr = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not set WEP encryption.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*)* @hostapd_broadcast_wep_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_broadcast_wep_set(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_ssid*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %7 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store %struct.hostapd_ssid* %9, %struct.hostapd_ssid** %5, align 8
  %10 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %5, align 8
  %11 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %5, align 8
  %15 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %1
  %20 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %21 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %26 = load i32, i32* @WPA_ALG_WEP, align 4
  %27 = load i32, i32* @broadcast_ether_addr, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %5, align 8
  %30 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %5, align 8
  %38 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @hostapd_drv_set_key(i32 %24, %struct.hostapd_data* %25, i32 %26, i32 %27, i32 %28, i32 1, i32* null, i32 0, i32 %36, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %19
  %48 = load i32, i32* @MSG_WARNING, align 4
  %49 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %19, %1
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @hostapd_drv_set_key(i32, %struct.hostapd_data*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
