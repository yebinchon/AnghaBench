; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_on_action_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_on_action_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_iface = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.fst_session = type { i32 }

@IEEE80211_HDRLEN = common dso_local global i32 0, align 4
@WLAN_ACTION_FST = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid Action frame received\00", align 1
@FST_ACTION_MAX_SUPPORTED = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"FST Action '%s' received!\00", align 1
@fst_action_names = common dso_local global i64* null, align 8
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"unknown FST Action (%u) received!\00", align 1
@FST_ACTION_SETUP_REQUEST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"FST Action '%s' dropped: no session in progress found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_session_on_action_rx(%struct.fst_iface* %0, %struct.ieee80211_mgmt* %1, i64 %2) #0 {
  %4 = alloca %struct.fst_iface*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fst_session*, align 8
  store %struct.fst_iface* %0, %struct.fst_iface** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i32, i32* @IEEE80211_HDRLEN, align 4
  %10 = add nsw i32 %9, 2
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WLAN_ACTION_FST, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13, %3
  %22 = load %struct.fst_iface*, %struct.fst_iface** %4, align 8
  %23 = load i32, i32* @MSG_ERROR, align 4
  %24 = call i32 (%struct.fst_iface*, i32, i8*, ...) @fst_printf_iface(%struct.fst_iface* %22, i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %104

25:                                               ; preds = %13
  %26 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FST_ACTION_MAX_SUPPORTED, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %25
  %36 = load %struct.fst_iface*, %struct.fst_iface** %4, align 8
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load i64*, i64** @fst_action_names, align 8
  %39 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %38, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (%struct.fst_iface*, i32, i8*, ...) @fst_printf_iface(%struct.fst_iface* %36, i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  br label %60

49:                                               ; preds = %25
  %50 = load %struct.fst_iface*, %struct.fst_iface** %4, align 8
  %51 = load i32, i32* @MSG_WARNING, align 4
  %52 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (%struct.fst_iface*, i32, i8*, ...) @fst_printf_iface(%struct.fst_iface* %50, i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  br label %104

60:                                               ; preds = %35
  %61 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @FST_ACTION_SETUP_REQUEST, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load %struct.fst_iface*, %struct.fst_iface** %4, align 8
  %72 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @fst_session_handle_setup_request(%struct.fst_iface* %71, %struct.ieee80211_mgmt* %72, i64 %73)
  br label %104

75:                                               ; preds = %60
  %76 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.fst_iface*, %struct.fst_iface** %4, align 8
  %80 = call i32 @fst_iface_get_group(%struct.fst_iface* %79)
  %81 = call %struct.fst_session* @fst_find_session_in_progress(i32 %78, i32 %80)
  store %struct.fst_session* %81, %struct.fst_session** %7, align 8
  %82 = load %struct.fst_session*, %struct.fst_session** %7, align 8
  %83 = icmp ne %struct.fst_session* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %75
  %85 = load %struct.fst_session*, %struct.fst_session** %7, align 8
  %86 = load %struct.fst_iface*, %struct.fst_iface** %4, align 8
  %87 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @fst_session_handle_action(%struct.fst_session* %85, %struct.fst_iface* %86, %struct.ieee80211_mgmt* %87, i64 %88)
  br label %104

90:                                               ; preds = %75
  %91 = load %struct.fst_iface*, %struct.fst_iface** %4, align 8
  %92 = load i32, i32* @MSG_WARNING, align 4
  %93 = load i64*, i64** @fst_action_names, align 8
  %94 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i64, i64* %93, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (%struct.fst_iface*, i32, i8*, ...) @fst_printf_iface(%struct.fst_iface* %91, i32 %92, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %21, %49, %70, %90, %84
  ret void
}

declare dso_local i32 @fst_printf_iface(%struct.fst_iface*, i32, i8*, ...) #1

declare dso_local i32 @fst_session_handle_setup_request(%struct.fst_iface*, %struct.ieee80211_mgmt*, i64) #1

declare dso_local %struct.fst_session* @fst_find_session_in_progress(i32, i32) #1

declare dso_local i32 @fst_iface_get_group(%struct.fst_iface*) #1

declare dso_local i32 @fst_session_handle_action(%struct.fst_session*, %struct.fst_iface*, %struct.ieee80211_mgmt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
