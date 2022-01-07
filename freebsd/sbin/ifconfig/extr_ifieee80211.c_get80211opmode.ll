; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_get80211opmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_get80211opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmediareq = type { i32, i32 }

@name = common dso_local global i32 0, align 4
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
@IFM_IEEE80211_MBSS = common dso_local global i32 0, align 4
@IEEE80211_M_MBSS = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get80211opmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get80211opmode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifmediareq, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 @memset(%struct.ifmediareq* %4, i32 0, i32 8)
  %6 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @name, align 4
  %9 = call i32 @strlcpy(i32 %7, i32 %8, i32 4)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SIOCGIFMEDIA, align 4
  %12 = ptrtoint %struct.ifmediareq* %4 to i32
  %13 = call i64 @ioctl(i32 %10, i32 %11, i32 %12)
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFM_IEEE80211_ADHOC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFM_FLAG0, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @IEEE80211_M_AHDEMO, align 4
  store i32 %28, i32* %2, align 4
  br label %66

29:                                               ; preds = %21
  %30 = load i32, i32* @IEEE80211_M_IBSS, align 4
  store i32 %30, i32* %2, align 4
  br label %66

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFM_IEEE80211_HOSTAP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @IEEE80211_M_HOSTAP, align 4
  store i32 %38, i32* %2, align 4
  br label %66

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IFM_IEEE80211_IBSS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @IEEE80211_M_IBSS, align 4
  store i32 %46, i32* %2, align 4
  br label %66

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFM_IEEE80211_MONITOR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @IEEE80211_M_MONITOR, align 4
  store i32 %54, i32* %2, align 4
  br label %66

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFM_IEEE80211_MBSS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @IEEE80211_M_MBSS, align 4
  store i32 %62, i32* %2, align 4
  br label %66

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %1
  %65 = load i32, i32* @IEEE80211_M_STA, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %61, %53, %45, %37, %29, %27
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @memset(%struct.ifmediareq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
