; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_update_scan_results.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_update_scan_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_scan_results = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_update_scan_results(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_scan_results*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %6 = call %struct.wpa_scan_results* @wpa_supplicant_get_scan_results(%struct.wpa_supplicant* %5, i32* null, i32 0)
  store %struct.wpa_scan_results* %6, %struct.wpa_scan_results** %4, align 8
  %7 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %8 = icmp eq %struct.wpa_scan_results* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %12 = call i32 @wpa_scan_results_free(%struct.wpa_scan_results* %11)
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %10, %9
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local %struct.wpa_scan_results* @wpa_supplicant_get_scan_results(%struct.wpa_supplicant*, i32*, i32) #1

declare dso_local i32 @wpa_scan_results_free(%struct.wpa_scan_results*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
