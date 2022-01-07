; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_get_weight_for_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_get_weight_for_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.airtime_sta_weight* }
%struct.airtime_sta_weight = type { i32, %struct.airtime_sta_weight*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i32*)* @get_weight_for_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_weight_for_sta(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.airtime_sta_weight*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %7 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.airtime_sta_weight*, %struct.airtime_sta_weight** %9, align 8
  store %struct.airtime_sta_weight* %10, %struct.airtime_sta_weight** %5, align 8
  br label %11

11:                                               ; preds = %24, %2
  %12 = load %struct.airtime_sta_weight*, %struct.airtime_sta_weight** %5, align 8
  %13 = icmp ne %struct.airtime_sta_weight* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.airtime_sta_weight*, %struct.airtime_sta_weight** %5, align 8
  %16 = getelementptr inbounds %struct.airtime_sta_weight, %struct.airtime_sta_weight* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = call i64 @os_memcmp(i32 %17, i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %14, %11
  %23 = phi i1 [ false, %11 ], [ %21, %14 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = load %struct.airtime_sta_weight*, %struct.airtime_sta_weight** %5, align 8
  %26 = getelementptr inbounds %struct.airtime_sta_weight, %struct.airtime_sta_weight* %25, i32 0, i32 1
  %27 = load %struct.airtime_sta_weight*, %struct.airtime_sta_weight** %26, align 8
  store %struct.airtime_sta_weight* %27, %struct.airtime_sta_weight** %5, align 8
  br label %11

28:                                               ; preds = %22
  %29 = load %struct.airtime_sta_weight*, %struct.airtime_sta_weight** %5, align 8
  %30 = icmp ne %struct.airtime_sta_weight* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.airtime_sta_weight*, %struct.airtime_sta_weight** %5, align 8
  %33 = getelementptr inbounds %struct.airtime_sta_weight, %struct.airtime_sta_weight* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  br label %41

35:                                               ; preds = %28
  %36 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %37 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i32 [ %34, %31 ], [ %40, %35 ]
  ret i32 %42
}

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
