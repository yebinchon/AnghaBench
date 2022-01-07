; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_scan_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_scan_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wpa_driver_scan_params }
%struct.wpa_driver_scan_params = type { i64 }

@WPA_DRIVER_FLAGS_SUPPORT_SET_SCAN_DWELL = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"RRM: Cannot set scan duration due to missing driver support\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @wpas_rrm_scan_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_rrm_scan_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_driver_scan_params*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %9, %struct.wpa_supplicant** %5, align 8
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.wpa_driver_scan_params* %12, %struct.wpa_driver_scan_params** %6, align 8
  %13 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %6, align 8
  %14 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %62

21:                                               ; preds = %2
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @WPA_DRIVER_FLAGS_SUPPORT_SET_SCAN_DWELL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %21
  %29 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %6, align 8
  %30 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %6, align 8
  %37 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %28, %21
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 2
  %41 = call i32 @os_get_reltime(i32* %40)
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %38
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %48 = call i64 @wpas_p2p_in_progress(%struct.wpa_supplicant* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %52 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %6, align 8
  %53 = call i64 @wpa_supplicant_trigger_scan(%struct.wpa_supplicant* %51, %struct.wpa_driver_scan_params* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %46, %38
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %57 = call i32 @wpas_rrm_refuse_request(%struct.wpa_supplicant* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %6, align 8
  %61 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %20
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_get_reltime(i32*) #1

declare dso_local i64 @wpas_p2p_in_progress(%struct.wpa_supplicant*) #1

declare dso_local i64 @wpa_supplicant_trigger_scan(%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*) #1

declare dso_local i32 @wpas_rrm_refuse_request(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
