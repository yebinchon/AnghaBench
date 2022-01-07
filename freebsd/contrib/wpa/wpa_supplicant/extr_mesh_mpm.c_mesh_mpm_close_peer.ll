; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_close_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_close_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hostapd_data** }
%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Mesh is not prepared yet\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No such mesh peer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_mpm_close_peer(%struct.wpa_supplicant* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.sta_info*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %14 = load i32, i32* @MSG_INFO, align 4
  %15 = call i32 @wpa_msg(%struct.wpa_supplicant* %13, i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.hostapd_data**, %struct.hostapd_data*** %20, align 8
  %22 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %21, i64 0
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %22, align 8
  store %struct.hostapd_data* %23, %struct.hostapd_data** %6, align 8
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %24, i32* %25)
  store %struct.sta_info* %26, %struct.sta_info** %7, align 8
  %27 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %28 = icmp ne %struct.sta_info* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %16
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = load i32, i32* @MSG_INFO, align 4
  %32 = call i32 @wpa_msg(%struct.wpa_supplicant* %30, i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %41

33:                                               ; preds = %16
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %35 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %37 = call i64 @mesh_mpm_plink_close(%struct.hostapd_data* %34, %struct.sta_info* %35, %struct.wpa_supplicant* %36)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 -1
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %33, %29, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #1

declare dso_local i64 @mesh_mpm_plink_close(%struct.hostapd_data*, %struct.sta_info*, %struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
