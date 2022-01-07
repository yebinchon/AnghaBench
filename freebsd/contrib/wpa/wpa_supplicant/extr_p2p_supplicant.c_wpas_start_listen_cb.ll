; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_start_listen_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_start_listen_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_radio_work = type { i64, %struct.wpas_p2p_listen_work*, %struct.wpa_supplicant* }
%struct.wpas_p2p_listen_work = type { i32, i64, i32 }
%struct.wpa_supplicant = type { i32, i64, i64, i64, i64, %struct.wpa_radio_work* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"P2P: Failed to request the driver to report received Probe Request frames\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"P2P: Failed to request the driver to remain on channel (%u MHz) for Listen state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_radio_work*, i32)* @wpas_start_listen_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_start_listen_cb(%struct.wpa_radio_work* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_radio_work*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpas_p2p_listen_work*, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_radio_work* %0, %struct.wpa_radio_work** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %8, i32 0, i32 2
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  store %struct.wpa_supplicant* %10, %struct.wpa_supplicant** %5, align 8
  %11 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %12 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %11, i32 0, i32 1
  %13 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %12, align 8
  store %struct.wpas_p2p_listen_work* %13, %struct.wpas_p2p_listen_work** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 5
  store %struct.wpa_radio_work* null, %struct.wpa_radio_work** %23, align 8
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %25 = call i32 @wpas_stop_listen(%struct.wpa_supplicant* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %6, align 8
  %28 = call i32 @wpas_p2p_listen_work_free(%struct.wpas_p2p_listen_work* %27)
  br label %85

29:                                               ; preds = %2
  %30 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 5
  store %struct.wpa_radio_work* %30, %struct.wpa_radio_work** %32, align 8
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %34 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %6, align 8
  %35 = getelementptr inbounds %struct.wpas_p2p_listen_work, %struct.wpas_p2p_listen_work* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @wpa_drv_set_ap_wps_ie(%struct.wpa_supplicant* %33, i32* null, i32 %36, i32* null)
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %39 = call i64 @wpa_drv_probe_req_report(%struct.wpa_supplicant* %38, i32 1)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %45 = call i32 @wpas_p2p_listen_work_done(%struct.wpa_supplicant* %44)
  br label %85

46:                                               ; preds = %29
  %47 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %6, align 8
  %48 = getelementptr inbounds %struct.wpas_p2p_listen_work, %struct.wpas_p2p_listen_work* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %51 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %6, align 8
  %53 = getelementptr inbounds %struct.wpas_p2p_listen_work, %struct.wpas_p2p_listen_work* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %56 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %6, align 8
  %58 = getelementptr inbounds %struct.wpas_p2p_listen_work, %struct.wpas_p2p_listen_work* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %7, align 4
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %61 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %6, align 8
  %62 = getelementptr inbounds %struct.wpas_p2p_listen_work, %struct.wpas_p2p_listen_work* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @wpa_drv_remain_on_channel(%struct.wpa_supplicant* %60, i64 %63, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %46
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %6, align 8
  %70 = getelementptr inbounds %struct.wpas_p2p_listen_work, %struct.wpas_p2p_listen_work* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %74 = call i32 @wpas_p2p_listen_work_done(%struct.wpa_supplicant* %73)
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %76 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  br label %85

77:                                               ; preds = %46
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %6, align 8
  %81 = getelementptr inbounds %struct.wpas_p2p_listen_work, %struct.wpas_p2p_listen_work* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %84 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %77, %67, %41, %26
  ret void
}

declare dso_local i32 @wpas_stop_listen(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_p2p_listen_work_free(%struct.wpas_p2p_listen_work*) #1

declare dso_local i32 @wpa_drv_set_ap_wps_ie(%struct.wpa_supplicant*, i32*, i32, i32*) #1

declare dso_local i64 @wpa_drv_probe_req_report(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpas_p2p_listen_work_done(%struct.wpa_supplicant*) #1

declare dso_local i64 @wpa_drv_remain_on_channel(%struct.wpa_supplicant*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
