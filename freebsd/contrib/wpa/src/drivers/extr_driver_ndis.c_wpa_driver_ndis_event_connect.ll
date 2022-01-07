; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_event_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_event_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"NDIS: Media Connect Event\00", align 1
@EVENT_ASSOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_driver_ndis_event_connect(%struct.wpa_driver_ndis_data* %0) #0 {
  %2 = alloca %struct.wpa_driver_ndis_data*, align 8
  store %struct.wpa_driver_ndis_data* %0, %struct.wpa_driver_ndis_data** %2, align 8
  %3 = load i32, i32* @MSG_DEBUG, align 4
  %4 = call i32 @wpa_printf(i32 %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %6 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %7 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @wpa_driver_ndis_get_bssid(%struct.wpa_driver_ndis_data* %5, i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %13 = call i32 @wpa_driver_ndis_get_associnfo(%struct.wpa_driver_ndis_data* %12)
  %14 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %15 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EVENT_ASSOC, align 4
  %18 = call i32 @wpa_supplicant_event(i32 %16, i32 %17, i32* null)
  br label %19

19:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wpa_driver_ndis_get_bssid(%struct.wpa_driver_ndis_data*, i32) #1

declare dso_local i32 @wpa_driver_ndis_get_associnfo(%struct.wpa_driver_ndis_data*) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
