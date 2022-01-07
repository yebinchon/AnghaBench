; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_event_michael_mic_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_event_michael_mic_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32, i64, %struct.os_reltime, i32, i32 }
%struct.os_reltime = type { i64 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Michael MIC failure detected\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"TKIP countermeasures started\00", align 1
@WLAN_REASON_MICHAEL_MIC_FAILURE = common dso_local global i32 0, align 4
@wpa_supplicant_stop_countermeasures = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@wpa_supplicant_delayed_mic_error_report = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %union.wpa_event_data*)* @wpa_supplicant_event_michael_mic_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_event_michael_mic_failure(%struct.wpa_supplicant* %0, %union.wpa_event_data* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %union.wpa_event_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.os_reltime, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %union.wpa_event_data* %1, %union.wpa_event_data** %4, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %8 = load i32, i32* @MSG_WARNING, align 4
  %9 = call i32 @wpa_msg(%struct.wpa_supplicant* %7, i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %11 = icmp ne %union.wpa_event_data* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %14 = bitcast %union.wpa_event_data* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ false, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = call i32 @os_get_reltime(%struct.os_reltime* %6)
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 4
  %30 = call i32 @os_reltime_expired(%struct.os_reltime* %6, %struct.os_reltime* %29, i32 60)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27, %18
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %32, %27
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %47 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @wpa_sm_key_request(i32 %45, i32 1, i32 %48)
  br label %50

50:                                               ; preds = %42, %37
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @wpa_sm_key_request(i32 %53, i32 1, i32 %54)
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 2
  store i32 1, i32* %57, align 8
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %60 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @wpa_blacklist_add(%struct.wpa_supplicant* %58, i32 %61)
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %64 = load i32, i32* @MSG_WARNING, align 4
  %65 = call i32 @wpa_msg(%struct.wpa_supplicant* %63, i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %66 = call i32 @os_sleep(i32 0, i32 10000)
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %68 = call i32 @wpa_drv_set_countermeasures(%struct.wpa_supplicant* %67, i32 1)
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %70 = load i32, i32* @WLAN_REASON_MICHAEL_MIC_FAILURE, align 4
  %71 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %69, i32 %70)
  %72 = load i32, i32* @wpa_supplicant_stop_countermeasures, align 4
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %74 = call i32 @eloop_cancel_timeout(i32 %72, %struct.wpa_supplicant* %73, i32* null)
  %75 = load i32, i32* @wpa_supplicant_stop_countermeasures, align 4
  %76 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %77 = call i32 @eloop_register_timeout(i32 60, i32 0, i32 %75, %struct.wpa_supplicant* %76, i32* null)
  br label %84

78:                                               ; preds = %32
  %79 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %80 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @wpa_sm_key_request(i32 %81, i32 1, i32 %82)
  br label %84

84:                                               ; preds = %78, %50
  %85 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %86 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %85, i32 0, i32 4
  %87 = bitcast %struct.os_reltime* %86 to i8*
  %88 = bitcast %struct.os_reltime* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 8, i1 false)
  %89 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %90 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  ret void
}

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @os_reltime_expired(%struct.os_reltime*, %struct.os_reltime*, i32) #1

declare dso_local i32 @wpa_sm_key_request(i32, i32, i32) #1

declare dso_local i32 @wpa_blacklist_add(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @os_sleep(i32, i32) #1

declare dso_local i32 @wpa_drv_set_countermeasures(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
