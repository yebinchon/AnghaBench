; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_set_wep_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_set_wep_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_ssid = type { i64*, i32, i32* }

@NUM_WEP_KEYS = common dso_local global i32 0, align 4
@WPA_ALG_WEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_set_wep_keys(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %46, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @NUM_WEP_KEYS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %7
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %46

21:                                               ; preds = %11
  store i32 1, i32* %6, align 4
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %23 = load i32, i32* @WPA_ALG_WEP, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %32 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %39 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @wpa_drv_set_key(%struct.wpa_supplicant* %22, i32 %23, i32* null, i32 %24, i32 %30, i32* null, i32 0, i32 %37, i64 %44)
  br label %46

46:                                               ; preds = %21, %20
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %7

49:                                               ; preds = %7
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @wpa_drv_set_key(%struct.wpa_supplicant*, i32, i32*, i32, i32, i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
