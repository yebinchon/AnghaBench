; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_scan_get_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_scan_get_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_scan_res = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpa_scan_get_ie(%struct.wpa_scan_res* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_scan_res*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.wpa_scan_res* %0, %struct.wpa_scan_res** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %3, align 8
  %7 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %3, align 8
  %13 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %16, i64 1
  %18 = bitcast %struct.wpa_scan_res* %17 to i32*
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32* @get_ie(i32* %18, i64 %19, i32 %20)
  ret i32* %21
}

declare dso_local i32* @get_ie(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
