; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_pwd_auth_fail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_pwd_auth_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.wps_event_pwd_auth_fail = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"WPS: Authentication failure update\00", align 1
@WPS_STATUS_FAILURE = common dso_local global i32 0, align 4
@WPS_EI_AUTH_FAILURE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@wps_pwd_auth_fail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.wps_event_pwd_auth_fail*)* @hostapd_pwd_auth_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_pwd_auth_fail(%struct.hostapd_data* %0, %struct.wps_event_pwd_auth_fail* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.wps_event_pwd_auth_fail*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.wps_event_pwd_auth_fail* %1, %struct.wps_event_pwd_auth_fail** %4, align 8
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @WPS_STATUS_FAILURE, align 4
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @WPS_EI_AUTH_FAILURE, align 4
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.wps_event_pwd_auth_fail*, %struct.wps_event_pwd_auth_fail** %4, align 8
  %20 = getelementptr inbounds %struct.wps_event_pwd_auth_fail, %struct.wps_event_pwd_auth_fail* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = call i32 @os_memcpy(i32 %18, i32 %21, i32 %22)
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %25 = load i32, i32* @wps_pwd_auth_fail, align 4
  %26 = load %struct.wps_event_pwd_auth_fail*, %struct.wps_event_pwd_auth_fail** %4, align 8
  %27 = call i32 @hostapd_wps_for_each(%struct.hostapd_data* %24, i32 %25, %struct.wps_event_pwd_auth_fail* %26)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @hostapd_wps_for_each(%struct.hostapd_data*, i32, %struct.wps_event_pwd_auth_fail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
