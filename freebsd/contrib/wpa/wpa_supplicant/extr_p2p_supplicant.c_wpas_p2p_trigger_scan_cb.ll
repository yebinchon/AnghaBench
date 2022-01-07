; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_trigger_scan_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_trigger_scan_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_radio_work = type { %struct.wpa_driver_scan_params*, i32, %struct.wpa_supplicant* }
%struct.wpa_driver_scan_params = type { i32, i32 }
%struct.wpa_supplicant = type { i32, %struct.wpa_radio_work*, i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Request driver to clear scan cache due to local BSS flush\00", align 1
@wpas_p2p_scan_res_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_radio_work*, i32)* @wpas_p2p_trigger_scan_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_trigger_scan_cb(%struct.wpa_radio_work* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_radio_work*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_driver_scan_params*, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_radio_work* %0, %struct.wpa_radio_work** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %8, i32 0, i32 2
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  store %struct.wpa_supplicant* %10, %struct.wpa_supplicant** %5, align 8
  %11 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %12 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %11, i32 0, i32 0
  %13 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %12, align 8
  store %struct.wpa_driver_scan_params* %13, %struct.wpa_driver_scan_params** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %6, align 8
  %23 = call i32 @wpa_scan_free_params(%struct.wpa_driver_scan_params* %22)
  br label %87

24:                                               ; preds = %16
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 1
  store %struct.wpa_radio_work* null, %struct.wpa_radio_work** %26, align 8
  br label %87

27:                                               ; preds = %2
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %6, align 8
  %36 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %39 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %6, align 8
  %40 = call i32 @wpa_drv_scan(%struct.wpa_supplicant* %38, %struct.wpa_driver_scan_params* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %6, align 8
  %45 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %6, align 8
  %51 = call i32 @wpa_scan_free_params(%struct.wpa_driver_scan_params* %50)
  %52 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %53 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %52, i32 0, i32 0
  store %struct.wpa_driver_scan_params* null, %struct.wpa_driver_scan_params** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %58 = call i32 @radio_work_done(%struct.wpa_radio_work* %57)
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %60 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %59, i32 0, i32 5
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @p2p_notify_scan_trigger_status(i32 %63, i32 %64)
  br label %87

66:                                               ; preds = %49
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %68 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %67, i32 0, i32 5
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @p2p_notify_scan_trigger_status(i32 %71, i32 %72)
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %75 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %74, i32 0, i32 4
  %76 = call i32 @os_get_reltime(i32* %75)
  %77 = load i32, i32* @wpas_p2p_scan_res_handler, align 4
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %81 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %83 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %85 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %86 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %85, i32 0, i32 1
  store %struct.wpa_radio_work* %84, %struct.wpa_radio_work** %86, align 8
  br label %87

87:                                               ; preds = %66, %56, %24, %21
  ret void
}

declare dso_local i32 @wpa_scan_free_params(%struct.wpa_driver_scan_params*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_drv_scan(%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*) #1

declare dso_local i32 @radio_work_done(%struct.wpa_radio_work*) #1

declare dso_local i32 @p2p_notify_scan_trigger_status(i32, i32) #1

declare dso_local i32 @os_get_reltime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
