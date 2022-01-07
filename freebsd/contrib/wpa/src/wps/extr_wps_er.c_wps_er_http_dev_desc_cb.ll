; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_dev_desc_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_dev_desc_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_client = type { i32 }
%struct.wps_er_ap = type { i32* }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"WPS ER: Failed to fetch device info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.http_client*, i32)* @wps_er_http_dev_desc_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_http_dev_desc_cb(i8* %0, %struct.http_client* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.http_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wps_er_ap*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.http_client* %1, %struct.http_client** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.wps_er_ap*
  store %struct.wps_er_ap* %11, %struct.wps_er_ap** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %26 [
    i32 129, label %13
    i32 131, label %23
    i32 130, label %23
    i32 128, label %23
  ]

13:                                               ; preds = %3
  %14 = load %struct.http_client*, %struct.http_client** %5, align 8
  %15 = call %struct.wpabuf* @http_client_get_body(%struct.http_client* %14)
  store %struct.wpabuf* %15, %struct.wpabuf** %8, align 8
  %16 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %17 = icmp eq %struct.wpabuf* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %26

19:                                               ; preds = %13
  %20 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %22 = call i32 @wps_er_parse_device_description(%struct.wps_er_ap* %20, %struct.wpabuf* %21)
  store i32 1, i32* %9, align 4
  br label %26

23:                                               ; preds = %3, %3, %3
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %3, %23, %19, %18
  %27 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %28 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @http_client_free(i32* %29)
  %31 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %32 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %37 = call i32 @wps_er_get_device_info(%struct.wps_er_ap* %36)
  br label %38

38:                                               ; preds = %35, %26
  ret void
}

declare dso_local %struct.wpabuf* @http_client_get_body(%struct.http_client*) #1

declare dso_local i32 @wps_er_parse_device_description(%struct.wps_er_ap*, %struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @http_client_free(i32*) #1

declare dso_local i32 @wps_er_get_device_info(%struct.wps_er_ap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
