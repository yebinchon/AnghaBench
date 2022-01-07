; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_..driver_i.h_wpa_drv_pktcnt_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_..driver_i.h_wpa_drv_pktcnt_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.hostap_sta_driver_data*, i32)* }
%struct.hostap_sta_driver_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.hostap_sta_driver_data*)* @wpa_drv_pktcnt_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_drv_pktcnt_poll(%struct.wpa_supplicant* %0, %struct.hostap_sta_driver_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.hostap_sta_driver_data*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.hostap_sta_driver_data* %1, %struct.hostap_sta_driver_data** %5, align 8
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %7 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (i32, %struct.hostap_sta_driver_data*, i32)*, i32 (i32, %struct.hostap_sta_driver_data*, i32)** %9, align 8
  %11 = icmp ne i32 (i32, %struct.hostap_sta_driver_data*, i32)* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32, %struct.hostap_sta_driver_data*, i32)*, i32 (i32, %struct.hostap_sta_driver_data*, i32)** %16, align 8
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hostap_sta_driver_data*, %struct.hostap_sta_driver_data** %5, align 8
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %17(i32 %20, %struct.hostap_sta_driver_data* %21, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
