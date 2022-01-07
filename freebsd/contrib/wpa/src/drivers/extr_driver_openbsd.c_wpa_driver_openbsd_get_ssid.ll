; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_openbsd.c_wpa_driver_openbsd_get_ssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_openbsd.c_wpa_driver_openbsd_get_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openbsd_driver_data = type { i32, i32 }
%struct.ieee80211_nwid = type { i64, i32 }
%struct.ifreq = type { i8*, i32 }

@SIOCG80211NWID = common dso_local global i32 0, align 4
@IEEE80211_NWID_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @wpa_driver_openbsd_get_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_openbsd_get_ssid(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.openbsd_driver_data*, align 8
  %7 = alloca %struct.ieee80211_nwid, align 8
  %8 = alloca %struct.ifreq, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.openbsd_driver_data*
  store %struct.openbsd_driver_data* %10, %struct.openbsd_driver_data** %6, align 8
  %11 = call i32 @os_memset(%struct.ifreq* %8, i32 0, i32 16)
  %12 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.openbsd_driver_data*, %struct.openbsd_driver_data** %6, align 8
  %15 = getelementptr inbounds %struct.openbsd_driver_data, %struct.openbsd_driver_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @os_strlcpy(i32 %13, i32 %16, i32 4)
  %18 = bitcast %struct.ieee80211_nwid* %7 to i8*
  %19 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load %struct.openbsd_driver_data*, %struct.openbsd_driver_data** %6, align 8
  %21 = getelementptr inbounds %struct.openbsd_driver_data, %struct.openbsd_driver_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SIOCG80211NWID, align 4
  %24 = call i64 @ioctl(i32 %22, i32 %23, %struct.ifreq* %8)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.ieee80211_nwid, %struct.ieee80211_nwid* %7, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IEEE80211_NWID_LEN, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %2
  store i32 -1, i32* %3, align 4
  br label %42

32:                                               ; preds = %26
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_nwid, %struct.ieee80211_nwid* %7, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.ieee80211_nwid, %struct.ieee80211_nwid* %7, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @os_memcpy(i32* %33, i32 %35, i64 %37)
  %39 = getelementptr inbounds %struct.ieee80211_nwid, %struct.ieee80211_nwid* %7, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %32, %31
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @os_memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
