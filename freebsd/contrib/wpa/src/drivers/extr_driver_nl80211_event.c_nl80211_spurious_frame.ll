; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_nl80211_spurious_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_nl80211_spurious_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i802_bss = type { i32, %struct.wpa_driver_nl80211_data* }
%struct.wpa_driver_nl80211_data = type { i32 }
%struct.nlattr = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@EVENT_RX_FROM_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i802_bss*, %struct.nlattr**, i32)* @nl80211_spurious_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_spurious_frame(%struct.i802_bss* %0, %struct.nlattr** %1, i32 %2) #0 {
  %4 = alloca %struct.i802_bss*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %8 = alloca %union.wpa_event_data, align 4
  store %struct.i802_bss* %0, %struct.i802_bss** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.i802_bss*, %struct.i802_bss** %4, align 8
  %10 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %9, i32 0, i32 1
  %11 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %10, align 8
  store %struct.wpa_driver_nl80211_data* %11, %struct.wpa_driver_nl80211_data** %7, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %13 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %40

18:                                               ; preds = %3
  %19 = call i32 @os_memset(%union.wpa_event_data* %8, i32 0, i32 12)
  %20 = load %struct.i802_bss*, %struct.i802_bss** %4, align 8
  %21 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %26 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i32 @nla_data(%struct.nlattr* %28)
  %30 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %36 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EVENT_RX_FROM_UNKNOWN, align 4
  %39 = call i32 @wpa_supplicant_event(i32 %37, i32 %38, %union.wpa_event_data* %8)
  br label %40

40:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
