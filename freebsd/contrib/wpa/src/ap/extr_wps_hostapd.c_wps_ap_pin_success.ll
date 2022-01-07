; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_wps_ap_pin_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_wps_ap_pin_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i64, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"WPS: Clear consecutive AP PIN failure counter - total validation failures %u (%u consecutive)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i8*)* @wps_ap_pin_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_ap_pin_success(%struct.hostapd_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %7 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %14 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %35

18:                                               ; preds = %12
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %35

24:                                               ; preds = %18
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %27 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %30 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %31)
  %33 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %34 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %24, %23, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
