; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_handle_radio_measurement_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_handle_radio_measurement_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.wpabuf = type { i32 }

@WPA_COMPLETED = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"RRM: Ignoring radio measurement request: Not associated\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"RRM: Ignoring radio measurement request: Not RRM network\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"RRM: Ignoring too short radio measurement request\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_rrm_handle_radio_measurement_request(%struct.wpa_supplicant* %0, i32* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wpabuf*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WPA_COMPLETED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %63

20:                                               ; preds = %5
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @MSG_INFO, align 4
  %28 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %63

29:                                               ; preds = %20
  %30 = load i64, i64* %10, align 8
  %31 = icmp ult i64 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %63

35:                                               ; preds = %29
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %42 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = call i32 @os_memcpy(i32 %44, i32* %45, i32 %46)
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i64, i64* %10, align 8
  %52 = sub i64 %51, 3
  %53 = call %struct.wpabuf* @wpas_rrm_process_msr_req_elems(%struct.wpa_supplicant* %48, i32* %50, i64 %52)
  store %struct.wpabuf* %53, %struct.wpabuf** %11, align 8
  %54 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %55 = icmp ne %struct.wpabuf* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %35
  br label %63

57:                                               ; preds = %35
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %59 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %60 = call i32 @wpas_rrm_send_msr_report(%struct.wpa_supplicant* %58, %struct.wpabuf* %59)
  %61 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %62 = call i32 @wpabuf_free(%struct.wpabuf* %61)
  br label %63

63:                                               ; preds = %57, %56, %32, %26, %17
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local %struct.wpabuf* @wpas_rrm_process_msr_req_elems(%struct.wpa_supplicant*, i32*, i64) #1

declare dso_local i32 @wpas_rrm_send_msr_report(%struct.wpa_supplicant*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
