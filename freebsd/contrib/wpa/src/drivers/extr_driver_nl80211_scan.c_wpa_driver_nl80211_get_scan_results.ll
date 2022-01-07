; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_wpa_driver_nl80211_get_scan_results.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_wpa_driver_nl80211_get_scan_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_scan_results = type { i32 }
%struct.i802_bss = type { %struct.wpa_driver_nl80211_data* }
%struct.wpa_driver_nl80211_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_scan_results* @wpa_driver_nl80211_get_scan_results(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i802_bss*, align 8
  %4 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %5 = alloca %struct.wpa_scan_results*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.i802_bss*
  store %struct.i802_bss* %7, %struct.i802_bss** %3, align 8
  %8 = load %struct.i802_bss*, %struct.i802_bss** %3, align 8
  %9 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %8, i32 0, i32 0
  %10 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %9, align 8
  store %struct.wpa_driver_nl80211_data* %10, %struct.wpa_driver_nl80211_data** %4, align 8
  %11 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %12 = call %struct.wpa_scan_results* @nl80211_get_scan_results(%struct.wpa_driver_nl80211_data* %11)
  store %struct.wpa_scan_results* %12, %struct.wpa_scan_results** %5, align 8
  %13 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  %14 = icmp ne %struct.wpa_scan_results* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %17 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  %18 = call i32 @wpa_driver_nl80211_check_bss_status(%struct.wpa_driver_nl80211_data* %16, %struct.wpa_scan_results* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %5, align 8
  ret %struct.wpa_scan_results* %20
}

declare dso_local %struct.wpa_scan_results* @nl80211_get_scan_results(%struct.wpa_driver_nl80211_data*) #1

declare dso_local i32 @wpa_driver_nl80211_check_bss_status(%struct.wpa_driver_nl80211_data*, %struct.wpa_scan_results*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
