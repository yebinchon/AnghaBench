; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@WPA_DRIVER_FLAGS_SME = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"nl80211: Ignore disconnect event when using userspace SME\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"nl80211: Ignore disconnect event triggered during reassociation\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"nl80211: Was expecting local disconnect but got another disconnect event first\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"nl80211: Disconnect event\00", align 1
@EVENT_DEAUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*)* @mlme_event_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlme_event_disconnect(%struct.wpa_driver_nl80211_data* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.nlattr* %3) #0 {
  %5 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %union.wpa_event_data, align 4
  %10 = alloca i32, align 4
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.nlattr* %2, %struct.nlattr** %7, align 8
  store %struct.nlattr* %3, %struct.nlattr** %8, align 8
  %11 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %12 = icmp eq %struct.nlattr* %11, null
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %10, align 4
  %14 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %15 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @WPA_DRIVER_FLAGS_SME, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %64

24:                                               ; preds = %4
  %25 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %26 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %64

37:                                               ; preds = %29
  %38 = load i32, i32* @MSG_WARNING, align 4
  %39 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %24
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %44 = call i32 @nl80211_mark_disconnected(%struct.wpa_driver_nl80211_data* %43)
  %45 = call i32 @os_memset(%union.wpa_event_data* %9, i32 0, i32 8)
  %46 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %50 = call i32 @nla_get_u16(%struct.nlattr* %49)
  %51 = bitcast %union.wpa_event_data* %9 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %40
  %54 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %55 = icmp eq %struct.nlattr* %54, null
  %56 = zext i1 %55 to i32
  %57 = bitcast %union.wpa_event_data* %9 to %struct.TYPE_3__*
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %60 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @EVENT_DEAUTH, align 4
  %63 = call i32 @wpa_supplicant_event(i32 %61, i32 %62, %union.wpa_event_data* %9)
  br label %64

64:                                               ; preds = %53, %34, %21
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @nl80211_mark_disconnected(%struct.wpa_driver_nl80211_data*) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
