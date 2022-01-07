; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_set_sel_reg_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_set_sel_reg_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_client = type { i32 }
%struct.wps_er_ap = type { %struct.TYPE_6__*, i32*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 (i32, i32, %union.wps_event_data*)* }
%union.wps_event_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"WPS ER: SetSelectedRegistrar OK\00", align 1
@WPS_ER_SET_SEL_REG_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"WPS ER: SetSelectedRegistrar failed\00", align 1
@WPS_ER_SET_SEL_REG_FAILED = common dso_local global i32 0, align 4
@WPS_EV_ER_SET_SELECTED_REGISTRAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.http_client*, i32)* @wps_er_http_set_sel_reg_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_http_set_sel_reg_cb(i8* %0, %struct.http_client* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.http_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wps_er_ap*, align 8
  %8 = alloca %union.wps_event_data, align 8
  store i8* %0, i8** %4, align 8
  store %struct.http_client* %1, %struct.http_client** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.wps_er_ap*
  store %struct.wps_er_ap* %10, %struct.wps_er_ap** %7, align 8
  %11 = call i32 @os_memset(%union.wps_event_data* %8, i32 0, i32 16)
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %35 [
    i32 129, label %13
    i32 131, label %24
    i32 130, label %24
    i32 128, label %24
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @WPS_ER_SET_SEL_REG_DONE, align 4
  %17 = bitcast %union.wps_event_data* %8 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %20 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = bitcast %union.wps_event_data* %8 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %35

24:                                               ; preds = %3, %3, %3
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @WPS_ER_SET_SEL_REG_FAILED, align 4
  %28 = bitcast %union.wps_event_data* %8 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %31 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = bitcast %union.wps_event_data* %8 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %3, %24, %13
  %36 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %37 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @http_client_free(i32* %38)
  %40 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %41 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = bitcast %union.wps_event_data* %8 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %35
  %47 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %48 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %52, align 8
  %54 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %55 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @WPS_EV_ER_SET_SELECTED_REGISTRAR, align 4
  %62 = call i32 %53(i32 %60, i32 %61, %union.wps_event_data* %8)
  br label %63

63:                                               ; preds = %46, %35
  ret void
}

declare dso_local i32 @os_memset(%union.wps_event_data*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @http_client_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
