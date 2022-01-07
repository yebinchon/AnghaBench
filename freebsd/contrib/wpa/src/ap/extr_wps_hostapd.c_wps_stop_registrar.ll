; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_wps_stop_registrar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_wps_stop_registrar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wps_stop_reg_data = type { i32, i32, i32, %struct.hostapd_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i8*)* @wps_stop_registrar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_stop_registrar(%struct.hostapd_data* %0, i8* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wps_stop_reg_data*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.wps_stop_reg_data*
  store %struct.wps_stop_reg_data* %7, %struct.wps_stop_reg_data** %5, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %9 = load %struct.wps_stop_reg_data*, %struct.wps_stop_reg_data** %5, align 8
  %10 = getelementptr inbounds %struct.wps_stop_reg_data, %struct.wps_stop_reg_data* %9, i32 0, i32 3
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %12 = icmp ne %struct.hostapd_data* %8, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wps_stop_reg_data*, %struct.wps_stop_reg_data** %5, align 8
  %25 = getelementptr inbounds %struct.wps_stop_reg_data, %struct.wps_stop_reg_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.wps_stop_reg_data*, %struct.wps_stop_reg_data** %5, align 8
  %28 = getelementptr inbounds %struct.wps_stop_reg_data, %struct.wps_stop_reg_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wps_stop_reg_data*, %struct.wps_stop_reg_data** %5, align 8
  %31 = getelementptr inbounds %struct.wps_stop_reg_data, %struct.wps_stop_reg_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @wps_registrar_complete(i32 %23, i32 %26, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %18, %13, %2
  ret i32 0
}

declare dso_local i32 @wps_registrar_complete(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
