; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_subscribe_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_subscribe_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_client = type { i32 }
%struct.wps_er_ap = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WPS ER: Subscribed to events\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SID\00", align 1
@WPS_EV_ER_AP_ADD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"WPS ER: Failed to subscribe to events\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.http_client*, i32)* @wps_er_http_subscribe_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_http_subscribe_cb(i8* %0, %struct.http_client* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.http_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wps_er_ap*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.http_client* %1, %struct.http_client** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wps_er_ap*
  store %struct.wps_er_ap* %9, %struct.wps_er_ap** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %36 [
    i32 129, label %11
    i32 131, label %33
    i32 130, label %33
    i32 128, label %33
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %15 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %17 = load %struct.http_client*, %struct.http_client** %5, align 8
  %18 = call i32 @http_client_get_hdr_line(%struct.http_client* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @wps_er_get_sid(%struct.wps_er_ap* %16, i32 %18)
  %20 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %21 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %24 = call i32 @wps_er_ap_use_cached_settings(%struct.TYPE_2__* %22, %struct.wps_er_ap* %23)
  %25 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %26 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %31 = load i32, i32* @WPS_EV_ER_AP_ADD, align 4
  %32 = call i32 @wps_er_ap_event(i32 %29, %struct.wps_er_ap* %30, i32 %31)
  br label %36

33:                                               ; preds = %3, %3, %3
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %3, %33, %11
  %37 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %38 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @http_client_free(i32* %39)
  %41 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %42 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wps_er_get_sid(%struct.wps_er_ap*, i32) #1

declare dso_local i32 @http_client_get_hdr_line(%struct.http_client*, i8*) #1

declare dso_local i32 @wps_er_ap_use_cached_settings(%struct.TYPE_2__*, %struct.wps_er_ap*) #1

declare dso_local i32 @wps_er_ap_event(i32, %struct.wps_er_ap*, i32) #1

declare dso_local i32 @http_client_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
