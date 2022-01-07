; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_nl80211_get_noise_for_scan_results.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_nl80211_get_noise_for_scan_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32 }
%struct.nl80211_noise_info = type { i32 }
%struct.nl_msg = type { i32 }

@NLM_F_DUMP = common dso_local global i32 0, align 4
@NL80211_CMD_GET_SURVEY = common dso_local global i32 0, align 4
@get_noise_for_scan_results = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_nl80211_data*, %struct.nl80211_noise_info*)* @nl80211_get_noise_for_scan_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_get_noise_for_scan_results(%struct.wpa_driver_nl80211_data* %0, %struct.nl80211_noise_info* %1) #0 {
  %3 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %4 = alloca %struct.nl80211_noise_info*, align 8
  %5 = alloca %struct.nl_msg*, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %3, align 8
  store %struct.nl80211_noise_info* %1, %struct.nl80211_noise_info** %4, align 8
  %6 = load %struct.nl80211_noise_info*, %struct.nl80211_noise_info** %4, align 8
  %7 = call i32 @os_memset(%struct.nl80211_noise_info* %6, i32 0, i32 4)
  %8 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %9 = load i32, i32* @NLM_F_DUMP, align 4
  %10 = load i32, i32* @NL80211_CMD_GET_SURVEY, align 4
  %11 = call %struct.nl_msg* @nl80211_drv_msg(%struct.wpa_driver_nl80211_data* %8, i32 %9, i32 %10)
  store %struct.nl_msg* %11, %struct.nl_msg** %5, align 8
  %12 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %13 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %14 = load i32, i32* @get_noise_for_scan_results, align 4
  %15 = load %struct.nl80211_noise_info*, %struct.nl80211_noise_info** %4, align 8
  %16 = call i32 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data* %12, %struct.nl_msg* %13, i32 %14, %struct.nl80211_noise_info* %15)
  ret i32 %16
}

declare dso_local i32 @os_memset(%struct.nl80211_noise_info*, i32, i32) #1

declare dso_local %struct.nl_msg* @nl80211_drv_msg(%struct.wpa_driver_nl80211_data*, i32, i32) #1

declare dso_local i32 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data*, %struct.nl_msg*, i32, %struct.nl80211_noise_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
