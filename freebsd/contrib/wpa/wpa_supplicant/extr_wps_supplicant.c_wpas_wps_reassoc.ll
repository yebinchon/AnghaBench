; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_reassoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_reassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.wpa_ssid = type { i32 }
%struct.wpa_bss = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpa_ssid*, i32*, i32)* @wpas_wps_reassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_wps_reassoc(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_bss*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  br label %23

23:                                               ; preds = %18, %4
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 1
  store i32 5, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  br label %60

36:                                               ; preds = %23
  %37 = load i32*, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call %struct.wpa_bss* @wpa_bss_get_bssid_latest(%struct.wpa_supplicant* %40, i32* %41)
  store %struct.wpa_bss* %42, %struct.wpa_bss** %9, align 8
  %43 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %44 = icmp ne %struct.wpa_bss* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %47 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 2
  store i32 1, i32* %52, align 4
  %53 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %54 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %50, %45, %39
  br label %59

59:                                               ; preds = %58, %36
  br label %60

60:                                               ; preds = %59, %30
  %61 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %62 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %63 = call i32 @wpas_wps_temp_disable(%struct.wpa_supplicant* %61, %struct.wpa_ssid* %62)
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 9
  store i64 0, i64* %65, align 8
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %67 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %66, i32 0, i32 4
  store i32 1, i32* %67, align 4
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %69 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %68, i32 0, i32 8
  store i64 0, i64* %69, align 8
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %71 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %70, i32 0, i32 7
  store i64 0, i64* %71, align 8
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %73 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %75 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %77 = call i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant* %76)
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %79 = call i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant* %78, i32 0, i32 0)
  ret void
}

declare dso_local %struct.wpa_bss* @wpa_bss_get_bssid_latest(%struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpas_wps_temp_disable(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
