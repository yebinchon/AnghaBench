; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_ap_pin_random.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_ap_pin_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.wps_ap_pin_data = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%08u\00", align 1
@wps_ap_pin_set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hostapd_wps_ap_pin_random(%struct.hostapd_data* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wps_ap_pin_data, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i64 @wps_generate_pin(i32* %6)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %26

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wps_ap_pin_data, %struct.wps_ap_pin_data* %7, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @os_snprintf(i32 %13, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.wps_ap_pin_data, %struct.wps_ap_pin_data* %7, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %19 = load i32, i32* @wps_ap_pin_set, align 4
  %20 = call i32 @hostapd_wps_for_each(%struct.hostapd_data* %18, i32 %19, %struct.wps_ap_pin_data* %7)
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %22 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %11, %10
  %27 = load i8*, i8** %3, align 8
  ret i8* %27
}

declare dso_local i64 @wps_generate_pin(i32*) #1

declare dso_local i32 @os_snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @hostapd_wps_for_each(%struct.hostapd_data*, i32, %struct.wps_ap_pin_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
