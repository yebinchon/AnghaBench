; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_gen_assoc_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_gen_assoc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.wpa_ssid* }
%struct.wpa_ssid = type { i32 }
%union.wpa_event_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Already associated with a configured network - generating associated event\00", align 1
@EVENT_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @wpa_supplicant_gen_assoc_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_gen_assoc_event(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.wpa_ssid*, align 8
  %4 = alloca %union.wpa_event_data, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %6 = call %struct.wpa_ssid* @wpa_supplicant_get_ssid(%struct.wpa_supplicant* %5)
  store %struct.wpa_ssid* %6, %struct.wpa_ssid** %3, align 8
  %7 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %8 = icmp eq %struct.wpa_ssid* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 0
  %13 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %14 = icmp eq %struct.wpa_ssid* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 0
  store %struct.wpa_ssid* %16, %struct.wpa_ssid** %18, align 8
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %20 = call i32 @wpas_notify_network_changed(%struct.wpa_supplicant* %19)
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %23 = call i32 @wpa_supplicant_initiate_eapol(%struct.wpa_supplicant* %22)
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_dbg(%struct.wpa_supplicant* %24, i32 %25, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @os_memset(%union.wpa_event_data* %4, i32 0, i32 4)
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %29 = load i32, i32* @EVENT_ASSOC, align 4
  %30 = call i32 @wpa_supplicant_event(%struct.wpa_supplicant* %28, i32 %29, %union.wpa_event_data* %4)
  br label %31

31:                                               ; preds = %21, %9
  ret void
}

declare dso_local %struct.wpa_ssid* @wpa_supplicant_get_ssid(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_notify_network_changed(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_initiate_eapol(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @wpa_supplicant_event(%struct.wpa_supplicant*, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
