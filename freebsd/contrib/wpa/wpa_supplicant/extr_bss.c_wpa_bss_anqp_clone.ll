; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_anqp_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_anqp_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss_anqp = type { i32 }

@anqp_3gpp = common dso_local global i32 0, align 4
@capability_list = common dso_local global i32 0, align 4
@domain_name = common dso_local global i32 0, align 4
@fils_realm_info = common dso_local global i32 0, align 4
@hs20_capability_list = common dso_local global i32 0, align 4
@hs20_connection_capability = common dso_local global i32 0, align 4
@hs20_operating_class = common dso_local global i32 0, align 4
@hs20_operator_friendly_name = common dso_local global i32 0, align 4
@hs20_operator_icon_metadata = common dso_local global i32 0, align 4
@hs20_osu_providers_list = common dso_local global i32 0, align 4
@hs20_osu_providers_nai_list = common dso_local global i32 0, align 4
@hs20_wan_metrics = common dso_local global i32 0, align 4
@ip_addr_type_availability = common dso_local global i32 0, align 4
@nai_realm = common dso_local global i32 0, align 4
@network_auth_type = common dso_local global i32 0, align 4
@roaming_consortium = common dso_local global i32 0, align 4
@venue_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_bss_anqp* (%struct.wpa_bss_anqp*)* @wpa_bss_anqp_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_bss_anqp* @wpa_bss_anqp_clone(%struct.wpa_bss_anqp* %0) #0 {
  %2 = alloca %struct.wpa_bss_anqp*, align 8
  %3 = alloca %struct.wpa_bss_anqp*, align 8
  %4 = alloca %struct.wpa_bss_anqp*, align 8
  store %struct.wpa_bss_anqp* %0, %struct.wpa_bss_anqp** %3, align 8
  %5 = call %struct.wpa_bss_anqp* @os_zalloc(i32 4)
  store %struct.wpa_bss_anqp* %5, %struct.wpa_bss_anqp** %4, align 8
  %6 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %4, align 8
  %7 = icmp eq %struct.wpa_bss_anqp* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.wpa_bss_anqp* null, %struct.wpa_bss_anqp** %2, align 8
  br label %11

9:                                                ; preds = %1
  %10 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %4, align 8
  store %struct.wpa_bss_anqp* %10, %struct.wpa_bss_anqp** %2, align 8
  br label %11

11:                                               ; preds = %9, %8
  %12 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %2, align 8
  ret %struct.wpa_bss_anqp* %12
}

declare dso_local %struct.wpa_bss_anqp* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
