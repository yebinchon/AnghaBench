; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_use_cached_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_use_cached_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i32 }
%struct.wps_er_ap = type { i32*, i32, i32 }
%struct.wps_er_ap_settings = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"WPS ER: Use cached AP settings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_er*, %struct.wps_er_ap*)* @wps_er_ap_use_cached_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_er_ap_use_cached_settings(%struct.wps_er* %0, %struct.wps_er_ap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_er*, align 8
  %5 = alloca %struct.wps_er_ap*, align 8
  %6 = alloca %struct.wps_er_ap_settings*, align 8
  store %struct.wps_er* %0, %struct.wps_er** %4, align 8
  store %struct.wps_er_ap* %1, %struct.wps_er_ap** %5, align 8
  %7 = load %struct.wps_er_ap*, %struct.wps_er_ap** %5, align 8
  %8 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.wps_er_ap*, %struct.wps_er_ap** %5, align 8
  %14 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.wps_er_ap*, %struct.wps_er_ap** %5, align 8
  %17 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.wps_er_ap_settings* @wps_er_ap_get_settings(i32 %15, i32 %18)
  store %struct.wps_er_ap_settings* %19, %struct.wps_er_ap_settings** %6, align 8
  %20 = load %struct.wps_er_ap_settings*, %struct.wps_er_ap_settings** %6, align 8
  %21 = icmp ne %struct.wps_er_ap_settings* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %37

23:                                               ; preds = %12
  %24 = load %struct.wps_er_ap_settings*, %struct.wps_er_ap_settings** %6, align 8
  %25 = getelementptr inbounds %struct.wps_er_ap_settings, %struct.wps_er_ap_settings* %24, i32 0, i32 0
  %26 = call i32* @os_memdup(i32* %25, i32 4)
  %27 = load %struct.wps_er_ap*, %struct.wps_er_ap** %5, align 8
  %28 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.wps_er_ap*, %struct.wps_er_ap** %5, align 8
  %30 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %33, %22, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.wps_er_ap_settings* @wps_er_ap_get_settings(i32, i32) #1

declare dso_local i32* @os_memdup(i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
