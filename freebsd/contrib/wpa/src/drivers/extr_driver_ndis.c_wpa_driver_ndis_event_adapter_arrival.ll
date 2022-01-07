; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_event_adapter_arrival.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_event_adapter_arrival.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i32, i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"NDIS: Notify Adapter Arrival\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"NDIS: Driver re-initialization (%d) failed\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"NDIS: Driver re-initialized\00", align 1
@EVENT_INTERFACE_ADDED = common dso_local global i32 0, align 4
@EVENT_INTERFACE_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_driver_ndis_event_adapter_arrival(%struct.wpa_driver_ndis_data* %0) #0 {
  %2 = alloca %struct.wpa_driver_ndis_data*, align 8
  %3 = alloca %union.wpa_event_data, align 4
  %4 = alloca i32, align 4
  store %struct.wpa_driver_ndis_data* %0, %struct.wpa_driver_ndis_data** %2, align 8
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = call i32 (i32, i8*, ...) @wpa_printf(i32 %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 30
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %12 = call i32 @wpa_driver_ndis_adapter_close(%struct.wpa_driver_ndis_data* %11)
  %13 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %14 = call i64 @wpa_driver_ndis_adapter_init(%struct.wpa_driver_ndis_data* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %18 = call i64 @wpa_driver_ndis_adapter_open(%struct.wpa_driver_ndis_data* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %10
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = call i32 @os_sleep(i32 1, i32 0)
  br label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %32

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %7

32:                                               ; preds = %25, %7
  %33 = call i32 @os_memset(%union.wpa_event_data* %3, i32 0, i32 8)
  %34 = bitcast %union.wpa_event_data* %3 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %38 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @os_strlcpy(i32 %36, i32 %39, i32 4)
  %41 = load i32, i32* @EVENT_INTERFACE_ADDED, align 4
  %42 = bitcast %union.wpa_event_data* %3 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %2, align 8
  %45 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EVENT_INTERFACE_STATUS, align 4
  %48 = call i32 @wpa_supplicant_event(i32 %46, i32 %47, %union.wpa_event_data* %3)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_driver_ndis_adapter_close(%struct.wpa_driver_ndis_data*) #1

declare dso_local i64 @wpa_driver_ndis_adapter_init(%struct.wpa_driver_ndis_data*) #1

declare dso_local i64 @wpa_driver_ndis_adapter_open(%struct.wpa_driver_ndis_data*) #1

declare dso_local i32 @os_sleep(i32, i32) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
