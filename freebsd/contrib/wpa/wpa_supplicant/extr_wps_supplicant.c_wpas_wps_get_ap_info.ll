; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_get_ap_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_get_ap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_ap_info = type { i32 }
%struct.wpa_supplicant = type { i64, %struct.wps_ap_info* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wps_ap_info* (%struct.wpa_supplicant*, i32*)* @wpas_wps_get_ap_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wps_ap_info* @wpas_wps_get_ap_info(%struct.wpa_supplicant* %0, i32* %1) #0 {
  %3 = alloca %struct.wps_ap_info*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wps_ap_info*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 1
  %10 = load %struct.wps_ap_info*, %struct.wps_ap_info** %9, align 8
  %11 = icmp eq %struct.wps_ap_info* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.wps_ap_info* null, %struct.wps_ap_info** %3, align 8
  br label %40

13:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %36, %13
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 1
  %23 = load %struct.wps_ap_info*, %struct.wps_ap_info** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.wps_ap_info, %struct.wps_ap_info* %23, i64 %24
  store %struct.wps_ap_info* %25, %struct.wps_ap_info** %7, align 8
  %26 = load %struct.wps_ap_info*, %struct.wps_ap_info** %7, align 8
  %27 = getelementptr inbounds %struct.wps_ap_info, %struct.wps_ap_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = call i64 @os_memcmp(i32 %28, i32* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load %struct.wps_ap_info*, %struct.wps_ap_info** %7, align 8
  store %struct.wps_ap_info* %34, %struct.wps_ap_info** %3, align 8
  br label %40

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %14

39:                                               ; preds = %14
  store %struct.wps_ap_info* null, %struct.wps_ap_info** %3, align 8
  br label %40

40:                                               ; preds = %39, %33, %12
  %41 = load %struct.wps_ap_info*, %struct.wps_ap_info** %3, align 8
  ret %struct.wps_ap_info* %41
}

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
