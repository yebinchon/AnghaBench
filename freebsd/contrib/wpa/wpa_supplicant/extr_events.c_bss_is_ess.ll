; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_bss_is_ess.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_bss_is_ess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss = type { i32 }

@IEEE80211_CAP_DMG_MASK = common dso_local global i32 0, align 4
@IEEE80211_CAP_DMG_AP = common dso_local global i32 0, align 4
@IEEE80211_CAP_ESS = common dso_local global i32 0, align 4
@IEEE80211_CAP_IBSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_bss*)* @bss_is_ess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bss_is_ess(%struct.wpa_bss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_bss*, align 8
  store %struct.wpa_bss* %0, %struct.wpa_bss** %3, align 8
  %4 = load %struct.wpa_bss*, %struct.wpa_bss** %3, align 8
  %5 = call i64 @bss_is_dmg(%struct.wpa_bss* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.wpa_bss*, %struct.wpa_bss** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IEEE80211_CAP_DMG_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @IEEE80211_CAP_DMG_AP, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.wpa_bss*, %struct.wpa_bss** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_CAP_ESS, align 4
  %21 = load i32, i32* @IEEE80211_CAP_IBSS, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = load i32, i32* @IEEE80211_CAP_ESS, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %16, %7
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @bss_is_dmg(%struct.wpa_bss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
