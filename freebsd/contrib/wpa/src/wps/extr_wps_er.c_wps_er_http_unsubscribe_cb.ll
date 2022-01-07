; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_unsubscribe_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_unsubscribe_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_client = type { i32 }
%struct.wps_er_ap = type { i32, i32*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"WPS ER: Unsubscribed from events\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"WPS ER: Failed to unsubscribe from events\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.http_client*, i32)* @wps_er_http_unsubscribe_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_http_unsubscribe_cb(i8* %0, %struct.http_client* %1, i32 %2) #0 {
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
  switch i32 %10, label %19 [
    i32 129, label %11
    i32 131, label %16
    i32 130, label %16
    i32 128, label %16
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %15 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %14, i32 0, i32 2
  store i32 0, i32* %15, align 8
  br label %19

16:                                               ; preds = %3, %3, %3
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %3, %16, %11
  %20 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %21 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @http_client_free(i32* %22)
  %24 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %25 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %27 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %30 = call i32 @wps_er_ap_unsubscribed(i32 %28, %struct.wps_er_ap* %29)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @http_client_free(i32*) #1

declare dso_local i32 @wps_er_ap_unsubscribed(i32, %struct.wps_er_ap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
