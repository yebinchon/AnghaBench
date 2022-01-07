; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_settings_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_settings_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_credential = type { i32 }
%struct.wps_er_ap = type { %struct.TYPE_9__*, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 (i32, i32, %union.wps_event_data*)* }
%union.wps_event_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.wps_credential*, i32 }
%struct.TYPE_10__ = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WPS ER: AP Settings received\00", align 1
@WPS_EV_ER_AP_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wps_credential*)* @wps_er_ap_settings_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_ap_settings_cb(i8* %0, %struct.wps_credential* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wps_credential*, align 8
  %5 = alloca %struct.wps_er_ap*, align 8
  %6 = alloca %union.wps_event_data, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wps_credential* %1, %struct.wps_credential** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.wps_er_ap*
  store %struct.wps_er_ap* %8, %struct.wps_er_ap** %5, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wps_er_ap*, %struct.wps_er_ap** %5, align 8
  %12 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %11, i32 0, i32 2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = call i32 @os_free(%struct.TYPE_10__* %13)
  %15 = call %struct.TYPE_10__* @os_malloc(i32 4)
  %16 = load %struct.wps_er_ap*, %struct.wps_er_ap** %5, align 8
  %17 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %16, i32 0, i32 2
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %17, align 8
  %18 = load %struct.wps_er_ap*, %struct.wps_er_ap** %5, align 8
  %19 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.wps_er_ap*, %struct.wps_er_ap** %5, align 8
  %24 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %27 = call i32 @os_memcpy(%struct.TYPE_10__* %25, %struct.wps_credential* %26, i32 4)
  %28 = load %struct.wps_er_ap*, %struct.wps_er_ap** %5, align 8
  %29 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %28, i32 0, i32 2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %22, %2
  %33 = call i32 @os_memset(%union.wps_event_data* %6, i32 0, i32 16)
  %34 = load %struct.wps_er_ap*, %struct.wps_er_ap** %5, align 8
  %35 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = bitcast %union.wps_event_data* %6 to %struct.TYPE_7__*
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %40 = bitcast %union.wps_event_data* %6 to %struct.TYPE_7__*
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store %struct.wps_credential* %39, %struct.wps_credential** %41, align 8
  %42 = load %struct.wps_er_ap*, %struct.wps_er_ap** %5, align 8
  %43 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %47, align 8
  %49 = load %struct.wps_er_ap*, %struct.wps_er_ap** %5, align 8
  %50 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @WPS_EV_ER_AP_SETTINGS, align 4
  %57 = call i32 %48(i32 %55, i32 %56, %union.wps_event_data* %6)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(%struct.TYPE_10__*, %struct.wps_credential*, i32) #1

declare dso_local i32 @os_memset(%union.wps_event_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
