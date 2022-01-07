; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_neighbor_db.c_hostapd_neighbor_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_neighbor_db.c_hostapd_neighbor_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.wpa_ssid_value = type { i32 }
%struct.hostapd_neighbor_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_neighbor_remove(%struct.hostapd_data* %0, i32* %1, %struct.wpa_ssid_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wpa_ssid_value*, align 8
  %8 = alloca %struct.hostapd_neighbor_entry*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.wpa_ssid_value* %2, %struct.wpa_ssid_value** %7, align 8
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %7, align 8
  %12 = call %struct.hostapd_neighbor_entry* @hostapd_neighbor_get(%struct.hostapd_data* %9, i32* %10, %struct.wpa_ssid_value* %11)
  store %struct.hostapd_neighbor_entry* %12, %struct.hostapd_neighbor_entry** %8, align 8
  %13 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %8, align 8
  %14 = icmp ne %struct.hostapd_neighbor_entry* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %24

16:                                               ; preds = %3
  %17 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %8, align 8
  %18 = call i32 @hostapd_neighbor_clear_entry(%struct.hostapd_neighbor_entry* %17)
  %19 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %8, align 8
  %20 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %19, i32 0, i32 0
  %21 = call i32 @dl_list_del(i32* %20)
  %22 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %8, align 8
  %23 = call i32 @os_free(%struct.hostapd_neighbor_entry* %22)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %16, %15
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.hostapd_neighbor_entry* @hostapd_neighbor_get(%struct.hostapd_data*, i32*, %struct.wpa_ssid_value*) #1

declare dso_local i32 @hostapd_neighbor_clear_entry(%struct.hostapd_neighbor_entry*) #1

declare dso_local i32 @dl_list_del(i32*) #1

declare dso_local i32 @os_free(%struct.hostapd_neighbor_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
