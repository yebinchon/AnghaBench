; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_put_wlan_response_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_put_wlan_response_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_client = type { i32 }
%struct.wps_er_sta = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"WPS ER: PutWLANResponse OK\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"WPS ER: PutWLANResponse failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.http_client*, i32)* @wps_er_http_put_wlan_response_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_http_put_wlan_response_cb(i8* %0, %struct.http_client* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.http_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wps_er_sta*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.http_client* %1, %struct.http_client** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wps_er_sta*
  store %struct.wps_er_sta* %9, %struct.wps_er_sta** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %17 [
    i32 129, label %11
    i32 131, label %14
    i32 130, label %14
    i32 128, label %14
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %17

14:                                               ; preds = %3, %3, %3
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %3, %14, %11
  %18 = load %struct.wps_er_sta*, %struct.wps_er_sta** %7, align 8
  %19 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @http_client_free(i32* %20)
  %22 = load %struct.wps_er_sta*, %struct.wps_er_sta** %7, align 8
  %23 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @http_client_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
