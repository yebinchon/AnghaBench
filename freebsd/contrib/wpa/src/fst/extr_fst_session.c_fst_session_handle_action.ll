; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_handle_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_handle_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_session = type { i32 }
%struct.fst_iface = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported FST Action frame\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_session_handle_action(%struct.fst_session* %0, %struct.fst_iface* %1, %struct.ieee80211_mgmt* %2, i64 %3) #0 {
  %5 = alloca %struct.fst_session*, align 8
  %6 = alloca %struct.fst_iface*, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca i64, align 8
  store %struct.fst_session* %0, %struct.fst_session** %5, align 8
  store %struct.fst_iface* %1, %struct.fst_iface** %6, align 8
  store %struct.ieee80211_mgmt* %2, %struct.ieee80211_mgmt** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %10 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %43 [
    i32 130, label %16
    i32 129, label %18
    i32 128, label %24
    i32 133, label %30
    i32 132, label %36
    i32 131, label %42
  ]

16:                                               ; preds = %4
  %17 = call i32 @WPA_ASSERT(i32 0)
  br label %48

18:                                               ; preds = %4
  %19 = load %struct.fst_session*, %struct.fst_session** %5, align 8
  %20 = load %struct.fst_iface*, %struct.fst_iface** %6, align 8
  %21 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @fst_session_handle_setup_response(%struct.fst_session* %19, %struct.fst_iface* %20, %struct.ieee80211_mgmt* %21, i64 %22)
  br label %48

24:                                               ; preds = %4
  %25 = load %struct.fst_session*, %struct.fst_session** %5, align 8
  %26 = load %struct.fst_iface*, %struct.fst_iface** %6, align 8
  %27 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @fst_session_handle_tear_down(%struct.fst_session* %25, %struct.fst_iface* %26, %struct.ieee80211_mgmt* %27, i64 %28)
  br label %48

30:                                               ; preds = %4
  %31 = load %struct.fst_session*, %struct.fst_session** %5, align 8
  %32 = load %struct.fst_iface*, %struct.fst_iface** %6, align 8
  %33 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @fst_session_handle_ack_request(%struct.fst_session* %31, %struct.fst_iface* %32, %struct.ieee80211_mgmt* %33, i64 %34)
  br label %48

36:                                               ; preds = %4
  %37 = load %struct.fst_session*, %struct.fst_session** %5, align 8
  %38 = load %struct.fst_iface*, %struct.fst_iface** %6, align 8
  %39 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @fst_session_handle_ack_response(%struct.fst_session* %37, %struct.fst_iface* %38, %struct.ieee80211_mgmt* %39, i64 %40)
  br label %48

42:                                               ; preds = %4
  br label %43

43:                                               ; preds = %4, %42
  %44 = load %struct.fst_session*, %struct.fst_session** %5, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = load i32, i32* @MSG_ERROR, align 4
  %47 = call i32 @fst_printf_sframe(%struct.fst_session* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %36, %30, %24, %18, %16
  ret void
}

declare dso_local i32 @WPA_ASSERT(i32) #1

declare dso_local i32 @fst_session_handle_setup_response(%struct.fst_session*, %struct.fst_iface*, %struct.ieee80211_mgmt*, i64) #1

declare dso_local i32 @fst_session_handle_tear_down(%struct.fst_session*, %struct.fst_iface*, %struct.ieee80211_mgmt*, i64) #1

declare dso_local i32 @fst_session_handle_ack_request(%struct.fst_session*, %struct.fst_iface*, %struct.ieee80211_mgmt*, i64) #1

declare dso_local i32 @fst_session_handle_ack_response(%struct.fst_session*, %struct.fst_iface*, %struct.ieee80211_mgmt*, i64) #1

declare dso_local i32 @fst_printf_sframe(%struct.fst_session*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
