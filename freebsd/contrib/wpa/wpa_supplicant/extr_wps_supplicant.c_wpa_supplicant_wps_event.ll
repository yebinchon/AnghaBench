; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpa_supplicant_wps_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpa_supplicant_wps_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.wps_event_data = type { i32 }
%struct.wpa_supplicant = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@WPS_EVENT_ACTIVE = common dso_local global i32 0, align 4
@WPS_EVENT_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %union.wps_event_data*)* @wpa_supplicant_wps_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_wps_event(i8* %0, i32 %1, %union.wps_event_data* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.wps_event_data*, align 8
  %7 = alloca %struct.wpa_supplicant*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.wps_event_data* %2, %union.wps_event_data** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %9, %struct.wpa_supplicant** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %68 [
    i32 134, label %11
    i32 135, label %16
    i32 128, label %21
    i32 129, label %24
    i32 131, label %25
    i32 130, label %26
    i32 133, label %27
    i32 132, label %32
    i32 141, label %37
    i32 140, label %42
    i32 138, label %47
    i32 137, label %52
    i32 139, label %57
    i32 136, label %62
    i32 142, label %67
  ]

11:                                               ; preds = %3
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %13 = load %union.wps_event_data*, %union.wps_event_data** %6, align 8
  %14 = bitcast %union.wps_event_data* %13 to i32*
  %15 = call i32 @wpa_supplicant_wps_event_m2d(%struct.wpa_supplicant* %12, i32* %14)
  br label %68

16:                                               ; preds = %3
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %18 = load %union.wps_event_data*, %union.wps_event_data** %6, align 8
  %19 = bitcast %union.wps_event_data* %18 to i32*
  %20 = call i32 @wpa_supplicant_wps_event_fail(%struct.wpa_supplicant* %17, i32* %19)
  br label %68

21:                                               ; preds = %3
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %23 = call i32 @wpa_supplicant_wps_event_success(%struct.wpa_supplicant* %22)
  br label %68

24:                                               ; preds = %3
  br label %68

25:                                               ; preds = %3
  br label %68

26:                                               ; preds = %3
  br label %68

27:                                               ; preds = %3
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %29 = load i32, i32* @MSG_INFO, align 4
  %30 = load i32, i32* @WPS_EVENT_ACTIVE, align 4
  %31 = call i32 @wpa_msg(%struct.wpa_supplicant* %28, i32 %29, i32 %30)
  br label %68

32:                                               ; preds = %3
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %34 = load i32, i32* @MSG_INFO, align 4
  %35 = load i32, i32* @WPS_EVENT_DISABLE, align 4
  %36 = call i32 @wpa_msg(%struct.wpa_supplicant* %33, i32 %34, i32 %35)
  br label %68

37:                                               ; preds = %3
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %39 = load %union.wps_event_data*, %union.wps_event_data** %6, align 8
  %40 = bitcast %union.wps_event_data* %39 to i32*
  %41 = call i32 @wpa_supplicant_wps_event_er_ap_add(%struct.wpa_supplicant* %38, i32* %40)
  br label %68

42:                                               ; preds = %3
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %44 = load %union.wps_event_data*, %union.wps_event_data** %6, align 8
  %45 = bitcast %union.wps_event_data* %44 to i32*
  %46 = call i32 @wpa_supplicant_wps_event_er_ap_remove(%struct.wpa_supplicant* %43, i32* %45)
  br label %68

47:                                               ; preds = %3
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %49 = load %union.wps_event_data*, %union.wps_event_data** %6, align 8
  %50 = bitcast %union.wps_event_data* %49 to i32*
  %51 = call i32 @wpa_supplicant_wps_event_er_enrollee_add(%struct.wpa_supplicant* %48, i32* %50)
  br label %68

52:                                               ; preds = %3
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %54 = load %union.wps_event_data*, %union.wps_event_data** %6, align 8
  %55 = bitcast %union.wps_event_data* %54 to i32*
  %56 = call i32 @wpa_supplicant_wps_event_er_enrollee_remove(%struct.wpa_supplicant* %53, i32* %55)
  br label %68

57:                                               ; preds = %3
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %59 = load %union.wps_event_data*, %union.wps_event_data** %6, align 8
  %60 = bitcast %union.wps_event_data* %59 to i32*
  %61 = call i32 @wpa_supplicant_wps_event_er_ap_settings(%struct.wpa_supplicant* %58, i32* %60)
  br label %68

62:                                               ; preds = %3
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %64 = load %union.wps_event_data*, %union.wps_event_data** %6, align 8
  %65 = bitcast %union.wps_event_data* %64 to i32*
  %66 = call i32 @wpa_supplicant_wps_event_er_set_sel_reg(%struct.wpa_supplicant* %63, i32* %65)
  br label %68

67:                                               ; preds = %3
  br label %68

68:                                               ; preds = %3, %67, %62, %57, %52, %47, %42, %37, %32, %27, %26, %25, %24, %21, %16, %11
  ret void
}

declare dso_local i32 @wpa_supplicant_wps_event_m2d(%struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_supplicant_wps_event_fail(%struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_supplicant_wps_event_success(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @wpa_supplicant_wps_event_er_ap_add(%struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_supplicant_wps_event_er_ap_remove(%struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_supplicant_wps_event_er_enrollee_add(%struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_supplicant_wps_event_er_enrollee_remove(%struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_supplicant_wps_event_er_ap_settings(%struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_supplicant_wps_event_er_set_sel_reg(%struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
