; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_event_interface_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_event_interface_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, %struct.TYPE_8__*, i32, %struct.wpa_supplicant*, i32*, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.wpa_supplicant*, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Configured interface was added\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Failed to initialize the driver after interface was added\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Configured interface was removed\00", align 1
@WPA_INTERFACE_DISABLED = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %union.wpa_event_data*)* @wpa_supplicant_event_interface_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_event_interface_status(%struct.wpa_supplicant* %0, %union.wpa_event_data* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %union.wpa_event_data*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %union.wpa_event_data* %1, %union.wpa_event_data** %4, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 8
  %8 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %9 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_5__*
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @os_strcmp(i32 %7, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %57

15:                                               ; preds = %2
  %16 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %17 = bitcast %union.wpa_event_data* %16 to %struct.TYPE_5__*
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %57 [
    i32 129, label %20
    i32 128, label %40
  ]

20:                                               ; preds = %15
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %57

26:                                               ; preds = %20
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = call i32 @wpa_dbg(%struct.wpa_supplicant* %29, i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %33 = call i32 @wpa_supplicant_driver_init(%struct.wpa_supplicant* %32)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = call i32 @wpa_msg(%struct.wpa_supplicant* %36, i32 %37, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %26
  br label %57

40:                                               ; preds = %15
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = call i32 @wpa_dbg(%struct.wpa_supplicant* %41, i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %47 = call i32 @wpa_supplicant_mark_disassoc(%struct.wpa_supplicant* %46)
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %49 = load i32, i32* @WPA_INTERFACE_DISABLED, align 4
  %50 = call i32 @wpa_supplicant_set_state(%struct.wpa_supplicant* %48, i32 %49)
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @l2_packet_deinit(i32* %53)
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %56 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %55, i32 0, i32 5
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %14, %15, %40, %39, %25
  ret void
}

declare dso_local i64 @os_strcmp(i32, i32) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @wpa_supplicant_driver_init(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @wpa_supplicant_mark_disassoc(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_set_state(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @l2_packet_deinit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
