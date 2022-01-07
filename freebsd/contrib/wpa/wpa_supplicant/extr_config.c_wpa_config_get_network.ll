; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_get_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_get_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ssid = type { i32, %struct.wpa_ssid* }
%struct.wpa_config = type { %struct.wpa_ssid* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_ssid* @wpa_config_get_network(%struct.wpa_config* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_config* %0, %struct.wpa_config** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wpa_config*, %struct.wpa_config** %3, align 8
  %7 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %6, i32 0, i32 0
  %8 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  store %struct.wpa_ssid* %8, %struct.wpa_ssid** %5, align 8
  br label %9

9:                                                ; preds = %19, %2
  %10 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %11 = icmp ne %struct.wpa_ssid* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %15 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %20, i32 0, i32 1
  %22 = load %struct.wpa_ssid*, %struct.wpa_ssid** %21, align 8
  store %struct.wpa_ssid* %22, %struct.wpa_ssid** %5, align 8
  br label %9

23:                                               ; preds = %18, %9
  %24 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  ret %struct.wpa_ssid* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
