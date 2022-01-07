; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_set_dfs_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_set_dfs_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NL80211_DFS_FCC = common dso_local global i32 0, align 4
@HOSTAPD_DFS_REGION_FCC = common dso_local global i64 0, align 8
@NL80211_DFS_ETSI = common dso_local global i32 0, align 4
@HOSTAPD_DFS_REGION_ETSI = common dso_local global i64 0, align 8
@NL80211_DFS_JP = common dso_local global i32 0, align 4
@HOSTAPD_DFS_REGION_JP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*)* @nl80211_set_dfs_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_set_dfs_domain(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @NL80211_DFS_FCC, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i64, i64* @HOSTAPD_DFS_REGION_FCC, align 8
  %10 = load i64*, i64** %4, align 8
  store i64 %9, i64* %10, align 8
  br label %29

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NL80211_DFS_ETSI, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i64, i64* @HOSTAPD_DFS_REGION_ETSI, align 8
  %17 = load i64*, i64** %4, align 8
  store i64 %16, i64* %17, align 8
  br label %28

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @NL80211_DFS_JP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* @HOSTAPD_DFS_REGION_JP, align 8
  %24 = load i64*, i64** %4, align 8
  store i64 %23, i64* %24, align 8
  br label %27

25:                                               ; preds = %18
  %26 = load i64*, i64** %4, align 8
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %25, %22
  br label %28

28:                                               ; preds = %27, %15
  br label %29

29:                                               ; preds = %28, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
