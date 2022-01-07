; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_plink_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_plink_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mesh_conf* }
%struct.mesh_conf = type { i32 }
%struct.sta_info = type { i32 }

@plink_timer = common dso_local global i32 0, align 4
@PLINK_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.sta_info*, i32)* @mesh_mpm_plink_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_mpm_plink_open(%struct.wpa_supplicant* %0, %struct.sta_info* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mesh_conf*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mesh_conf*, %struct.mesh_conf** %11, align 8
  store %struct.mesh_conf* %12, %struct.mesh_conf** %7, align 8
  %13 = load i32, i32* @plink_timer, align 4
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %16 = call i32 @eloop_cancel_timeout(i32 %13, %struct.wpa_supplicant* %14, %struct.sta_info* %15)
  %17 = load %struct.mesh_conf*, %struct.mesh_conf** %7, align 8
  %18 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 1000
  %21 = load %struct.mesh_conf*, %struct.mesh_conf** %7, align 8
  %22 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = srem i32 %23, 1000
  %25 = mul nsw i32 %24, 1000
  %26 = load i32, i32* @plink_timer, align 4
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %28 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %29 = call i32 @eloop_register_timeout(i32 %20, i32 %25, i32 %26, %struct.wpa_supplicant* %27, %struct.sta_info* %28)
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %32 = load i32, i32* @PLINK_OPEN, align 4
  %33 = call i32 @mesh_mpm_send_plink_action(%struct.wpa_supplicant* %30, %struct.sta_info* %31, i32 %32, i32 0)
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %35 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @wpa_mesh_set_plink_state(%struct.wpa_supplicant* %34, %struct.sta_info* %35, i32 %36)
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, %struct.sta_info*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, %struct.sta_info*) #1

declare dso_local i32 @mesh_mpm_send_plink_action(%struct.wpa_supplicant*, %struct.sta_info*, i32, i32) #1

declare dso_local i32 @wpa_mesh_set_plink_state(%struct.wpa_supplicant*, %struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
