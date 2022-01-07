; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_set_wowlan_triggers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_set_wowlan_triggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_driver_capa = type { i32 }
%struct.wowlan_triggers = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_driver_capa*)* @wpas_set_wowlan_triggers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_set_wowlan_triggers(%struct.wpa_supplicant* %0, %struct.wpa_driver_capa* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_driver_capa*, align 8
  %6 = alloca %struct.wowlan_triggers*, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_driver_capa* %1, %struct.wpa_driver_capa** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %22 = call %struct.wowlan_triggers* @wpa_get_wowlan_triggers(i32 %20, %struct.wpa_driver_capa* %21)
  store %struct.wowlan_triggers* %22, %struct.wowlan_triggers** %6, align 8
  %23 = load %struct.wowlan_triggers*, %struct.wowlan_triggers** %6, align 8
  %24 = icmp ne %struct.wowlan_triggers* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %27 = load %struct.wowlan_triggers*, %struct.wowlan_triggers** %6, align 8
  %28 = call i32 @wpa_drv_wowlan(%struct.wpa_supplicant* %26, %struct.wowlan_triggers* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.wowlan_triggers*, %struct.wowlan_triggers** %6, align 8
  %30 = call i32 @os_free(%struct.wowlan_triggers* %29)
  br label %31

31:                                               ; preds = %25, %15
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %14
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.wowlan_triggers* @wpa_get_wowlan_triggers(i32, %struct.wpa_driver_capa*) #1

declare dso_local i32 @wpa_drv_wowlan(%struct.wpa_supplicant*, %struct.wowlan_triggers*) #1

declare dso_local i32 @os_free(%struct.wowlan_triggers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
