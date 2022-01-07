; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_bsd.c_get80211opmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_bsd.c_get80211opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsd_driver_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ifmediareq = type { i32, i32 }

@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@IFM_IEEE80211_ADHOC = common dso_local global i32 0, align 4
@IFM_FLAG0 = common dso_local global i32 0, align 4
@IEEE80211_M_AHDEMO = common dso_local global i32 0, align 4
@IEEE80211_M_IBSS = common dso_local global i32 0, align 4
@IFM_IEEE80211_HOSTAP = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i32 0, align 4
@IFM_IEEE80211_IBSS = common dso_local global i32 0, align 4
@IFM_IEEE80211_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i32 0, align 4
@IEEE80211_M_MBSS = common dso_local global i32 0, align 4
@IFM_IEEE80211_MBSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsd_driver_data*)* @get80211opmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get80211opmode(%struct.bsd_driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsd_driver_data*, align 8
  %4 = alloca %struct.ifmediareq, align 4
  store %struct.bsd_driver_data* %0, %struct.bsd_driver_data** %3, align 8
  %5 = call i32 @memset(%struct.ifmediareq* %4, i32 0, i32 8)
  %6 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bsd_driver_data*, %struct.bsd_driver_data** %3, align 8
  %9 = getelementptr inbounds %struct.bsd_driver_data, %struct.bsd_driver_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @os_strlcpy(i32 %7, i32 %10, i32 4)
  %12 = load %struct.bsd_driver_data*, %struct.bsd_driver_data** %3, align 8
  %13 = getelementptr inbounds %struct.bsd_driver_data, %struct.bsd_driver_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SIOCGIFMEDIA, align 4
  %18 = ptrtoint %struct.ifmediareq* %4 to i32
  %19 = call i64 @ioctl(i32 %16, i32 %17, i32 %18)
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFM_IEEE80211_ADHOC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFM_FLAG0, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @IEEE80211_M_AHDEMO, align 4
  store i32 %34, i32* %2, align 4
  br label %64

35:                                               ; preds = %27
  %36 = load i32, i32* @IEEE80211_M_IBSS, align 4
  store i32 %36, i32* %2, align 4
  br label %64

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFM_IEEE80211_HOSTAP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @IEEE80211_M_HOSTAP, align 4
  store i32 %44, i32* %2, align 4
  br label %64

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFM_IEEE80211_IBSS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @IEEE80211_M_IBSS, align 4
  store i32 %52, i32* %2, align 4
  br label %64

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFM_IEEE80211_MONITOR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @IEEE80211_M_MONITOR, align 4
  store i32 %60, i32* %2, align 4
  br label %64

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %1
  %63 = load i32, i32* @IEEE80211_M_STA, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %59, %51, %43, %35, %33
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @memset(%struct.ifmediareq*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
