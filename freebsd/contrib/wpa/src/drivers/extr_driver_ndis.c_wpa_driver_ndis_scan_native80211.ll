; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_scan_native80211.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_scan_native80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i32 }
%struct.wpa_driver_scan_params = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_3__*, i32 }

@dot11_BSS_type_any = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@dot11_scan_type_auto = common dso_local global i32 0, align 4
@OID_DOT11_SCAN_REQUEST = common dso_local global i32 0, align 4
@wpa_driver_ndis_scan_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_ndis_data*, %struct.wpa_driver_scan_params*)* @wpa_driver_ndis_scan_native80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_ndis_scan_native80211(%struct.wpa_driver_ndis_data* %0, %struct.wpa_driver_scan_params* %1) #0 {
  %3 = alloca %struct.wpa_driver_ndis_data*, align 8
  %4 = alloca %struct.wpa_driver_scan_params*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  store %struct.wpa_driver_ndis_data* %0, %struct.wpa_driver_ndis_data** %3, align 8
  store %struct.wpa_driver_scan_params* %1, %struct.wpa_driver_scan_params** %4, align 8
  %7 = call i32 @os_memset(%struct.TYPE_3__* %5, i32 0, i32 24)
  %8 = load i32, i32* @dot11_BSS_type_any, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = call i32 @os_memset(%struct.TYPE_3__* %11, i32 255, i32 %12)
  %14 = load i32, i32* @dot11_scan_type_auto, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %17 = load i32, i32* @OID_DOT11_SCAN_REQUEST, align 4
  %18 = bitcast %struct.TYPE_3__* %5 to i8*
  %19 = call i32 @ndis_set_oid(%struct.wpa_driver_ndis_data* %16, i32 %17, i8* %18, i32 24)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @wpa_driver_ndis_scan_timeout, align 4
  %21 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %22 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %23 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @eloop_cancel_timeout(i32 %20, %struct.wpa_driver_ndis_data* %21, i32 %24)
  %26 = load i32, i32* @wpa_driver_ndis_scan_timeout, align 4
  %27 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %28 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @eloop_register_timeout(i32 7, i32 0, i32 %26, %struct.wpa_driver_ndis_data* %27, i32 %30)
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @os_memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ndis_set_oid(%struct.wpa_driver_ndis_data*, i32, i8*, i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_driver_ndis_data*, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_driver_ndis_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
