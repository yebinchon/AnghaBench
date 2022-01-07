; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_handle_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_handle_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostap_driver_data = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"handle_frame: too short (%lu)\00", align 1
@WLAN_FC_STYPE_BEACON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Received management frame\00", align 1
@WLAN_FC_PVER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"unknown protocol version %d\0A\00", align 1
@EVENT_RX_MGMT = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"CTRL\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"unknown frame type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostap_driver_data*, i32*, i64)* @handle_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_frame(%struct.hostap_driver_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.hostap_driver_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.wpa_event_data, align 8
  store %struct.hostap_driver_data* %0, %struct.hostap_driver_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %15, 24
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_MSGDUMP, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %99

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = bitcast i32* %22 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %23, %struct.ieee80211_hdr** %7, align 8
  %24 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le_to_host16(i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @WLAN_FC_GET_TYPE(i64 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @WLAN_FC_GET_STYPE(i64 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 128
  br i1 %33, label %38, label %34

34:                                               ; preds = %21
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @WLAN_FC_STYPE_BEACON, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %21
  %39 = load i32, i32* @MSG_MSGDUMP, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @wpa_hexdump(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @WLAN_FC_PVER, align 8
  %46 = and i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %62

53:                                               ; preds = %50, %43
  %54 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 2
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = call i32 @handle_tx_callback(%struct.hostap_driver_data* %54, i32* %55, i64 %56, i32 %60)
  br label %99

62:                                               ; preds = %50
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %99

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %9, align 8
  switch i64 %70, label %95 [
    i64 128, label %71
    i64 130, label %84
    i64 129, label %87
  ]

71:                                               ; preds = %69
  %72 = call i32 @os_memset(%union.wpa_event_data* %13, i32 0, i32 16)
  %73 = load i32*, i32** %5, align 8
  %74 = bitcast %union.wpa_event_data* %13 to %struct.TYPE_2__*
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load i64, i64* %11, align 8
  %77 = bitcast %union.wpa_event_data* %13 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %4, align 8
  %80 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @EVENT_RX_MGMT, align 4
  %83 = call i32 @wpa_supplicant_event(i32 %81, i32 %82, %union.wpa_event_data* %13)
  br label %99

84:                                               ; preds = %69
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %99

87:                                               ; preds = %69
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = call i32 (i32, i8*, ...) @wpa_printf(i32 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %4, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @handle_data(%struct.hostap_driver_data* %90, i32* %91, i64 %92, i64 %93)
  br label %99

95:                                               ; preds = %69
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = load i64, i64* %9, align 8
  %98 = call i32 (i32, i8*, ...) @wpa_printf(i32 %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %97)
  br label %99

99:                                               ; preds = %17, %53, %65, %95, %87, %84, %71
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @le_to_host16(i32) #1

declare dso_local i64 @WLAN_FC_GET_TYPE(i64) #1

declare dso_local i64 @WLAN_FC_GET_STYPE(i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @handle_tx_callback(%struct.hostap_driver_data*, i32*, i64, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

declare dso_local i32 @handle_data(%struct.hostap_driver_data*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
