; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_nl80211_get_scan_results.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_nl80211_get_scan_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_scan_results = type { i64, i32* }
%struct.wpa_driver_nl80211_data = type { i32 }
%struct.nl_msg = type { i32 }
%struct.nl80211_bss_info_arg = type { %struct.wpa_scan_results*, %struct.wpa_driver_nl80211_data* }
%struct.nl80211_noise_info = type { i32 }

@NLM_F_DUMP = common dso_local global i32 0, align 4
@NL80211_CMD_GET_SCAN = common dso_local global i32 0, align 4
@bss_info_handler = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"nl80211: Received scan results (%lu BSSes)\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"nl80211: Scan result fetch failed: ret=%d (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_scan_results* (%struct.wpa_driver_nl80211_data*)* @nl80211_get_scan_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_scan_results* @nl80211_get_scan_results(%struct.wpa_driver_nl80211_data* %0) #0 {
  %2 = alloca %struct.wpa_scan_results*, align 8
  %3 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca %struct.wpa_scan_results*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nl80211_bss_info_arg, align 8
  %8 = alloca %struct.nl80211_noise_info, align 4
  %9 = alloca i64, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %3, align 8
  %10 = call %struct.wpa_scan_results* @os_zalloc(i32 16)
  store %struct.wpa_scan_results* %10, %struct.wpa_scan_results** %5, align 8
  %11 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  %12 = icmp eq %struct.wpa_scan_results* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.wpa_scan_results* null, %struct.wpa_scan_results** %2, align 8
  br label %76

14:                                               ; preds = %1
  %15 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %16 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NLM_F_DUMP, align 4
  %19 = load i32, i32* @NL80211_CMD_GET_SCAN, align 4
  %20 = call %struct.nl_msg* @nl80211_cmd_msg(i32 %17, i32 %18, i32 %19)
  store %struct.nl_msg* %20, %struct.nl_msg** %4, align 8
  %21 = icmp ne %struct.nl_msg* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  %24 = call i32 @wpa_scan_results_free(%struct.wpa_scan_results* %23)
  store %struct.wpa_scan_results* null, %struct.wpa_scan_results** %2, align 8
  br label %76

25:                                               ; preds = %14
  %26 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %27 = getelementptr inbounds %struct.nl80211_bss_info_arg, %struct.nl80211_bss_info_arg* %7, i32 0, i32 1
  store %struct.wpa_driver_nl80211_data* %26, %struct.wpa_driver_nl80211_data** %27, align 8
  %28 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  %29 = getelementptr inbounds %struct.nl80211_bss_info_arg, %struct.nl80211_bss_info_arg* %7, i32 0, i32 0
  store %struct.wpa_scan_results* %28, %struct.wpa_scan_results** %29, align 8
  %30 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %31 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %32 = load i32, i32* @bss_info_handler, align 4
  %33 = call i32 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data* %30, %struct.nl_msg* %31, i32 %32, %struct.nl80211_bss_info_arg* %7)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %25
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  %39 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %44 = call i64 @nl80211_get_noise_for_scan_results(%struct.wpa_driver_nl80211_data* %43, %struct.nl80211_noise_info* %8)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %36
  store i64 0, i64* %9, align 8
  br label %47

47:                                               ; preds = %61, %46
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  %50 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  %55 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @nl80211_update_scan_res_noise(i32 %59, %struct.nl80211_noise_info* %8)
  br label %61

61:                                               ; preds = %53
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %9, align 8
  br label %47

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %36
  %66 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  store %struct.wpa_scan_results* %66, %struct.wpa_scan_results** %2, align 8
  br label %76

67:                                               ; preds = %25
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 0, %70
  %72 = call i32 @strerror(i32 %71)
  %73 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  %75 = call i32 @wpa_scan_results_free(%struct.wpa_scan_results* %74)
  store %struct.wpa_scan_results* null, %struct.wpa_scan_results** %2, align 8
  br label %76

76:                                               ; preds = %67, %65, %22, %13
  %77 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %2, align 8
  ret %struct.wpa_scan_results* %77
}

declare dso_local %struct.wpa_scan_results* @os_zalloc(i32) #1

declare dso_local %struct.nl_msg* @nl80211_cmd_msg(i32, i32, i32) #1

declare dso_local i32 @wpa_scan_results_free(%struct.wpa_scan_results*) #1

declare dso_local i32 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data*, %struct.nl_msg*, i32, %struct.nl80211_bss_info_arg*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i64 @nl80211_get_noise_for_scan_results(%struct.wpa_driver_nl80211_data*, %struct.nl80211_noise_info*) #1

declare dso_local i32 @nl80211_update_scan_res_noise(i32, %struct.nl80211_noise_info*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
