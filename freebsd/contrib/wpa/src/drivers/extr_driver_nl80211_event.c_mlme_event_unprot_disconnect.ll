; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_unprot_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_unprot_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32 }
%struct.ieee80211_mgmt = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32, i32 }

@EVENT_UNPROT_DEAUTH = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"nl80211: Unprot Deauthenticate event\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"nl80211: Unprot Disassociate event\00", align 1
@EVENT_UNPROT_DISASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, i32, i32*, i64)* @mlme_event_unprot_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlme_event_unprot_disconnect(%struct.wpa_driver_nl80211_data* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_mgmt*, align 8
  %10 = alloca %union.wpa_event_data, align 8
  %11 = alloca i8*, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i8* null, i8** %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @EVENT_UNPROT_DEAUTH, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %22, 24
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %76

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = bitcast i32* %26 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %27, %struct.ieee80211_mgmt** %9, align 8
  %28 = call i32 @os_memset(%union.wpa_event_data* %10, i32 0, i32 16)
  %29 = load i64, i64* %8, align 8
  %30 = icmp uge i64 %29, 28
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %33 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @le_to_host16(i32 %36)
  store i8* %37, i8** %11, align 8
  br label %38

38:                                               ; preds = %31, %25
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @EVENT_UNPROT_DISASSOC, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %44 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = bitcast %union.wpa_event_data* %10 to %struct.TYPE_7__*
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %49 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = bitcast %union.wpa_event_data* %10 to %struct.TYPE_7__*
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = bitcast %union.wpa_event_data* %10 to %struct.TYPE_7__*
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  br label %70

56:                                               ; preds = %38
  %57 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %58 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = bitcast %union.wpa_event_data* %10 to %struct.TYPE_8__*
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %63 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = bitcast %union.wpa_event_data* %10 to %struct.TYPE_8__*
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = bitcast %union.wpa_event_data* %10 to %struct.TYPE_8__*
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %56, %42
  %71 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %72 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @wpa_supplicant_event(i32 %73, i32 %74, %union.wpa_event_data* %10)
  br label %76

76:                                               ; preds = %70, %24
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i8* @le_to_host16(i32) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
