; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_neighbor_db.c_hostapd_neighbor_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_neighbor_db.c_hostapd_neighbor_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_neighbor_entry = type { i32 }
%struct.hostapd_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hostapd_neighbor_entry* (%struct.hostapd_data*)* @hostapd_neighbor_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hostapd_neighbor_entry* @hostapd_neighbor_add(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_neighbor_entry*, align 8
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.hostapd_neighbor_entry*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  %5 = call %struct.hostapd_neighbor_entry* @os_zalloc(i32 4)
  store %struct.hostapd_neighbor_entry* %5, %struct.hostapd_neighbor_entry** %4, align 8
  %6 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %4, align 8
  %7 = icmp ne %struct.hostapd_neighbor_entry* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.hostapd_neighbor_entry* null, %struct.hostapd_neighbor_entry** %2, align 8
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %11 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %10, i32 0, i32 0
  %12 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %4, align 8
  %13 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %12, i32 0, i32 0
  %14 = call i32 @dl_list_add(i32* %11, i32* %13)
  %15 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %4, align 8
  store %struct.hostapd_neighbor_entry* %15, %struct.hostapd_neighbor_entry** %2, align 8
  br label %16

16:                                               ; preds = %9, %8
  %17 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %2, align 8
  ret %struct.hostapd_neighbor_entry* %17
}

declare dso_local %struct.hostapd_neighbor_entry* @os_zalloc(i32) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
