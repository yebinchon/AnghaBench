; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_openbsd.c_wpa_driver_openbsd_set_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_openbsd.c_wpa_driver_openbsd_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openbsd_driver_data = type { i32, i32 }
%struct.ieee80211_keyavail = type { i32, i32, i32 }

@WPA_ALG_PMK = common dso_local global i32 0, align 4
@IEEE80211_PMK_LEN = common dso_local global i64 0, align 8
@SIOCS80211KEYAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i32, i32, i32*, i64, i32*, i64)* @wpa_driver_openbsd_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_openbsd_set_key(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32* %6, i64 %7, i32* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.openbsd_driver_data*, align 8
  %23 = alloca %struct.ieee80211_keyavail, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32* %8, i32** %20, align 8
  store i64 %9, i64* %21, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = bitcast i8* %24 to %struct.openbsd_driver_data*
  store %struct.openbsd_driver_data* %25, %struct.openbsd_driver_data** %22, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @WPA_ALG_PMK, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %10
  %30 = load i64, i64* %21, align 8
  %31 = load i64, i64* @IEEE80211_PMK_LEN, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %10
  store i32 -1, i32* %11, align 4
  br label %62

34:                                               ; preds = %29
  %35 = call i32 @memset(%struct.ieee80211_keyavail* %23, i32 0, i32 12)
  %36 = getelementptr inbounds %struct.ieee80211_keyavail, %struct.ieee80211_keyavail* %23, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.openbsd_driver_data*, %struct.openbsd_driver_data** %22, align 8
  %39 = getelementptr inbounds %struct.openbsd_driver_data, %struct.openbsd_driver_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @os_strlcpy(i32 %37, i32 %40, i32 4)
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds %struct.ieee80211_keyavail, %struct.ieee80211_keyavail* %23, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @wpa_driver_openbsd_get_bssid(i8* %42, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 -1, i32* %11, align 4
  br label %62

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.ieee80211_keyavail, %struct.ieee80211_keyavail* %23, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %20, align 8
  %52 = load i64, i64* %21, align 8
  %53 = call i32 @memcpy(i32 %50, i32* %51, i64 %52)
  %54 = load %struct.openbsd_driver_data*, %struct.openbsd_driver_data** %22, align 8
  %55 = getelementptr inbounds %struct.openbsd_driver_data, %struct.openbsd_driver_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SIOCS80211KEYAVAIL, align 4
  %58 = call i64 @ioctl(i32 %56, i32 %57, %struct.ieee80211_keyavail* %23)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store i32 -1, i32* %11, align 4
  br label %62

61:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %60, %47, %33
  %63 = load i32, i32* %11, align 4
  ret i32 %63
}

declare dso_local i32 @memset(%struct.ieee80211_keyavail*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i64 @wpa_driver_openbsd_get_bssid(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ieee80211_keyavail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
