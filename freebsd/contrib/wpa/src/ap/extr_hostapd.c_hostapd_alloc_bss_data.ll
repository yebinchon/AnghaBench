; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_alloc_bss_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_alloc_bss_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.hostapd_iface*, %struct.hostapd_bss_config*, %struct.hostapd_config*, i32 }
%struct.hostapd_iface = type { i32 }
%struct.hostapd_config = type { i32 }
%struct.hostapd_bss_config = type { i32 }

@hostapd_new_assoc_sta = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostapd_data* @hostapd_alloc_bss_data(%struct.hostapd_iface* %0, %struct.hostapd_config* %1, %struct.hostapd_bss_config* %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.hostapd_iface*, align 8
  %6 = alloca %struct.hostapd_config*, align 8
  %7 = alloca %struct.hostapd_bss_config*, align 8
  %8 = alloca %struct.hostapd_data*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %5, align 8
  store %struct.hostapd_config* %1, %struct.hostapd_config** %6, align 8
  store %struct.hostapd_bss_config* %2, %struct.hostapd_bss_config** %7, align 8
  %9 = call %struct.hostapd_data* @os_zalloc(i32 64)
  store %struct.hostapd_data* %9, %struct.hostapd_data** %8, align 8
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %11 = icmp eq %struct.hostapd_data* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.hostapd_data* null, %struct.hostapd_data** %4, align 8
  br label %46

13:                                               ; preds = %3
  %14 = load i32, i32* @hostapd_new_assoc_sta, align 4
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 8
  %17 = load %struct.hostapd_config*, %struct.hostapd_config** %6, align 8
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %19 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %18, i32 0, i32 10
  store %struct.hostapd_config* %17, %struct.hostapd_config** %19, align 8
  %20 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %22 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %21, i32 0, i32 9
  store %struct.hostapd_bss_config* %20, %struct.hostapd_bss_config** %22, align 8
  %23 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %25 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %24, i32 0, i32 8
  store %struct.hostapd_iface* %23, %struct.hostapd_iface** %25, align 8
  %26 = load %struct.hostapd_config*, %struct.hostapd_config** %6, align 8
  %27 = icmp ne %struct.hostapd_config* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %13
  %29 = load %struct.hostapd_config*, %struct.hostapd_config** %6, align 8
  %30 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %33 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %13
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %36 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %38 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %37, i32 0, i32 6
  %39 = call i32 @dl_list_init(i32* %38)
  %40 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %41 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %40, i32 0, i32 5
  %42 = call i32 @dl_list_init(i32* %41)
  %43 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %44 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 4
  %45 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  store %struct.hostapd_data* %45, %struct.hostapd_data** %4, align 8
  br label %46

46:                                               ; preds = %34, %12
  %47 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  ret %struct.hostapd_data* %47
}

declare dso_local %struct.hostapd_data* @os_zalloc(i32) #1

declare dso_local i32 @dl_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
