; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_..driver_i.h_wpa_drv_set_ap_wps_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_..driver_i.h_wpa_drv_set_ap_wps_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*)* }
%struct.wpabuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*)* @wpa_drv_set_ap_wps_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_drv_set_ap_wps_ie(%struct.wpa_supplicant* %0, %struct.wpabuf* %1, %struct.wpabuf* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %7, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*)*, i32 (i32, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*)** %13, align 8
  %15 = icmp ne i32 (i32, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %30

17:                                               ; preds = %4
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*)*, i32 (i32, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*)** %21, align 8
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %27 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %29 = call i32 %22(i32 %25, %struct.wpabuf* %26, %struct.wpabuf* %27, %struct.wpabuf* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %17, %16
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
