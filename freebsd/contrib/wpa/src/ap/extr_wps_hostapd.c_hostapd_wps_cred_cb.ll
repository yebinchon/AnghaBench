; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_cred_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_cred_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_credential = type { i32 }
%struct.hostapd_data = type { i32 }

@hapd_wps_cred_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.wps_credential*)* @hostapd_wps_cred_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_wps_cred_cb(i8* %0, %struct.wps_credential* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wps_credential*, align 8
  %5 = alloca %struct.hostapd_data*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wps_credential* %1, %struct.wps_credential** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.hostapd_data*
  store %struct.hostapd_data* %7, %struct.hostapd_data** %5, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %9 = load i32, i32* @hapd_wps_cred_cb, align 4
  %10 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %11 = bitcast %struct.wps_credential* %10 to i8*
  %12 = call i32 @hostapd_wps_for_each(%struct.hostapd_data* %8, i32 %9, i8* %11)
  ret i32 %12
}

declare dso_local i32 @hostapd_wps_for_each(%struct.hostapd_data*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
