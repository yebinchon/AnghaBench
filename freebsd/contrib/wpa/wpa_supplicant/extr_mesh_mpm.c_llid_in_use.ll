; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_llid_in_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_llid_in_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hostapd_data** }
%struct.hostapd_data = type { %struct.sta_info* }
%struct.sta_info = type { i64, %struct.sta_info* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i64)* @llid_in_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llid_in_use(%struct.wpa_supplicant* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.hostapd_data*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.hostapd_data**, %struct.hostapd_data*** %11, align 8
  %13 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %12, i64 0
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  store %struct.hostapd_data* %14, %struct.hostapd_data** %7, align 8
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 0
  %17 = load %struct.sta_info*, %struct.sta_info** %16, align 8
  store %struct.sta_info* %17, %struct.sta_info** %6, align 8
  br label %18

18:                                               ; preds = %30, %2
  %19 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %20 = icmp ne %struct.sta_info* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 1
  %33 = load %struct.sta_info*, %struct.sta_info** %32, align 8
  store %struct.sta_info* %33, %struct.sta_info** %6, align 8
  br label %18

34:                                               ; preds = %18
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
