; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_rsn.c_auth_start_ampe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_rsn.c_auth_start_ampe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_rsn = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.hostapd_data** }
%struct.hostapd_data = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.sta_info = type { i32 }

@WPAS_MODE_MESH = common dso_local global i64 0, align 8
@mesh_auth_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @auth_start_ampe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_start_ampe(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mesh_rsn*, align 8
  %7 = alloca %struct.hostapd_data*, align 8
  %8 = alloca %struct.sta_info*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mesh_rsn*
  store %struct.mesh_rsn* %10, %struct.mesh_rsn** %6, align 8
  %11 = load %struct.mesh_rsn*, %struct.mesh_rsn** %6, align 8
  %12 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WPAS_MODE_MESH, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.mesh_rsn*, %struct.mesh_rsn** %6, align 8
  %23 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.hostapd_data**, %struct.hostapd_data*** %27, align 8
  %29 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %28, i64 0
  %30 = load %struct.hostapd_data*, %struct.hostapd_data** %29, align 8
  store %struct.hostapd_data* %30, %struct.hostapd_data** %7, align 8
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %31, i32* %32)
  store %struct.sta_info* %33, %struct.sta_info** %8, align 8
  %34 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %35 = icmp ne %struct.sta_info* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %21
  %37 = load i32, i32* @mesh_auth_timer, align 4
  %38 = load %struct.mesh_rsn*, %struct.mesh_rsn** %6, align 8
  %39 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %42 = call i32 @eloop_cancel_timeout(i32 %37, %struct.TYPE_7__* %40, %struct.sta_info* %41)
  br label %43

43:                                               ; preds = %36, %21
  %44 = load %struct.mesh_rsn*, %struct.mesh_rsn** %6, align 8
  %45 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @mesh_mpm_auth_peer(%struct.TYPE_7__* %46, i32* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %20
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.TYPE_7__*, %struct.sta_info*) #1

declare dso_local i32 @mesh_mpm_auth_peer(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
